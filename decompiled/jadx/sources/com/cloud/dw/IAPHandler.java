package com.cloud.dw;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.os.Handler;
import android.os.Message;
import android.widget.Toast;
import com.cloud.dw.mms.R;

/* JADX INFO: loaded from: classes.dex */
public class IAPHandler extends Handler {
    public static final int BILL_FINISH = 10001;
    public static final int INIT_FINISH = 10000;
    public static final int QUERY_FINISH = 10002;
    public static final int UNSUB_FINISH = 10003;
    private DoodleWheels context;

    public IAPHandler(Activity context) {
        this.context = (DoodleWheels) context;
    }

    @Override // android.os.Handler
    public void handleMessage(Message msg) {
        super.handleMessage(msg);
        int what = msg.what;
        switch (what) {
            case INIT_FINISH /* 10000 */:
                Toast.makeText(this.context, (String) msg.obj, 0).show();
                this.context.dismissProgressDialog();
                break;
        }
    }

    public void showDialog(String title, String msg) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.context);
        builder.setTitle(title);
        builder.setIcon(this.context.getResources().getDrawable(R.drawable.icon));
        if (msg == null) {
            msg = "Undefined error";
        }
        builder.setMessage(msg);
        builder.setPositiveButton("OK", new DialogInterface.OnClickListener() { // from class: com.cloud.dw.IAPHandler.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialog, int whichButton) {
                dialog.dismiss();
            }
        });
        builder.create().show();
    }
}
