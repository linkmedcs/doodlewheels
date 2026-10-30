.class public Lmm/sms/purchasesdk/SMSPurchase;
.super Ljava/lang/Object;


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static a:Lmm/sms/purchasesdk/SMSPurchase;


# instance fields
.field private a:Landroid/os/Handler;

.field private a:Landroid/os/HandlerThread;

.field private a:Lmm/sms/purchasesdk/e;

.field private a:Lmm/sms/purchasesdk/sms/SMSReceiver;

.field private b:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lmm/sms/purchasesdk/SMSPurchase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmm/sms/purchasesdk/SMSPurchase;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmm/sms/purchasesdk/SMSPurchase;->a:Lmm/sms/purchasesdk/sms/SMSReceiver;

    new-instance v0, Lmm/sms/purchasesdk/e;

    const-string v1, "purchase-task"

    invoke-direct {v0, v1}, Lmm/sms/purchasesdk/e;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmm/sms/purchasesdk/SMSPurchase;->a:Lmm/sms/purchasesdk/e;

    iget-object v0, p0, Lmm/sms/purchasesdk/SMSPurchase;->a:Lmm/sms/purchasesdk/e;

    invoke-virtual {v0}, Lmm/sms/purchasesdk/e;->start()V

    iget-object v0, p0, Lmm/sms/purchasesdk/SMSPurchase;->a:Lmm/sms/purchasesdk/e;

    invoke-virtual {v0}, Lmm/sms/purchasesdk/e;->init()V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Response-thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmm/sms/purchasesdk/SMSPurchase;->a:Landroid/os/HandlerThread;

    iget-object v0, p0, Lmm/sms/purchasesdk/SMSPurchase;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lmm/sms/purchasesdk/d;

    iget-object v1, p0, Lmm/sms/purchasesdk/SMSPurchase;->a:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lmm/sms/purchasesdk/d;-><init>(Lmm/sms/purchasesdk/SMSPurchase;Landroid/os/Looper;)V

    iput-object v0, p0, Lmm/sms/purchasesdk/SMSPurchase;->b:Landroid/os/Handler;

    iget-object v0, p0, Lmm/sms/purchasesdk/SMSPurchase;->a:Lmm/sms/purchasesdk/e;

    iget-object v1, p0, Lmm/sms/purchasesdk/SMSPurchase;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lmm/sms/purchasesdk/e;->a(Landroid/os/Handler;)V

    iget-object v0, p0, Lmm/sms/purchasesdk/SMSPurchase;->a:Lmm/sms/purchasesdk/e;

    invoke-virtual {v0}, Lmm/sms/purchasesdk/e;->a()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lmm/sms/purchasesdk/SMSPurchase;->a:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lmm/sms/purchasesdk/SMSPurchase;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lmm/sms/purchasesdk/SMSPurchase;->a:Landroid/os/Handler;

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;IZLmm/sms/purchasesdk/OnSMSPurchaseListener;)V
    .locals 3

    sget-object v0, Lmm/sms/purchasesdk/SMSPurchase;->TAG:Ljava/lang/String;

    const-string v1, "enter order "

    invoke-static {v0, v1}, Lmm/sms/purchasesdk/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Context Object is null or Context Object is not instance of Activity"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p5, :cond_2

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "OnPurchaseListener Object is null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Paycode is null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    if-gtz p3, :cond_5

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "orderCout must be greater than 0 "

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const/4 v0, 0x2

    invoke-static {v0}, Lmm/sms/purchasesdk/d/b;->a(I)Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Another request is processing"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    sget-object v0, Lmm/sms/purchasesdk/SMSPurchase;->TAG:Ljava/lang/String;

    const-string v1, "enter order 1"

    invoke-static {v0, v1}, Lmm/sms/purchasesdk/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lmm/sms/purchasesdk/d/b;->setContext(Landroid/content/Context;)V

    invoke-static {p2}, Lmm/sms/purchasesdk/d/b;->b(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p3}, Lmm/sms/purchasesdk/d/b;->b(I)V

    invoke-static {}, Lmm/sms/purchasesdk/ui/j;->a()Lmm/sms/purchasesdk/ui/j;

    move-result-object v0

    invoke-virtual {v0}, Lmm/sms/purchasesdk/ui/j;->c()V

    new-instance v0, Lmm/sms/purchasesdk/b;

    iget-object v1, p0, Lmm/sms/purchasesdk/SMSPurchase;->a:Landroid/os/Handler;

    iget-object v2, p0, Lmm/sms/purchasesdk/SMSPurchase;->b:Landroid/os/Handler;

    invoke-direct {v0, p5, v1, v2}, Lmm/sms/purchasesdk/b;-><init>(Lmm/sms/purchasesdk/OnSMSPurchaseListener;Landroid/os/Handler;Landroid/os/Handler;)V

    iget-object v1, p0, Lmm/sms/purchasesdk/SMSPurchase;->a:Lmm/sms/purchasesdk/sms/SMSReceiver;

    if-nez v1, :cond_7

    new-instance v1, Lmm/sms/purchasesdk/sms/SMSReceiver;

    invoke-direct {v1}, Lmm/sms/purchasesdk/sms/SMSReceiver;-><init>()V

    iput-object v1, p0, Lmm/sms/purchasesdk/SMSPurchase;->a:Lmm/sms/purchasesdk/sms/SMSReceiver;

    :cond_7
    invoke-static {}, Lmm/sms/purchasesdk/d/b;->j()V

    invoke-static {p1}, Lmm/sms/purchasesdk/c;->a(Landroid/content/Context;)I

    move-result v1

    if-eqz v1, :cond_8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmm/sms/purchasesdk/b;->a(ILjava/util/HashMap;)V

    :goto_0
    return-void

    :cond_8
    invoke-static {}, Lmm/sms/purchasesdk/d/b;->n()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmm/sms/purchasesdk/d/b;->f(Ljava/lang/String;)V

    iget-object v1, p0, Lmm/sms/purchasesdk/SMSPurchase;->a:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    sget-object v0, Lmm/sms/purchasesdk/SMSPurchase;->TAG:Ljava/lang/String;

    const-string v1, "leave order "

    invoke-static {v0, v1}, Lmm/sms/purchasesdk/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Lmm/sms/purchasesdk/SMSPurchase;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lmm/sms/purchasesdk/SMSPurchase;->b:Landroid/os/Handler;

    return-object v0
.end method

.method public static getDescription(I)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lmm/sms/purchasesdk/PurchaseCode;->getDescription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lmm/sms/purchasesdk/SMSPurchase;
    .locals 1

    sget-object v0, Lmm/sms/purchasesdk/SMSPurchase;->a:Lmm/sms/purchasesdk/SMSPurchase;

    if-nez v0, :cond_0

    new-instance v0, Lmm/sms/purchasesdk/SMSPurchase;

    invoke-direct {v0}, Lmm/sms/purchasesdk/SMSPurchase;-><init>()V

    sput-object v0, Lmm/sms/purchasesdk/SMSPurchase;->a:Lmm/sms/purchasesdk/SMSPurchase;

    :cond_0
    sget-object v0, Lmm/sms/purchasesdk/SMSPurchase;->a:Lmm/sms/purchasesdk/SMSPurchase;

    return-object v0
.end method

.method public static getReason(I)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lmm/sms/purchasesdk/PurchaseCode;->getReason(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public setAppInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "invalid app parameter, pls check it"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {}, Lmm/sms/purchasesdk/d/c;->k()V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmm/sms/purchasesdk/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public smsInit(Landroid/content/Context;Lmm/sms/purchasesdk/OnSMSPurchaseListener;)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Context Object is null or Context Object is not instance of Activity"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p2, :cond_2

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "OnPurchaseListener Object is null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v3}, Lmm/sms/purchasesdk/d/b;->a(I)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Another request is processing"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-static {p1}, Lmm/sms/purchasesdk/d/b;->setContext(Landroid/content/Context;)V

    new-instance v0, Lmm/sms/purchasesdk/b;

    iget-object v1, p0, Lmm/sms/purchasesdk/SMSPurchase;->a:Landroid/os/Handler;

    iget-object v2, p0, Lmm/sms/purchasesdk/SMSPurchase;->b:Landroid/os/Handler;

    invoke-direct {v0, p2, v1, v2}, Lmm/sms/purchasesdk/b;-><init>(Lmm/sms/purchasesdk/OnSMSPurchaseListener;Landroid/os/Handler;Landroid/os/Handler;)V

    iget-object v1, p0, Lmm/sms/purchasesdk/SMSPurchase;->a:Lmm/sms/purchasesdk/sms/SMSReceiver;

    if-nez v1, :cond_4

    new-instance v1, Lmm/sms/purchasesdk/sms/SMSReceiver;

    invoke-direct {v1}, Lmm/sms/purchasesdk/sms/SMSReceiver;-><init>()V

    iput-object v1, p0, Lmm/sms/purchasesdk/SMSPurchase;->a:Lmm/sms/purchasesdk/sms/SMSReceiver;

    :cond_4
    invoke-static {}, Lmm/sms/purchasesdk/d/b;->j()V

    invoke-static {p1}, Lmm/sms/purchasesdk/c;->a(Landroid/content/Context;)I

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0, v1}, Lmm/sms/purchasesdk/b;->onInitFinish(I)V

    :goto_0
    return-void

    :cond_5
    iget-object v1, p0, Lmm/sms/purchasesdk/SMSPurchase;->a:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    iput v3, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public smsOrder(Landroid/content/Context;Ljava/lang/String;Lmm/sms/purchasesdk/OnSMSPurchaseListener;)V
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lmm/sms/purchasesdk/SMSPurchase;->a(Landroid/content/Context;Ljava/lang/String;IZLmm/sms/purchasesdk/OnSMSPurchaseListener;)V

    return-void
.end method
