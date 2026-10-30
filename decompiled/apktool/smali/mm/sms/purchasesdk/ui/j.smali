.class public Lmm/sms/purchasesdk/ui/j;
.super Ljava/lang/Object;


# static fields
.field private static a:Lmm/sms/purchasesdk/ui/j;


# instance fields
.field private a:Lmm/sms/purchasesdk/ui/d;

.field private a:Lmm/sms/purchasesdk/ui/k;

.field private b:Lmm/sms/purchasesdk/ui/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lmm/sms/purchasesdk/ui/j;->a:Lmm/sms/purchasesdk/ui/j;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lmm/sms/purchasesdk/ui/j;
    .locals 1

    sget-object v0, Lmm/sms/purchasesdk/ui/j;->a:Lmm/sms/purchasesdk/ui/j;

    if-nez v0, :cond_0

    new-instance v0, Lmm/sms/purchasesdk/ui/j;

    invoke-direct {v0}, Lmm/sms/purchasesdk/ui/j;-><init>()V

    sput-object v0, Lmm/sms/purchasesdk/ui/j;->a:Lmm/sms/purchasesdk/ui/j;

    :cond_0
    sget-object v0, Lmm/sms/purchasesdk/ui/j;->a:Lmm/sms/purchasesdk/ui/j;

    return-object v0
.end method


# virtual methods
.method public a(ILmm/sms/purchasesdk/b;Landroid/os/Handler;Landroid/os/Handler;Ljava/util/HashMap;)V
    .locals 7

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lmm/sms/purchasesdk/ui/k;

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p1

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lmm/sms/purchasesdk/ui/k;-><init>(Landroid/content/Context;Lmm/sms/purchasesdk/b;Landroid/os/Handler;Landroid/os/Handler;ILjava/util/HashMap;)V

    iput-object v0, p0, Lmm/sms/purchasesdk/ui/j;->a:Lmm/sms/purchasesdk/ui/k;

    iget-object v0, p0, Lmm/sms/purchasesdk/ui/j;->a:Lmm/sms/purchasesdk/ui/k;

    invoke-virtual {v0}, Lmm/sms/purchasesdk/ui/k;->show()V

    goto :goto_0
.end method

.method public a(Landroid/os/Handler;Landroid/os/Handler;Lmm/sms/purchasesdk/b;Lmm/sms/purchasesdk/a/a;)V
    .locals 6

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmm/sms/purchasesdk/ui/j;->b:Lmm/sms/purchasesdk/ui/f;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmm/sms/purchasesdk/ui/j;->b:Lmm/sms/purchasesdk/ui/f;

    invoke-virtual {v0}, Lmm/sms/purchasesdk/ui/f;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eq v0, v1, :cond_2

    :cond_1
    new-instance v0, Lmm/sms/purchasesdk/ui/f;

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lmm/sms/purchasesdk/ui/f;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;Lmm/sms/purchasesdk/b;Lmm/sms/purchasesdk/a/a;)V

    iput-object v0, p0, Lmm/sms/purchasesdk/ui/j;->b:Lmm/sms/purchasesdk/ui/f;

    :goto_1
    iget-object v0, p0, Lmm/sms/purchasesdk/ui/j;->b:Lmm/sms/purchasesdk/ui/f;

    invoke-virtual {v0}, Lmm/sms/purchasesdk/ui/f;->show()V

    invoke-virtual {p0}, Lmm/sms/purchasesdk/ui/j;->d()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lmm/sms/purchasesdk/ui/j;->b:Lmm/sms/purchasesdk/ui/f;

    invoke-virtual {v0, p4}, Lmm/sms/purchasesdk/ui/f;->a(Lmm/sms/purchasesdk/a/a;)V

    goto :goto_1
.end method

.method public c()V
    .locals 2

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lmm/sms/purchasesdk/ui/j;->a:Lmm/sms/purchasesdk/ui/d;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmm/sms/purchasesdk/ui/j;->a:Lmm/sms/purchasesdk/ui/d;

    invoke-virtual {v0}, Lmm/sms/purchasesdk/ui/d;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eq v0, v1, :cond_3

    :cond_2
    new-instance v0, Lmm/sms/purchasesdk/ui/d;

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmm/sms/purchasesdk/ui/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmm/sms/purchasesdk/ui/j;->a:Lmm/sms/purchasesdk/ui/d;

    :cond_3
    iget-object v0, p0, Lmm/sms/purchasesdk/ui/j;->a:Lmm/sms/purchasesdk/ui/d;

    invoke-virtual {v0}, Lmm/sms/purchasesdk/ui/d;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmm/sms/purchasesdk/ui/j;->a:Lmm/sms/purchasesdk/ui/d;

    invoke-virtual {v0}, Lmm/sms/purchasesdk/ui/d;->show()V

    goto :goto_0
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lmm/sms/purchasesdk/ui/j;->a:Lmm/sms/purchasesdk/ui/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmm/sms/purchasesdk/ui/j;->a:Lmm/sms/purchasesdk/ui/d;

    invoke-virtual {v0}, Lmm/sms/purchasesdk/ui/d;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmm/sms/purchasesdk/ui/j;->a:Lmm/sms/purchasesdk/ui/d;

    invoke-virtual {v0}, Lmm/sms/purchasesdk/ui/d;->dismiss()V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lmm/sms/purchasesdk/ui/j;->b:Lmm/sms/purchasesdk/ui/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmm/sms/purchasesdk/ui/j;->b:Lmm/sms/purchasesdk/ui/f;

    invoke-virtual {v0}, Lmm/sms/purchasesdk/ui/f;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmm/sms/purchasesdk/ui/j;->b:Lmm/sms/purchasesdk/ui/f;

    invoke-virtual {v0}, Lmm/sms/purchasesdk/ui/f;->dismiss()V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lmm/sms/purchasesdk/ui/j;->a:Lmm/sms/purchasesdk/ui/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmm/sms/purchasesdk/ui/j;->a:Lmm/sms/purchasesdk/ui/d;

    invoke-virtual {v0}, Lmm/sms/purchasesdk/ui/d;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmm/sms/purchasesdk/ui/j;->a:Lmm/sms/purchasesdk/ui/d;

    invoke-virtual {v0}, Lmm/sms/purchasesdk/ui/d;->dismiss()V

    :cond_0
    iget-object v0, p0, Lmm/sms/purchasesdk/ui/j;->b:Lmm/sms/purchasesdk/ui/f;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmm/sms/purchasesdk/ui/j;->b:Lmm/sms/purchasesdk/ui/f;

    invoke-virtual {v0}, Lmm/sms/purchasesdk/ui/f;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmm/sms/purchasesdk/ui/j;->b:Lmm/sms/purchasesdk/ui/f;

    invoke-virtual {v0}, Lmm/sms/purchasesdk/ui/f;->dismiss()V

    :cond_1
    iget-object v0, p0, Lmm/sms/purchasesdk/ui/j;->a:Lmm/sms/purchasesdk/ui/k;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmm/sms/purchasesdk/ui/j;->a:Lmm/sms/purchasesdk/ui/k;

    invoke-virtual {v0}, Lmm/sms/purchasesdk/ui/k;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmm/sms/purchasesdk/ui/j;->a:Lmm/sms/purchasesdk/ui/k;

    invoke-virtual {v0}, Lmm/sms/purchasesdk/ui/k;->dismiss()V

    :cond_2
    iput-object v1, p0, Lmm/sms/purchasesdk/ui/j;->a:Lmm/sms/purchasesdk/ui/d;

    iput-object v1, p0, Lmm/sms/purchasesdk/ui/j;->b:Lmm/sms/purchasesdk/ui/f;

    iput-object v1, p0, Lmm/sms/purchasesdk/ui/j;->a:Lmm/sms/purchasesdk/ui/k;

    return-void
.end method
