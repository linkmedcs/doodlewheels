# 付费与关卡限制定位

本记录基于当前 `doodlebike_crack_1.0.apk` 的静态分析，没有修改 APK，也未运行游戏。没有未修改版本，不能证明某条指令的历史修改来源。

## 最符合既往修改描述的位置

Java：`jadx/sources/com/cloud/dw/IAPListener.java:30`，`onBillingFinish(int code, HashMap arg1)`：

```java
if (code != 1001) {
    this.context.setActivated();
    // 关闭等待框，显示 purchase_ok
} else {
    // 关闭等待框，显示 purchase_fail
}
```

SDK 的 `jadx/sources/mm/sms/purchasesdk/PurchaseCode.java:37` 明确定义 `ORDER_OK = 1001`。当前 APK 却在 `code != 1001` 时激活，与将支付判断反转的修改吻合。通常成功分支应判断 `code == 1001`；这只是根据 SDK 含义推断，尚无原版差异证据。

对应 Smali：`apktool/smali/com/cloud/dw/IAPListener.smali`：

```smali
# 第 57 行
const/16 v0, 0x3e9
# 第 59 行：等于成功码时跳到失败分支
if-eq p1, v0, :cond_0
# 第 64 行：未跳转时激活
invoke-virtual {v0}, Lcom/cloud/dw/DoodleWheels;->setActivated()V
```

修改过的条件跳转很可能就是该 `if-eq`；原版可能使用 `if-ne`，但需要原版 APK 才能证实。

## 原生层实际关卡限制

以下地址是 `raw/lib/armeabi/libgame.so` 的 ELF 虚拟地址（未加运行时装载基址），指令为 Thumb。可在 `native/libgame.thumb.disasm.txt` 搜索函数名。

| 函数 | 地址 | 作用 |
| --- | --- | --- |
| `verifyGenuine(int)` / `_Z13verifyGenuinei` | `0xA253C` | 内部关卡编号 <= 2 放行，否则返回激活状态 |
| `getActivateFlag()` | `0xA1128` | 读取内存中的激活标记 |
| `Java_com_cloud_dw_DoodleWheels_nativeOnStart` | `0xA1050` | 从 CCUserDefault 读取 `activated`，默认 false |
| `Java_com_cloud_dw_DoodleWheels_setActivated` | `0xA1090` | 设置内存标记，将 `activated=true` 写入 CCUserDefault 并 flush |
| `LevelsScreen::playLevel(cocos2d::CCObject*)` | `0xA5988` | 选关入口；`0xA59A0` 调用验证，失败则创建购买弹窗 |
| `GameScreen::onPressButton(cocos2d::CCObject*)` | `0xA4058` | 下一关入口；`0xA40C8` 用当前编号 + 1 调用验证，失败则创建购买弹窗 |
| `ConfirmPurchaseLayer::onPressButton(cocos2d::CCObject*)` | `0xA1E48` | 购买弹窗按钮，确认时调用原生 `doBilling()` |
| `doBilling()` | `0xA10BC` | 通过 JNI 调用 Java `DoodleWheels.doBilling()` |

核心验证函数：

```asm
000a253c <verifyGenuine(int)>:
 a253c: b508       push {r3, lr}
 a253e: 1c03       adds r3, r0, #0
 a2540: 2001       movs r0, #1
 a2542: 2b02       cmp r3, #2
 a2544: dd01       ble 0xa254a
 a2546: f7fe fdef  bl 0xa1128 <getActivateFlag()>
 a254a: bd08       pop {r3, pc}
```

等效伪代码：

```cpp
bool verifyGenuine(int levelIndex) {
    if (levelIndex <= 2) return true;
    return getActivateFlag();
}
```

关卡界面显示编号时会给内部编号加 1（`LevelsScreen::onEnter` 中 `0xA5EB2`），而菜单 tag 保存内部编号（`0xA5F18` 起）。因此内部编号 0、1、2 对应第 1、2、3 关，第 4 关起检查付费激活。

## 调用关系及当前修改的限制

```text
选关 / 下一关
  -> verifyGenuine(levelIndex)
  -> 前三关直接通过；之后检查 activated
  -> 未激活：ConfirmPurchaseLayer
  -> 原生 doBilling()
  -> Java DoodleWheels.doBilling()（DoodleWheels.java:72）
  -> SMSPurchase.smsOrder(...)
  -> IAPListener.onBillingFinish(code, ...)
  -> 当前 APK：code != 1001 时 setActivated()
  -> 原生写入 activated=true，之后关卡验证通过
```

当前修改依赖 SDK 实际触发 `onBillingFinish` 回调；它没有移除原生层的关卡验证。如果通道关闭导致没有回调，或流程提前抛出异常，激活分支可能仍不会执行。此结论是控制流分析，未进行设备运行验证。

另一个容易混淆的函数是 `GameSetting::unlock()`（`0xA545C`），当前函数直接返回 true；真正的付费门槛调用的是上面的 `verifyGenuine(int)`，不能仅凭 unlock 名称认定它负责付费。
