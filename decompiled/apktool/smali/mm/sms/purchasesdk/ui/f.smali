.class public Lmm/sms/purchasesdk/ui/f;
.super Lmm/sms/purchasesdk/ui/b;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private a:Landroid/os/Handler;

.field private a:Landroid/view/View$OnClickListener;

.field public a:Landroid/view/View$OnKeyListener;

.field private a:Landroid/widget/Button;

.field private a:Landroid/widget/ImageView;

.field private a:Landroid/widget/ScrollView;

.field private a:Lmm/sms/purchasesdk/b;

.field private b:Landroid/os/Handler;

.field private b:Landroid/view/View$OnClickListener;

.field private b:Landroid/view/View;

.field private b:Landroid/widget/LinearLayout;

.field private b:Lmm/sms/purchasesdk/a/a;

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:Landroid/graphics/drawable/Drawable;

.field private f:Ljava/lang/Boolean;

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:Landroid/graphics/drawable/Drawable;

.field private i:Landroid/graphics/drawable/Drawable;

.field private j:Landroid/graphics/drawable/Drawable;

.field private k:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;Lmm/sms/purchasesdk/b;Lmm/sms/purchasesdk/a/a;)V
    .locals 2

    const/4 v1, 0x0

    const v0, 0x1030005

    invoke-direct {p0, p1, v0}, Lmm/sms/purchasesdk/ui/b;-><init>(Landroid/content/Context;I)V

    const-string v0, "PurchaseDialog"

    iput-object v0, p0, Lmm/sms/purchasesdk/ui/f;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmm/sms/purchasesdk/ui/f;->f:Ljava/lang/Boolean;

    iput-object v1, p0, Lmm/sms/purchasesdk/ui/f;->e:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lmm/sms/purchasesdk/ui/f;->f:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lmm/sms/purchasesdk/ui/f;->g:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lmm/sms/purchasesdk/ui/f;->h:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lmm/sms/purchasesdk/ui/f;->i:Landroid/graphics/drawable/Drawable;

    new-instance v0, Lmm/sms/purchasesdk/ui/g;

    invoke-direct {v0, p0}, Lmm/sms/purchasesdk/ui/g;-><init>(Lmm/sms/purchasesdk/ui/f;)V

    iput-object v0, p0, Lmm/sms/purchasesdk/ui/f;->a:Landroid/view/View$OnKeyListener;

    new-instance v0, Lmm/sms/purchasesdk/ui/h;

    invoke-direct {v0, p0}, Lmm/sms/purchasesdk/ui/h;-><init>(Lmm/sms/purchasesdk/ui/f;)V

    iput-object v0, p0, Lmm/sms/purchasesdk/ui/f;->a:Landroid/view/View$OnClickListener;

    new-instance v0, Lmm/sms/purchasesdk/ui/i;

    invoke-direct {v0, p0}, Lmm/sms/purchasesdk/ui/i;-><init>(Lmm/sms/purchasesdk/ui/f;)V

    iput-object v0, p0, Lmm/sms/purchasesdk/ui/f;->b:Landroid/view/View$OnClickListener;

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lmm/sms/purchasesdk/ui/f;->setOwnerActivity(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lmm/sms/purchasesdk/ui/f;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    iput-object p4, p0, Lmm/sms/purchasesdk/ui/f;->a:Lmm/sms/purchasesdk/b;

    iput-object p3, p0, Lmm/sms/purchasesdk/ui/f;->b:Landroid/os/Handler;

    iput-object p2, p0, Lmm/sms/purchasesdk/ui/f;->a:Landroid/os/Handler;

    if-eqz p1, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0}, Lmm/sms/purchasesdk/ui/f;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v1

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lmm/sms/purchasesdk/ui/f;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lmm/sms/purchasesdk/d/b;->setContext(Landroid/content/Context;)V

    :cond_1
    invoke-virtual {p0, p5}, Lmm/sms/purchasesdk/ui/f;->a(Lmm/sms/purchasesdk/a/a;)V

    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmm/sms/purchasesdk/ui/f;->a:Landroid/widget/Button;

    return-void
.end method

.method static synthetic a(Lmm/sms/purchasesdk/ui/f;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lmm/sms/purchasesdk/ui/f;->b:Landroid/os/Handler;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 6

    const/4 v5, -0x1

    const/4 v4, 0x6

    const/16 v3, 0xa

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v5, v3, v3}, Lmm/sms/purchasesdk/ui/a;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v1, Landroid/widget/TextView;

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3fa66666    # 1.3f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    sget v2, Lmm/sms/purchasesdk/ui/n;->i:F

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    const v2, -0x7e7e7f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<a href=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmm/sms/purchasesdk/ui/f;->b:Lmm/sms/purchasesdk/a/a;

    invoke-virtual {v3}, Lmm/sms/purchasesdk/a/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</a> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_0
.end method

.method private a(Lmm/sms/purchasesdk/ui/o;)Landroid/view/View;
    .locals 7

    const/16 v6, 0xa

    const/4 v3, 0x5

    const/4 v5, -0x1

    const/4 v4, -0x2

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, v6, v3, v6, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p1, Lmm/sms/purchasesdk/ui/o;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v2, p1, Lmm/sms/purchasesdk/ui/o;->v:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    sget v2, Lmm/sms/purchasesdk/ui/n;->i:F

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Lmm/sms/purchasesdk/ui/ProductItemView;

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lmm/sms/purchasesdk/ui/ProductItemView;-><init>(Landroid/content/Context;)V

    sget v2, Lmm/sms/purchasesdk/ui/n;->i:F

    invoke-virtual {v1, v2}, Lmm/sms/purchasesdk/ui/ProductItemView;->setTextSize(F)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lmm/sms/purchasesdk/ui/ProductItemView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p1, Lmm/sms/purchasesdk/ui/o;->mValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmm/sms/purchasesdk/ui/ProductItemView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lmm/sms/purchasesdk/ui/ProductItemView;->setSingleLine()V

    const-string v2, "MARQUEE"

    invoke-static {v2}, Landroid/text/TextUtils$TruncateAt;->valueOf(Ljava/lang/String;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmm/sms/purchasesdk/ui/ProductItemView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v1, v5}, Lmm/sms/purchasesdk/ui/ProductItemView;->setMarqueeRepeatLimit(I)V

    iget v2, p1, Lmm/sms/purchasesdk/ui/o;->w:I

    invoke-virtual {v1, v2}, Lmm/sms/purchasesdk/ui/ProductItemView;->setTextColor(I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private a(Lmm/sms/purchasesdk/ui/o;Lmm/sms/purchasesdk/ui/o;)Landroid/view/View;
    .locals 9

    const/4 v4, 0x5

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, -0x2

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v7, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-virtual {v0, v2, v4, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v6, v5, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v3, p1, Lmm/sms/purchasesdk/ui/o;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v4, 0x3

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v4, p1, Lmm/sms/purchasesdk/ui/o;->v:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    sget v4, Lmm/sms/purchasesdk/ui/n;->i:F

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Lmm/sms/purchasesdk/ui/ProductItemView;

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lmm/sms/purchasesdk/ui/ProductItemView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4}, Lmm/sms/purchasesdk/ui/ProductItemView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v4, Lmm/sms/purchasesdk/ui/n;->i:F

    invoke-virtual {v2, v4}, Lmm/sms/purchasesdk/ui/ProductItemView;->setTextSize(F)V

    invoke-virtual {v2}, Lmm/sms/purchasesdk/ui/ProductItemView;->setSingleLine()V

    const-string v4, "MARQUEE"

    invoke-static {v4}, Landroid/text/TextUtils$TruncateAt;->valueOf(Ljava/lang/String;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v4

    invoke-virtual {v2, v4}, Lmm/sms/purchasesdk/ui/ProductItemView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v2, v7}, Lmm/sms/purchasesdk/ui/ProductItemView;->setMarqueeRepeatLimit(I)V

    iget-object v4, p1, Lmm/sms/purchasesdk/ui/o;->mValue:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lmm/sms/purchasesdk/ui/ProductItemView;->setText(Ljava/lang/CharSequence;)V

    iget v4, p1, Lmm/sms/purchasesdk/ui/o;->w:I

    invoke-virtual {v2, v4}, Lmm/sms/purchasesdk/ui/ProductItemView;->setTextColor(I)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v6, v5, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p2, Lmm/sms/purchasesdk/ui/o;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v3, p2, Lmm/sms/purchasesdk/ui/o;->v:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    sget v3, Lmm/sms/purchasesdk/ui/n;->i:F

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Lmm/sms/purchasesdk/ui/ProductItemView;

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lmm/sms/purchasesdk/ui/ProductItemView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Lmm/sms/purchasesdk/ui/ProductItemView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v3, Lmm/sms/purchasesdk/ui/n;->i:F

    invoke-virtual {v2, v3}, Lmm/sms/purchasesdk/ui/ProductItemView;->setTextSize(F)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lmm/sms/purchasesdk/ui/ProductItemView;->setSingleLine(Z)V

    invoke-virtual {v2}, Lmm/sms/purchasesdk/ui/ProductItemView;->setSingleLine()V

    const-string v3, "MARQUEE"

    invoke-static {v3}, Landroid/text/TextUtils$TruncateAt;->valueOf(Ljava/lang/String;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmm/sms/purchasesdk/ui/ProductItemView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v2, v7}, Lmm/sms/purchasesdk/ui/ProductItemView;->setMarqueeRepeatLimit(I)V

    iget-object v3, p2, Lmm/sms/purchasesdk/ui/o;->mValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lmm/sms/purchasesdk/ui/ProductItemView;->setText(Ljava/lang/CharSequence;)V

    iget v3, p2, Lmm/sms/purchasesdk/ui/o;->w:I

    invoke-virtual {v2, v3}, Lmm/sms/purchasesdk/ui/ProductItemView;->setTextColor(I)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private a(Lmm/sms/purchasesdk/ui/o;Lmm/sms/purchasesdk/ui/o;Lmm/sms/purchasesdk/ui/o;)Landroid/view/View;
    .locals 6

    const/16 v5, 0xa

    const/4 v4, 0x5

    const/4 v3, -0x2

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v5, v4, v5, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-direct {p0, p1, v1}, Lmm/sms/purchasesdk/ui/f;->a(Lmm/sms/purchasesdk/ui/o;Landroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0, p2, v1}, Lmm/sms/purchasesdk/ui/f;->a(Lmm/sms/purchasesdk/ui/o;Landroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0, p3, v1}, Lmm/sms/purchasesdk/ui/f;->a(Lmm/sms/purchasesdk/ui/o;Landroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private a(Landroid/graphics/Bitmap;)Landroid/widget/ImageView;
    .locals 4

    new-instance v0, Landroid/widget/ImageView;

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p1, :cond_1

    iget-object v1, p0, Lmm/sms/purchasesdk/ui/f;->k:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lmm/sms/purchasesdk/ui/f;->k:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v1, p0, Lmm/sms/purchasesdk/ui/f;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-object v0
.end method

.method private a(Lmm/sms/purchasesdk/ui/o;Landroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x2

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v4, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v2, p1, Lmm/sms/purchasesdk/ui/o;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v2, p1, Lmm/sms/purchasesdk/ui/o;->v:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    sget v2, Lmm/sms/purchasesdk/ui/n;->i:F

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Lmm/sms/purchasesdk/ui/ProductItemView;

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lmm/sms/purchasesdk/ui/ProductItemView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lmm/sms/purchasesdk/ui/ProductItemView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v2, Lmm/sms/purchasesdk/ui/n;->i:F

    invoke-virtual {v1, v2}, Lmm/sms/purchasesdk/ui/ProductItemView;->setTextSize(F)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lmm/sms/purchasesdk/ui/ProductItemView;->setSingleLine(Z)V

    iget-object v2, p1, Lmm/sms/purchasesdk/ui/o;->mValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmm/sms/purchasesdk/ui/ProductItemView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lmm/sms/purchasesdk/ui/ProductItemView;->setSingleLine()V

    const-string v2, "MARQUEE"

    invoke-static {v2}, Landroid/text/TextUtils$TruncateAt;->valueOf(Ljava/lang/String;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmm/sms/purchasesdk/ui/ProductItemView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lmm/sms/purchasesdk/ui/ProductItemView;->setMarqueeRepeatLimit(I)V

    iget v2, p1, Lmm/sms/purchasesdk/ui/o;->w:I

    invoke-virtual {v1, v2}, Lmm/sms/purchasesdk/ui/ProductItemView;->setTextColor(I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method static synthetic a(Lmm/sms/purchasesdk/ui/f;)Lmm/sms/purchasesdk/a/a;
    .locals 1

    iget-object v0, p0, Lmm/sms/purchasesdk/ui/f;->b:Lmm/sms/purchasesdk/a/a;

    return-object v0
.end method

.method static synthetic a(Lmm/sms/purchasesdk/ui/f;)Lmm/sms/purchasesdk/b;
    .locals 1

    iget-object v0, p0, Lmm/sms/purchasesdk/ui/f;->a:Lmm/sms/purchasesdk/b;

    return-object v0
.end method

.method static synthetic b(Lmm/sms/purchasesdk/ui/f;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lmm/sms/purchasesdk/ui/f;->a:Landroid/os/Handler;

    return-object v0
.end method

.method private b()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lmm/sms/purchasesdk/ui/f;->e:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mmiap/smsimage/vertical/editbg.9.png"

    invoke-static {v0, v1}, Lmm/sms/purchasesdk/ui/n;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    new-instance v2, Landroid/graphics/drawable/NinePatchDrawable;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v2, v0, v1, v3, v4}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    iput-object v2, p0, Lmm/sms/purchasesdk/ui/f;->e:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v0, p0, Lmm/sms/purchasesdk/ui/f;->f:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mmiap/smsimage/vertical/editbg_a.9.png"

    invoke-static {v0, v1}, Lmm/sms/purchasesdk/ui/n;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    new-instance v2, Landroid/graphics/drawable/NinePatchDrawable;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v2, v0, v1, v3, v4}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    iput-object v2, p0, Lmm/sms/purchasesdk/ui/f;->f:Landroid/graphics/drawable/Drawable;

    :cond_1
    iget-object v0, p0, Lmm/sms/purchasesdk/ui/f;->g:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mmiap/smsimage/vertical/infobg.9.png"

    invoke-static {v0, v1}, Lmm/sms/purchasesdk/ui/n;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    new-instance v2, Landroid/graphics/drawable/NinePatchDrawable;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v2, v0, v1, v3, v4}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    iput-object v2, p0, Lmm/sms/purchasesdk/ui/f;->g:Landroid/graphics/drawable/Drawable;

    :cond_2
    iget-object v0, p0, Lmm/sms/purchasesdk/ui/f;->i:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mmiap/smsimage/vertical/infobg.9.png"

    invoke-static {v0, v1}, Lmm/sms/purchasesdk/ui/n;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    new-instance v2, Landroid/graphics/drawable/NinePatchDrawable;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v2, v0, v1, v3, v4}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    iput-object v2, p0, Lmm/sms/purchasesdk/ui/f;->i:Landroid/graphics/drawable/Drawable;

    :cond_3
    iget-object v0, p0, Lmm/sms/purchasesdk/ui/f;->h:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_4

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mmiap/smsimage/vertical/infobg.9.png"

    invoke-static {v0, v1}, Lmm/sms/purchasesdk/ui/n;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    new-instance v2, Landroid/graphics/drawable/NinePatchDrawable;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v2, v0, v1, v3, v4}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    iput-object v2, p0, Lmm/sms/purchasesdk/ui/f;->h:Landroid/graphics/drawable/Drawable;

    :cond_4
    iget-object v0, p0, Lmm/sms/purchasesdk/ui/f;->j:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_5

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mmiap/smsimage/vertical/bg.png"

    invoke-static {v0, v1}, Lmm/sms/purchasesdk/ui/n;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_5

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lmm/sms/purchasesdk/ui/f;->j:Landroid/graphics/drawable/Drawable;

    :cond_5
    return-void
.end method

.method private e()Landroid/view/View;
    .locals 1

    sget-object v0, Lmm/sms/purchasesdk/ui/n;->f:Ljava/lang/Boolean;

    iput-object v0, p0, Lmm/sms/purchasesdk/ui/f;->f:Ljava/lang/Boolean;

    iget-object v0, p0, Lmm/sms/purchasesdk/ui/f;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmm/sms/purchasesdk/ui/f;->g()Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lmm/sms/purchasesdk/ui/f;->f()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private f()Landroid/view/View;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, -0x1

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmm/sms/purchasesdk/ui/f;->b:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lmm/sms/purchasesdk/ui/f;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, p0, Lmm/sms/purchasesdk/ui/f;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lmm/sms/purchasesdk/ui/f;->b:Landroid/widget/LinearLayout;

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmm/sms/purchasesdk/ui/f;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lmm/sms/purchasesdk/ui/f;->b:Landroid/widget/LinearLayout;

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lmm/sms/purchasesdk/ui/f;->a:Landroid/widget/ImageView;

    iget-object v3, p0, Lmm/sms/purchasesdk/ui/f;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v1, v2, v3}, Lmm/sms/purchasesdk/ui/f;->a(Landroid/content/Context;Landroid/widget/ImageView;Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lmm/sms/purchasesdk/ui/f;->h()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmm/sms/purchasesdk/ui/f;->b:Landroid/view/View;

    iget-object v0, p0, Lmm/sms/purchasesdk/ui/f;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lmm/sms/purchasesdk/ui/f;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lmm/sms/purchasesdk/ui/f;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lmm/sms/purchasesdk/ui/f;->a:Landroid/widget/Button;

    iget-object v2, p0, Lmm/sms/purchasesdk/ui/f;->b:Landroid/view/View$OnClickListener;

    const-string v3, "\u786e \u8ba4 \u652f \u4ed8"

    invoke-virtual {p0, v1, v2, v3}, Lmm/sms/purchasesdk/ui/f;->a(Landroid/widget/Button;Landroid/view/View$OnClickListener;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lmm/sms/purchasesdk/ui/f;->b:Lmm/sms/purchasesdk/a/a;

    invoke-virtual {v0}, Lmm/sms/purchasesdk/a/a;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmm/sms/purchasesdk/ui/f;->b:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lmm/sms/purchasesdk/ui/f;->b:Lmm/sms/purchasesdk/a/a;

    invoke-virtual {v2}, Lmm/sms/purchasesdk/a/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lmm/sms/purchasesdk/ui/f;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lmm/sms/purchasesdk/ui/f;->b:Landroid/widget/LinearLayout;

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmm/sms/purchasesdk/ui/f;->b(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/ScrollView;

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lmm/sms/purchasesdk/ui/f;->a:Landroid/widget/ScrollView;

    iget-object v1, p0, Lmm/sms/purchasesdk/ui/f;->a:Landroid/widget/ScrollView;

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lmm/sms/purchasesdk/ui/f;->a:Landroid/widget/ScrollView;

    invoke-virtual {v0, v5}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    iget-object v0, p0, Lmm/sms/purchasesdk/ui/f;->a:Landroid/widget/ScrollView;

    iget-object v1, p0, Lmm/sms/purchasesdk/ui/f;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lmm/sms/purchasesdk/ui/f;->a:Landroid/widget/ScrollView;

    iget-object v1, p0, Lmm/sms/purchasesdk/ui/f;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lmm/sms/purchasesdk/ui/f;->a:Landroid/widget/ScrollView;

    return-object v0
.end method

.method private h()Landroid/view/View;
    .locals 8

    const/4 v1, 0x0

    const/4 v5, 0x5

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v4, -0x2

    invoke-direct {v0, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v2, Lmm/sms/purchasesdk/ui/n;->q:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v3, v5, v1, v5, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v0, p0, Lmm/sms/purchasesdk/ui/f;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "mmiap/smsimage/vertical/infoline.png"

    invoke-static {v0, v2}, Lmm/sms/purchasesdk/ui/n;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    iget-object v0, p0, Lmm/sms/purchasesdk/ui/f;->b:Lmm/sms/purchasesdk/a/a;

    invoke-virtual {v0}, Lmm/sms/purchasesdk/a/a;->a()Lmm/sms/purchasesdk/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lmm/sms/purchasesdk/a/c;->a()Ljava/util/HashMap;

    move-result-object v5

    iget-object v0, p0, Lmm/sms/purchasesdk/ui/f;->b:Lmm/sms/purchasesdk/a/a;

    invoke-virtual {v0}, Lmm/sms/purchasesdk/a/a;->a()Lmm/sms/purchasesdk/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lmm/sms/purchasesdk/a/c;->a()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v7

    :goto_0
    if-ge v1, v7, :cond_4

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmm/sms/purchasesdk/ui/o;

    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Lmm/sms/purchasesdk/ui/f;->a(Lmm/sms/purchasesdk/ui/o;)Landroid/view/View;

    move-result-object v0

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v7, -0x1

    if-eq v1, v0, :cond_0

    invoke-direct {p0, v4}, Lmm/sms/purchasesdk/ui/f;->a(Landroid/graphics/Bitmap;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v7, -0x1

    if-ne v1, v2, :cond_2

    invoke-direct {p0, v0}, Lmm/sms/purchasesdk/ui/f;->a(Lmm/sms/purchasesdk/ui/o;)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v7, -0x2

    if-ne v1, v2, :cond_3

    invoke-direct {p0, v0}, Lmm/sms/purchasesdk/ui/f;->a(Lmm/sms/purchasesdk/ui/o;)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmm/sms/purchasesdk/ui/o;

    invoke-direct {p0, v0, v1}, Lmm/sms/purchasesdk/ui/f;->a(Lmm/sms/purchasesdk/ui/o;Lmm/sms/purchasesdk/ui/o;)Landroid/view/View;

    move-result-object v0

    move v1, v2

    goto :goto_1

    :cond_4
    return-object v3
.end method

.method private i()Landroid/view/View;
    .locals 10

    const/4 v9, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x5

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v1, Lmm/sms/purchasesdk/ui/n;->q:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v4, v5, v2, v5, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v0, p0, Lmm/sms/purchasesdk/ui/f;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mmiap/smsimage/vertical/infoline.png"

    invoke-static {v0, v1}, Lmm/sms/purchasesdk/ui/n;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    iget-object v0, p0, Lmm/sms/purchasesdk/ui/f;->b:Lmm/sms/purchasesdk/a/a;

    invoke-virtual {v0}, Lmm/sms/purchasesdk/a/a;->a()Lmm/sms/purchasesdk/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lmm/sms/purchasesdk/a/c;->a()Ljava/util/HashMap;

    move-result-object v6

    iget-object v0, p0, Lmm/sms/purchasesdk/ui/f;->b:Lmm/sms/purchasesdk/a/a;

    invoke-virtual {v0}, Lmm/sms/purchasesdk/a/a;->a()Lmm/sms/purchasesdk/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lmm/sms/purchasesdk/a/c;->a()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v8

    :goto_0
    if-ge v2, v8, :cond_3

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmm/sms/purchasesdk/ui/o;

    const/4 v1, 0x0

    if-nez v2, :cond_1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmm/sms/purchasesdk/ui/o;

    invoke-direct {p0, v0, v1}, Lmm/sms/purchasesdk/ui/f;->a(Lmm/sms/purchasesdk/ui/o;Lmm/sms/purchasesdk/ui/o;)Landroid/view/View;

    move-result-object v0

    move v1, v2

    :goto_1
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v8, -0x1

    if-eq v1, v0, :cond_0

    invoke-direct {p0, v5}, Lmm/sms/purchasesdk/ui/f;->a(Landroid/graphics/Bitmap;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v2, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v8, -0x1

    if-ne v2, v3, :cond_2

    invoke-direct {p0, v0}, Lmm/sms/purchasesdk/ui/f;->a(Lmm/sms/purchasesdk/ui/o;)Landroid/view/View;

    move-result-object v0

    move v1, v2

    goto :goto_1

    :cond_2
    sub-int v3, v8, v2

    if-lt v3, v9, :cond_4

    sub-int v1, v8, v2

    add-int/lit8 v1, v1, -0x1

    packed-switch v1, :pswitch_data_0

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmm/sms/purchasesdk/ui/o;

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmm/sms/purchasesdk/ui/o;

    invoke-direct {p0, v0, v1, v2}, Lmm/sms/purchasesdk/ui/f;->a(Lmm/sms/purchasesdk/ui/o;Lmm/sms/purchasesdk/ui/o;Lmm/sms/purchasesdk/ui/o;)Landroid/view/View;

    move-result-object v0

    move v1, v3

    goto :goto_1

    :pswitch_0
    invoke-direct {p0, v0}, Lmm/sms/purchasesdk/ui/f;->a(Lmm/sms/purchasesdk/ui/o;)Landroid/view/View;

    move-result-object v0

    move v1, v2

    goto :goto_1

    :pswitch_1
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmm/sms/purchasesdk/ui/o;

    invoke-direct {p0, v0, v1}, Lmm/sms/purchasesdk/ui/f;->a(Lmm/sms/purchasesdk/ui/o;Lmm/sms/purchasesdk/ui/o;)Landroid/view/View;

    move-result-object v0

    move v1, v2

    goto :goto_1

    :cond_3
    return-object v4

    :cond_4
    move-object v0, v1

    move v1, v2

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public a(Lmm/sms/purchasesdk/a/a;)V
    .locals 0

    iput-object p1, p0, Lmm/sms/purchasesdk/ui/f;->b:Lmm/sms/purchasesdk/a/a;

    return-void
.end method

.method public dismiss()V
    .locals 0

    invoke-super {p0}, Lmm/sms/purchasesdk/ui/b;->dismiss()V

    return-void
.end method

.method public g()Landroid/view/View;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, -0x1

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmm/sms/purchasesdk/ui/f;->b:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lmm/sms/purchasesdk/ui/f;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, p0, Lmm/sms/purchasesdk/ui/f;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lmm/sms/purchasesdk/ui/f;->b:Landroid/widget/LinearLayout;

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmm/sms/purchasesdk/ui/f;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lmm/sms/purchasesdk/ui/f;->b:Landroid/widget/LinearLayout;

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lmm/sms/purchasesdk/ui/f;->a:Landroid/widget/ImageView;

    iget-object v3, p0, Lmm/sms/purchasesdk/ui/f;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v1, v2, v3}, Lmm/sms/purchasesdk/ui/f;->a(Landroid/content/Context;Landroid/widget/ImageView;Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lmm/sms/purchasesdk/ui/f;->i()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmm/sms/purchasesdk/ui/f;->b:Landroid/view/View;

    iget-object v0, p0, Lmm/sms/purchasesdk/ui/f;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lmm/sms/purchasesdk/ui/f;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lmm/sms/purchasesdk/ui/f;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lmm/sms/purchasesdk/ui/f;->a:Landroid/widget/Button;

    iget-object v2, p0, Lmm/sms/purchasesdk/ui/f;->b:Landroid/view/View$OnClickListener;

    const-string v3, "\u786e \u8ba4 \u652f \u4ed8"

    invoke-virtual {p0, v1, v2, v3}, Lmm/sms/purchasesdk/ui/f;->a(Landroid/widget/Button;Landroid/view/View$OnClickListener;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lmm/sms/purchasesdk/ui/f;->b:Lmm/sms/purchasesdk/a/a;

    invoke-virtual {v0}, Lmm/sms/purchasesdk/a/a;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmm/sms/purchasesdk/ui/f;->b:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lmm/sms/purchasesdk/ui/f;->b:Lmm/sms/purchasesdk/a/a;

    invoke-virtual {v2}, Lmm/sms/purchasesdk/a/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lmm/sms/purchasesdk/ui/f;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lmm/sms/purchasesdk/ui/f;->b:Landroid/widget/LinearLayout;

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmm/sms/purchasesdk/ui/f;->b(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/ScrollView;

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmm/sms/purchasesdk/ui/f;->a:Landroid/widget/ScrollView;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lmm/sms/purchasesdk/ui/f;->a:Landroid/widget/ScrollView;

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lmm/sms/purchasesdk/ui/f;->a:Landroid/widget/ScrollView;

    invoke-virtual {v0, v5}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    iget-object v0, p0, Lmm/sms/purchasesdk/ui/f;->a:Landroid/widget/ScrollView;

    iget-object v1, p0, Lmm/sms/purchasesdk/ui/f;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lmm/sms/purchasesdk/ui/f;->a:Landroid/widget/ScrollView;

    iget-object v1, p0, Lmm/sms/purchasesdk/ui/f;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lmm/sms/purchasesdk/ui/f;->a:Landroid/widget/ScrollView;

    return-object v0
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Lmm/sms/purchasesdk/ui/b;->onStop()V

    return-void
.end method

.method public show()V
    .locals 1

    invoke-direct {p0}, Lmm/sms/purchasesdk/ui/f;->b()V

    invoke-direct {p0}, Lmm/sms/purchasesdk/ui/f;->e()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmm/sms/purchasesdk/ui/f;->setContentView(Landroid/view/View;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmm/sms/purchasesdk/ui/f;->setCancelable(Z)V

    invoke-super {p0}, Lmm/sms/purchasesdk/ui/b;->show()V

    return-void
.end method
