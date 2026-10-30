.class public Lmm/sms/purchasesdk/sms/a;
.super Ljava/lang/Object;


# instance fields
.field private TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SMSManager"

    iput-object v0, p0, Lmm/sms/purchasesdk/sms/a;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/os/Message;)V
    .locals 7

    const-string v1, "1065842410"

    iget-object v0, p0, Lmm/sms/purchasesdk/sms/a;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lmm/sms/purchasesdk/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/telephony/gsm/SmsManager;->getDefault()Landroid/telephony/gsm/SmsManager;

    move-result-object v0

    :try_start_0
    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lmm/sms/purchasesdk/sms/SMSReceiver;->h:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Landroid/content/Intent;

    sget-object v4, Lmm/sms/purchasesdk/sms/SMSReceiver;->i:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v2, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v2, v5, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    const/4 v2, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/gsm/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    new-instance v0, Lmm/sms/purchasesdk/sms/b;

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->e()I

    move-result v1

    invoke-direct {v0, v1, p2}, Lmm/sms/purchasesdk/sms/b;-><init>(ILandroid/os/Message;)V

    invoke-virtual {v0}, Lmm/sms/purchasesdk/sms/b;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public b()I
    .locals 5

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

    invoke-static {v0, v1, v2, v3, v4}, Lmm/sms/purchasesdk/fingerprint/IdentifyApp;->checkSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/16 v0, 0x3e8

    :goto_0
    return v0

    :pswitch_1
    const/16 v0, 0x450

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0xb
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
