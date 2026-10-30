.class public Lmm/sms/purchasesdk/sms/SMSReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static a:Landroid/os/Message;

.field public static d:Ljava/lang/Boolean;

.field public static h:Ljava/lang/String;

.field public static i:Ljava/lang/String;


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "aspire.iap.SMS_SEND_ACTIOIN"

    sput-object v0, Lmm/sms/purchasesdk/sms/SMSReceiver;->h:Ljava/lang/String;

    const-string v0, "aspire.iap.SMS_DELIVERED_ACTION"

    sput-object v0, Lmm/sms/purchasesdk/sms/SMSReceiver;->i:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmm/sms/purchasesdk/sms/SMSReceiver;->d:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string v0, "SMSReceiver"

    iput-object v0, p0, Lmm/sms/purchasesdk/sms/SMSReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/os/Message;)V
    .locals 0

    sput-object p0, Lmm/sms/purchasesdk/sms/SMSReceiver;->a:Landroid/os/Message;

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
    const/16 v0, 0x3e9

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x3e8

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private d()I
    .locals 1

    sget v0, Lmm/sms/purchasesdk/d/b;->x:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :pswitch_1
    const/16 v0, 0x4bd

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x456

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
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const-string v0, "SMSReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "is receiver finished\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lmm/sms/purchasesdk/sms/SMSReceiver;->d:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmm/sms/purchasesdk/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lmm/sms/purchasesdk/sms/SMSReceiver;->d:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lmm/sms/purchasesdk/sms/SMSReceiver;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lmm/sms/purchasesdk/sms/SMSReceiver;->getResultCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lmm/sms/purchasesdk/sms/b;->a(Ljava/lang/Boolean;)V

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->c()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->k()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->g()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->q()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lmm/sms/purchasesdk/fingerprint/IdentifyApp;->saveSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_2
    sget-object v0, Lmm/sms/purchasesdk/sms/SMSReceiver;->a:Landroid/os/Message;

    invoke-direct {p0}, Lmm/sms/purchasesdk/sms/SMSReceiver;->c()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    sget-object v0, Lmm/sms/purchasesdk/sms/SMSReceiver;->a:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x1

    :try_start_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lmm/sms/purchasesdk/sms/b;->a(Ljava/lang/Boolean;)V

    sget-object v0, Lmm/sms/purchasesdk/sms/SMSReceiver;->a:Landroid/os/Message;

    invoke-direct {p0}, Lmm/sms/purchasesdk/sms/SMSReceiver;->d()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    sget-object v0, Lmm/sms/purchasesdk/sms/SMSReceiver;->a:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
