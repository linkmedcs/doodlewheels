package mm.sms.purchasesdk.ui;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.NinePatch;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.NinePatchDrawable;
import android.os.Handler;
import android.text.Html;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.HashMap;
import org.cocos2dx.lib.Cocos2dxHandler;

/* JADX INFO: loaded from: classes.dex */
public class f extends b {
    private final String TAG;
    private Handler a;

    /* JADX INFO: renamed from: a, reason: collision with other field name */
    private View.OnClickListener f22a;

    /* JADX INFO: renamed from: a, reason: collision with other field name */
    public View.OnKeyListener f23a;

    /* JADX INFO: renamed from: a, reason: collision with other field name */
    private Button f24a;

    /* JADX INFO: renamed from: a, reason: collision with other field name */
    private ImageView f25a;

    /* JADX INFO: renamed from: a, reason: collision with other field name */
    private ScrollView f26a;

    /* JADX INFO: renamed from: a, reason: collision with other field name */
    private mm.sms.purchasesdk.b f27a;
    private Handler b;

    /* JADX INFO: renamed from: b, reason: collision with other field name */
    private View.OnClickListener f28b;

    /* JADX INFO: renamed from: b, reason: collision with other field name */
    private View f29b;

    /* JADX INFO: renamed from: b, reason: collision with other field name */
    private LinearLayout f30b;

    /* JADX INFO: renamed from: b, reason: collision with other field name */
    private mm.sms.purchasesdk.a.a f31b;
    private Drawable e;
    private Drawable f;

    /* JADX INFO: renamed from: f, reason: collision with other field name */
    private Boolean f32f;
    private Drawable g;
    private Drawable h;
    private Drawable i;
    private Drawable j;
    private Drawable k;

    public f(Context context, Handler handler, Handler handler2, mm.sms.purchasesdk.b bVar, mm.sms.purchasesdk.a.a aVar) {
        super(context, R.style.Theme);
        this.TAG = "PurchaseDialog";
        this.f32f = false;
        this.e = null;
        this.f = null;
        this.g = null;
        this.h = null;
        this.i = null;
        this.f23a = new g(this);
        this.f22a = new h(this);
        this.f28b = new i(this);
        setOwnerActivity((Activity) context);
        getWindow().requestFeature(1);
        this.f27a = bVar;
        this.b = handler2;
        this.a = handler;
        if (context == null || ((Activity) context) != getOwnerActivity()) {
            mm.sms.purchasesdk.d.b.setContext(getOwnerActivity());
        }
        a(aVar);
        this.f24a = new Button(context);
    }

    private View a(String str, String str2) {
        LinearLayout linearLayout = new LinearLayout(mm.sms.purchasesdk.d.b.getContext());
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        linearLayout.setOrientation(1);
        layoutParams.leftMargin = 10;
        layoutParams.rightMargin = 10;
        layoutParams.topMargin = 10;
        layoutParams.bottomMargin = 10;
        linearLayout.setLayoutParams(layoutParams);
        linearLayout.setBackgroundDrawable(a.a(-1, 10, 10));
        linearLayout.setPadding(6, 6, 6, 6);
        TextView textView = new TextView(mm.sms.purchasesdk.d.b.getContext());
        if (str2 == null || str2.trim().length() == 0) {
            textView.setText(str);
        } else {
            textView.setText(Html.fromHtml("<a href=\"" + this.f31b.b() + "\">" + str + "</a> "));
            textView.setMovementMethod(LinkMovementMethod.getInstance());
        }
        textView.setLineSpacing(1.0f, 1.3f);
        textView.setTextSize(n.i);
        textView.setTextColor(-8289919);
        linearLayout.addView(textView);
        return linearLayout;
    }

    private View a(o oVar) {
        LinearLayout linearLayout = new LinearLayout(mm.sms.purchasesdk.d.b.getContext());
        ViewGroup.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        linearLayout.setOrientation(0);
        linearLayout.setPadding(10, 5, 10, 5);
        linearLayout.setLayoutParams(layoutParams);
        TextView textView = new TextView(mm.sms.purchasesdk.d.b.getContext());
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.rightMargin = 3;
        textView.setLayoutParams(layoutParams2);
        textView.setText(oVar.m);
        textView.setTextColor(oVar.v);
        textView.setTextSize(n.i);
        linearLayout.addView(textView);
        ProductItemView productItemView = new ProductItemView(mm.sms.purchasesdk.d.b.getContext());
        productItemView.setTextSize(n.i);
        productItemView.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        productItemView.setText(oVar.mValue);
        productItemView.setSingleLine();
        productItemView.setEllipsize(TextUtils.TruncateAt.valueOf("MARQUEE"));
        productItemView.setMarqueeRepeatLimit(-1);
        productItemView.setTextColor(oVar.w);
        linearLayout.addView(productItemView);
        return linearLayout;
    }

    private View a(o oVar, o oVar2) {
        LinearLayout linearLayout = new LinearLayout(mm.sms.purchasesdk.d.b.getContext());
        ViewGroup.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        linearLayout.setPadding(10, 5, 10, 5);
        linearLayout.setLayoutParams(layoutParams);
        LinearLayout linearLayout2 = new LinearLayout(mm.sms.purchasesdk.d.b.getContext());
        ViewGroup.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(0, -2, 1.0f);
        linearLayout2.setOrientation(0);
        linearLayout2.setLayoutParams(layoutParams2);
        TextView textView = new TextView(mm.sms.purchasesdk.d.b.getContext());
        textView.setText(oVar.m);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams3.rightMargin = 3;
        textView.setLayoutParams(layoutParams3);
        textView.setTextColor(oVar.v);
        textView.setTextSize(n.i);
        linearLayout2.addView(textView);
        ProductItemView productItemView = new ProductItemView(mm.sms.purchasesdk.d.b.getContext());
        productItemView.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        productItemView.setTextSize(n.i);
        productItemView.setSingleLine();
        productItemView.setEllipsize(TextUtils.TruncateAt.valueOf("MARQUEE"));
        productItemView.setMarqueeRepeatLimit(-1);
        productItemView.setText(oVar.mValue);
        productItemView.setTextColor(oVar.w);
        linearLayout2.addView(productItemView);
        linearLayout.addView(linearLayout2);
        LinearLayout linearLayout3 = new LinearLayout(mm.sms.purchasesdk.d.b.getContext());
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(0, -2, 1.0f);
        linearLayout3.setOrientation(0);
        linearLayout3.setLayoutParams(layoutParams4);
        TextView textView2 = new TextView(mm.sms.purchasesdk.d.b.getContext());
        textView2.setLayoutParams(layoutParams3);
        textView2.setText(oVar2.m);
        textView2.setTextColor(oVar2.v);
        textView2.setTextSize(n.i);
        linearLayout3.addView(textView2);
        ProductItemView productItemView2 = new ProductItemView(mm.sms.purchasesdk.d.b.getContext());
        productItemView2.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        productItemView2.setTextSize(n.i);
        productItemView2.setSingleLine(true);
        productItemView2.setSingleLine();
        productItemView2.setEllipsize(TextUtils.TruncateAt.valueOf("MARQUEE"));
        productItemView2.setMarqueeRepeatLimit(-1);
        productItemView2.setText(oVar2.mValue);
        productItemView2.setTextColor(oVar2.w);
        linearLayout3.addView(productItemView2);
        linearLayout.addView(linearLayout3);
        return linearLayout;
    }

    private View a(o oVar, o oVar2, o oVar3) {
        LinearLayout linearLayout = new LinearLayout(mm.sms.purchasesdk.d.b.getContext());
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        linearLayout.setPadding(10, 5, 10, 5);
        linearLayout.setLayoutParams(layoutParams);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        linearLayout.addView(a(oVar, layoutParams2));
        linearLayout.addView(a(oVar2, layoutParams2));
        linearLayout.addView(a(oVar3, layoutParams2));
        return linearLayout;
    }

    private ImageView a(Bitmap bitmap) {
        ImageView imageView = new ImageView(mm.sms.purchasesdk.d.b.getContext());
        imageView.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        if (bitmap != null) {
            if (this.k == null) {
                this.k = new BitmapDrawable(bitmap);
            }
            imageView.setBackgroundDrawable(this.k);
        }
        return imageView;
    }

    private LinearLayout a(o oVar, LinearLayout.LayoutParams layoutParams) {
        LinearLayout linearLayout = new LinearLayout(mm.sms.purchasesdk.d.b.getContext());
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(0, -2, 1.0f);
        linearLayout.setOrientation(0);
        linearLayout.setLayoutParams(layoutParams2);
        TextView textView = new TextView(mm.sms.purchasesdk.d.b.getContext());
        textView.setText(oVar.m);
        textView.setLayoutParams(layoutParams);
        textView.setTextColor(oVar.v);
        textView.setTextSize(n.i);
        linearLayout.addView(textView);
        ProductItemView productItemView = new ProductItemView(mm.sms.purchasesdk.d.b.getContext());
        productItemView.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        productItemView.setTextSize(n.i);
        productItemView.setSingleLine(true);
        productItemView.setText(oVar.mValue);
        productItemView.setSingleLine();
        productItemView.setEllipsize(TextUtils.TruncateAt.valueOf("MARQUEE"));
        productItemView.setMarqueeRepeatLimit(-1);
        productItemView.setTextColor(oVar.w);
        linearLayout.addView(productItemView);
        return linearLayout;
    }

    private void b() {
        Bitmap bitmapA;
        Bitmap bitmapA2;
        Bitmap bitmapA3;
        Bitmap bitmapA4;
        Bitmap bitmapA5;
        Bitmap bitmapA6;
        if (this.e == null && (bitmapA6 = n.a(mm.sms.purchasesdk.d.b.getContext(), "mmiap/smsimage/vertical/editbg.9.png")) != null) {
            byte[] ninePatchChunk = bitmapA6.getNinePatchChunk();
            NinePatch.isNinePatchChunk(ninePatchChunk);
            this.e = new NinePatchDrawable(bitmapA6, ninePatchChunk, new Rect(), null);
        }
        if (this.f == null && (bitmapA5 = n.a(mm.sms.purchasesdk.d.b.getContext(), "mmiap/smsimage/vertical/editbg_a.9.png")) != null) {
            byte[] ninePatchChunk2 = bitmapA5.getNinePatchChunk();
            NinePatch.isNinePatchChunk(ninePatchChunk2);
            this.f = new NinePatchDrawable(bitmapA5, ninePatchChunk2, new Rect(), null);
        }
        if (this.g == null && (bitmapA4 = n.a(mm.sms.purchasesdk.d.b.getContext(), "mmiap/smsimage/vertical/infobg.9.png")) != null) {
            byte[] ninePatchChunk3 = bitmapA4.getNinePatchChunk();
            NinePatch.isNinePatchChunk(ninePatchChunk3);
            this.g = new NinePatchDrawable(bitmapA4, ninePatchChunk3, new Rect(), null);
        }
        if (this.i == null && (bitmapA3 = n.a(mm.sms.purchasesdk.d.b.getContext(), "mmiap/smsimage/vertical/infobg.9.png")) != null) {
            byte[] ninePatchChunk4 = bitmapA3.getNinePatchChunk();
            NinePatch.isNinePatchChunk(ninePatchChunk4);
            this.i = new NinePatchDrawable(bitmapA3, ninePatchChunk4, new Rect(), null);
        }
        if (this.h == null && (bitmapA2 = n.a(mm.sms.purchasesdk.d.b.getContext(), "mmiap/smsimage/vertical/infobg.9.png")) != null) {
            byte[] ninePatchChunk5 = bitmapA2.getNinePatchChunk();
            NinePatch.isNinePatchChunk(ninePatchChunk5);
            this.h = new NinePatchDrawable(bitmapA2, ninePatchChunk5, new Rect(), null);
        }
        if (this.j != null || (bitmapA = n.a(mm.sms.purchasesdk.d.b.getContext(), "mmiap/smsimage/vertical/bg.png")) == null) {
            return;
        }
        this.j = new BitmapDrawable(bitmapA);
    }

    private View e() {
        this.f32f = n.f48f;
        return this.f32f.booleanValue() ? g() : f();
    }

    private View f() {
        this.f30b = new LinearLayout(mm.sms.purchasesdk.d.b.getContext());
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        this.f30b.setOrientation(1);
        this.f30b.setLayoutParams(layoutParams);
        this.f30b.addView(a(mm.sms.purchasesdk.d.b.getContext()));
        this.f30b.addView(a(mm.sms.purchasesdk.d.b.getContext(), this.f25a, this.f22a));
        this.f29b = h();
        this.f30b.addView(this.f29b);
        this.f30b.addView(a(this.f24a, this.f28b, "确 认 支 付"));
        String strM0a = this.f31b.m0a();
        if (strM0a != null && strM0a.trim().length() != 0) {
            this.f30b.addView(a(strM0a, this.f31b.b()));
        }
        this.f30b.addView(b(mm.sms.purchasesdk.d.b.getContext()));
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -1);
        this.f26a = new ScrollView(mm.sms.purchasesdk.d.b.getContext());
        this.f26a.setLayoutParams(layoutParams2);
        this.f26a.setFillViewport(true);
        this.f26a.setBackgroundDrawable(this.j);
        this.f26a.addView(this.f30b);
        return this.f26a;
    }

    private View h() {
        View viewA;
        int i = 0;
        LinearLayout linearLayout = new LinearLayout(mm.sms.purchasesdk.d.b.getContext());
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        layoutParams.topMargin = n.q;
        layoutParams.leftMargin = 5;
        layoutParams.rightMargin = 5;
        linearLayout.setLayoutParams(layoutParams);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(5, 0, 5, 0);
        linearLayout.setBackgroundDrawable(this.h);
        Bitmap bitmapA = n.a(mm.sms.purchasesdk.d.b.getContext(), "mmiap/smsimage/vertical/infoline.png");
        HashMap mapM3a = this.f31b.m1a().m3a();
        ArrayList arrayListA = this.f31b.m1a().a();
        int size = mapM3a.size();
        while (i < size) {
            o oVar = (o) mapM3a.get((String) arrayListA.get(i));
            if (i == 0 || i == size - 1 || i == size - 2) {
                viewA = a(oVar);
            } else {
                int i2 = i + 1;
                viewA = a(oVar, (o) mapM3a.get((String) arrayListA.get(i2)));
                i = i2;
            }
            linearLayout.addView(viewA);
            if (i != size - 1) {
                linearLayout.addView(a(bitmapA));
            }
            i++;
        }
        return linearLayout;
    }

    private View i() {
        View viewA;
        int i;
        int i2 = 0;
        LinearLayout linearLayout = new LinearLayout(mm.sms.purchasesdk.d.b.getContext());
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        layoutParams.topMargin = n.q;
        layoutParams.leftMargin = 5;
        layoutParams.rightMargin = 5;
        linearLayout.setLayoutParams(layoutParams);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(5, 0, 5, 0);
        linearLayout.setBackgroundDrawable(this.h);
        Bitmap bitmapA = n.a(mm.sms.purchasesdk.d.b.getContext(), "mmiap/smsimage/vertical/infoline.png");
        HashMap mapM3a = this.f31b.m1a().m3a();
        ArrayList arrayListA = this.f31b.m1a().a();
        int size = mapM3a.size();
        while (i2 < size) {
            o oVar = (o) mapM3a.get((String) arrayListA.get(i2));
            if (i2 == 0) {
                int i3 = i2 + 1;
                viewA = a(oVar, (o) mapM3a.get((String) arrayListA.get(i3)));
                i = i3;
            } else if (i2 == size - 1) {
                viewA = a(oVar);
                i = i2;
            } else if (size - i2 >= 1) {
                switch ((size - i2) - 1) {
                    case Cocos2dxHandler.HANDLER_SHOW_DIALOG /* 1 */:
                        viewA = a(oVar);
                        i = i2;
                        break;
                    case Cocos2dxHandler.HANDLER_SHOW_EDITBOX_DIALOG /* 2 */:
                        int i4 = i2 + 1;
                        viewA = a(oVar, (o) mapM3a.get((String) arrayListA.get(i4)));
                        i = i4;
                        break;
                    default:
                        int i5 = i2 + 1;
                        int i6 = i5 + 1;
                        viewA = a(oVar, (o) mapM3a.get((String) arrayListA.get(i5)), (o) mapM3a.get((String) arrayListA.get(i6)));
                        i = i6;
                        break;
                }
            } else {
                viewA = null;
                i = i2;
            }
            linearLayout.addView(viewA);
            if (i != size - 1) {
                linearLayout.addView(a(bitmapA));
            }
            i2 = i + 1;
        }
        return linearLayout;
    }

    public void a(mm.sms.purchasesdk.a.a aVar) {
        this.f31b = aVar;
    }

    @Override // mm.sms.purchasesdk.ui.b, android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
    }

    public View g() {
        this.f30b = new LinearLayout(mm.sms.purchasesdk.d.b.getContext());
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        this.f30b.setOrientation(1);
        this.f30b.setLayoutParams(layoutParams);
        this.f30b.addView(a(mm.sms.purchasesdk.d.b.getContext()));
        this.f30b.addView(a(mm.sms.purchasesdk.d.b.getContext(), this.f25a, this.f22a));
        this.f29b = i();
        this.f30b.addView(this.f29b);
        this.f30b.addView(a(this.f24a, this.f28b, "确 认 支 付"));
        String strM0a = this.f31b.m0a();
        if (strM0a != null && strM0a.trim().length() != 0) {
            this.f30b.addView(a(strM0a, this.f31b.b()));
        }
        this.f30b.addView(b(mm.sms.purchasesdk.d.b.getContext()));
        this.f26a = new ScrollView(mm.sms.purchasesdk.d.b.getContext());
        this.f26a.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        this.f26a.setFillViewport(true);
        this.f26a.setBackgroundDrawable(this.j);
        this.f26a.addView(this.f30b);
        return this.f26a;
    }

    @Override // android.app.Dialog
    protected void onStop() {
        super.onStop();
    }

    @Override // android.app.Dialog
    public void show() {
        b();
        setContentView(e());
        setCancelable(false);
        super.show();
    }
}
