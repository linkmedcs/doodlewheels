package mm.sms.purchasesdk.ui;

import android.app.Dialog;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.NinePatch;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.NinePatchDrawable;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
public class b extends Dialog {
    protected Bitmap a;

    /* JADX INFO: renamed from: a, reason: collision with other field name */
    protected Drawable f17a;
    private Bitmap b;

    /* JADX INFO: renamed from: b, reason: collision with other field name */
    protected Drawable f18b;
    protected Bitmap c;

    /* JADX INFO: renamed from: c, reason: collision with other field name */
    protected Drawable f19c;
    private Bitmap d;

    /* JADX INFO: renamed from: d, reason: collision with other field name */
    private Drawable f20d;
    private Bitmap e;
    private Context mContext;

    public b(Context context) {
        super(context);
        this.mContext = context;
        b();
    }

    public b(Context context, int i) {
        super(context, i);
        this.mContext = context;
        b();
    }

    private View a() {
        Context context = mm.sms.purchasesdk.d.b.getContext();
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(0);
        if (this.e != null) {
            ImageView imageView = new ImageView(context);
            imageView.setLayoutParams(new LinearLayout.LayoutParams(-2, -1));
            imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
            imageView.setBackgroundColor(0);
            imageView.setImageBitmap(this.e);
            linearLayout.addView(imageView);
        }
        TextView textView = new TextView(context);
        textView.setLayoutParams(new LinearLayout.LayoutParams(-2, -1));
        textView.setGravity(17);
        if (mm.sms.purchasesdk.d.b.m5a().booleanValue()) {
            textView.setText("手机话费支付(自测试)");
        } else {
            textView.setText("手机话费支付");
        }
        textView.setTextColor(-16777216);
        textView.setSingleLine(true);
        textView.setTextSize(n.j);
        linearLayout.addView(textView);
        return linearLayout;
    }

    private void b() {
        Bitmap bitmapA;
        Bitmap bitmapA2;
        Bitmap bitmapA3;
        if (this.f17a == null) {
            this.f17a = new BitmapDrawable(n.b(mm.sms.purchasesdk.d.b.getContext(), "mmiap/smsimage/vertical/title1_bg.png"));
        }
        if (this.f18b == null && (bitmapA3 = n.a(this.mContext, "mmiap/smsimage/vertical/button1_Confirm.9.png")) != null) {
            byte[] ninePatchChunk = bitmapA3.getNinePatchChunk();
            NinePatch.isNinePatchChunk(ninePatchChunk);
            this.f18b = new NinePatchDrawable(bitmapA3, ninePatchChunk, new Rect(), null);
        }
        if (this.f19c == null && (bitmapA2 = n.a(this.mContext, "mmiap/smsimage/vertical/button1_Confirm_Press.9.png")) != null) {
            byte[] ninePatchChunk2 = bitmapA2.getNinePatchChunk();
            NinePatch.isNinePatchChunk(ninePatchChunk2);
            this.f19c = new NinePatchDrawable(bitmapA2, ninePatchChunk2, new Rect(), null);
        }
        if (this.f20d == null && (bitmapA = n.a(mm.sms.purchasesdk.d.b.getContext(), "mmiap/smsimage/vertical/title2_bg.png")) != null) {
            this.f20d = new BitmapDrawable(bitmapA);
        }
        if (this.a == null) {
            this.a = n.a(mm.sms.purchasesdk.d.b.getContext(), "mmiap/smsimage/vertical/top_button_back.png");
        }
        if (this.b == null) {
            this.b = n.a(mm.sms.purchasesdk.d.b.getContext(), "mmiap/smsimage/vertical/button_back_Press.png");
        }
        if (this.c == null) {
            this.c = n.a(mm.sms.purchasesdk.d.b.getContext(), "mmiap/smsimage/vertical/button_finishbilling.png");
        }
        if (this.e == null) {
            this.e = n.a("mmiap/smsimage/vertical/logo2.png");
        }
        if (this.d == null) {
            this.d = n.a(mm.sms.purchasesdk.d.b.getContext(), "mmiap/smsimage/vertical/top_button_back.png");
        }
    }

    public View a(Context context) {
        ImageView imageView = new ImageView(context);
        imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        if (mm.sms.purchasesdk.d.b.k < 1.0f) {
            imageView.setLayoutParams(new LinearLayout.LayoutParams(-1, 50));
        } else {
            imageView.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        }
        imageView.setImageBitmap(n.b(mm.sms.purchasesdk.d.b.getContext(), "mmiap/smsimage/vertical/logo1.png"));
        imageView.setBackgroundDrawable(this.f17a);
        return imageView;
    }

    public View a(Context context, ImageView imageView, View.OnClickListener onClickListener) {
        RelativeLayout relativeLayout = new RelativeLayout(context);
        RelativeLayout.LayoutParams layoutParams = mm.sms.purchasesdk.d.b.k < 1.0f ? new RelativeLayout.LayoutParams(-1, 30) : new RelativeLayout.LayoutParams(-1, -2);
        relativeLayout.setPadding(0, n.t, 0, n.u);
        relativeLayout.setLayoutParams(layoutParams);
        n.a(context, "mmiap/smsimage/vertical/title2_bg.png");
        relativeLayout.setBackgroundDrawable(this.f20d);
        ImageView imageView2 = new ImageView(context);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams2.addRule(15);
        imageView2.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        imageView2.setBackgroundColor(0);
        imageView2.setImageBitmap(this.b);
        imageView2.setPadding(5, 0, 0, 0);
        imageView2.setOnClickListener(onClickListener);
        relativeLayout.addView(imageView2, layoutParams2);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams3.addRule(13);
        relativeLayout.addView(a(), layoutParams3);
        TextView textView = new TextView(context);
        textView.setLayoutParams(new LinearLayout.LayoutParams(0, 0, 1.0f));
        textView.setBackgroundColor(0);
        relativeLayout.addView(textView);
        return relativeLayout;
    }

    public View a(Button button, View.OnClickListener onClickListener, String str) {
        LinearLayout linearLayout = new LinearLayout(mm.sms.purchasesdk.d.b.getContext());
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        layoutParams.leftMargin = 10;
        layoutParams.rightMargin = 10;
        layoutParams.topMargin = n.s;
        linearLayout.setOrientation(1);
        layoutParams.gravity = 1;
        linearLayout.setLayoutParams(layoutParams);
        button.setGravity(17);
        button.setOnTouchListener(new c(this));
        LinearLayout.LayoutParams layoutParams2 = null;
        if (mm.sms.purchasesdk.d.b.k < 1.0f) {
            layoutParams2 = n.f48f.booleanValue() ? new LinearLayout.LayoutParams((int) (((double) mm.sms.purchasesdk.d.b.A) * 0.6d), 40) : new LinearLayout.LayoutParams(-1, 40);
        }
        if (mm.sms.purchasesdk.d.b.k == 1.0f) {
            layoutParams2 = n.f48f.booleanValue() ? new LinearLayout.LayoutParams((int) (((double) mm.sms.purchasesdk.d.b.A) * 0.6d), -2) : new LinearLayout.LayoutParams(-1, -2);
        }
        if (mm.sms.purchasesdk.d.b.k > 1.0f) {
            layoutParams2 = n.f48f.booleanValue() ? new LinearLayout.LayoutParams((int) (((double) mm.sms.purchasesdk.d.b.A) * 0.6d), 80) : new LinearLayout.LayoutParams(-1, 80);
        }
        layoutParams2.gravity = 1;
        button.setGravity(17);
        button.setPadding(0, 8, 0, 12);
        button.setText(str);
        button.setTextSize(1, n.m);
        button.setTextColor(-1);
        button.setLayoutParams(layoutParams2);
        button.setBackgroundDrawable(this.f18b);
        button.setOnClickListener(onClickListener);
        linearLayout.addView(button);
        return linearLayout;
    }

    public View b(Context context) {
        RelativeLayout relativeLayout = new RelativeLayout(context);
        relativeLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        relativeLayout.setPadding(0, 0, 0, 10);
        LinearLayout linearLayout = new LinearLayout(context);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        layoutParams.bottomMargin = 5;
        linearLayout.setOrientation(0);
        linearLayout.setLayoutParams(layoutParams);
        linearLayout.setGravity(1);
        ImageView imageView = new ImageView(context);
        Bitmap bitmapA = n.a(context, "mmiap/smsimage/vertical/logo3.png");
        if (bitmapA != null) {
            imageView.setImageBitmap(bitmapA);
        }
        linearLayout.addView(imageView);
        TextView textView = new TextView(context);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -1);
        layoutParams2.leftMargin = 5;
        layoutParams2.gravity = 17;
        textView.setGravity(17);
        textView.setTextColor(-16777216);
        textView.setLayoutParams(layoutParams2);
        textView.setTextSize(n.h);
        textView.setText("版权所有 中国移动");
        linearLayout.addView(textView);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams3.addRule(12);
        relativeLayout.addView(linearLayout, layoutParams3);
        return relativeLayout;
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
    }
}
