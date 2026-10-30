package mm.sms.purchasesdk.ui;

import android.app.Activity;
import android.os.Handler;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class j {
    private static j a = null;

    /* JADX INFO: renamed from: a, reason: collision with other field name */
    private d f33a;

    /* JADX INFO: renamed from: a, reason: collision with other field name */
    private k f34a;
    private f b;

    private j() {
    }

    public static j a() {
        if (a == null) {
            a = new j();
        }
        return a;
    }

    public void a(int i, mm.sms.purchasesdk.b bVar, Handler handler, Handler handler2, HashMap map) {
        if (((Activity) mm.sms.purchasesdk.d.b.getContext()).isFinishing()) {
            return;
        }
        this.f34a = new k(mm.sms.purchasesdk.d.b.getContext(), bVar, handler, handler2, i, map);
        this.f34a.show();
    }

    public void a(Handler handler, Handler handler2, mm.sms.purchasesdk.b bVar, mm.sms.purchasesdk.a.a aVar) {
        if (((Activity) mm.sms.purchasesdk.d.b.getContext()).isFinishing()) {
            return;
        }
        if (this.b == null || this.b.getContext() != mm.sms.purchasesdk.d.b.getContext()) {
            this.b = new f(mm.sms.purchasesdk.d.b.getContext(), handler, handler2, bVar, aVar);
        } else {
            this.b.a(aVar);
        }
        this.b.show();
        d();
    }

    public void c() {
        if (((Activity) mm.sms.purchasesdk.d.b.getContext()).isFinishing()) {
            return;
        }
        if (this.f33a == null || this.f33a.getOwnerActivity() != mm.sms.purchasesdk.d.b.getContext()) {
            this.f33a = new d(mm.sms.purchasesdk.d.b.getContext());
        }
        if (this.f33a.isShowing()) {
            return;
        }
        this.f33a.show();
    }

    public void d() {
        if (this.f33a == null || !this.f33a.isShowing()) {
            return;
        }
        this.f33a.dismiss();
    }

    public void e() {
        if (this.b == null || !this.b.isShowing()) {
            return;
        }
        this.b.dismiss();
    }

    public void f() {
        if (this.f33a != null && this.f33a.isShowing()) {
            this.f33a.dismiss();
        }
        if (this.b != null && this.b.isShowing()) {
            this.b.dismiss();
        }
        if (this.f34a != null && this.f34a.isShowing()) {
            this.f34a.dismiss();
        }
        this.f33a = null;
        this.b = null;
        this.f34a = null;
    }
}
