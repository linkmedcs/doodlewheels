package mm.sms.purchasesdk.sms;

import android.app.PendingIntent;
import android.content.Intent;
import android.os.Message;
import android.telephony.gsm.SmsManager;
import mm.sms.purchasesdk.PurchaseCode;
import mm.sms.purchasesdk.d.c;
import mm.sms.purchasesdk.fingerprint.IdentifyApp;

/* JADX INFO: loaded from: classes.dex */
public class a {
    private String TAG = "SMSManager";

    public void a(String str, Message message) {
        c.b(this.TAG, "send message:" + str);
        try {
            SmsManager.getDefault().sendTextMessage("1065842410", null, str, PendingIntent.getBroadcast(mm.sms.purchasesdk.d.b.getContext().getApplicationContext(), 0, new Intent(SMSReceiver.h), 0), PendingIntent.getBroadcast(mm.sms.purchasesdk.d.b.getContext().getApplicationContext(), 0, new Intent(SMSReceiver.i), 0));
            new b(mm.sms.purchasesdk.d.b.e(), message).start();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public int b() {
        switch (IdentifyApp.checkSMS(mm.sms.purchasesdk.d.b.p(), mm.sms.purchasesdk.d.b.l(), mm.sms.purchasesdk.d.b.k(), mm.sms.purchasesdk.d.b.g(), mm.sms.purchasesdk.d.b.q())) {
            case -11:
            case -10:
            case -9:
            case -8:
            case -3:
                return PurchaseCode.INIT_NO_ACTIVE;
            case -7:
            case -6:
            case -5:
            case -4:
            default:
                return PurchaseCode.INIT_OK;
        }
    }
}
