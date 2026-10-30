package mm.sms.purchasesdk.ui;

import android.view.KeyEvent;
import android.view.View;
import android.widget.EditText;

/* JADX INFO: loaded from: classes.dex */
class g implements View.OnKeyListener {
    final /* synthetic */ f a;

    g(f fVar) {
        this.a = fVar;
    }

    @Override // android.view.View.OnKeyListener
    public boolean onKey(View view, int i, KeyEvent keyEvent) {
        if (i != 28) {
            return false;
        }
        ((EditText) view).setText("");
        return false;
    }
}
