package mm.sms.purchasesdk.ui;

import android.app.Activity;
import android.os.Message;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
class m implements View.OnClickListener {
    final /* synthetic */ k b;

    m(k kVar) {
        this.b = kVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (((Activity) mm.sms.purchasesdk.d.b.getContext()).isFinishing()) {
            mm.sms.purchasesdk.d.c.c("ResultDialog", "Activity is finished!");
            return;
        }
        this.b.dismiss();
        j.a().d();
        this.b.f41b.a(this.b.f);
        this.b.f41b.a(this.b.f39a);
        Message messageObtainMessage = this.b.b.obtainMessage();
        messageObtainMessage.what = 5;
        messageObtainMessage.obj = this.b.f41b;
        messageObtainMessage.sendToTarget();
    }
}
