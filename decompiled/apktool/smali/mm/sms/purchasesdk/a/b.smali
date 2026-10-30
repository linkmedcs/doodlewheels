.class public Lmm/sms/purchasesdk/a/b;
.super Ljava/lang/Object;


# static fields
.field static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lmm/sms/purchasesdk/a/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmm/sms/purchasesdk/a/b;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lmm/sms/purchasesdk/a/a;Landroid/os/Message;)V
    .locals 11

    const/16 v2, 0x14

    const/4 v1, 0x0

    new-instance v10, Lmm/sms/purchasesdk/sms/a;

    invoke-direct {v10}, Lmm/sms/purchasesdk/sms/a;-><init>()V

    invoke-static {p1}, Lmm/sms/purchasesdk/sms/SMSReceiver;->a(Landroid/os/Message;)V

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lmm/sms/purchasesdk/fingerprint/IdentifyApp;->base64encode([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v5, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    :cond_0
    invoke-static {}, Lmm/sms/purchasesdk/d/b;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lmm/sms/purchasesdk/fingerprint/IdentifyApp;->base64encode([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v6, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    :cond_1
    invoke-static {}, Lmm/sms/purchasesdk/d/b;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->r()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->i()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->o()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->h()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->l()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->k()Ljava/lang/String;

    move-result-object v9

    invoke-static/range {v0 .. v9}, Lmm/sms/purchasesdk/fingerprint/IdentifyApp;->SMSOrderContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0, p1}, Lmm/sms/purchasesdk/sms/a;->a(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method
