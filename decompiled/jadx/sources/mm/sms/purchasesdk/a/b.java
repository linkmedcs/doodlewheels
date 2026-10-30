package mm.sms.purchasesdk.a;

import android.os.Message;
import mm.sms.purchasesdk.fingerprint.IdentifyApp;
import mm.sms.purchasesdk.sms.SMSReceiver;

/* JADX INFO: loaded from: classes.dex */
public class b {
    static final String TAG = b.class.getSimpleName();

    public static void a(a aVar, Message message) {
        mm.sms.purchasesdk.sms.a aVar2 = new mm.sms.purchasesdk.sms.a();
        SMSReceiver.a(message);
        String strBase64encode = IdentifyApp.base64encode(mm.sms.purchasesdk.d.b.l().getBytes());
        if (strBase64encode.length() > 20) {
            strBase64encode = strBase64encode.substring(0, strBase64encode.length() - 1);
        }
        String strBase64encode2 = IdentifyApp.base64encode(mm.sms.purchasesdk.d.b.k().getBytes());
        if (strBase64encode2.length() > 20) {
            strBase64encode2 = strBase64encode2.substring(0, strBase64encode2.length() - 1);
        }
        aVar2.a(IdentifyApp.SMSOrderContent(mm.sms.purchasesdk.d.b.r(), mm.sms.purchasesdk.d.b.m(), mm.sms.purchasesdk.d.b.j(), mm.sms.purchasesdk.d.b.i(), mm.sms.purchasesdk.d.b.o(), strBase64encode, strBase64encode2, mm.sms.purchasesdk.d.b.h(), mm.sms.purchasesdk.d.b.l(), mm.sms.purchasesdk.d.b.k()), message);
    }
}
