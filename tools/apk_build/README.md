# 普通版与全关卡解锁开发版

在 Finder 中双击根目录的 `pack.command`；也可以在项目根目录运行 `./pack.command`、`bash pack.command`，或：

```sh
python3 tools/apk_build/build.py
```

每次读取当前 `decompiled/apktool`，生成新的 `build/dual-时间戳/`：

- `doodlewheels-normal.apk`：普通最新版，保留正常逐关解锁规则。
- `doodlewheels-developer.apk`：显示为 **DoodleWheels 开发版**，60 关直接可选。
- `build-report.json`：APK 哈希、关卡和素材校验结果、源文件快照哈希、补丁配置。

开发版包名为 `com.cloud.dw.mms.dev`，可与普通版 `com.cloud.dw.mms` 同时安装，存档各自独立。开发版开放选关，不伪造通关成绩，已通关关卡仍显示原有状态。两个版本都包含本次构建时的所有关卡修改，使用现有 `.local-signing/offline.jks` 签名。

脚本只读取 `decompiled`，先复制到独立构建目录，再编译副本。开发版只在副本里应用 `developer.json` 中的四字节原生选关补丁，以及包名、应用名修改；普通版不应用补丁。框架缓存也复制到构建目录，避免 apktool 写回源目录。构建前后检查整个 `decompiled` 的文件哈希；验证两份 APK 的签名、对齐、包名及全部 60 个关卡、素材和原生库内容。

补丁位于 `LevelsScreen::onEnter` 的锁定分支：将未开放关卡用于菜单显示的临时状态置为可选，然后进入既有按钮创建逻辑，不改变存档状态或物理逻辑。补丁包含指令与 60 关菜单的前置校验；将来更换原生库且指令不匹配时，会停止并报错，需要重新定位补丁。

依赖：Python 3（仅标准库）、apktool、OpenJDK、Android SDK Build Tools，以及本地现有签名密钥和 `.local-signing/password`。脚本优先读取 `JAVA_HOME`、`ANDROID_SDK_ROOT` / `ANDROID_HOME`，也支持本机 Homebrew JDK 和 `~/Library/Android/sdk` 路径。不自动安装依赖或生成新密钥。

可以指定一个尚不存在的输出目录：

```sh
python3 tools/apk_build/build.py --output-dir build/my-dual-build
```

请等待关卡编辑保存完成后再运行脚本；本次两份 APK 共用同一份源码快照。构建产物、密码、私钥均在 Git 忽略目录中。
