package mm.sms.purchasesdk.ui;

import android.app.Activity;
import android.os.Message;
import android.view.View;
import java.util.HashMap;
import mm.sms.purchasesdk.PurchaseCode;

/* JADX INFO: loaded from: classes.dex */
class h implements View.OnClickListener {
    final /* synthetic */ f a;

    h(f fVar) {
        this.a = fVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (((Activity) mm.sms.purchasesdk.d.b.getContext()).isFinishing()) {
            mm.sms.purchasesdk.d.c.c("PurchaseDialog", "Activity is finished!");
            return;
        }
        this.a.dismiss();
        this.a.f27a.a(PurchaseCode.BILL_CANCEL_FAIL);
        this.a.f27a.a((HashMap) null);
        Message messageObtainMessage = this.a.b.obtainMessage();
        messageObtainMessage.what = 5;
        messageObtainMessage.obj = this.a.f27a;
        messageObtainMessage.sendToTarget();
    }
}
