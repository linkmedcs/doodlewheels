package mm.sms.purchasesdk.fingerprint;

import mm.sms.purchasesdk.d.c;

/* JADX INFO: loaded from: classes.dex */
public class IdentifyApp {
    static {
        try {
            System.loadLibrary("smsiap");
        } catch (Exception e) {
            c.b("IdentifyApp", "loadLibrary faile" + e.getMessage());
        }
    }

    public static native String SMSContent(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10);

    public static native String SMSOrderContent(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10);

    public static native String base64encode(byte[] bArr);

    public static native int checkSMS(String str, String str2, String str3, String str4, String str5);

    public static native int checkdexso(String str, String str2, String str3, String str4, String str5);

    public static native String decryptPapaya(String str);

    public static native String generateTransactionID(String str, String str2, String str3, String str4);

    public static native int getLastError();

    public static native boolean init(Object obj, String str);

    public static native String md5(byte[] bArr);

    public static native String saveSMS(String str, String str2, String str3, String str4, String str5);
}
