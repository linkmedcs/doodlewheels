package mm.sms.purchasesdk.d;

import java.lang.reflect.InvocationTargetException;

/* JADX INFO: loaded from: classes.dex */
public class a {
    public static boolean c() {
        String strF = f();
        String strE = e();
        if (strF == null || strF.equals("unknown")) {
            return (strE == null || strE.equals("unknown")) ? false : true;
        }
        return true;
    }

    private static String e() {
        try {
            try {
                return (String) Class.forName("android.os.SystemProperties").getMethod("get", String.class, String.class).invoke(null, "gsm.version.ril-impl", "unknown");
            } catch (IllegalAccessException e) {
                e.printStackTrace();
                return null;
            } catch (IllegalArgumentException e2) {
                e2.printStackTrace();
                return null;
            } catch (InvocationTargetException e3) {
                e3.printStackTrace();
                return null;
            }
        } catch (ClassNotFoundException e4) {
            e4.printStackTrace();
            return null;
        } catch (NoSuchMethodException e5) {
            e5.printStackTrace();
            return null;
        } catch (SecurityException e6) {
            e6.printStackTrace();
            return null;
        }
    }

    private static String f() {
        try {
            try {
                return (String) Class.forName("android.os.SystemProperties").getMethod("get", String.class, String.class).invoke(null, "gsm.version.baseband", "unknown");
            } catch (IllegalAccessException e) {
                e.printStackTrace();
                return null;
            } catch (IllegalArgumentException e2) {
                e2.printStackTrace();
                return null;
            } catch (InvocationTargetException e3) {
                e3.printStackTrace();
                return null;
            }
        } catch (ClassNotFoundException e4) {
            e4.printStackTrace();
            return null;
        } catch (NoSuchMethodException e5) {
            e5.printStackTrace();
            return null;
        } catch (SecurityException e6) {
            e6.printStackTrace();
            return null;
        }
    }
}
