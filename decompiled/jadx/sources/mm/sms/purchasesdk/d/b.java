package mm.sms.purchasesdk.d;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import mm.sms.purchasesdk.fingerprint.IdentifyApp;
import mm.sms.purchasesdk.ui.n;

/* JADX INFO: loaded from: classes.dex */
public class b {
    public static int A;
    public static int B;
    public static float k;
    private static Context mContext;
    private static boolean e = false;
    public static int x = -1;
    public static Boolean h = false;
    private static Boolean i = true;
    private static String o = "";
    private static String p = "";
    private static int y = 1;
    private static String q = "";
    private static Boolean j = false;
    private static String r = "15985";
    private static int z = 25;

    /* JADX INFO: renamed from: k, reason: collision with other field name */
    private static Boolean f12k = false;
    private static String s = "";
    private static boolean f = false;
    private static String t = "0000000000";
    private static boolean g = true;
    private static String u = "";
    private static String v = "";
    private static String w = "";
    private static Boolean l = false;

    /* JADX INFO: renamed from: x, reason: collision with other field name */
    public static String f13x = Build.VERSION.SDK;

    /* JADX INFO: renamed from: y, reason: collision with other field name */
    public static String f14y = Build.MODEL;

    public static int a() {
        return y;
    }

    /* JADX INFO: renamed from: a, reason: collision with other method in class */
    public static Boolean m5a() {
        return f12k;
    }

    /* JADX INFO: renamed from: a, reason: collision with other method in class */
    public static String m6a() {
        return "尊敬的用户，欢迎使用中国移动手机话费支付，您的支付请求将通过短信加密方式发送给中国移动支付系统。支付成功后，您可登陆a.10086.cn或拨打10086查询购买记录。 ";
    }

    public static void a(String str, String str2) {
        o = str;
        p = str2;
    }

    public static synchronized boolean a(int i2) {
        boolean z2 = true;
        synchronized (b.class) {
            if (e) {
                z2 = false;
            } else {
                e = true;
                x = i2;
            }
        }
        return z2;
    }

    public static Boolean b() {
        return j;
    }

    public static String b(String str) {
        s = str;
        return str;
    }

    public static void b(int i2) {
        y = i2;
    }

    public static void b(Boolean bool) {
        f12k = bool;
    }

    public static void b(boolean z2) {
        g = z2;
    }

    public static Boolean c() {
        return i;
    }

    public static void c(Boolean bool) {
        j = bool;
    }

    /* JADX INFO: renamed from: c, reason: collision with other method in class */
    public static boolean m7c() {
        return g;
    }

    public static void d(Boolean bool) {
        i = bool;
    }

    public static void d(String str) {
        t = str;
    }

    public static int e() {
        return z;
    }

    public static void e(String str) {
        w = str;
    }

    public static void f(String str) {
        q = str;
    }

    public static String g() {
        return o;
    }

    public static Context getContext() {
        return mContext;
    }

    public static String h() {
        return p;
    }

    public static String i() {
        return s;
    }

    /* JADX INFO: renamed from: i, reason: collision with other method in class */
    public static void m8i() {
        mContext = null;
        q = "";
        y = 1;
        s = "";
        j = true;
        l = false;
        reset();
    }

    public static String j() {
        return t;
    }

    /* JADX INFO: renamed from: j, reason: collision with other method in class */
    public static void m9j() {
        reset();
        n.h();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) getContext().getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        k = displayMetrics.density;
        B = displayMetrics.heightPixels;
        A = displayMetrics.widthPixels;
        n.k = A;
        if (k < 1.0f) {
            n.q = 5;
        }
        if (mContext.getResources().getConfiguration().orientation != 2) {
            n.d = B / 800.0f;
            n.f = 42.0f;
            n.r = (int) ((n.f * B) / 100.0f);
            n.c = 35.0f;
            n.l = (int) ((n.c * B) / 100.0f);
            n.e = (B * 100) / 800;
            n.u = (int) ((n.e * n.u) / 100.0f);
            n.t = (int) ((n.e * n.t) / 100.0f);
            n.q = (int) ((n.e * n.q) / 100.0f);
            n.s = (int) ((n.e * n.s) / 100.0f);
            if (k == 1.0f) {
                n.j *= n.d;
                n.h = (n.h * n.e) / 100.0f;
                n.i *= n.d;
            }
            n.f48f = false;
            return;
        }
        n.d = B / 480.0f;
        n.f = 39.0f;
        n.r = (int) ((n.f * B) / 100.0f);
        n.c = 31.0f;
        n.l = (int) ((n.c * B) / 100.0f);
        n.e = (A * 100) / 800;
        n.u = (int) ((n.e * n.u) / 100.0f);
        n.t = (int) ((n.e * n.t) / 100.0f);
        n.q = (int) ((n.e * n.q) / 100.0f);
        n.s = (int) ((n.e * n.s) / 100.0f);
        n.f48f = true;
        if (k == 1.0f) {
            n.j *= n.d;
            n.h = (n.h * n.e) / 100.0f;
            n.i *= n.d;
        }
    }

    public static String k() {
        u = ((TelephonyManager) mContext.getSystemService("phone")).getSubscriberId();
        if (u == null || v.equals("")) {
            u = "10086";
        }
        c.a(0, "MMBillingSDk", "Imsi-->" + u);
        return u;
    }

    public static String l() {
        v = ((TelephonyManager) mContext.getSystemService("phone")).getDeviceId();
        c.a(0, "MMBillingSDk", "mImei-->" + v);
        if (v == null || v.equals("")) {
            v = "10086";
        }
        return v;
    }

    public static String m() {
        if (m5a().booleanValue()) {
            w = "99999999";
        }
        return w;
    }

    public static String n() {
        return IdentifyApp.generateTransactionID(g(), i(), l(), k()).substring(8, 24);
    }

    public static String o() {
        return q;
    }

    public static String p() {
        return r;
    }

    public static String q() {
        String str = null;
        try {
            str = mContext.getPackageManager().getApplicationInfo(mContext.getPackageName(), 0).dataDir;
        } catch (PackageManager.NameNotFoundException e2) {
            e2.printStackTrace();
        }
        String str2 = str + "/Files";
        File file = new File(str2);
        if (!file.exists()) {
            file.mkdir();
        }
        return str2 + "/mobile.so";
    }

    public static String r() {
        String str = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date(System.currentTimeMillis()));
        c.b("MMBillingSDk", "str time =  " + str);
        return str;
    }

    private static void reset() {
        n.u = 10;
        n.t = 10;
        n.q = 10;
        n.s = 20;
        n.f = 1.0f;
        n.d = 1.0f;
        n.g = 16.0f;
        n.h = 15.0f;
        n.i = 16.0f;
        n.j = 18.0f;
    }

    public static void setContext(Context context) {
        mContext = context;
    }

    public static synchronized void unlock() {
        e = false;
        x = -1;
        m8i();
    }
}
