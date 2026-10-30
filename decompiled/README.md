# DoodleBike APK 反编译结果

原始文件：`../doodlebike_crack_1.0.apk`（保留未修改），SHA-256 见 `apk.sha256`。

## 目录

- `jadx/sources/`：JADX 1.5.6 还原的 60 个 Java 文件。
- `jadx/sources/com/cloud/dw/DoodleWheels.java`：Android 主 Activity，包含 JNI 声明及短信计费接入。
- `apktool/`：Apktool 3.0.3 解码结果，包括可读的 `AndroidManifest.xml`、资源 XML、Smali 和原生库。
- `raw/`：APK 原始解包内容。
- `raw/assets/res/`：游戏图片、图集配置、文字及音效。
- `raw/assets/lvs/`：45 个 `.dwl` 关卡文件，内容为可读 XML。
- `raw/lib/armeabi/libgame.so`：ARM 32 位游戏核心，使用 Cocos2d-x。
- `raw/lib/armeabi/libsmsiap.so`：原生计费库。
- `native/*.strings.txt`：从两个原生库中提取的可读字符串，供进一步定位函数。
- `jadx.log`、`apktool.log`：处理日志。

## 应用信息与限制

- 包名：`com.cloud.dw.mms`
- 版本：1.0，versionCode 1，最低 Android API 8。
- 主入口：`com.cloud.dw.DoodleWheels`。
- Java 代码主要包含 Android 桥接、Cocos2d-x 接入及短信支付 SDK；主要游戏逻辑位于 `libgame.so`。
- 本次已完成 DEX 到 Java、DEX 到 Smali 及资源解码；没有对 `.so` 执行 C/C++ 伪代码反编译。原生库的常规符号表已剥离，但字符串中仍可见部分导出函数名，可进一步使用 Ghidra 等工具分析。
- 反编译产物不是原始源码工程，不能保证直接编译；原始变量名、注释及构建配置通常无法完整恢复。
- 本次仅静态提取和分析，没有安装或运行 APK。

## 重现命令

```sh
jadx -d decompiled/jadx doodlebike_crack_1.0.apk
apktool d -p decompiled/apktool-framework -o decompiled/apktool doodlebike_crack_1.0.apk
```

重现时请使用新的输出目录，避免与已有结果冲突。
