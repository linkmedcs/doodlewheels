.class public Lmm/sms/purchasesdk/ui/k;
.super Lmm/sms/purchasesdk/ui/b;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private a:Landroid/os/Handler;

.field private a:Landroid/view/View$OnClickListener;

.field private a:Landroid/widget/ImageView;

.field private a:Landroid/widget/ScrollView;

.field private a:Landroid/widget/TextView;

.field private a:Ljava/util/HashMap;

.field private b:Landroid/os/Handler;

.field private b:Landroid/widget/Button;

.field private b:Lmm/sms/purchasesdk/b;

.field private c:Landroid/view/View$OnClickListener;

.field private f:I

.field private f:Landroid/graphics/Bitmap;

.field private g:I

.field private g:Landroid/graphics/drawable/Drawable;

.field private g:Ljava/lang/Boolean;

.field private j:Landroid/graphics/drawable/Drawable;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmm/sms/purchasesdk/b;Landroid/os/Handler;Landroid/os/Handler;ILjava/util/HashMap;)V
    .locals 2

    const/4 v1, 0x1

    const v0, 0x1030005

    invoke-direct {p0, p1, v0}, Lmm/sms/purchasesdk/ui/b;-><init>(Landroid/content/Context;I)V

    const-string v0, "ResultDialog"

    iput-object v0, p0, Lmm/sms/purchasesdk/ui/k;->TAG:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lmm/sms/purchasesdk/ui/k;->j:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lmm/sms/purchasesdk/ui/k;->k:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lmm/sms/purchasesdk/ui/k;->l:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmm/sms/purchasesdk/ui/k;->g:Ljava/lang/Boolean;

    new-instance v0, Lmm/sms/purchasesdk/ui/l;

    invoke-direct {v0, p0}, Lmm/sms/purchasesdk/ui/l;-><init>(Lmm/sms/purchasesdk/ui/k;)V

    iput-object v0, p0, Lmm/sms/purchasesdk/ui/k;->c:Landroid/view/View$OnClickListener;

    new-instance v0, Lmm/sms/purchasesdk/ui/m;

    invoke-direct {v0, p0}, Lmm/sms/purchasesdk/ui/m;-><init>(Lmm/sms/purchasesdk/ui/k;)V

    iput-object v0, p0, Lmm/sms/purchasesdk/ui/k;->a:Landroid/view/View$OnClickListener;

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lmm/sms/purchasesdk/ui/k;->setOwnerActivity(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lmm/sms/purchasesdk/ui/k;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0}, Lmm/sms/purchasesdk/ui/k;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v1

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-static {p1}, Lmm/sms/purchasesdk/d/b;->setContext(Landroid/content/Context;)V

    :cond_1
    iput p5, p0, Lmm/sms/purchasesdk/ui/k;->f:I

    iput-object p3, p0, Lmm/sms/purchasesdk/ui/k;->a:Landroid/os/Handler;

    iput-object p4, p0, Lmm/sms/purchasesdk/ui/k;->b:Landroid/os/Handler;

    iput-object p2, p0, Lmm/sms/purchasesdk/ui/k;->b:Lmm/sms/purchasesdk/b;

    iput-object p6, p0, Lmm/sms/purchasesdk/ui/k;->a:Ljava/util/HashMap;

    new-instance v0, Landroid/widget/Button;

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmm/sms/purchasesdk/ui/k;->b:Landroid/widget/Button;

    invoke-direct {p0, p5}, Lmm/sms/purchasesdk/ui/k;->init(I)V

    invoke-direct {p0}, Lmm/sms/purchasesdk/ui/k;->b()V

    return-void
.end method

.method static synthetic a(Lmm/sms/purchasesdk/ui/k;)I
    .locals 1

    iget v0, p0, Lmm/sms/purchasesdk/ui/k;->f:I

    return v0
.end method

.method static synthetic a(Lmm/sms/purchasesdk/ui/k;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lmm/sms/purchasesdk/ui/k;->a:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lmm/sms/purchasesdk/ui/k;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lmm/sms/purchasesdk/ui/k;->b:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic a(Lmm/sms/purchasesdk/ui/k;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lmm/sms/purchasesdk/ui/k;->a:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic a(Lmm/sms/purchasesdk/ui/k;)Lmm/sms/purchasesdk/b;
    .locals 1

    iget-object v0, p0, Lmm/sms/purchasesdk/ui/k;->b:Lmm/sms/purchasesdk/b;

    return-object v0
.end method

.method static synthetic b(Lmm/sms/purchasesdk/ui/k;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lmm/sms/purchasesdk/ui/k;->b:Landroid/os/Handler;

    return-object v0
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lmm/sms/purchasesdk/ui/k;->j:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mmiap/smsimage/vertical/bg.png"

    invoke-static {v0, v1}, Lmm/sms/purchasesdk/ui/n;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lmm/sms/purchasesdk/ui/k;->j:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-void
.end method

.method private init(I)V
    .locals 5

    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_1

    const-string v0, "\u652f \u4ed8 \u6210 \u529f"

    iput-object v0, p0, Lmm/sms/purchasesdk/ui/k;->j:Ljava/lang/String;

    const-string v0, "\u786e \u5b9a"

    iput-object v0, p0, Lmm/sms/purchasesdk/ui/k;->l:Ljava/lang/String;

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mmiap/smsimage/vertical/icon_success.png"

    invoke-static {v0, v1}, Lmm/sms/purchasesdk/ui/n;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lmm/sms/purchasesdk/ui/k;->f:Landroid/graphics/Bitmap;

    const v0, -0xa869b6

    iput v0, p0, Lmm/sms/purchasesdk/ui/k;->g:I

    invoke-static {p1}, Lmm/sms/purchasesdk/PurchaseCode;->getReason(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmm/sms/purchasesdk/ui/k;->k:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmm/sms/purchasesdk/ui/k;->g:Ljava/lang/Boolean;

    :goto_0
    iget-object v0, p0, Lmm/sms/purchasesdk/ui/k;->g:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mmiap/smsimage/vertical/infobg.9.png"

    invoke-static {v0, v1}, Lmm/sms/purchasesdk/ui/n;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    new-instance v2, Landroid/graphics/drawable/NinePatchDrawable;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    const/4 v4, 0x0

    invoke-direct {v2, v0, v1, v3, v4}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    iput-object v2, p0, Lmm/sms/purchasesdk/ui/k;->g:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-void

    :cond_1
    const-string v0, "\u652f \u4ed8 \u5931 \u8d25"

    iput-object v0, p0, Lmm/sms/purchasesdk/ui/k;->j:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmm/sms/purchasesdk/ui/k;->g:Ljava/lang/Boolean;

    const v0, -0x47c4c5

    iput v0, p0, Lmm/sms/purchasesdk/ui/k;->g:I

    iget-object v0, p0, Lmm/sms/purchasesdk/ui/k;->a:Ljava/util/HashMap;

    if-nez v0, :cond_2

    const-string v0, "ResultDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mReturnObject null order fail ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmm/sms/purchasesdk/d/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mmiap/smsimage/vertical/icon_info.png"

    invoke-static {v0, v1}, Lmm/sms/purchasesdk/ui/n;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lmm/sms/purchasesdk/ui/k;->f:Landroid/graphics/Bitmap;

    :goto_1
    invoke-static {p1}, Lmm/sms/purchasesdk/PurchaseCode;->getReason(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmm/sms/purchasesdk/ui/k;->k:Ljava/lang/String;

    const-string v0, "\u786e \u5b9a"

    iput-object v0, p0, Lmm/sms/purchasesdk/ui/k;->l:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, "ResultDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mReturnObject order fail ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmm/sms/purchasesdk/d/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mmiap/smsimage/vertical/icon_false.png"

    invoke-static {v0, v1}, Lmm/sms/purchasesdk/ui/n;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lmm/sms/purchasesdk/ui/k;->f:Landroid/graphics/Bitmap;

    goto :goto_1
.end method

.method private k()Landroid/view/View;
    .locals 11

    const/4 v10, 0x0

    const/4 v9, -0x1

    const/4 v8, -0x2

    const/16 v7, 0x11

    const/16 v6, 0xa

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    sget v0, Lmm/sms/purchasesdk/d/b;->A:I

    int-to-double v2, v0

    const-wide v4, 0x3fee666666666666L    # 0.95

    mul-double/2addr v2, v4

    double-to-int v0, v2

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    sget v3, Lmm/sms/purchasesdk/ui/n;->l:I

    invoke-direct {v2, v0, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v0, 0x1

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    sget v0, Lmm/sms/purchasesdk/ui/n;->q:I

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lmm/sms/purchasesdk/ui/k;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v0, Lmm/sms/purchasesdk/d/b;->k:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    sget v0, Lmm/sms/purchasesdk/ui/n;->l:I

    int-to-double v2, v0

    const-wide v4, 0x3fe4cccccccccccdL    # 0.65

    mul-double/2addr v2, v4

    double-to-int v0, v2

    :goto_0
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v9, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v3, Landroid/widget/ImageView;

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lmm/sms/purchasesdk/ui/k;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v4, 0x41f00000    # 30.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    iget v4, p0, Lmm/sms/purchasesdk/ui/k;->g:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v4, p0, Lmm/sms/purchasesdk/ui/k;->j:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const/16 v5, 0x10

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x2

    invoke-direct {v3, v9, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "mmiap/smsimage/vertical/line.png"

    invoke-static {v4, v5}, Lmm/sms/purchasesdk/ui/n;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lmm/sms/purchasesdk/ui/k;->a:Landroid/widget/TextView;

    sget v2, Lmm/sms/purchasesdk/ui/n;->l:I

    sub-int v0, v2, v0

    add-int/lit8 v0, v0, -0x2

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v8, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v0, p0, Lmm/sms/purchasesdk/ui/k;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v6, v10, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, p0, Lmm/sms/purchasesdk/ui/k;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lmm/sms/purchasesdk/ui/k;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lmm/sms/purchasesdk/ui/k;->a:Landroid/widget/TextView;

    const v2, -0x7e7e7f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lmm/sms/purchasesdk/ui/k;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lmm/sms/purchasesdk/ui/k;->k:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lmm/sms/purchasesdk/ui/k;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x19

    if-le v0, v2, :cond_1

    iget-object v0, p0, Lmm/sms/purchasesdk/ui/k;->a:Landroid/widget/TextView;

    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    :goto_1
    iget-object v0, p0, Lmm/sms/purchasesdk/ui/k;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v1

    :cond_0
    sget v0, Lmm/sms/purchasesdk/ui/n;->l:I

    int-to-double v2, v0

    const-wide v4, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v2, v4

    double-to-int v0, v2

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lmm/sms/purchasesdk/ui/k;->a:Landroid/widget/TextView;

    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_1
.end method

.method private l()Landroid/view/View;
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

    const v2, -0x7e7e7f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v2, "\u6b22\u8fce\u60a8\u4f7f\u7528\u4e2d\u56fd\u79fb\u52a8\u624b\u673a\u8bdd\u8d39\u652f\u4ed8\uff0c\u652f\u4ed8\u6210\u529f\u540e\uff0c\u60a8\u53ef\u767b\u9646a.10086.cn\u6216\u62e8\u625310086\u67e5\u8be2\u8d2d\u4e70\u8bb0\u5f55\u3002"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v2, Lmm/sms/purchasesdk/ui/n;->i:F

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3fa66666    # 1.3f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    invoke-static {}, Lmm/sms/purchasesdk/ui/j;->a()Lmm/sms/purchasesdk/ui/j;

    move-result-object v0

    invoke-virtual {v0}, Lmm/sms/purchasesdk/ui/j;->e()V

    invoke-super {p0}, Lmm/sms/purchasesdk/ui/b;->dismiss()V

    return-void
.end method

.method public j()Landroid/view/View;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, -0x1

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmm/sms/purchasesdk/ui/k;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lmm/sms/purchasesdk/ui/k;->a:Landroid/widget/ImageView;

    iget-object v3, p0, Lmm/sms/purchasesdk/ui/k;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v1, v2, v3}, Lmm/sms/purchasesdk/ui/k;->a(Landroid/content/Context;Landroid/widget/ImageView;Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lmm/sms/purchasesdk/ui/k;->k()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lmm/sms/purchasesdk/ui/k;->b:Landroid/widget/Button;

    iget-object v2, p0, Lmm/sms/purchasesdk/ui/k;->c:Landroid/view/View$OnClickListener;

    iget-object v3, p0, Lmm/sms/purchasesdk/ui/k;->l:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lmm/sms/purchasesdk/ui/k;->a(Landroid/widget/Button;Landroid/view/View$OnClickListener;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lmm/sms/purchasesdk/ui/k;->g:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lmm/sms/purchasesdk/ui/k;->l()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {}, Lmm/sms/purchasesdk/d/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmm/sms/purchasesdk/ui/k;->b(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/ScrollView;

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lmm/sms/purchasesdk/ui/k;->a:Landroid/widget/ScrollView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v2, Landroid/widget/ScrollView;

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lmm/sms/purchasesdk/ui/k;->a:Landroid/widget/ScrollView;

    iget-object v2, p0, Lmm/sms/purchasesdk/ui/k;->a:Landroid/widget/ScrollView;

    invoke-virtual {v2, v1}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lmm/sms/purchasesdk/ui/k;->a:Landroid/widget/ScrollView;

    invoke-virtual {v1, v5}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    iget-object v1, p0, Lmm/sms/purchasesdk/ui/k;->a:Landroid/widget/ScrollView;

    iget-object v2, p0, Lmm/sms/purchasesdk/ui/k;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lmm/sms/purchasesdk/ui/k;->a:Landroid/widget/ScrollView;

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lmm/sms/purchasesdk/ui/k;->a:Landroid/widget/ScrollView;

    return-object v0
.end method

.method public show()V
    .locals 1

    invoke-virtual {p0}, Lmm/sms/purchasesdk/ui/k;->j()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmm/sms/purchasesdk/ui/k;->setContentView(Landroid/view/View;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmm/sms/purchasesdk/ui/k;->setCancelable(Z)V

    invoke-super {p0}, Lmm/sms/purchasesdk/ui/b;->show()V

    return-void
.end method
