#!/usr/bin/env python3
"""Build signed normal/developer APKs from isolated copies; never edit decompiled."""

import argparse
import hashlib
import json
import os
from pathlib import Path
import re
import shutil
import struct
import subprocess
import sys
from datetime import datetime
import xml.etree.ElementTree as ET
import zipfile

ROOT = Path(__file__).resolve().parents[2]
PROTECTED = ROOT / "decompiled"
SOURCE = PROTECTED / "apktool"
CONFIG = Path(__file__).with_name("developer.json")
ANDROID = "{http://schemas.android.com/apk/res/android}"


def digest(path):
    h = hashlib.sha256()
    with path.open("rb") as stream:
        for block in iter(lambda: stream.read(1024 * 1024), b""):
            h.update(block)
    return h.hexdigest()


def inventory(directory):
    return {str(p.relative_to(directory)): digest(p)
            for p in sorted(directory.rglob("*")) if p.is_file()}


def require(condition, message):
    if not condition:
        raise RuntimeError(message)


def outside_source(path):
    path = path.resolve()
    require(path != PROTECTED and PROTECTED not in path.parents,
            "构建输出和补丁目标不能位于 decompiled 内。")
    return path


def elf_offset(data, address, length):
    require(data[:6] == b"\x7fELF\x01\x01" and
            struct.unpack_from("<H", data, 18)[0] == 40,
            "开发版补丁只支持当前 ARM ELF32 小端原生库。")
    phoff = struct.unpack_from("<I", data, 28)[0]
    phsize, phnum = struct.unpack_from("<HH", data, 42)
    for i in range(phnum):
        kind, offset, va, _, size, _, _, _ = struct.unpack_from(
            "<8I", data, phoff + i * phsize)
        if kind == 1 and va <= address and address + length <= va + size:
            return offset + address - va
    raise RuntimeError("补丁地址未映射到 ELF 文件: " + hex(address))


def patched_native(original, config):
    # Check every precondition before applying any patch. Library changes must
    # be reviewed instead of silently patching another function/version.
    for entry in config["guards"] + config["patches"]:
        address = int(entry["address"], 0)
        expected = bytes.fromhex(entry["expected"])
        offset = elf_offset(original, address, len(expected))
        require(original[offset:offset + len(expected)] == expected,
                "开发版补丁不匹配当前原生库，停止打包: " + hex(address))
    data = bytearray(original)
    for entry in config["patches"]:
        expected = bytes.fromhex(entry["expected"])
        replacement = bytes.fromhex(entry["replacement"])
        require(len(expected) == len(replacement), "补丁必须保持指令区长度。")
        offset = elf_offset(original, int(entry["address"], 0), len(expected))
        data[offset:offset + len(expected)] = replacement
    return bytes(data)


def apply_developer(copy, config):
    copy = outside_source(copy)
    native = copy / config["native_file"]
    result = patched_native(native.read_bytes(), config)
    manifest = copy / "AndroidManifest.xml"
    ET.register_namespace("android", ANDROID[1:-1])
    tree = ET.parse(manifest)
    root = tree.getroot()
    require(root.get("package") == config["source_package"], "原始包名与开发版配置不一致。")
    root.set("package", config["package"])
    application = root.find("application")
    require(application is not None, "Manifest 缺少 application。")
    application.set(ANDROID + "label", config["label"])
    for activity in application.findall("activity"):
        # Keep JNI Java class names; only the install identity is different.
        require(activity.get(ANDROID + "name", "").startswith("com.cloud.dw."),
                "发现相对 Activity 类名，请先检查开发版包名兼容性。")
        activity.set(ANDROID + "label", config["label"])
    native.write_bytes(result)
    tree.write(manifest, encoding="utf-8", xml_declaration=True)


def dependencies():
    env = os.environ.copy()
    java_homes = [env.get("JAVA_HOME", ""),
                  "/opt/homebrew/opt/openjdk/libexec/openjdk.jdk/Contents/Home",
                  "/usr/local/opt/openjdk/libexec/openjdk.jdk/Contents/Home"]
    java_home = next((Path(p) for p in java_homes if p and
                      (Path(p) / "bin/java").is_file()), None)
    require(java_home is not None, "未找到 JDK，请安装 OpenJDK 并设置 JAVA_HOME。")
    env["JAVA_HOME"] = str(java_home)
    env["PATH"] = str(java_home / "bin") + os.pathsep + env.get("PATH", "")
    apktool = shutil.which("apktool", path=env["PATH"])
    if not apktool:
        apktool = next((p for p in ["/opt/homebrew/bin/apktool", "/usr/local/bin/apktool"]
                        if Path(p).is_file()), None)
    require(apktool, "未找到 apktool，请先安装 apktool。")
    sdk = Path(env.get("ANDROID_SDK_ROOT") or env.get("ANDROID_HOME") or
               str(Path.home() / "Library/Android/sdk"))
    directories = sorted((sdk / "build-tools").glob("*"),
                         key=lambda p: tuple(map(int, re.findall(r"\d+", p.name))),
                         reverse=True)
    build_tools = next((p for p in directories if all(
        (p / name).is_file() for name in ("apksigner", "zipalign", "aapt2"))), None)
    require(build_tools is not None, "未找到 Android SDK Build Tools，请设置 ANDROID_SDK_ROOT。")
    for path in (ROOT / ".local-signing/offline.jks", ROOT / ".local-signing/password"):
        require(path.is_file(), "缺少已有签名文件: " + str(path))
    return env, apktool, build_tools


def run(command, env):
    command = list(map(str, command))
    print("+ " + " ".join(command), flush=True)
    subprocess.run(command, env=env, check=True)


def verify_payload(apk, snapshot, variant, config):
    levels = sorted((snapshot / "assets/lvs").glob("v*.dwl"))
    require({p.name for p in levels} == {"v%d.dwl" % i for i in range(1, 61)},
            "关卡文件不完整，预期 v1.dwl 至 v60.dwl。")
    checked = 0
    with zipfile.ZipFile(apk) as archive:
        require(archive.testzip() is None, "APK ZIP 校验失败。")
        require("classes.dex" in archive.namelist(), "APK 缺少 classes.dex。")
        for folder in ("assets", "lib"):
            paths = [p for p in (snapshot / folder).rglob("*") if p.is_file()]
            expected_names = {p.relative_to(snapshot).as_posix() for p in paths}
            actual_names = {n for n in archive.namelist()
                            if n.startswith(folder + "/") and not n.endswith("/")}
            require(expected_names == actual_names, "APK 的 " + folder + " 文件列表与源码不一致。")
            for path in paths:
                name = path.relative_to(snapshot).as_posix()
                expected = path.read_bytes()
                if variant == "developer" and name == config["native_file"]:
                    expected = patched_native(expected, config)
                require(archive.read(name) == expected, "APK 内容不一致: " + name)
                checked += 1
    return {"levels": len(levels), "verified_asset_and_library_files": checked,
            "sha256": digest(apk), "bytes": apk.stat().st_size}


def build(output):
    env, apktool, sdk_tools = dependencies()
    config = json.loads(CONFIG.read_text(encoding="utf-8"))
    # Validate patch compatibility before spending time compiling either APK.
    patched_native((SOURCE / config["native_file"]).read_bytes(), config)
    output = outside_source(output)
    require(not output.exists(), "输出目录已存在，请换一个新目录: " + str(output))
    before = inventory(PROTECTED)
    output.mkdir(parents=True)
    try:
        snapshot = output / "source-snapshot"
        ignored = shutil.ignore_patterns("build", "dist", ".DS_Store", "__pycache__")
        shutil.copytree(SOURCE, snapshot, ignore=ignored)
        framework = output / "framework"
        shutil.copytree(PROTECTED / "apktool-framework", framework)
        report = {"created_at": datetime.now().isoformat(), "variants": {},
                  "developer_patch": config,
                  "source_snapshot": inventory(snapshot)}
        for variant in ("normal", "developer"):
            print("\n正在打包：" + ("普通版" if variant == "normal" else "开发版（全关卡解锁）"), flush=True)
            copy = output / (variant + "-source")
            shutil.copytree(snapshot, copy)
            if variant == "developer":
                apply_developer(copy, config)
            unsigned = output / (variant + "-unsigned.apk")
            aligned = output / (variant + "-aligned.apk")
            apk = output / ("doodlewheels-" + variant + ".apk")
            run([apktool, "b", "-p", framework, copy, "-o", unsigned], env)
            run([sdk_tools / "zipalign", "-p", "-f", "4", unsigned, aligned], env)
            run([sdk_tools / "apksigner", "sign", "--ks", ROOT / ".local-signing/offline.jks",
                 "--ks-key-alias", "offline", "--ks-pass",
                 "file:" + str(ROOT / ".local-signing/password"), "--out", apk, aligned], env)
            run([sdk_tools / "apksigner", "verify", "--verbose", "--print-certs", apk], env)
            run([sdk_tools / "zipalign", "-c", "-p", "4", apk], env)
            badging = subprocess.check_output([str(sdk_tools / "aapt2"), "dump", "badging", str(apk)],
                                              env=env, text=True)
            package = config["package" if variant == "developer" else "source_package"]
            require("package: name='" + package + "'" in badging, "APK 安装包名校验失败。")
            if variant == "developer":
                require("application-label:'" + config["label"] + "'" in badging,
                        "开发版应用名称校验失败。")
            (output / (variant + "-badging.txt")).write_text(badging, encoding="utf-8")
            report["variants"][variant] = dict(
                verify_payload(apk, snapshot, variant, config), path=str(apk), package=package)
        require(inventory(PROTECTED) == before, "decompiled 内容发生变化，请检查是否有其他程序正在编辑。")
        report["decompiled_unchanged"] = True
        (output / "build-report.json").write_text(json.dumps(report, ensure_ascii=False, indent=2) + "\n",
                                                 encoding="utf-8")
        print("\n打包完成，decompiled 内容未改动。")
        for result in report["variants"].values():
            print(result["path"])
        print("校验报告：" + str(output / "build-report.json"))
    finally:
        require(inventory(PROTECTED) == before,
                "检测到 decompiled 内容变化；本脚本仅写构建目录，请检查同时运行的编辑操作。")


def main():
    parser = argparse.ArgumentParser(description="从当前关卡源码同时打包普通版和全关卡解锁开发版，不修改 decompiled。")
    parser.add_argument("--output-dir", type=Path, help="新的构建目录（默认 build/dual-时间戳）")
    args = parser.parse_args()
    output = args.output_dir or ROOT / "build" / ("dual-" + datetime.now().strftime("%Y%m%d-%H%M%S-%f"))
    try:
        build(output)
    except (RuntimeError, OSError, subprocess.CalledProcessError, ValueError) as error:
        print("打包失败：" + str(error), file=sys.stderr)
        return 1
    return 0


if __name__ == "__main__":
    sys.exit(main())
