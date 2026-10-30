package org.cocos2dx.lib;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.os.Handler;
import android.os.Message;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public class Cocos2dxHandler extends Handler {
    public static final int HANDLER_SHOW_DIALOG = 1;
    public static final int HANDLER_SHOW_EDITBOX_DIALOG = 2;
    private WeakReference<Cocos2dxActivity> mActivity;

    public Cocos2dxHandler(Cocos2dxActivity activity) {
        this.mActivity = new WeakReference<>(activity);
    }

    @Override // android.os.Handler
    public void handleMessage(Message msg) {
        switch (msg.what) {
            case HANDLER_SHOW_DIALOG /* 1 */:
                showDialog(msg);
                break;
            case HANDLER_SHOW_EDITBOX_DIALOG /* 2 */:
                showEditBoxDialog(msg);
                break;
        }
    }

    private void showDialog(Message msg) {
        Cocos2dxActivity theActivity = this.mActivity.get();
        DialogMessage dialogMessage = (DialogMessage) msg.obj;
        new AlertDialog.Builder(theActivity).setTitle(dialogMessage.titile).setMessage(dialogMessage.message).setPositiveButton("Ok", new DialogInterface.OnClickListener() { // from class: org.cocos2dx.lib.Cocos2dxHandler.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialog, int which) {
            }
        }).create().show();
    }

    private void showEditBoxDialog(Message msg) {
        EditBoxMessage editBoxMessage = (EditBoxMessage) msg.obj;
        new Cocos2dxEditBoxDialog(this.mActivity.get(), editBoxMessage.title, editBoxMessage.content, editBoxMessage.inputMode, editBoxMessage.inputFlag, editBoxMessage.returnType, editBoxMessage.maxLength).show();
    }

    public static class DialogMessage {
        public String message;
        public String titile;

        public DialogMessage(String title, String message) {
            this.titile = title;
            this.message = message;
        }
    }

    public static class EditBoxMessage {
        public String content;
        public int inputFlag;
        public int inputMode;
        public int maxLength;
        public int returnType;
        public String title;

        public EditBoxMessage(String title, String content, int inputMode, int inputFlag, int returnType, int maxLength) {
            this.content = content;
            this.title = title;
            this.inputMode = inputMode;
            this.inputFlag = inputFlag;
            this.returnType = returnType;
            this.maxLength = maxLength;
        }
    }
}
