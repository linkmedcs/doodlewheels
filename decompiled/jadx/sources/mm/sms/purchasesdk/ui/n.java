package mm.sms.purchasesdk.ui;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class n {
    public static int r;

    /* JADX INFO: renamed from: h, reason: collision with other field name */
    public static int f49h = 20;

    /* JADX INFO: renamed from: i, reason: collision with other field name */
    public static int f50i = 80;

    /* JADX INFO: renamed from: j, reason: collision with other field name */
    public static int f51j = 55;
    public static int k = 480;
    public static int l = 300;
    public static int m = 20;
    public static int n = 5;
    public static int o = 5;
    public static int p = 15;
    public static float a = 40.0f;
    public static float b = 80.0f;

    /* JADX INFO: renamed from: f, reason: collision with other field name */
    public static Boolean f48f = false;
    public static float c = 1.0f;
    public static float d = 1.0f;
    public static float e = 1.0f;
    public static int q = 10;
    public static float f = 1.0f;
    public static float g = 16.0f;
    public static int s = 20;
    public static int t = 10;
    public static int u = 10;
    public static float h = 16.0f;
    public static float i = 18.0f;
    public static float j = 20.0f;

    /* JADX INFO: renamed from: c, reason: collision with other field name */
    private static HashMap f47c = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with other field name */
    private static ArrayList f46b = new ArrayList();

    public static Bitmap a(float f2, float f3, Bitmap bitmap) {
        Matrix matrix = new Matrix();
        int height = bitmap.getHeight();
        int width = bitmap.getWidth();
        if (height > 1 && width > 1) {
            matrix.postScale(f2, f3);
            return Bitmap.createBitmap(bitmap, 0, 0, width, height, matrix, true);
        }
        if (height <= 1) {
            matrix.postScale(f2, 1.0f);
            return Bitmap.createBitmap(bitmap, 0, 0, width, height, matrix, true);
        }
        if (width > 1) {
            return bitmap;
        }
        matrix.postScale(1.0f, f3);
        return Bitmap.createBitmap(bitmap, 0, 0, width, height, matrix, true);
    }

    public static Bitmap a(Context context, String str) {
        return b(context, str);
    }

    public static Bitmap a(Bitmap bitmap) {
        if (mm.sms.purchasesdk.d.b.k <= 1.0f && mm.sms.purchasesdk.d.b.k >= 1.0f) {
            return bitmap;
        }
        float f2 = d;
        return a(f2, f2, bitmap);
    }

    public static Bitmap a(String str) {
        return b(str);
    }

    /* JADX INFO: renamed from: a, reason: collision with other method in class */
    private static boolean m18a(String str) {
        return f46b.contains(str);
    }

    public static Bitmap b(Context context, String str) {
        if (f47c == null) {
            f47c = new HashMap();
        }
        Bitmap bitmap = (Bitmap) f47c.get(str);
        if (bitmap != null) {
            return bitmap;
        }
        try {
            InputStream inputStreamOpen = context.getAssets().open(str);
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inPreferredConfig = Bitmap.Config.RGB_565;
            Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(inputStreamOpen, null, options);
            if (!m18a(str)) {
                f47c.put(str, bitmapDecodeStream);
                return bitmapDecodeStream;
            }
            Bitmap bitmapA = a(bitmapDecodeStream);
            if (bitmapA != bitmapDecodeStream) {
                bitmapDecodeStream.recycle();
                System.gc();
            }
            f47c.put(str, bitmapA);
            return bitmapA;
        } catch (IOException e2) {
            mm.sms.purchasesdk.d.c.c("ReadImageFile", "read image fail.......");
            e2.printStackTrace();
            return null;
        }
    }

    public static Bitmap b(String str) {
        Bitmap bitmap = (Bitmap) f47c.get(str);
        if (bitmap != null) {
            return bitmap;
        }
        Bitmap bitmap2 = str.equals("mmiap/smsimage/vertical/logo2.png") ? null : bitmap;
        if (bitmap2 == null) {
            return null;
        }
        if (!m18a(str)) {
            f47c.put(str, bitmap2);
            return bitmap2;
        }
        Bitmap bitmapA = a(bitmap2);
        if (bitmapA != bitmap2) {
            bitmap2.recycle();
        }
        f47c.put(str, bitmapA);
        return bitmapA;
    }

    public static void g() {
        Iterator it = f47c.entrySet().iterator();
        while (it.hasNext()) {
            Bitmap bitmap = (Bitmap) ((Map.Entry) it.next()).getValue();
            if (bitmap != null && !bitmap.isRecycled()) {
                bitmap.recycle();
            }
        }
        System.gc();
        f47c.clear();
        if (f47c.isEmpty()) {
            f47c = null;
        }
        f47c = null;
    }

    public static void h() {
        if (f46b.size() != 0) {
            f46b.clear();
        }
        f46b.add("mmiap/smsimage/vertical/logo1.png");
        f46b.add("mmiap/smsimage/vertical/title1_bg.png");
        f46b.add("mmiap/smsimage/vertical/title2_bg.png");
        f46b.add("mmiap/smsimage/vertical/button_back.png");
        f46b.add("mmiap/smsimage/vertical/icon_success.png");
        f46b.add("mmiap/smsimage/vertical/icon_false.png");
        f46b.add("mmiap/smsimage/vertical/icon_info.png");
        f46b.add("mmiap/smsimage/vertical/logo3.png");
        f46b.add("mmiap/smsimage/vertical/infoline.png");
        f46b.add("mmiap/smsimage/vertical/logo2.png");
        f46b.add("mmiap/smsimage/vertical/icon_chifubao.png");
        f46b.add("mmiap/smsimage/vertical/button_back.png");
        f46b.add("mmiap/smsimage/vertical/button_back_Press.png");
        f46b.add("mmiap/smsimage/vertical/button_finishbilling.png");
        f46b.add("mmiap/smsimage/vertical/button_finishbilling_press.png");
        f46b.add("mmiap/smsimage/vertical/top_button_back.png");
        f46b.add("mmiap/smsimage/vertical/top_button_back_press.png");
    }
}
