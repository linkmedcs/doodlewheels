package mm.sms.purchasesdk.c;

import android.content.Context;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import mm.sms.purchasesdk.d.b;
import mm.sms.purchasesdk.d.c;

/* JADX INFO: loaded from: classes.dex */
public class a {
    private static final String TAG = a.class.getSimpleName();

    public static String a(String str, Context context) {
        InputStream resourceAsStream = context.getClass().getClassLoader().getResourceAsStream(str);
        if (resourceAsStream == null) {
            c.c(TAG, "failed to find resource file(" + str + "}");
            return null;
        }
        StringBuilder sb = new StringBuilder();
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(resourceAsStream));
        while (bufferedReader.ready()) {
            try {
                sb.append(bufferedReader.readLine());
            } catch (IOException e) {
                c.c(TAG, "failed to read resource file(" + str + ")");
                return null;
            }
        }
        bufferedReader.close();
        c.b(TAG, "file content->" + sb.toString());
        return sb.toString();
    }

    public static String c() {
        return a("mmiap.xml", b.getContext());
    }
}
