# DoodleBike APK 静态分析

原始 APK：`doodlebike_crack_1.0.apk`。当前 `decompiled/apktool/` 已由用户提供的 `doodlewheels-60-levels.apk` 反编译结果覆盖，包含该构建的 60 关、离线激活、全屏适配和启动遮罩。原始 APK、`decompiled/raw/` 与 `decompiled/jadx/` 保持原始分析基线。

- [反编译目录说明](decompiled/README.md)
- [付费与关卡限制定位](decompiled/PAYMENT_ANALYSIS.md)
- [Java 主入口](decompiled/jadx/sources/com/cloud/dw/DoodleWheels.java)
- [购买结果判断](decompiled/jadx/sources/com/cloud/dw/IAPListener.java)

恢复来源 APK 的 SHA-256 为 `c6ca9b37e9c522787c6564f32a1b2fca94f7e7670fd571563a25bcab59b37f52`。已重新构建并验证签名和对齐；代码、素材、60 个关卡及原生库与来源包逐字节一致，资源表经重新编译后解码内容一致，尚未真机验证。APK 不包含此前用于生成地图的 Python 脚本，这些开发脚本未恢复。

重新打包：`apktool b -p decompiled/apktool-framework decompiled/apktool -o build/doodlewheels-60-restored-unsigned.apk`（先创建 `build/`）。签名密钥保存在本地 `.local-signing/`，构建产物与私钥均不提交。

`decompiled/raw/` 保存原始解包内容；`decompiled/apktool/` 保存可进一步编辑、重打包的 Smali 与资源；`decompiled/jadx/` 中的 Java 代码供阅读分析。

`decompiled/native/libgame.thumb.disasm.txt` 用于查看已定位的 Thumb 函数；该文件强制按 Thumb 解码，混合 ARM 指令和数据区可能显示错误，需要结合实际函数边界判断。`libgame.disasm.txt` 默认按 ARM 解码，对 Thumb 函数不适用。
