package mm.sms.purchasesdk.ui;

import android.R;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.view.View;
import android.view.WindowManager;
import android.widget.LinearLayout;

/* JADX INFO: loaded from: classes.dex */
public class d extends Dialog {
    private LinearLayout a;

    /* JADX INFO: renamed from: a, reason: collision with other field name */
    private e f21a;
    private int e;

    public d(Context context) {
        super(context, R.style.Theme);
        this.e = 1003;
        setOwnerActivity((Activity) context);
        getWindow().requestFeature(1);
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.alpha = 0.8f;
        getWindow().setAttributes(attributes);
    }

    private View b() {
        this.a = new LinearLayout(mm.sms.purchasesdk.d.b.getContext());
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        this.a.setOrientation(1);
        this.a.setLayoutParams(layoutParams);
        this.f21a = new e();
        this.a.addView(this.f21a.c());
        return this.a;
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        if (getOwnerActivity() != mm.sms.purchasesdk.d.b.getContext()) {
            return;
        }
        super.dismiss();
    }

    @Override // android.app.Dialog
    public void show() {
        setContentView(b());
        setCancelable(false);
        super.show();
    }
}
