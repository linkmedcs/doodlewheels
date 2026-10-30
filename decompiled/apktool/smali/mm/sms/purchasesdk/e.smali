.class public Lmm/sms/purchasesdk/e;
.super Landroid/os/HandlerThread;


# static fields
.field private static a:Lmm/sms/purchasesdk/a/a;

.field private static b:Z


# instance fields
.field a:Landroid/os/Handler;

.field b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static a()Lmm/sms/purchasesdk/a/a;
    .locals 1

    sget-object v0, Lmm/sms/purchasesdk/e;->a:Lmm/sms/purchasesdk/a/a;

    return-object v0
.end method

.method private a(Lmm/sms/purchasesdk/b;)V
    .locals 12

    const/16 v6, 0x14

    const/4 v5, 0x0

    const-string v0, "TaskThread"

    const-string v1, "init() called"

    invoke-static {v0, v1}, Lmm/sms/purchasesdk/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmm/sms/purchasesdk/c;->b(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    invoke-direct {p0, p1, v0}, Lmm/sms/purchasesdk/e;->a(Lmm/sms/purchasesdk/b;I)V

    :goto_0
    return-void

    :cond_0
    new-instance v10, Lmm/sms/purchasesdk/sms/a;

    invoke-direct {v10}, Lmm/sms/purchasesdk/sms/a;-><init>()V

    invoke-virtual {v10}, Lmm/sms/purchasesdk/sms/a;->b()I

    move-result v0

    const-string v1, "TaskThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkActive() retcode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmm/sms/purchasesdk/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lmm/sms/purchasesdk/e;->b:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v11

    iput v5, v11, Landroid/os/Message;->what:I

    iput-object p1, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v1, 0x450

    if-ne v0, v1, :cond_3

    const-string v0, "TaskThread"

    const-string v1, "init() called 3"

    invoke-static {v0, v1}, Lmm/sms/purchasesdk/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v11}, Lmm/sms/purchasesdk/sms/SMSReceiver;->a(Landroid/os/Message;)V

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lmm/sms/purchasesdk/fingerprint/IdentifyApp;->base64encode([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v6, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_1
    invoke-static {}, Lmm/sms/purchasesdk/d/b;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lmm/sms/purchasesdk/fingerprint/IdentifyApp;->base64encode([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v6, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :cond_2
    invoke-static {}, Lmm/sms/purchasesdk/d/b;->r()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->h()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lmm/sms/purchasesdk/d/b;->x:Ljava/lang/String;

    sget-object v7, Lmm/sms/purchasesdk/d/b;->y:Ljava/lang/String;

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->l()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->k()Ljava/lang/String;

    move-result-object v9

    invoke-static/range {v0 .. v9}, Lmm/sms/purchasesdk/fingerprint/IdentifyApp;->SMSContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmm/sms/purchasesdk/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v0, v11}, Lmm/sms/purchasesdk/sms/a;->a(Ljava/lang/String;Landroid/os/Message;)V

    const-string v0, "TaskThread"

    const-string v1, "init() called 1"

    invoke-static {v0, v1}, Lmm/sms/purchasesdk/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    iput v0, v11, Landroid/os/Message;->arg1:I

    invoke-virtual {v11}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0
.end method

.method private a(Lmm/sms/purchasesdk/b;I)V
    .locals 2

    iget-object v0, p0, Lmm/sms/purchasesdk/e;->b:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    iput p2, v0, Landroid/os/Message;->arg1:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method static synthetic a(Lmm/sms/purchasesdk/e;Lmm/sms/purchasesdk/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lmm/sms/purchasesdk/e;->a(Lmm/sms/purchasesdk/b;)V

    return-void
.end method

.method static synthetic a(Lmm/sms/purchasesdk/e;Lmm/sms/purchasesdk/b;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmm/sms/purchasesdk/e;->a(Lmm/sms/purchasesdk/b;I)V

    return-void
.end method

.method public static a()Z
    .locals 1

    sget-boolean v0, Lmm/sms/purchasesdk/e;->b:Z

    return v0
.end method

.method static synthetic a(Z)Z
    .locals 0

    sput-boolean p0, Lmm/sms/purchasesdk/e;->b:Z

    return p0
.end method

.method private b(Lmm/sms/purchasesdk/b;)V
    .locals 4

    const/4 v3, 0x2

    const-string v0, "TaskThread"

    const-string v1, " enter auth  "

    invoke-static {v0, v1}, Lmm/sms/purchasesdk/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lmm/sms/purchasesdk/e;->a:Lmm/sms/purchasesdk/a/a;

    if-nez v0, :cond_0

    new-instance v0, Lmm/sms/purchasesdk/a/a;

    invoke-direct {v0}, Lmm/sms/purchasesdk/a/a;-><init>()V

    sput-object v0, Lmm/sms/purchasesdk/e;->a:Lmm/sms/purchasesdk/a/a;

    :cond_0
    sget-object v0, Lmm/sms/purchasesdk/e;->a:Lmm/sms/purchasesdk/a/a;

    invoke-static {v0}, Lmm/sms/purchasesdk/b/a;->a(Lmm/sms/purchasesdk/a/a;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x4b2

    invoke-static {v0}, Lmm/sms/purchasesdk/PurchaseCode;->setStatusCode(I)V

    iget-object v0, p0, Lmm/sms/purchasesdk/e;->b:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput v3, v0, Landroid/os/Message;->what:I

    invoke-static {}, Lmm/sms/purchasesdk/PurchaseCode;->getStatusCode()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void

    :cond_1
    const-string v0, "TaskThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AuthManager checkAuth ret = null.code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lmm/sms/purchasesdk/PurchaseCode;->getStatusCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmm/sms/purchasesdk/d/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lmm/sms/purchasesdk/e;->b:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput v3, v0, Landroid/os/Message;->what:I

    invoke-static {}, Lmm/sms/purchasesdk/PurchaseCode;->getStatusCode()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method static synthetic b(Lmm/sms/purchasesdk/e;Lmm/sms/purchasesdk/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lmm/sms/purchasesdk/e;->b(Lmm/sms/purchasesdk/b;)V

    return-void
.end method

.method private c(Lmm/sms/purchasesdk/b;)V
    .locals 2

    const-string v0, "TaskThread"

    const-string v1, " enter order  "

    invoke-static {v0, v1}, Lmm/sms/purchasesdk/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lmm/sms/purchasesdk/d/b;->d(Ljava/lang/Boolean;)V

    iget-object v0, p0, Lmm/sms/purchasesdk/e;->b:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-static {}, Lmm/sms/purchasesdk/PurchaseCode;->getStatusCode()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v1, Lmm/sms/purchasesdk/e;->a:Lmm/sms/purchasesdk/a/a;

    invoke-static {v1, v0}, Lmm/sms/purchasesdk/a/b;->a(Lmm/sms/purchasesdk/a/a;Landroid/os/Message;)V

    return-void
.end method

.method static synthetic c(Lmm/sms/purchasesdk/e;Lmm/sms/purchasesdk/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lmm/sms/purchasesdk/e;->c(Lmm/sms/purchasesdk/b;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lmm/sms/purchasesdk/e;->a:Landroid/os/Handler;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lmm/sms/purchasesdk/e;->init()V

    :cond_0
    iget-object v0, p0, Lmm/sms/purchasesdk/e;->a:Landroid/os/Handler;

    return-object v0
.end method

.method public a(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lmm/sms/purchasesdk/e;->b:Landroid/os/Handler;

    return-void
.end method

.method public init()V
    .locals 2

    new-instance v0, Lmm/sms/purchasesdk/f;

    invoke-virtual {p0}, Lmm/sms/purchasesdk/e;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lmm/sms/purchasesdk/f;-><init>(Lmm/sms/purchasesdk/e;Landroid/os/Looper;)V

    iput-object v0, p0, Lmm/sms/purchasesdk/e;->a:Landroid/os/Handler;

    return-void
.end method
