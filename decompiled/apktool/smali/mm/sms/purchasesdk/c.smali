.class public Lmm/sms/purchasesdk/c;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lmm/sms/purchasesdk/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmm/sms/purchasesdk/c;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lmm/sms/purchasesdk/c;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .locals 9

    const/16 v1, 0x4b0

    const/4 v8, 0x1

    const/4 v0, 0x0

    sget-boolean v2, Lmm/sms/purchasesdk/c;->a:Z

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmm/sms/purchasesdk/d/d;->g(Ljava/lang/String;)V

    invoke-static {}, Lmm/sms/purchasesdk/d/a;->c()Z

    move-result v2

    invoke-static {v2}, Lmm/sms/purchasesdk/d/b;->b(Z)V

    invoke-static {p0}, Lmm/sms/purchasesdk/d/e;->a(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lmm/sms/purchasesdk/d/b;->c(Ljava/lang/Boolean;)V

    invoke-static {}, Lmm/sms/purchasesdk/fingerprint/a;->init()V

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->b()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v0, 0x451

    goto :goto_0

    :cond_1
    invoke-static {}, Lmm/sms/purchasesdk/c/a;->c()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lmm/sms/purchasesdk/d/b;->b(Ljava/lang/Boolean;)V

    :cond_2
    sput-boolean v8, Lmm/sms/purchasesdk/c;->a:Z

    goto :goto_0

    :cond_3
    invoke-static {v2}, Lmm/sms/purchasesdk/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_5

    :cond_4
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lmm/sms/purchasesdk/d/b;->b(Ljava/lang/Boolean;)V

    sput-boolean v8, Lmm/sms/purchasesdk/c;->a:Z

    goto :goto_0

    :cond_5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3}, Lmm/sms/purchasesdk/d/b;->b(Ljava/lang/Boolean;)V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v2, "utf-8"

    invoke-interface {v4, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    move v3, v2

    move v2, v0

    :goto_1
    if-eq v3, v8, :cond_8

    packed-switch v3, :pswitch_data_0

    :cond_6
    :goto_2
    :pswitch_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    goto :goto_1

    :pswitch_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "ProgramId"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lmm/sms/purchasesdk/c;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "aProgramId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lmm/sms/purchasesdk/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lmm/sms/purchasesdk/fingerprint/IdentifyApp;->decryptPapaya(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lmm/sms/purchasesdk/d/b;->e(Ljava/lang/String;)V

    sget-object v5, Lmm/sms/purchasesdk/c;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "aProgramId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Lmm/sms/purchasesdk/fingerprint/IdentifyApp;->decryptPapaya(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lmm/sms/purchasesdk/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    const-string v5, "channel"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lmm/sms/purchasesdk/c;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "achannel = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lmm/sms/purchasesdk/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lmm/sms/purchasesdk/d/b;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v2, v2, 0x2

    goto :goto_2

    :cond_8
    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    move v0, v1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lmm/sms/purchasesdk/c;->TAG:Ljava/lang/String;

    const-string v3, "failed to read mmiap.xml excepiton. "

    invoke-static {v2, v3, v0}, Lmm/sms/purchasesdk/d/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    move v0, v1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    sget-object v2, Lmm/sms/purchasesdk/c;->TAG:Ljava/lang/String;

    const-string v3, "failed to read mmiap.xml. io excetion "

    invoke-static {v2, v3, v0}, Lmm/sms/purchasesdk/d/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    move v0, v1

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Landroid/os/Handler;Landroid/os/Handler;Lmm/sms/purchasesdk/b;I)V
    .locals 4

    const/16 v3, 0x3e8

    const/4 v2, 0x2

    const/4 v1, 0x0

    sget v0, Lmm/sms/purchasesdk/d/b;->x:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-static {}, Lmm/sms/purchasesdk/d/b;->b()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, v3}, Lmm/sms/purchasesdk/b;->onInitFinish(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p3}, Lmm/sms/purchasesdk/b;->onInitFinish(I)V

    goto :goto_0

    :pswitch_2
    if-ne p3, v3, :cond_1

    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput v2, v0, Landroid/os/Message;->what:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput v1, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput v2, v0, Landroid/os/Message;->what:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput v1, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static b(Landroid/content/Context;)I
    .locals 4

    const/16 v0, 0x44d

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->h()Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    const-string v1, "PurchaseInternal"

    const-string v2, "appid is null"

    invoke-static {v1, v2}, Lmm/sms/purchasesdk/d/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    const-string v1, "PurchaseInternal"

    const-string v2, "appkey is null"

    invoke-static {v1, v2}, Lmm/sms/purchasesdk/d/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {v1, v2}, Lmm/sms/purchasesdk/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lmm/sms/purchasesdk/d/e;->a(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lmm/sms/purchasesdk/d/b;->c(Ljava/lang/Boolean;)V

    const/16 v0, 0x3e8

    goto :goto_0
.end method

.method public static b(Landroid/os/Handler;Landroid/os/Handler;Lmm/sms/purchasesdk/b;I)V
    .locals 4

    const/16 v3, 0x3e9

    if-ne v3, p3, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Paycode"

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TradeID"

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-ne p3, v3, :cond_0

    invoke-virtual {p2, p3, v0}, Lmm/sms/purchasesdk/b;->a(ILjava/util/HashMap;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x4b2

    if-ne p3, v0, :cond_2

    invoke-static {}, Lmm/sms/purchasesdk/ui/j;->a()Lmm/sms/purchasesdk/ui/j;

    move-result-object v0

    invoke-static {}, Lmm/sms/purchasesdk/e;->a()Lmm/sms/purchasesdk/a/a;

    move-result-object v1

    invoke-virtual {v0, p0, p1, p2, v1}, Lmm/sms/purchasesdk/ui/j;->a(Landroid/os/Handler;Landroid/os/Handler;Lmm/sms/purchasesdk/b;Lmm/sms/purchasesdk/a/a;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-static {}, Lmm/sms/purchasesdk/e;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_3
    const-string v1, "PurchaseInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " order fail ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmm/sms/purchasesdk/d/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3, v0}, Lmm/sms/purchasesdk/b;->a(ILjava/util/HashMap;)V

    goto :goto_0
.end method
