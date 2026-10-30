package mm.sms.purchasesdk.sms;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Message;
import mm.sms.purchasesdk.PurchaseCode;
import mm.sms.purchasesdk.d.c;
import mm.sms.purchasesdk.fingerprint.IdentifyApp;
import org.cocos2dx.lib.Cocos2dxHandler;

/* JADX INFO: loaded from: classes.dex */
public class SMSReceiver extends BroadcastReceiver {
    private static Message a;
    private final String TAG = "SMSReceiver";
    public static String h = "aspire.iap.SMS_SEND_ACTIOIN";
    public static String i = "aspire.iap.SMS_DELIVERED_ACTION";
    public static Boolean d = false;

    public static void a(Message message) {
        a = message;
    }

    private int c() {
        switch (mm.sms.purchasesdk.d.b.x) {
            case 0:
                return PurchaseCode.INIT_OK;
            case Cocos2dxHandler.HANDLER_SHOW_DIALOG /* 1 */:
            default:
                return -1;
            case Cocos2dxHandler.HANDLER_SHOW_EDITBOX_DIALOG /* 2 */:
                return PurchaseCode.ORDER_OK;
        }
    }

    private int d() {
        switch (mm.sms.purchasesdk.d.b.x) {
            case 0:
                return PurchaseCode.INIT_SMS_ERR;
            case Cocos2dxHandler.HANDLER_SHOW_DIALOG /* 1 */:
            default:
                return -1;
            case Cocos2dxHandler.HANDLER_SHOW_EDITBOX_DIALOG /* 2 */:
                return PurchaseCode.BILL_SMS_ERR;
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        c.b("SMSReceiver", "is receiver finished：" + d);
        if (!d.booleanValue() && intent.getAction().equals(h)) {
            try {
                switch (getResultCode()) {
                    case PurchaseCode.UNKNOWN_ERR /* -1 */:
                        b.a(true);
                        if (mm.sms.purchasesdk.d.b.c().booleanValue()) {
                            IdentifyApp.saveSMS(mm.sms.purchasesdk.d.b.p(), mm.sms.purchasesdk.d.b.l(), mm.sms.purchasesdk.d.b.k(), mm.sms.purchasesdk.d.b.g(), mm.sms.purchasesdk.d.b.q());
                        }
                        a.arg1 = c();
                        a.sendToTarget();
                        break;
                    case 0:
                    default:
                        break;
                    case Cocos2dxHandler.HANDLER_SHOW_DIALOG /* 1 */:
                        b.a(true);
                        a.arg1 = d();
                        a.sendToTarget();
                        break;
                    case Cocos2dxHandler.HANDLER_SHOW_EDITBOX_DIALOG /* 2 */:
                        break;
                }
            } catch (Exception e) {
                e.getStackTrace();
            }
        }
    }
}
