package mm.sms.purchasesdk.ui;

import android.view.MotionEvent;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
class c implements View.OnTouchListener {
    final /* synthetic */ b a;

    c(b bVar) {
        this.a = bVar;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            view.setBackgroundDrawable(this.a.f19c);
            return false;
        }
        view.setBackgroundDrawable(this.a.f18b);
        return false;
    }
}
