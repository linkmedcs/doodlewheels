package mm.sms.purchasesdk.ui;

import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;

/* JADX INFO: loaded from: classes.dex */
public class a {
    public static Drawable a(int i, int i2, int i3) {
        GradientDrawable gradientDrawable = new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, new int[]{i, i});
        gradientDrawable.setStroke(2, -4802890);
        gradientDrawable.setShape(0);
        gradientDrawable.setCornerRadii(new float[]{i2, i2, i2, i2, i3, i3, i3, i3});
        return gradientDrawable;
    }
}
