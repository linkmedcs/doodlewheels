.class public Lmm/sms/purchasesdk/ui/e;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lmm/sms/purchasesdk/ui/e;->d()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmm/sms/purchasesdk/ui/e;->a:Landroid/view/View;

    return-void
.end method

.method private d()Landroid/view/View;
    .locals 4

    const/4 v2, -0x1

    const/4 v3, -0x2

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/ProgressBar;

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public c()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lmm/sms/purchasesdk/ui/e;->a:Landroid/view/View;

    return-object v0
.end method
