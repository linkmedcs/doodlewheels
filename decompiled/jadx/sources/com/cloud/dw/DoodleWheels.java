package com.cloud.dw;

import android.app.ProgressDialog;
import android.os.Bundle;
import mm.sms.purchasesdk.SMSPurchase;
import org.cocos2dx.lib.Cocos2dxActivity;

/* JADX INFO: loaded from: classes.dex */
public class DoodleWheels extends Cocos2dxActivity {
    private static final String APPID = "300002826861";
    private static final String APPKEY = "E7A3C05453C9C090";
    private static final String LEASE_PAYCODE = "30000282686101";
    private IAPListener mListener;
    private ProgressDialog mProgressDialog;
    public SMSPurchase mPurchase;

    private native void nativeOnDestroy();

    private native void nativeOnStart();

    native void setActivated();

    static {
        System.loadLibrary("game");
    }

    @Override // org.cocos2dx.lib.Cocos2dxActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setVolumeControlStream(3);
        IAPHandler iapHandler = new IAPHandler(this);
        this.mListener = new IAPListener(this, iapHandler);
        this.mPurchase = SMSPurchase.getInstance();
        try {
            this.mPurchase.setAppInfo(APPID, APPKEY);
            this.mPurchase.smsInit(this, this.mListener);
        } catch (Exception e1) {
            e1.printStackTrace();
        }
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        nativeOnStart();
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        nativeOnDestroy();
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showProgressDialog() {
        if (this.mProgressDialog == null) {
            this.mProgressDialog = new ProgressDialog(this);
            this.mProgressDialog.setIndeterminate(true);
            this.mProgressDialog.setMessage("请稍候.....");
        }
        if (!this.mProgressDialog.isShowing()) {
            this.mProgressDialog.show();
        }
    }

    public void dismissProgressDialog() {
        if (this.mProgressDialog != null && this.mProgressDialog.isShowing()) {
            this.mProgressDialog.dismiss();
        }
    }

    public void doBilling() {
        runOnUiThread(new Runnable() { // from class: com.cloud.dw.DoodleWheels.1
            @Override // java.lang.Runnable
            public void run() {
                DoodleWheels.this.showProgressDialog();
                try {
                    DoodleWheels.this.mPurchase.smsOrder(DoodleWheels.this, DoodleWheels.LEASE_PAYCODE, DoodleWheels.this.mListener);
                } catch (Exception e1) {
                    e1.printStackTrace();
                }
            }
        });
    }
}
