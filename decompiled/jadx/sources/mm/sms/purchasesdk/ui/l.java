package mm.sms.purchasesdk.ui;

import android.app.Activity;
import android.os.Message;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
class l implements View.OnClickListener {
    final /* synthetic */ k b;

    l(k kVar) {
        this.b = kVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.b.f40b.getText().equals("重 新 购 买")) {
            if (((Activity) mm.sms.purchasesdk.d.b.getContext()).isFinishing()) {
                mm.sms.purchasesdk.d.c.c("ResultDialog", "Activity is finished!");
                return;
            }
            this.b.dismiss();
            Message messageObtainMessage = this.b.a.obtainMessage();
            messageObtainMessage.what = 0;
            messageObtainMessage.obj = this.b.f41b;
            messageObtainMessage.arg1 = 0;
            messageObtainMessage.sendToTarget();
            return;
        }
        if (((Activity) mm.sms.purchasesdk.d.b.getContext()).isFinishing()) {
            mm.sms.purchasesdk.d.c.c("ResultDialog", "Activity is finished!");
            return;
        }
        this.b.dismiss();
        this.b.f41b.a(this.b.f);
        this.b.f41b.a(this.b.f39a);
        Message messageObtainMessage2 = this.b.b.obtainMessage();
        messageObtainMessage2.what = 5;
        messageObtainMessage2.obj = this.b.f41b;
        messageObtainMessage2.sendToTarget();
    }
}
