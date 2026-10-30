package mm.sms.purchasesdk;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import mm.sms.purchasesdk.sms.SMSReceiver;
import mm.sms.purchasesdk.ui.j;

/* JADX INFO: loaded from: classes.dex */
public class SMSPurchase {
    public static final String TAG = SMSPurchase.class.getSimpleName();
    private static SMSPurchase a;

    /* JADX INFO: renamed from: a, reason: collision with other field name */
    private Handler f0a;

    /* JADX INFO: renamed from: a, reason: collision with other field name */
    private HandlerThread f1a;
    private Handler b;

    /* JADX INFO: renamed from: a, reason: collision with other field name */
    private SMSReceiver f3a = null;

    /* JADX INFO: renamed from: a, reason: collision with other field name */
    private e f2a = new e("purchase-task");

    private SMSPurchase() {
        this.f2a.start();
        this.f2a.init();
        this.f1a = new HandlerThread("Response-thread");
        this.f1a.start();
        this.b = new d(this, this.f1a.getLooper());
        this.f2a.a(this.b);
        this.f0a = this.f2a.m11a();
    }

    private void a(Context context, String str, int i, boolean z, OnSMSPurchaseListener onSMSPurchaseListener) throws Exception {
        mm.sms.purchasesdk.d.c.b(TAG, "enter order ");
        if (context == null || !(context instanceof Activity)) {
            throw new Exception("Context Object is null or Context Object is not instance of Activity");
        }
        if (onSMSPurchaseListener == null) {
            throw new Exception("OnPurchaseListener Object is null");
        }
        if (str == null || str.trim().length() == 0) {
            throw new Exception("Paycode is null");
        }
        if (i <= 0) {
            throw new Exception("orderCout must be greater than 0 ");
        }
        if (!mm.sms.purchasesdk.d.b.a(2)) {
            throw new Exception("Another request is processing");
        }
        mm.sms.purchasesdk.d.c.b(TAG, "enter order 1");
        mm.sms.purchasesdk.d.b.setContext(context);
        mm.sms.purchasesdk.d.b.b(str);
        mm.sms.purchasesdk.d.b.b(i);
        j.a().c();
        b bVar = new b(onSMSPurchaseListener, this.f0a, this.b);
        if (this.f3a == null) {
            this.f3a = new SMSReceiver();
        }
        mm.sms.purchasesdk.d.b.m9j();
        int iA = c.a(context);
        if (iA != 0) {
            bVar.a(iA, null);
            return;
        }
        mm.sms.purchasesdk.d.b.f(mm.sms.purchasesdk.d.b.n());
        Message messageObtainMessage = this.f0a.obtainMessage();
        messageObtainMessage.what = 0;
        messageObtainMessage.obj = bVar;
        messageObtainMessage.sendToTarget();
        mm.sms.purchasesdk.d.c.b(TAG, "leave order ");
    }

    public static String getDescription(int i) {
        return PurchaseCode.getDescription(i);
    }

    public static SMSPurchase getInstance() {
        if (a == null) {
            a = new SMSPurchase();
        }
        return a;
    }

    public static String getReason(int i) {
        return PurchaseCode.getReason(i);
    }

    public void setAppInfo(String str, String str2) throws Exception {
        if (str == null || str2 == null || str.trim().length() == 0 || str2.trim().length() == 0) {
            throw new Exception("invalid app parameter, pls check it");
        }
        mm.sms.purchasesdk.d.c.k();
        mm.sms.purchasesdk.d.b.a(str.trim(), str2.trim());
    }

    public void smsInit(Context context, OnSMSPurchaseListener onSMSPurchaseListener) throws Exception {
        if (context == null || !(context instanceof Activity)) {
            throw new Exception("Context Object is null or Context Object is not instance of Activity");
        }
        if (onSMSPurchaseListener == null) {
            throw new Exception("OnPurchaseListener Object is null");
        }
        if (!mm.sms.purchasesdk.d.b.a(0)) {
            throw new Exception("Another request is processing");
        }
        mm.sms.purchasesdk.d.b.setContext(context);
        b bVar = new b(onSMSPurchaseListener, this.f0a, this.b);
        if (this.f3a == null) {
            this.f3a = new SMSReceiver();
        }
        mm.sms.purchasesdk.d.b.m9j();
        int iA = c.a(context);
        if (iA != 0) {
            bVar.onInitFinish(iA);
            return;
        }
        Message messageObtainMessage = this.f0a.obtainMessage();
        messageObtainMessage.what = 0;
        messageObtainMessage.obj = bVar;
        messageObtainMessage.sendToTarget();
    }

    public void smsOrder(Context context, String str, OnSMSPurchaseListener onSMSPurchaseListener) throws Exception {
        a(context, str, 1, false, onSMSPurchaseListener);
    }
}
