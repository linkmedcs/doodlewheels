# DoodleBike APK 静态分析

原始 APK：`doodlebike_crack_1.0.apk`。当前保存的是反编译与分析基线，尚未应用新的游戏逻辑修改。

- [反编译目录说明](decompiled/README.md)
- [付费与关卡限制定位](decompiled/PAYMENT_ANALYSIS.md)
- [Java 主入口](decompiled/jadx/sources/com/cloud/dw/DoodleWheels.java)
- [购买结果判断](decompiled/jadx/sources/com/cloud/dw/IAPListener.java)

`decompiled/raw/` 保存原始解包内容；`decompiled/apktool/` 保存可进一步编辑、重打包的 Smali 与资源；`decompiled/jadx/` 中的 Java 代码供阅读分析。

`decompiled/native/libgame.thumb.disasm.txt` 用于查看已定位的 Thumb 函数；该文件强制按 Thumb 解码，混合 ARM 指令和数据区可能显示错误，需要结合实际函数边界判断。`libgame.disasm.txt` 默认按 ARM 解码，对 Thumb 函数不适用。
