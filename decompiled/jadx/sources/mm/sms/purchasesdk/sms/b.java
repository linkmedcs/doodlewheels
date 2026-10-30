package mm.sms.purchasesdk.sms;

import android.os.Message;
import mm.sms.purchasesdk.PurchaseCode;
import mm.sms.purchasesdk.d.c;
import org.cocos2dx.lib.Cocos2dxHandler;

/* JADX INFO: loaded from: classes.dex */
public class b extends Thread {
    private static Boolean e = false;
    private final String TAG = "Timer";
    private Message a;
    private int d;

    public b(int i, Message message) {
        e = false;
        this.d = i;
        this.a = message;
    }

    public static void a(Boolean bool) {
        e = bool;
    }

    private int c() {
        switch (mm.sms.purchasesdk.d.b.x) {
            case 0:
                return PurchaseCode.INIT_TIMEOUT;
            case Cocos2dxHandler.HANDLER_SHOW_DIALOG /* 1 */:
            default:
                return -1;
            case Cocos2dxHandler.HANDLER_SHOW_EDITBOX_DIALOG /* 2 */:
                return PurchaseCode.BILL_TIMEOUT;
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        super.run();
        while (!e.booleanValue() && this.d > 0) {
            SMSReceiver.d = false;
            try {
                sleep(1000L);
                this.d--;
            } catch (InterruptedException e2) {
                e2.printStackTrace();
            }
        }
        if (this.d == 0) {
            c.b("Timer", "send message failed,is timeout ");
            SMSReceiver.d = true;
            this.a.arg1 = c();
            this.a.sendToTarget();
        }
    }
}
