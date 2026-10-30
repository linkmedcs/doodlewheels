package mm.sms.purchasesdk;

import android.os.Handler;
import java.util.HashMap;
import mm.sms.purchasesdk.ui.j;
import mm.sms.purchasesdk.ui.n;

/* JADX INFO: loaded from: classes.dex */
public class b {
    private static int b = 0;

    /* JADX INFO: renamed from: a, reason: collision with other field name */
    private Handler f8a;

    /* JADX INFO: renamed from: a, reason: collision with other field name */
    private OnSMSPurchaseListener f10a;

    /* JADX INFO: renamed from: b, reason: collision with other field name */
    private Handler f11b;
    private int a = 0;

    /* JADX INFO: renamed from: a, reason: collision with other field name */
    private HashMap f9a = null;

    public b(OnSMSPurchaseListener onSMSPurchaseListener, Handler handler, Handler handler2) {
        this.f10a = onSMSPurchaseListener;
        this.f8a = handler;
        this.f11b = handler2;
    }

    public void a() {
        mm.sms.purchasesdk.d.c.c("onBillingfinish", "code=" + this.a + "." + PurchaseCode.getReason(this.a));
        j.a().f();
        mm.sms.purchasesdk.d.b.d((Boolean) true);
        mm.sms.purchasesdk.d.b.unlock();
        n.g();
        mm.sms.purchasesdk.sms.b.a(true);
        this.f10a.onBillingFinish(this.a, this.f9a);
    }

    public void a(int i) {
        this.a = i;
    }

    public void a(int i, HashMap map) {
        mm.sms.purchasesdk.d.c.c("onDialogShow", "code=" + i);
        this.f9a = map;
        j.a().a(i, this, this.f8a, this.f11b, map);
    }

    public void a(HashMap map) {
        this.f9a = map;
    }

    public void onInitFinish(int i) {
        mm.sms.purchasesdk.d.c.c("onInitFinish", "code=" + i + "." + PurchaseCode.getReason(i));
        mm.sms.purchasesdk.d.b.unlock();
        mm.sms.purchasesdk.sms.b.a(true);
        this.f10a.onInitFinish(i);
    }
}
