# 离线激活改动建议

当前只有建议补丁，尚未应用到 `decompiled/apktool/`，原始 APK 也没有修改。基线提交为 `4c80c76`。

## 推荐方案：复用已有激活接口，并停用短信入口

`offline-activation.patch` 修改两个文件：

1. `DoodleWheels.smali` 的 `onCreate()` 保留父类初始化和音量设置，移除短信 SDK 与购买监听器初始化，避免启动时仍依赖已关闭的服务。
2. `onStart()` 先执行现有 `nativeOnStart()`，随后调用现有 `setActivated()`。前者会读取存档激活标记，因此调用顺序必须如此，避免激活状态被旧存档覆盖。
3. `doBilling()` 保留 JNI 要求的签名，改为直接调用激活接口，作为旧入口的兜底。
4. Manifest 移除短信 SDK 的接收器、`SEND_SMS` 与 `READ_PHONE_STATE` 权限。已检索当前应用和 Cocos2d-x Java 代码，未发现它们使用电话状态 API；相关调用位于计费 SDK 中。

原生 `setActivated()` 已有完整行为：更新内存标记，写入 `CCUserDefault` 的 `activated=true` 并 flush。这样两个关卡入口继续使用原有验证函数，从第 4 关起也可通过激活检查。通关进度、评分和关卡内容不需要修改。

每次 `onStart()` 都会写入一次激活标记，这是不新增 native 接口的简单实现；后续如需避免重复写入，可独立优化，但不影响本方案意图。

## 其他方案比较

| 方案 | 适用情况 | 取舍 |
| --- | --- | --- |
| 反转 `onBillingFinish` 的条件（当前版本） | 旧 SDK 仍能回调 | 依赖支付流程执行，失败回调或异常路径可能无法到达激活逻辑 |
| 启动时调用 `setActivated()`，移除短信初始化（推荐） | 希望稳定地离线保留游戏 | 改动可读，复用持久化逻辑，需重打包和签名 |
| 原生 `verifyGenuine(int)` 统一返回 true | 只希望最小幅度修改原生验证入口 | 可同时覆盖选关和下一关，但依赖此版本的二进制位置；单独修改它仍会保留启动时的短信 SDK 初始化 |

## 应用与验证范围

补丁针对 Apktool 解码目录，JADX 生成的 Java 仅用于阅读，不会参与重打包。可以在项目根目录先检查，再应用：

```sh
git apply --check proposals/offline-activation.patch
git apply proposals/offline-activation.patch
```

已完成 `git apply --check`，确认补丁可应用到当前基线；尚未应用、重建、签名或进行真机验证。

后续实施时应验证：全新数据下进入第 4 关、第三关完成后点下一关、退出重启后进入后续关卡，以及保留已有存档时的行为。还应确认不再显示计费初始化提示。

重签名后的 APK 若与手机已安装版本证书不同，不能直接覆盖安装；有原签名密钥时可保留同一签名，否则应先处理存档迁移再更换安装包。当前 APK 只有 ARM 32 位库，重打包不会自动解决只支持 64 位设备的兼容性问题。
