.class public Lmm/sms/purchasesdk/sms/b;
.super Ljava/lang/Thread;


# static fields
.field private static e:Ljava/lang/Boolean;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private a:Landroid/os/Message;

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmm/sms/purchasesdk/sms/b;->e:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(ILandroid/os/Message;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-string v0, "Timer"

    iput-object v0, p0, Lmm/sms/purchasesdk/sms/b;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmm/sms/purchasesdk/sms/b;->e:Ljava/lang/Boolean;

    iput p1, p0, Lmm/sms/purchasesdk/sms/b;->d:I

    iput-object p2, p0, Lmm/sms/purchasesdk/sms/b;->a:Landroid/os/Message;

    return-void
.end method

.method public static a(Ljava/lang/Boolean;)V
    .locals 0

    sput-object p0, Lmm/sms/purchasesdk/sms/b;->e:Ljava/lang/Boolean;

    return-void
.end method

.method private c()I
    .locals 1

    sget v0, Lmm/sms/purchasesdk/d/b;->x:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :pswitch_1
    const/16 v0, 0x4be

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x45a

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    :goto_0
    sget-object v0, Lmm/sms/purchasesdk/sms/b;->e:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lmm/sms/purchasesdk/sms/b;->d:I

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmm/sms/purchasesdk/sms/SMSReceiver;->d:Ljava/lang/Boolean;

    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Lmm/sms/purchasesdk/sms/b;->sleep(J)V

    iget v0, p0, Lmm/sms/purchasesdk/sms/b;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmm/sms/purchasesdk/sms/b;->d:I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_0
    iget v0, p0, Lmm/sms/purchasesdk/sms/b;->d:I

    if-nez v0, :cond_1

    const-string v0, "Timer"

    const-string v1, "send message failed,is timeout "

    invoke-static {v0, v1}, Lmm/sms/purchasesdk/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmm/sms/purchasesdk/sms/SMSReceiver;->d:Ljava/lang/Boolean;

    iget-object v0, p0, Lmm/sms/purchasesdk/sms/b;->a:Landroid/os/Message;

    invoke-direct {p0}, Lmm/sms/purchasesdk/sms/b;->c()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lmm/sms/purchasesdk/sms/b;->a:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-void
.end method
