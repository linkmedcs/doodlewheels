package mm.sms.purchasesdk.ui;

import android.view.View;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;

/* JADX INFO: loaded from: classes.dex */
public class e {
    private View a = d();

    private View d() {
        RelativeLayout relativeLayout = new RelativeLayout(mm.sms.purchasesdk.d.b.getContext());
        relativeLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        ProgressBar progressBar = new ProgressBar(mm.sms.purchasesdk.d.b.getContext());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(13);
        progressBar.setLayoutParams(layoutParams);
        relativeLayout.addView(progressBar);
        return relativeLayout;
    }

    public View c() {
        return this.a;
    }
}
