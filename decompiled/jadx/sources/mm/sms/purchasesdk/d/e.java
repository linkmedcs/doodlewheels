package mm.sms.purchasesdk.d;

import android.content.Context;
import android.telephony.TelephonyManager;

/* JADX INFO: loaded from: classes.dex */
public class e {
    private static final String TAG = e.class.getSimpleName();

    public static boolean a(Context context) {
        if (!a.c()) {
            return false;
        }
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        String simOperator = telephonyManager.getSimOperator();
        String simSerialNumber = telephonyManager.getSimSerialNumber();
        if (simSerialNumber != null && simSerialNumber.trim().length() > 0) {
            simSerialNumber = simSerialNumber.substring(0, 6);
        }
        return "46000".equals(simOperator) || "46002".equals(simOperator) || "46007".equals(simOperator) || "898600".equals(simSerialNumber);
    }
}
