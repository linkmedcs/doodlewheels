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
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import java.util.HashMap;
import mm.sms.purchasesdk.PurchaseCode;

/* JADX INFO: loaded from: classes.dex */
public class k extends b {
    private final String TAG;
    private Handler a;

    /* JADX INFO: renamed from: a, reason: collision with other field name */
    private View.OnClickListener f35a;

    /* JADX INFO: renamed from: a, reason: collision with other field name */
    private ImageView f36a;

    /* JADX INFO: renamed from: a, reason: collision with other field name */
    private ScrollView f37a;

    /* JADX INFO: renamed from: a, reason: collision with other field name */
    private TextView f38a;

    /* JADX INFO: renamed from: a, reason: collision with other field name */
    private HashMap f39a;
    private Handler b;

    /* JADX INFO: renamed from: b, reason: collision with other field name */
    private Button f40b;

    /* JADX INFO: renamed from: b, reason: collision with other field name */
    private mm.sms.purchasesdk.b f41b;
    private View.OnClickListener c;
    private int f;

    /* JADX INFO: renamed from: f, reason: collision with other field name */
    private Bitmap f42f;
    private int g;

    /* JADX INFO: renamed from: g, reason: collision with other field name */
    private Drawable f43g;

    /* JADX INFO: renamed from: g, reason: collision with other field name */
    private Boolean f44g;
    private Drawable j;

    /* JADX INFO: renamed from: j, reason: collision with other field name */
    private String f45j;
    private String k;
    private String l;

    public k(Context context, mm.sms.purchasesdk.b bVar, Handler handler, Handler handler2, int i, HashMap map) {
        super(context, R.style.Theme);
        this.TAG = "ResultDialog";
        this.f45j = "";
        this.k = "";
        this.l = "";
        this.f44g = true;
        this.c = new l(this);
        this.f35a = new m(this);
        setOwnerActivity((Activity) context);
        getWindow().requestFeature(1);
        if (mm.sms.purchasesdk.d.b.getContext() == null || ((Activity) mm.sms.purchasesdk.d.b.getContext()) != getOwnerActivity()) {
            mm.sms.purchasesdk.d.b.setContext(context);
        }
        this.f = i;
        this.a = handler;
        this.b = handler2;
        this.f41b = bVar;
        this.f39a = map;
        this.f40b = new Button(mm.sms.purchasesdk.d.b.getContext());
        init(i);
        b();
    }

    private void b() {
        Bitmap bitmapA;
        if (this.j != null || (bitmapA = n.a(mm.sms.purchasesdk.d.b.getContext(), "mmiap/smsimage/vertical/bg.png")) == null) {
            return;
        }
        this.j = new BitmapDrawable(bitmapA);
    }

    private void init(int i) {
        Bitmap bitmapA;
        if (i == 1001) {
            this.f45j = "支 付 成 功";
            this.l = "确 定";
            this.f42f = n.a(mm.sms.purchasesdk.d.b.getContext(), "mmiap/smsimage/vertical/icon_success.png");
            this.g = -11037110;
            this.k = PurchaseCode.getReason(i);
            this.f44g = true;
        } else {
            this.f45j = "支 付 失 败";
            this.f44g = false;
            this.g = -4703429;
            if (this.f39a == null) {
                mm.sms.purchasesdk.d.c.c("ResultDialog", "mReturnObject null order fail =" + i);
                this.f42f = n.a(mm.sms.purchasesdk.d.b.getContext(), "mmiap/smsimage/vertical/icon_info.png");
            } else {
                mm.sms.purchasesdk.d.c.c("ResultDialog", "mReturnObject order fail =" + i);
                this.f42f = n.a(mm.sms.purchasesdk.d.b.getContext(), "mmiap/smsimage/vertical/icon_false.png");
            }
            this.k = PurchaseCode.getReason(i);
            this.l = "确 定";
        }
        if (this.f43g != null || (bitmapA = n.a(mm.sms.purchasesdk.d.b.getContext(), "mmiap/smsimage/vertical/infobg.9.png")) == null) {
            return;
        }
        byte[] ninePatchChunk = bitmapA.getNinePatchChunk();
        NinePatch.isNinePatchChunk(ninePatchChunk);
        this.f43g = new NinePatchDrawable(bitmapA, ninePatchChunk, new Rect(), null);
    }

    private View k() {
        LinearLayout linearLayout = new LinearLayout(mm.sms.purchasesdk.d.b.getContext());
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams((int) (((double) mm.sms.purchasesdk.d.b.A) * 0.95d), n.l);
        layoutParams.gravity = 1;
        layoutParams.topMargin = n.q;
        linearLayout.setOrientation(1);
        linearLayout.setLayoutParams(layoutParams);
        linearLayout.setBackgroundDrawable(this.f43g);
        int i = mm.sms.purchasesdk.d.b.k < 1.0f ? (int) (((double) n.l) * 0.65d) : (int) (((double) n.l) * 0.7d);
        LinearLayout linearLayout2 = new LinearLayout(mm.sms.purchasesdk.d.b.getContext());
        ViewGroup.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, i);
        linearLayout2.setOrientation(0);
        linearLayout2.setLayoutParams(layoutParams2);
        linearLayout2.setGravity(17);
        ImageView imageView = new ImageView(mm.sms.purchasesdk.d.b.getContext());
        imageView.setImageBitmap(this.f42f);
        linearLayout2.addView(imageView);
        TextView textView = new TextView(mm.sms.purchasesdk.d.b.getContext());
        textView.setTextSize(30.0f);
        textView.setTextColor(this.g);
        textView.setGravity(17);
        textView.setText(this.f45j);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams3.leftMargin = 10;
        layoutParams3.gravity = 16;
        textView.setLayoutParams(layoutParams3);
        linearLayout2.addView(textView);
        linearLayout.addView(linearLayout2);
        TextView textView2 = new TextView(mm.sms.purchasesdk.d.b.getContext());
        textView2.setLayoutParams(new LinearLayout.LayoutParams(-1, 2));
        textView2.setBackgroundDrawable(new BitmapDrawable(n.a(mm.sms.purchasesdk.d.b.getContext(), "mmiap/smsimage/vertical/line.png")));
        linearLayout.addView(textView2);
        this.f38a = new TextView(mm.sms.purchasesdk.d.b.getContext());
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-2, (n.l - i) - 2);
        layoutParams4.gravity = 17;
        this.f38a.setPadding(10, 0, 10, 10);
        this.f38a.setGravity(17);
        this.f38a.setLayoutParams(layoutParams4);
        this.f38a.setTextColor(-8289919);
        this.f38a.setText(this.k);
        if (this.k.length() > 25) {
            this.f38a.setTextSize(12.0f);
        } else {
            this.f38a.setTextSize(15.0f);
        }
        linearLayout.addView(this.f38a);
        return linearLayout;
    }

    private View l() {
        LinearLayout linearLayout = new LinearLayout(mm.sms.purchasesdk.d.b.getContext());
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        layoutParams.leftMargin = 10;
        layoutParams.rightMargin = 10;
        layoutParams.topMargin = 10;
        layoutParams.bottomMargin = 10;
        linearLayout.setLayoutParams(layoutParams);
        linearLayout.setBackgroundDrawable(a.a(-1, 10, 10));
        linearLayout.setPadding(6, 6, 6, 6);
        TextView textView = new TextView(mm.sms.purchasesdk.d.b.getContext());
        textView.setTextColor(-8289919);
        textView.setText("欢迎您使用中国移动手机话费支付，支付成功后，您可登陆a.10086.cn或拨打10086查询购买记录。");
        textView.setTextSize(n.i);
        textView.setLineSpacing(1.0f, 1.3f);
        linearLayout.addView(textView);
        return linearLayout;
    }

    @Override // mm.sms.purchasesdk.ui.b, android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        j.a().e();
        super.dismiss();
    }

    public View j() {
        LinearLayout linearLayout = new LinearLayout(mm.sms.purchasesdk.d.b.getContext());
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 1;
        linearLayout.setOrientation(1);
        linearLayout.setLayoutParams(layoutParams);
        linearLayout.addView(a(mm.sms.purchasesdk.d.b.getContext()));
        linearLayout.addView(a(mm.sms.purchasesdk.d.b.getContext(), this.f36a, this.f35a));
        linearLayout.addView(k());
        linearLayout.addView(a(this.f40b, this.c, this.l));
        if (this.f44g.booleanValue()) {
            linearLayout.addView(l());
        }
        linearLayout.addView(b(mm.sms.purchasesdk.d.b.getContext()));
        this.f37a = new ScrollView(mm.sms.purchasesdk.d.b.getContext());
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -1);
        this.f37a = new ScrollView(mm.sms.purchasesdk.d.b.getContext());
        this.f37a.setLayoutParams(layoutParams2);
        this.f37a.setFillViewport(true);
        this.f37a.setBackgroundDrawable(this.j);
        this.f37a.addView(linearLayout);
        return this.f37a;
    }

    @Override // android.app.Dialog
    public void show() {
        setContentView(j());
        setCancelable(false);
        super.show();
    }
}
