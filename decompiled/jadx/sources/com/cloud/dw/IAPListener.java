package com.cloud.dw;

import android.content.Context;
import android.os.Message;
import android.widget.Toast;
import com.cloud.dw.mms.R;
import java.util.HashMap;
import mm.sms.purchasesdk.OnSMSPurchaseListener;
import mm.sms.purchasesdk.SMSPurchase;

/* JADX INFO: loaded from: classes.dex */
public class IAPListener implements OnSMSPurchaseListener {
    private DoodleWheels context;
    private IAPHandler iapHandler;

    public IAPListener(Context context, IAPHandler iapHandler) {
        this.context = (DoodleWheels) context;
        this.iapHandler = iapHandler;
    }

    @Override // mm.sms.purchasesdk.OnSMSPurchaseListener
    public void onInitFinish(int code) {
        Message message = this.iapHandler.obtainMessage(IAPHandler.INIT_FINISH);
        String result = "Init result: " + SMSPurchase.getReason(code);
        message.obj = result;
        message.sendToTarget();
    }

    @Override // mm.sms.purchasesdk.OnSMSPurchaseListener
    public void onBillingFinish(int code, HashMap arg1) {
        if (code != 1001) {
            this.context.setActivated();
            this.context.runOnUiThread(new Runnable() { // from class: com.cloud.dw.IAPListener.1
                @Override // java.lang.Runnable
                public void run() {
                    IAPListener.this.context.dismissProgressDialog();
                    Toast.makeText(IAPListener.this.context, R.string.purchase_ok, 0).show();
                }
            });
        } else {
            this.context.runOnUiThread(new Runnable() { // from class: com.cloud.dw.IAPListener.2
                @Override // java.lang.Runnable
                public void run() {
                    IAPListener.this.context.dismissProgressDialog();
                    Toast.makeText(IAPListener.this.context, R.string.purchase_fail, 0).show();
                }
            });
        }
    }
}
