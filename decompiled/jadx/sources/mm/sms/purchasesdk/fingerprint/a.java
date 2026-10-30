package mm.sms.purchasesdk.fingerprint;

import android.content.ContextWrapper;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Enumeration;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import mm.sms.purchasesdk.d.b;

/* JADX INFO: loaded from: classes.dex */
public class a {
    public static Boolean c = true;
    private static int status = 0;

    public a() {
        try {
            IdentifyApp.init(b.getContext(), d());
            status = IdentifyApp.getLastError();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private static String a(String str, String str2) {
        try {
            try {
                return (String) Class.forName("android.os.SystemProperties").getMethod("get", String.class, String.class).invoke(null, str, str2);
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

    private static String d() throws IOException {
        String strA = a("ro.product.cpu.abi", null);
        String strA2 = a("ro.product.cpu.abi2", null);
        System.currentTimeMillis();
        if (strA == null) {
            return null;
        }
        ZipFile zipFile = new ZipFile(((ContextWrapper) b.getContext()).getPackageCodePath());
        boolean z = false;
        Enumeration<? extends ZipEntry> enumerationEntries = zipFile.entries();
        while (true) {
            boolean z2 = z;
            if (!enumerationEntries.hasMoreElements()) {
                zipFile.close();
                return z2 ? strA2 : null;
            }
            ZipEntry zipEntryNextElement = enumerationEntries.nextElement();
            if (zipEntryNextElement.getName().startsWith("lib/" + strA + "/")) {
                System.currentTimeMillis();
                return strA;
            }
            z = zipEntryNextElement.getName().startsWith(new StringBuilder().append("lib/").append(strA2).append("/").toString()) ? true : z2;
        }
    }

    public static void init() {
        try {
            IdentifyApp.init(b.getContext(), d());
            status = IdentifyApp.getLastError();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
