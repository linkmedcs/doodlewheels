package mm.sms.purchasesdk;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import mm.sms.purchasesdk.fingerprint.IdentifyApp;
import mm.sms.purchasesdk.sms.SMSReceiver;

/* JADX INFO: loaded from: classes.dex */
public class e extends HandlerThread {
    private static mm.sms.purchasesdk.a.a a;
    private static boolean b;

    /* JADX INFO: renamed from: a, reason: collision with other field name */
    Handler f15a;

    /* JADX INFO: renamed from: b, reason: collision with other field name */
    Handler f16b;

    public e(String str) {
        super(str);
    }

    public static mm.sms.purchasesdk.a.a a() {
        return a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(b bVar) {
        mm.sms.purchasesdk.d.c.b("TaskThread", "init() called");
        int iB = c.b(mm.sms.purchasesdk.d.b.getContext());
        if (iB != 1000) {
            a(bVar, iB);
            return;
        }
        mm.sms.purchasesdk.sms.a aVar = new mm.sms.purchasesdk.sms.a();
        int iB2 = aVar.b();
        mm.sms.purchasesdk.d.c.b("TaskThread", "checkActive() retcode = " + iB2);
        Message messageObtainMessage = this.f16b.obtainMessage();
        messageObtainMessage.what = 0;
        messageObtainMessage.obj = bVar;
        if (iB2 != 1104) {
            messageObtainMessage.arg1 = iB2;
            messageObtainMessage.sendToTarget();
            return;
        }
        mm.sms.purchasesdk.d.c.b("TaskThread", "init() called 3");
        SMSReceiver.a(messageObtainMessage);
        String strBase64encode = IdentifyApp.base64encode(mm.sms.purchasesdk.d.b.l().getBytes());
        if (strBase64encode.length() > 20) {
            strBase64encode = strBase64encode.substring(0, strBase64encode.length() - 1);
        }
        String strBase64encode2 = IdentifyApp.base64encode(mm.sms.purchasesdk.d.b.k().getBytes());
        if (strBase64encode2.length() > 20) {
            strBase64encode2 = strBase64encode2.substring(0, strBase64encode2.length() - 1);
        }
        String strSMSContent = IdentifyApp.SMSContent(mm.sms.purchasesdk.d.b.r(), mm.sms.purchasesdk.d.b.m(), mm.sms.purchasesdk.d.b.j(), strBase64encode, strBase64encode2, mm.sms.purchasesdk.d.b.h(), mm.sms.purchasesdk.d.b.f13x, mm.sms.purchasesdk.d.b.f14y, mm.sms.purchasesdk.d.b.l(), mm.sms.purchasesdk.d.b.k());
        mm.sms.purchasesdk.d.c.b("TaskThread", "send message: " + strSMSContent);
        aVar.a(strSMSContent, messageObtainMessage);
        mm.sms.purchasesdk.d.c.b("TaskThread", "init() called 1");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(b bVar, int i) {
        Message messageObtainMessage = this.f16b.obtainMessage();
        messageObtainMessage.what = 0;
        messageObtainMessage.arg1 = i;
        messageObtainMessage.obj = bVar;
        messageObtainMessage.sendToTarget();
    }

    /* JADX INFO: renamed from: a, reason: collision with other method in class */
    public static boolean m10a() {
        return b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(b bVar) {
        mm.sms.purchasesdk.d.c.b("TaskThread", " enter auth  ");
        if (a == null) {
            a = new mm.sms.purchasesdk.a.a();
        }
        if (mm.sms.purchasesdk.b.a.a(a).booleanValue()) {
            PurchaseCode.setStatusCode(PurchaseCode.BILL_NOORDER);
            Message messageObtainMessage = this.f16b.obtainMessage();
            messageObtainMessage.what = 2;
            messageObtainMessage.arg1 = PurchaseCode.getStatusCode();
            messageObtainMessage.obj = bVar;
            messageObtainMessage.sendToTarget();
            return;
        }
        mm.sms.purchasesdk.d.c.c("TaskThread", "AuthManager checkAuth ret = null.code=" + PurchaseCode.getStatusCode());
        Message messageObtainMessage2 = this.f16b.obtainMessage();
        messageObtainMessage2.what = 2;
        messageObtainMessage2.arg1 = PurchaseCode.getStatusCode();
        messageObtainMessage2.obj = bVar;
        messageObtainMessage2.sendToTarget();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(b bVar) {
        mm.sms.purchasesdk.d.c.b("TaskThread", " enter order  ");
        mm.sms.purchasesdk.d.b.d((Boolean) false);
        Message messageObtainMessage = this.f16b.obtainMessage();
        messageObtainMessage.what = 2;
        messageObtainMessage.arg1 = PurchaseCode.getStatusCode();
        messageObtainMessage.obj = bVar;
        mm.sms.purchasesdk.a.b.a(a, messageObtainMessage);
    }

    /* JADX INFO: renamed from: a, reason: collision with other method in class */
    public Handler m11a() {
        if (this.f15a == null) {
            init();
        }
        return this.f15a;
    }

    public void a(Handler handler) {
        this.f16b = handler;
    }

    public void init() {
        this.f15a = new f(this, getLooper());
    }
}
