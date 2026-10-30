.class public Lmm/sms/purchasesdk/d/b;
.super Ljava/lang/Object;


# static fields
.field public static A:I

.field public static B:I

.field private static e:Z

.field private static f:Z

.field private static g:Z

.field public static h:Ljava/lang/Boolean;

.field private static i:Ljava/lang/Boolean;

.field private static j:Ljava/lang/Boolean;

.field public static k:F

.field private static k:Ljava/lang/Boolean;

.field private static l:Ljava/lang/Boolean;

.field private static mContext:Landroid/content/Context;

.field private static o:Ljava/lang/String;

.field private static p:Ljava/lang/String;

.field private static q:Ljava/lang/String;

.field private static r:Ljava/lang/String;

.field private static s:Ljava/lang/String;

.field private static t:Ljava/lang/String;

.field private static u:Ljava/lang/String;

.field private static v:Ljava/lang/String;

.field private static w:Ljava/lang/String;

.field public static x:I

.field public static x:Ljava/lang/String;

.field private static y:I

.field public static y:Ljava/lang/String;

.field private static z:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    sput-boolean v1, Lmm/sms/purchasesdk/d/b;->e:Z

    const/4 v0, -0x1

    sput v0, Lmm/sms/purchasesdk/d/b;->x:I

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmm/sms/purchasesdk/d/b;->h:Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmm/sms/purchasesdk/d/b;->i:Ljava/lang/Boolean;

    const-string v0, ""

    sput-object v0, Lmm/sms/purchasesdk/d/b;->o:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lmm/sms/purchasesdk/d/b;->p:Ljava/lang/String;

    sput v2, Lmm/sms/purchasesdk/d/b;->y:I

    const-string v0, ""

    sput-object v0, Lmm/sms/purchasesdk/d/b;->q:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmm/sms/purchasesdk/d/b;->j:Ljava/lang/Boolean;

    const-string v0, "15985"

    sput-object v0, Lmm/sms/purchasesdk/d/b;->r:Ljava/lang/String;

    const/16 v0, 0x19

    sput v0, Lmm/sms/purchasesdk/d/b;->z:I

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmm/sms/purchasesdk/d/b;->k:Ljava/lang/Boolean;

    const-string v0, ""

    sput-object v0, Lmm/sms/purchasesdk/d/b;->s:Ljava/lang/String;

    sput-boolean v1, Lmm/sms/purchasesdk/d/b;->f:Z

    const-string v0, "0000000000"

    sput-object v0, Lmm/sms/purchasesdk/d/b;->t:Ljava/lang/String;

    sput-boolean v2, Lmm/sms/purchasesdk/d/b;->g:Z

    const-string v0, ""

    sput-object v0, Lmm/sms/purchasesdk/d/b;->u:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lmm/sms/purchasesdk/d/b;->v:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lmm/sms/purchasesdk/d/b;->w:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmm/sms/purchasesdk/d/b;->l:Ljava/lang/Boolean;

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    sput-object v0, Lmm/sms/purchasesdk/d/b;->x:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lmm/sms/purchasesdk/d/b;->y:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()I
    .locals 1

    sget v0, Lmm/sms/purchasesdk/d/b;->y:I

    return v0
.end method

.method public static a()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lmm/sms/purchasesdk/d/b;->k:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    const-string v0, "\u5c0a\u656c\u7684\u7528\u6237\uff0c\u6b22\u8fce\u4f7f\u7528\u4e2d\u56fd\u79fb\u52a8\u624b\u673a\u8bdd\u8d39\u652f\u4ed8\uff0c\u60a8\u7684\u652f\u4ed8\u8bf7\u6c42\u5c06\u901a\u8fc7\u77ed\u4fe1\u52a0\u5bc6\u65b9\u5f0f\u53d1\u9001\u7ed9\u4e2d\u56fd\u79fb\u52a8\u652f\u4ed8\u7cfb\u7edf\u3002\u652f\u4ed8\u6210\u529f\u540e\uff0c\u60a8\u53ef\u767b\u9646a.10086.cn\u6216\u62e8\u625310086\u67e5\u8be2\u8d2d\u4e70\u8bb0\u5f55\u3002 "

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lmm/sms/purchasesdk/d/b;->o:Ljava/lang/String;

    sput-object p1, Lmm/sms/purchasesdk/d/b;->p:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized a(I)Z
    .locals 3

    const/4 v0, 0x1

    const-class v1, Lmm/sms/purchasesdk/d/b;

    monitor-enter v1

    :try_start_0
    sget-boolean v2, Lmm/sms/purchasesdk/d/b;->e:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    sput-boolean v2, Lmm/sms/purchasesdk/d/b;->e:Z

    sput p0, Lmm/sms/purchasesdk/d/b;->x:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lmm/sms/purchasesdk/d/b;->j:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lmm/sms/purchasesdk/d/b;->s:Ljava/lang/String;

    return-object p0
.end method

.method public static b(I)V
    .locals 0

    sput p0, Lmm/sms/purchasesdk/d/b;->y:I

    return-void
.end method

.method public static b(Ljava/lang/Boolean;)V
    .locals 0

    sput-object p0, Lmm/sms/purchasesdk/d/b;->k:Ljava/lang/Boolean;

    return-void
.end method

.method public static b(Z)V
    .locals 0

    sput-boolean p0, Lmm/sms/purchasesdk/d/b;->g:Z

    return-void
.end method

.method public static c()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lmm/sms/purchasesdk/d/b;->i:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static c(Ljava/lang/Boolean;)V
    .locals 0

    sput-object p0, Lmm/sms/purchasesdk/d/b;->j:Ljava/lang/Boolean;

    return-void
.end method

.method public static c()Z
    .locals 1

    sget-boolean v0, Lmm/sms/purchasesdk/d/b;->g:Z

    return v0
.end method

.method public static d(Ljava/lang/Boolean;)V
    .locals 0

    sput-object p0, Lmm/sms/purchasesdk/d/b;->i:Ljava/lang/Boolean;

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lmm/sms/purchasesdk/d/b;->t:Ljava/lang/String;

    return-void
.end method

.method public static e()I
    .locals 1

    sget v0, Lmm/sms/purchasesdk/d/b;->z:I

    return v0
.end method

.method public static e(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lmm/sms/purchasesdk/d/b;->w:Ljava/lang/String;

    return-void
.end method

.method public static f(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lmm/sms/purchasesdk/d/b;->q:Ljava/lang/String;

    return-void
.end method

.method public static g()Ljava/lang/String;
    .locals 1

    sget-object v0, Lmm/sms/purchasesdk/d/b;->o:Ljava/lang/String;

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lmm/sms/purchasesdk/d/b;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static h()Ljava/lang/String;
    .locals 1

    sget-object v0, Lmm/sms/purchasesdk/d/b;->p:Ljava/lang/String;

    return-object v0
.end method

.method public static i()Ljava/lang/String;
    .locals 1

    sget-object v0, Lmm/sms/purchasesdk/d/b;->s:Ljava/lang/String;

    return-object v0
.end method

.method public static i()V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    sput-object v0, Lmm/sms/purchasesdk/d/b;->mContext:Landroid/content/Context;

    const-string v0, ""

    sput-object v0, Lmm/sms/purchasesdk/d/b;->q:Ljava/lang/String;

    sput v1, Lmm/sms/purchasesdk/d/b;->y:I

    const-string v0, ""

    sput-object v0, Lmm/sms/purchasesdk/d/b;->s:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmm/sms/purchasesdk/d/b;->j:Ljava/lang/Boolean;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmm/sms/purchasesdk/d/b;->l:Ljava/lang/Boolean;

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->reset()V

    return-void
.end method

.method public static j()Ljava/lang/String;
    .locals 1

    sget-object v0, Lmm/sms/purchasesdk/d/b;->t:Ljava/lang/String;

    return-object v0
.end method

.method public static j()V
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->reset()V

    invoke-static {}, Lmm/sms/purchasesdk/ui/n;->h()V

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lmm/sms/purchasesdk/d/b;->k:F

    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v0, Lmm/sms/purchasesdk/d/b;->B:I

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v0, Lmm/sms/purchasesdk/d/b;->A:I

    sget v0, Lmm/sms/purchasesdk/d/b;->A:I

    sput v0, Lmm/sms/purchasesdk/ui/n;->k:I

    sget v0, Lmm/sms/purchasesdk/d/b;->k:F

    cmpg-float v0, v0, v4

    if-gez v0, :cond_0

    const/4 v0, 0x5

    sput v0, Lmm/sms/purchasesdk/ui/n;->q:I

    :cond_0
    sget-object v0, Lmm/sms/purchasesdk/d/b;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    sget v0, Lmm/sms/purchasesdk/d/b;->B:I

    int-to-float v0, v0

    const/high16 v1, 0x43f00000    # 480.0f

    div-float/2addr v0, v1

    sput v0, Lmm/sms/purchasesdk/ui/n;->d:F

    const/high16 v0, 0x421c0000    # 39.0f

    sput v0, Lmm/sms/purchasesdk/ui/n;->f:F

    sget v0, Lmm/sms/purchasesdk/ui/n;->f:F

    sget v1, Lmm/sms/purchasesdk/d/b;->B:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    div-float/2addr v0, v3

    float-to-int v0, v0

    sput v0, Lmm/sms/purchasesdk/ui/n;->r:I

    const/high16 v0, 0x41f80000    # 31.0f

    sput v0, Lmm/sms/purchasesdk/ui/n;->c:F

    sget v0, Lmm/sms/purchasesdk/ui/n;->c:F

    sget v1, Lmm/sms/purchasesdk/d/b;->B:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    div-float/2addr v0, v3

    float-to-int v0, v0

    sput v0, Lmm/sms/purchasesdk/ui/n;->l:I

    sget v0, Lmm/sms/purchasesdk/d/b;->A:I

    mul-int/lit8 v0, v0, 0x64

    div-int/lit16 v0, v0, 0x320

    int-to-float v0, v0

    sput v0, Lmm/sms/purchasesdk/ui/n;->e:F

    sget v0, Lmm/sms/purchasesdk/ui/n;->e:F

    sget v1, Lmm/sms/purchasesdk/ui/n;->u:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    div-float/2addr v0, v3

    float-to-int v0, v0

    sput v0, Lmm/sms/purchasesdk/ui/n;->u:I

    sget v0, Lmm/sms/purchasesdk/ui/n;->e:F

    sget v1, Lmm/sms/purchasesdk/ui/n;->t:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    div-float/2addr v0, v3

    float-to-int v0, v0

    sput v0, Lmm/sms/purchasesdk/ui/n;->t:I

    sget v0, Lmm/sms/purchasesdk/ui/n;->e:F

    sget v1, Lmm/sms/purchasesdk/ui/n;->q:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    div-float/2addr v0, v3

    float-to-int v0, v0

    sput v0, Lmm/sms/purchasesdk/ui/n;->q:I

    sget v0, Lmm/sms/purchasesdk/ui/n;->e:F

    sget v1, Lmm/sms/purchasesdk/ui/n;->s:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    div-float/2addr v0, v3

    float-to-int v0, v0

    sput v0, Lmm/sms/purchasesdk/ui/n;->s:I

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmm/sms/purchasesdk/ui/n;->f:Ljava/lang/Boolean;

    sget v0, Lmm/sms/purchasesdk/d/b;->k:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_1

    sget v0, Lmm/sms/purchasesdk/ui/n;->j:F

    sget v1, Lmm/sms/purchasesdk/ui/n;->d:F

    mul-float/2addr v0, v1

    sput v0, Lmm/sms/purchasesdk/ui/n;->j:F

    sget v0, Lmm/sms/purchasesdk/ui/n;->h:F

    sget v1, Lmm/sms/purchasesdk/ui/n;->e:F

    mul-float/2addr v0, v1

    div-float/2addr v0, v3

    sput v0, Lmm/sms/purchasesdk/ui/n;->h:F

    sget v0, Lmm/sms/purchasesdk/ui/n;->i:F

    sget v1, Lmm/sms/purchasesdk/ui/n;->d:F

    mul-float/2addr v0, v1

    sput v0, Lmm/sms/purchasesdk/ui/n;->i:F

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget v0, Lmm/sms/purchasesdk/d/b;->B:I

    int-to-float v0, v0

    const/high16 v1, 0x44480000    # 800.0f

    div-float/2addr v0, v1

    sput v0, Lmm/sms/purchasesdk/ui/n;->d:F

    const/high16 v0, 0x42280000    # 42.0f

    sput v0, Lmm/sms/purchasesdk/ui/n;->f:F

    sget v0, Lmm/sms/purchasesdk/ui/n;->f:F

    sget v1, Lmm/sms/purchasesdk/d/b;->B:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    div-float/2addr v0, v3

    float-to-int v0, v0

    sput v0, Lmm/sms/purchasesdk/ui/n;->r:I

    const/high16 v0, 0x420c0000    # 35.0f

    sput v0, Lmm/sms/purchasesdk/ui/n;->c:F

    sget v0, Lmm/sms/purchasesdk/ui/n;->c:F

    sget v1, Lmm/sms/purchasesdk/d/b;->B:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    div-float/2addr v0, v3

    float-to-int v0, v0

    sput v0, Lmm/sms/purchasesdk/ui/n;->l:I

    sget v0, Lmm/sms/purchasesdk/d/b;->B:I

    mul-int/lit8 v0, v0, 0x64

    div-int/lit16 v0, v0, 0x320

    int-to-float v0, v0

    sput v0, Lmm/sms/purchasesdk/ui/n;->e:F

    sget v0, Lmm/sms/purchasesdk/ui/n;->e:F

    sget v1, Lmm/sms/purchasesdk/ui/n;->u:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    div-float/2addr v0, v3

    float-to-int v0, v0

    sput v0, Lmm/sms/purchasesdk/ui/n;->u:I

    sget v0, Lmm/sms/purchasesdk/ui/n;->e:F

    sget v1, Lmm/sms/purchasesdk/ui/n;->t:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    div-float/2addr v0, v3

    float-to-int v0, v0

    sput v0, Lmm/sms/purchasesdk/ui/n;->t:I

    sget v0, Lmm/sms/purchasesdk/ui/n;->e:F

    sget v1, Lmm/sms/purchasesdk/ui/n;->q:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    div-float/2addr v0, v3

    float-to-int v0, v0

    sput v0, Lmm/sms/purchasesdk/ui/n;->q:I

    sget v0, Lmm/sms/purchasesdk/ui/n;->e:F

    sget v1, Lmm/sms/purchasesdk/ui/n;->s:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    div-float/2addr v0, v3

    float-to-int v0, v0

    sput v0, Lmm/sms/purchasesdk/ui/n;->s:I

    sget v0, Lmm/sms/purchasesdk/d/b;->k:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_3

    sget v0, Lmm/sms/purchasesdk/ui/n;->j:F

    sget v1, Lmm/sms/purchasesdk/ui/n;->d:F

    mul-float/2addr v0, v1

    sput v0, Lmm/sms/purchasesdk/ui/n;->j:F

    sget v0, Lmm/sms/purchasesdk/ui/n;->h:F

    sget v1, Lmm/sms/purchasesdk/ui/n;->e:F

    mul-float/2addr v0, v1

    div-float/2addr v0, v3

    sput v0, Lmm/sms/purchasesdk/ui/n;->h:F

    sget v0, Lmm/sms/purchasesdk/ui/n;->i:F

    sget v1, Lmm/sms/purchasesdk/ui/n;->d:F

    mul-float/2addr v0, v1

    sput v0, Lmm/sms/purchasesdk/ui/n;->i:F

    :cond_3
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmm/sms/purchasesdk/ui/n;->f:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public static k()Ljava/lang/String;
    .locals 4

    sget-object v0, Lmm/sms/purchasesdk/d/b;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmm/sms/purchasesdk/d/b;->u:Ljava/lang/String;

    sget-object v0, Lmm/sms/purchasesdk/d/b;->u:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lmm/sms/purchasesdk/d/b;->v:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "10086"

    sput-object v0, Lmm/sms/purchasesdk/d/b;->u:Ljava/lang/String;

    :cond_1
    const/4 v0, 0x0

    const-string v1, "MMBillingSDk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Imsi-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lmm/sms/purchasesdk/d/b;->u:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lmm/sms/purchasesdk/d/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lmm/sms/purchasesdk/d/b;->u:Ljava/lang/String;

    return-object v0
.end method

.method public static l()Ljava/lang/String;
    .locals 4

    sget-object v0, Lmm/sms/purchasesdk/d/b;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmm/sms/purchasesdk/d/b;->v:Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "MMBillingSDk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mImei-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lmm/sms/purchasesdk/d/b;->v:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lmm/sms/purchasesdk/d/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lmm/sms/purchasesdk/d/b;->v:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lmm/sms/purchasesdk/d/b;->v:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "10086"

    sput-object v0, Lmm/sms/purchasesdk/d/b;->v:Ljava/lang/String;

    :cond_1
    sget-object v0, Lmm/sms/purchasesdk/d/b;->v:Ljava/lang/String;

    return-object v0
.end method

.method public static m()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->a()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "99999999"

    sput-object v0, Lmm/sms/purchasesdk/d/b;->w:Ljava/lang/String;

    :cond_0
    sget-object v0, Lmm/sms/purchasesdk/d/b;->w:Ljava/lang/String;

    return-object v0
.end method

.method public static n()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->l()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->k()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lmm/sms/purchasesdk/fingerprint/IdentifyApp;->generateTransactionID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static o()Ljava/lang/String;
    .locals 1

    sget-object v0, Lmm/sms/purchasesdk/d/b;->q:Ljava/lang/String;

    return-object v0
.end method

.method public static p()Ljava/lang/String;
    .locals 1

    sget-object v0, Lmm/sms/purchasesdk/d/b;->r:Ljava/lang/String;

    return-object v0
.end method

.method public static q()Ljava/lang/String;
    .locals 4

    sget-object v0, Lmm/sms/purchasesdk/d/b;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v0, 0x0

    :try_start_0
    sget-object v2, Lmm/sms/purchasesdk/d/b;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Files"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mobile.so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static r()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MMBillingSDk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "str time =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmm/sms/purchasesdk/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static reset()V
    .locals 3

    const/high16 v2, 0x41800000    # 16.0f

    const/high16 v1, 0x3f800000    # 1.0f

    const/16 v0, 0xa

    sput v0, Lmm/sms/purchasesdk/ui/n;->u:I

    sput v0, Lmm/sms/purchasesdk/ui/n;->t:I

    sput v0, Lmm/sms/purchasesdk/ui/n;->q:I

    const/16 v0, 0x14

    sput v0, Lmm/sms/purchasesdk/ui/n;->s:I

    sput v1, Lmm/sms/purchasesdk/ui/n;->f:F

    sput v1, Lmm/sms/purchasesdk/ui/n;->d:F

    sput v2, Lmm/sms/purchasesdk/ui/n;->g:F

    const/high16 v0, 0x41700000    # 15.0f

    sput v0, Lmm/sms/purchasesdk/ui/n;->h:F

    sput v2, Lmm/sms/purchasesdk/ui/n;->i:F

    const/high16 v0, 0x41900000    # 18.0f

    sput v0, Lmm/sms/purchasesdk/ui/n;->j:F

    return-void
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0

    sput-object p0, Lmm/sms/purchasesdk/d/b;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized unlock()V
    .locals 2

    const-class v1, Lmm/sms/purchasesdk/d/b;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lmm/sms/purchasesdk/d/b;->e:Z

    const/4 v0, -0x1

    sput v0, Lmm/sms/purchasesdk/d/b;->x:I

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
