package org.cocos2dx.lib;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Message;
import android.util.Log;
import android.view.ViewGroup;
import android.widget.FrameLayout;

/* JADX INFO: loaded from: classes.dex */
public abstract class Cocos2dxActivity extends Activity implements Cocos2dxHelper.Cocos2dxHelperListener {
    private static final String TAG = Cocos2dxActivity.class.getSimpleName();
    private static Context sContext = null;
    private Cocos2dxGLSurfaceView mGLSurfaceView;
    private Cocos2dxHandler mHandler;

    public static Context getContext() {
        return sContext;
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        sContext = this;
        this.mHandler = new Cocos2dxHandler(this);
        init();
        Cocos2dxHelper.init(this, this);
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        Cocos2dxHelper.onResume();
        this.mGLSurfaceView.onResume();
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        Cocos2dxHelper.onPause();
        this.mGLSurfaceView.onPause();
    }

    @Override // org.cocos2dx.lib.Cocos2dxHelper.Cocos2dxHelperListener
    public void showDialog(String pTitle, String pMessage) {
        Message msg = new Message();
        msg.what = 1;
        msg.obj = new Cocos2dxHandler.DialogMessage(pTitle, pMessage);
        this.mHandler.sendMessage(msg);
    }

    @Override // org.cocos2dx.lib.Cocos2dxHelper.Cocos2dxHelperListener
    public void showEditTextDialog(String pTitle, String pContent, int pInputMode, int pInputFlag, int pReturnType, int pMaxLength) {
        Message msg = new Message();
        msg.what = 2;
        msg.obj = new Cocos2dxHandler.EditBoxMessage(pTitle, pContent, pInputMode, pInputFlag, pReturnType, pMaxLength);
        this.mHandler.sendMessage(msg);
    }

    @Override // org.cocos2dx.lib.Cocos2dxHelper.Cocos2dxHelperListener
    public void runOnGLThread(Runnable pRunnable) {
        this.mGLSurfaceView.queueEvent(pRunnable);
    }

    public void init() {
        ViewGroup.LayoutParams framelayout_params = new ViewGroup.LayoutParams(-1, -1);
        FrameLayout framelayout = new FrameLayout(this);
        framelayout.setLayoutParams(framelayout_params);
        ViewGroup.LayoutParams edittext_layout_params = new ViewGroup.LayoutParams(-1, -2);
        Cocos2dxEditText edittext = new Cocos2dxEditText(this);
        edittext.setLayoutParams(edittext_layout_params);
        framelayout.addView(edittext);
        this.mGLSurfaceView = onCreateView();
        framelayout.addView(this.mGLSurfaceView);
        if (isAndroidEmulator()) {
            this.mGLSurfaceView.setEGLConfigChooser(8, 8, 8, 8, 16, 0);
        }
        this.mGLSurfaceView.setCocos2dxRenderer(new Cocos2dxRenderer());
        this.mGLSurfaceView.setCocos2dxEditText(edittext);
        setContentView(framelayout);
    }

    public Cocos2dxGLSurfaceView onCreateView() {
        return new Cocos2dxGLSurfaceView(this);
    }

    private static final boolean isAndroidEmulator() {
        String model = Build.MODEL;
        Log.d(TAG, "model=" + model);
        String product = Build.PRODUCT;
        Log.d(TAG, "product=" + product);
        boolean isEmulator = false;
        if (product != null) {
            isEmulator = product.equals("sdk") || product.contains("_sdk") || product.contains("sdk_");
        }
        Log.d(TAG, "isEmulator=" + isEmulator);
        return isEmulator;
    }
}
