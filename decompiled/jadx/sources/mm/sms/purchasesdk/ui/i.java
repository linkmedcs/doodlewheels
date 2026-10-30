package mm.sms.purchasesdk.ui;

import android.app.Activity;
import android.os.Bundle;
import android.os.Message;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
class i implements View.OnClickListener {
    final /* synthetic */ f a;

    i(f fVar) {
        this.a = fVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (((Activity) mm.sms.purchasesdk.d.b.getContext()).isFinishing()) {
            mm.sms.purchasesdk.d.c.c("PurchaseDialog", "Activity is finished!");
            return;
        }
        j.a().c();
        Bundle bundle = new Bundle();
        bundle.putInt("OrderCount", this.a.f31b.a());
        bundle.putBoolean("multiSubs", this.a.f31b.m2b());
        Message messageObtainMessage = this.a.a.obtainMessage();
        messageObtainMessage.what = 2;
        messageObtainMessage.obj = this.a.f27a;
        messageObtainMessage.arg1 = 1;
        messageObtainMessage.setData(bundle);
        messageObtainMessage.sendToTarget();
    }
}
