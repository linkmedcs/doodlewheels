package mm.sms.purchasesdk.d;

import android.os.Environment;
import android.text.format.Time;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;

/* JADX INFO: loaded from: classes.dex */
public class d {
    public static String z = null;
    public static Boolean m = true;

    private static File a() {
        if (!m.booleanValue()) {
            return null;
        }
        String str = Environment.getExternalStorageDirectory() + "/InAppBillingLibrary/log";
        File file = new File(str);
        if (!file.exists()) {
            try {
                file.createNewFile();
                return file;
            } catch (IOException e) {
                File file2 = new File("/data/InAppBillingLibrary/log");
                if (file2.exists()) {
                    return file2;
                }
                try {
                    file2.createNewFile();
                    return file2;
                } catch (IOException e2) {
                    e2.printStackTrace();
                    return file2;
                }
            }
        }
        if (file.length() / 1024 <= 10240.0f) {
            return file;
        }
        file.delete();
        File file3 = new File(str);
        try {
            file3.createNewFile();
            return file3;
        } catch (IOException e3) {
            File file4 = new File("/data/InAppBillingLibrary/log");
            if (file4.exists()) {
                return file4;
            }
            try {
                file4.createNewFile();
                return file4;
            } catch (IOException e4) {
                return null;
            }
        }
    }

    public static Boolean d() {
        File file = new File(Environment.getExternalStorageDirectory() + "/InAppBillingLibrary");
        return Boolean.valueOf((file.exists() && file.isDirectory()) ? true : file.mkdirs());
    }

    public static void d(String str, String str2) {
        if (m.booleanValue()) {
            Time time = new Time();
            time.setToNow();
            String str3 = new SimpleDateFormat("yyyy-MM-dd").format(Calendar.getInstance().getTime());
            int i = time.hour;
            int i2 = time.minute;
            int i3 = time.second;
            StringBuilder sb = new StringBuilder(z + "(appid=" + b.g() + ",paycode=" + b.i() + ")-->:");
            sb.append(str3).append("|").append(i).append(":").append(i2).append(":").append(i3).append("-->").append(str).append(":").append(str2);
            write(sb.toString());
        }
    }

    public static void g(String str) {
        m = d();
        a();
        z = str;
    }

    private static void write(String str) {
        d();
        try {
            BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(a(), true));
            bufferedWriter.append((CharSequence) str);
            bufferedWriter.newLine();
            bufferedWriter.flush();
            bufferedWriter.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
