.class public Lmm/sms/purchasesdk/PurchaseCode;
.super Ljava/lang/Object;


# static fields
.field private static AuthNotDownload:Ljava/lang/String; = null

.field public static final BILL_APP_ERR:I = 0x4bc

.field public static final BILL_APP_SO_ERR:I = 0x4bb

.field public static final BILL_CANCEL_FAIL:I = 0x4b1

.field public static final BILL_DIALOG_SHOWERROR:I = 0x4b3

.field public static final BILL_INVALID_APP:I = 0x4b4

.field public static final BILL_INVALID_SIDSIGN:I = 0x4b6

.field public static final BILL_INVALID_SIGN:I = 0x4b5

.field public static final BILL_NOORDER:I = 0x4b2

.field public static final BILL_PAYCODE_ERR:I = 0x4b9

.field public static final BILL_PAYCODE_NULL:I = 0x4ba

.field public static final BILL_SDK_ERROR:I = 0x4b8

.field public static final BILL_SMS_ERR:I = 0x4bd

.field public static final BILL_TIMEOUT:I = 0x4be

.field public static final BILL_UNDEFINED_ERROR:I = 0x4b7

.field public static final BILL_XML_PARSE_ERR:I = 0x4b0

.field private static ErrorBillCancelMsg:Ljava/lang/String; = null

.field private static ErrorInitMsg:Ljava/lang/String; = null

.field private static ErrorInitSMSMsg:Ljava/lang/String; = null

.field private static ErrorInitTestMsg:Ljava/lang/String; = null

.field private static ErrorMsg:Ljava/lang/String; = null

.field private static ErrorTimeout:Ljava/lang/String; = null

.field public static final INIT_CHECK_ERR:I = 0x457

.field public static final INIT_EXCEPTION:I = 0x458

.field public static final INIT_IMEI_ERR:I = 0x452

.field public static final INIT_IMSI_ERR:I = 0x454

.field public static final INIT_NOT_CMCC:I = 0x451

.field public static final INIT_NO_ACTIVE:I = 0x450

.field public static final INIT_OK:I = 0x3e8

.field public static final INIT_OTHER_ERR:I = 0x459

.field public static final INIT_PUBKEY_ERR:I = 0x455

.field public static final INIT_SID_ERR:I = 0x453

.field public static final INIT_SMS_ERR:I = 0x456

.field public static final INIT_TEST_APK:I = 0x44f

.field public static final INIT_TIMEOUT:I = 0x45a

.field private static InitMsg:Ljava/lang/String; = null

.field public static final NOGSM_ERR:I = 0x44e

.field public static final NOT_CMCC_ERR:I = 0x44c

.field private static NoneGSMMsg:Ljava/lang/String; = null

.field private static NoneMccMsg:Ljava/lang/String; = null

.field public static final ORDER_OK:I = 0x3e9

.field public static final PARAMETER_ERR:I = 0x44d

.field public static final UNDEFINED_ERR:Ljava/lang/String; = "\u672a\u5b9a\u4e49\u9519\u8bef"

.field public static final UNKNOWN_ERR:I = -0x1

.field private static mCodeInfo:Ljava/util/HashMap;

.field private static statusCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\u5c0a\u656c\u7684\u7528\u6237\uff0c\u8ba2\u5355\u751f\u6210\u5931\u8d25\uff0c\u6682\u65f6\u65e0\u6cd5\u8d2d\u4e70\u3002\u8fd4\u56de\u7801\uff1a"

    sput-object v0, Lmm/sms/purchasesdk/PurchaseCode;->ErrorMsg:Ljava/lang/String;

    const-string v0, "\u5c0a\u656c\u7684\u7528\u6237\uff0c\u521d\u59cb\u5316\u5931\u8d25\uff0c\u6682\u65f6\u65e0\u6cd5\u8d2d\u4e70\u3002\u8fd4\u56de\u7801\uff1a"

    sput-object v0, Lmm/sms/purchasesdk/PurchaseCode;->ErrorInitMsg:Ljava/lang/String;

    const-string v0, "\u5c0a\u656c\u7684\u7528\u6237\uff0c\u6fc0\u6d3b\u4fe1\u606f\u53d1\u9001\u5931\u8d25\uff0c\u6682\u65f6\u65e0\u6cd5\u8d2d\u4e70\u3002\u8fd4\u56de\u7801\uff1a"

    sput-object v0, Lmm/sms/purchasesdk/PurchaseCode;->ErrorInitSMSMsg:Ljava/lang/String;

    const-string v0, "\u5c0a\u656c\u7684\u7528\u6237\uff0c\u6b64\u5e94\u7528\u4e3a\u6d4b\u8bd5\u5e94\u7528\uff0c\u65e0\u6cd5\u8d2d\u4e70\u5546\u54c1\u3002\u8fd4\u56de\u7801\uff1a"

    sput-object v0, Lmm/sms/purchasesdk/PurchaseCode;->ErrorInitTestMsg:Ljava/lang/String;

    const-string v0, "\u5c0a\u656c\u7684\u7528\u6237\uff0c\u60a8\u7684\u8ba2\u5355\u5df2\u7ecf\u53d6\u6d88\u3002\u8fd4\u56de\u7801\uff1a"

    sput-object v0, Lmm/sms/purchasesdk/PurchaseCode;->ErrorBillCancelMsg:Ljava/lang/String;

    const-string v0, "\u5c0a\u656c\u7684\u7528\u6237\uff0c\u7cfb\u7edf\u521d\u59cb\u5316\u5931\u8d25\uff0c\u6682\u65f6\u65e0\u6cd5\u8d2d\u4e70\u3002\u8fd4\u56de\u7801\uff1a"

    sput-object v0, Lmm/sms/purchasesdk/PurchaseCode;->InitMsg:Ljava/lang/String;

    const-string v0, "\u5c0a\u656c\u7684\u7528\u6237\uff0c\u8be5\u4e1a\u52a1\u4e0d\u652f\u6301\u975e\u4e2d\u56fd\u79fb\u52a8\u7528\u6237\uff0c\u8bf7\u66f4\u6362\u6210\u4e2d\u79fb\u52a8\u7684SIM\u5361\u6216\u5c06\u4e2d\u79fb\u52a8SIM\u5361\u8bbe\u4e3a\u4e3b\u5361\u3002\u8fd4\u56de\u7801\uff1a"

    sput-object v0, Lmm/sms/purchasesdk/PurchaseCode;->NoneMccMsg:Ljava/lang/String;

    const-string v0, "\u5c0a\u656c\u7684\u7528\u6237\uff0c\u60a8\u6240\u4f7f\u7528\u7684\u662f\u975eGSM\u624b\u673a\uff0c\u6682\u65f6\u65e0\u6cd5\u8d2d\u4e70\u3002\u8fd4\u56de\u7801:"

    sput-object v0, Lmm/sms/purchasesdk/PurchaseCode;->NoneGSMMsg:Ljava/lang/String;

    const-string v0, "\u5c0a\u656c\u7684\u7528\u6237\uff0c\u5e94\u7528\u4e0d\u662f\u6765\u81ea\u53ef\u4fe1\u7684\u4e0b\u8f7d\u6e90\uff0c\u8bf7\u91cd\u65b0\u4e0b\u8f7d\u3002\u8fd4\u56de\u7801:"

    sput-object v0, Lmm/sms/purchasesdk/PurchaseCode;->AuthNotDownload:Ljava/lang/String;

    const-string v0, "\u5c0a\u656c\u7684\u7528\u6237\uff0c\u77ed\u4fe1\u53d1\u9001\u8d85\u65f6\uff0c\u8bf7\u68c0\u67e5\u624b\u673a\u5b89\u5168\u8f6f\u4ef6\u662f\u5426\u62e6\u622a\u77ed\u4fe1\u4e86\u53d1\u9001\u3002\u8fd4\u56de\u7801\uff1a"

    sput-object v0, Lmm/sms/purchasesdk/PurchaseCode;->ErrorTimeout:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lmm/sms/purchasesdk/PurchaseCode;->mCodeInfo:Ljava/util/HashMap;

    const/4 v0, 0x0

    sput v0, Lmm/sms/purchasesdk/PurchaseCode;->statusCode:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDescription(I)Ljava/lang/String;
    .locals 3

    sget-object v0, Lmm/sms/purchasesdk/PurchaseCode;->mCodeInfo:Ljava/util/HashMap;

    if-nez v0, :cond_0

    invoke-static {}, Lmm/sms/purchasesdk/PurchaseCode;->init()V

    :cond_0
    sget-object v0, Lmm/sms/purchasesdk/PurchaseCode;->mCodeInfo:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    const/16 v0, 0x68

    if-le p0, v0, :cond_2

    const/16 v0, 0x3e9

    if-le p0, v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lmm/sms/purchasesdk/PurchaseCode;->mCodeInfo:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmm/sms/purchasesdk/a;

    iget-object v0, v0, Lmm/sms/purchasesdk/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lmm/sms/purchasesdk/PurchaseCode;->mCodeInfo:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmm/sms/purchasesdk/a;

    iget-object v0, v0, Lmm/sms/purchasesdk/a;->b:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, "\u672a\u5b9a\u4e49\u9519\u8bef"

    goto :goto_0
.end method

.method public static getReason(I)Ljava/lang/String;
    .locals 3

    sget-object v0, Lmm/sms/purchasesdk/PurchaseCode;->mCodeInfo:Ljava/util/HashMap;

    if-nez v0, :cond_0

    invoke-static {}, Lmm/sms/purchasesdk/PurchaseCode;->init()V

    :cond_0
    sget-object v0, Lmm/sms/purchasesdk/PurchaseCode;->mCodeInfo:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    const/16 v0, 0x3e9

    if-le p0, v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lmm/sms/purchasesdk/PurchaseCode;->mCodeInfo:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmm/sms/purchasesdk/a;

    iget-object v0, v0, Lmm/sms/purchasesdk/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lmm/sms/purchasesdk/PurchaseCode;->mCodeInfo:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmm/sms/purchasesdk/a;

    iget-object v0, v0, Lmm/sms/purchasesdk/a;->b:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, "\u672a\u5b9a\u4e49\u9519\u8bef"

    goto :goto_0
.end method

.method public static getStatusCode()I
    .locals 1

    sget v0, Lmm/sms/purchasesdk/PurchaseCode;->statusCode:I

    return v0
.end method

.method private static init()V
    .locals 10

    const/16 v9, 0x456

    const/16 v8, 0x455

    const/16 v7, 0x454

    const/16 v6, 0x453

    const/16 v5, 0x452

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmm/sms/purchasesdk/PurchaseCode;->mCodeInfo:Ljava/util/HashMap;

    sget-object v0, Lmm/sms/purchasesdk/PurchaseCode;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/sms/purchasesdk/a;

    const-string v3, "\u521d\u59cb\u5316\u6210\u529f"

    const-string v4, "\u521d\u59cb\u5316\u6210\u529f"

    invoke-direct {v2, v3, v4}, Lmm/sms/purchasesdk/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/sms/purchasesdk/PurchaseCode;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x3e9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/sms/purchasesdk/a;

    const-string v3, "\u5c0a\u656c\u7684\u7528\u6237\uff0c\u5546\u54c1\u8d2d\u4e70\u6210\u529f"

    const-string v4, "\u5c0a\u656c\u7684\u7528\u6237\uff0c\u5546\u54c1\u8d2d\u4e70\u6210\u529f"

    invoke-direct {v2, v3, v4}, Lmm/sms/purchasesdk/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/sms/purchasesdk/PurchaseCode;->mCodeInfo:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/sms/purchasesdk/a;

    sget-object v3, Lmm/sms/purchasesdk/PurchaseCode;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/sms/purchasesdk/PurchaseCode;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/sms/purchasesdk/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/sms/purchasesdk/PurchaseCode;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x459

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/sms/purchasesdk/a;

    sget-object v3, Lmm/sms/purchasesdk/PurchaseCode;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/sms/purchasesdk/PurchaseCode;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/sms/purchasesdk/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/sms/purchasesdk/PurchaseCode;->mCodeInfo:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/sms/purchasesdk/a;

    sget-object v3, Lmm/sms/purchasesdk/PurchaseCode;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/sms/purchasesdk/PurchaseCode;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/sms/purchasesdk/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/sms/purchasesdk/PurchaseCode;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x458

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/sms/purchasesdk/a;

    sget-object v3, Lmm/sms/purchasesdk/PurchaseCode;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/sms/purchasesdk/PurchaseCode;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/sms/purchasesdk/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/sms/purchasesdk/PurchaseCode;->mCodeInfo:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/sms/purchasesdk/a;

    sget-object v3, Lmm/sms/purchasesdk/PurchaseCode;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/sms/purchasesdk/PurchaseCode;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/sms/purchasesdk/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/sms/purchasesdk/PurchaseCode;->mCodeInfo:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/sms/purchasesdk/a;

    sget-object v3, Lmm/sms/purchasesdk/PurchaseCode;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/sms/purchasesdk/PurchaseCode;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/sms/purchasesdk/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/sms/purchasesdk/PurchaseCode;->mCodeInfo:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/sms/purchasesdk/a;

    sget-object v3, Lmm/sms/purchasesdk/PurchaseCode;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/sms/purchasesdk/PurchaseCode;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/sms/purchasesdk/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/sms/purchasesdk/PurchaseCode;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x44c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/sms/purchasesdk/a;

    sget-object v3, Lmm/sms/purchasesdk/PurchaseCode;->NoneMccMsg:Ljava/lang/String;

    sget-object v4, Lmm/sms/purchasesdk/PurchaseCode;->NoneMccMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/sms/purchasesdk/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/sms/purchasesdk/PurchaseCode;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x44d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/sms/purchasesdk/a;

    sget-object v3, Lmm/sms/purchasesdk/PurchaseCode;->InitMsg:Ljava/lang/String;

    sget-object v4, Lmm/sms/purchasesdk/PurchaseCode;->InitMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/sms/purchasesdk/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/sms/purchasesdk/PurchaseCode;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x44e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/sms/purchasesdk/a;

    sget-object v3, Lmm/sms/purchasesdk/PurchaseCode;->NoneGSMMsg:Ljava/lang/String;

    sget-object v4, Lmm/sms/purchasesdk/PurchaseCode;->NoneGSMMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/sms/purchasesdk/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/sms/purchasesdk/PurchaseCode;->mCodeInfo:Ljava/util/HashMap;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/sms/purchasesdk/a;

    sget-object v3, Lmm/sms/purchasesdk/PurchaseCode;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/sms/purchasesdk/PurchaseCode;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/sms/purchasesdk/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/sms/purchasesdk/PurchaseCode;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x4b0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/sms/purchasesdk/a;

    sget-object v3, Lmm/sms/purchasesdk/PurchaseCode;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/sms/purchasesdk/PurchaseCode;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/sms/purchasesdk/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/sms/purchasesdk/PurchaseCode;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x4b1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/sms/purchasesdk/a;

    sget-object v3, Lmm/sms/purchasesdk/PurchaseCode;->ErrorBillCancelMsg:Ljava/lang/String;

    sget-object v4, Lmm/sms/purchasesdk/PurchaseCode;->ErrorBillCancelMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/sms/purchasesdk/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/sms/purchasesdk/PurchaseCode;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x4b3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/sms/purchasesdk/a;

    sget-object v3, Lmm/sms/purchasesdk/PurchaseCode;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/sms/purchasesdk/PurchaseCode;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/sms/purchasesdk/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/sms/purchasesdk/PurchaseCode;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x4b4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/sms/purchasesdk/a;

    sget-object v3, Lmm/sms/purchasesdk/PurchaseCode;->AuthNotDownload:Ljava/lang/String;

    sget-object v4, Lmm/sms/purchasesdk/PurchaseCode;->AuthNotDownload:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/sms/purchasesdk/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/sms/purchasesdk/PurchaseCode;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x4b5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/sms/purchasesdk/a;

    sget-object v3, Lmm/sms/purchasesdk/PurchaseCode;->AuthNotDownload:Ljava/lang/String;

    sget-object v4, Lmm/sms/purchasesdk/PurchaseCode;->AuthNotDownload:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/sms/purchasesdk/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/sms/purchasesdk/PurchaseCode;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x4b6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/sms/purchasesdk/a;

    sget-object v3, Lmm/sms/purchasesdk/PurchaseCode;->AuthNotDownload:Ljava/lang/String;

    sget-object v4, Lmm/sms/purchasesdk/PurchaseCode;->AuthNotDownload:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/sms/purchasesdk/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/sms/purchasesdk/PurchaseCode;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x4b7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/sms/purchasesdk/a;

    sget-object v3, Lmm/sms/purchasesdk/PurchaseCode;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/sms/purchasesdk/PurchaseCode;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/sms/purchasesdk/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/sms/purchasesdk/PurchaseCode;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x4b8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/sms/purchasesdk/a;

    sget-object v3, Lmm/sms/purchasesdk/PurchaseCode;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/sms/purchasesdk/PurchaseCode;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/sms/purchasesdk/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/sms/purchasesdk/PurchaseCode;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x4b9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/sms/purchasesdk/a;

    sget-object v3, Lmm/sms/purchasesdk/PurchaseCode;->AuthNotDownload:Ljava/lang/String;

    sget-object v4, Lmm/sms/purchasesdk/PurchaseCode;->AuthNotDownload:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/sms/purchasesdk/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/sms/purchasesdk/PurchaseCode;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x4ba

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/sms/purchasesdk/a;

    sget-object v3, Lmm/sms/purchasesdk/PurchaseCode;->AuthNotDownload:Ljava/lang/String;

    sget-object v4, Lmm/sms/purchasesdk/PurchaseCode;->AuthNotDownload:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/sms/purchasesdk/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/sms/purchasesdk/PurchaseCode;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x4bb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/sms/purchasesdk/a;

    sget-object v3, Lmm/sms/purchasesdk/PurchaseCode;->AuthNotDownload:Ljava/lang/String;

    sget-object v4, Lmm/sms/purchasesdk/PurchaseCode;->AuthNotDownload:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/sms/purchasesdk/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/sms/purchasesdk/PurchaseCode;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x4bc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/sms/purchasesdk/a;

    sget-object v3, Lmm/sms/purchasesdk/PurchaseCode;->AuthNotDownload:Ljava/lang/String;

    sget-object v4, Lmm/sms/purchasesdk/PurchaseCode;->AuthNotDownload:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/sms/purchasesdk/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/sms/purchasesdk/PurchaseCode;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x4bd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/sms/purchasesdk/a;

    sget-object v3, Lmm/sms/purchasesdk/PurchaseCode;->ErrorMsg:Ljava/lang/String;

    sget-object v4, Lmm/sms/purchasesdk/PurchaseCode;->ErrorMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/sms/purchasesdk/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/sms/purchasesdk/PurchaseCode;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x4be

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/sms/purchasesdk/a;

    sget-object v3, Lmm/sms/purchasesdk/PurchaseCode;->ErrorTimeout:Ljava/lang/String;

    sget-object v4, Lmm/sms/purchasesdk/PurchaseCode;->ErrorTimeout:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/sms/purchasesdk/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/sms/purchasesdk/PurchaseCode;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x44f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/sms/purchasesdk/a;

    sget-object v3, Lmm/sms/purchasesdk/PurchaseCode;->ErrorInitTestMsg:Ljava/lang/String;

    sget-object v4, Lmm/sms/purchasesdk/PurchaseCode;->ErrorInitTestMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/sms/purchasesdk/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/sms/purchasesdk/PurchaseCode;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x451

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/sms/purchasesdk/a;

    sget-object v3, Lmm/sms/purchasesdk/PurchaseCode;->ErrorInitMsg:Ljava/lang/String;

    sget-object v4, Lmm/sms/purchasesdk/PurchaseCode;->ErrorInitMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/sms/purchasesdk/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/sms/purchasesdk/PurchaseCode;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x450

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/sms/purchasesdk/a;

    sget-object v3, Lmm/sms/purchasesdk/PurchaseCode;->ErrorInitMsg:Ljava/lang/String;

    sget-object v4, Lmm/sms/purchasesdk/PurchaseCode;->ErrorInitMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/sms/purchasesdk/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/sms/purchasesdk/PurchaseCode;->mCodeInfo:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/sms/purchasesdk/a;

    sget-object v3, Lmm/sms/purchasesdk/PurchaseCode;->ErrorInitMsg:Ljava/lang/String;

    sget-object v4, Lmm/sms/purchasesdk/PurchaseCode;->ErrorInitMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/sms/purchasesdk/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/sms/purchasesdk/PurchaseCode;->mCodeInfo:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/sms/purchasesdk/a;

    sget-object v3, Lmm/sms/purchasesdk/PurchaseCode;->ErrorInitMsg:Ljava/lang/String;

    sget-object v4, Lmm/sms/purchasesdk/PurchaseCode;->ErrorInitMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/sms/purchasesdk/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/sms/purchasesdk/PurchaseCode;->mCodeInfo:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/sms/purchasesdk/a;

    sget-object v3, Lmm/sms/purchasesdk/PurchaseCode;->ErrorInitMsg:Ljava/lang/String;

    sget-object v4, Lmm/sms/purchasesdk/PurchaseCode;->ErrorInitMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/sms/purchasesdk/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/sms/purchasesdk/PurchaseCode;->mCodeInfo:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/sms/purchasesdk/a;

    sget-object v3, Lmm/sms/purchasesdk/PurchaseCode;->ErrorInitMsg:Ljava/lang/String;

    sget-object v4, Lmm/sms/purchasesdk/PurchaseCode;->ErrorInitMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/sms/purchasesdk/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/sms/purchasesdk/PurchaseCode;->mCodeInfo:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/sms/purchasesdk/a;

    sget-object v3, Lmm/sms/purchasesdk/PurchaseCode;->ErrorInitSMSMsg:Ljava/lang/String;

    sget-object v4, Lmm/sms/purchasesdk/PurchaseCode;->ErrorInitSMSMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/sms/purchasesdk/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/sms/purchasesdk/PurchaseCode;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x457

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/sms/purchasesdk/a;

    sget-object v3, Lmm/sms/purchasesdk/PurchaseCode;->ErrorInitMsg:Ljava/lang/String;

    sget-object v4, Lmm/sms/purchasesdk/PurchaseCode;->ErrorInitMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/sms/purchasesdk/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/sms/purchasesdk/PurchaseCode;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x458

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/sms/purchasesdk/a;

    sget-object v3, Lmm/sms/purchasesdk/PurchaseCode;->ErrorInitMsg:Ljava/lang/String;

    sget-object v4, Lmm/sms/purchasesdk/PurchaseCode;->ErrorInitMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/sms/purchasesdk/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/sms/purchasesdk/PurchaseCode;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x459

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/sms/purchasesdk/a;

    sget-object v3, Lmm/sms/purchasesdk/PurchaseCode;->ErrorInitMsg:Ljava/lang/String;

    sget-object v4, Lmm/sms/purchasesdk/PurchaseCode;->ErrorInitMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/sms/purchasesdk/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmm/sms/purchasesdk/PurchaseCode;->mCodeInfo:Ljava/util/HashMap;

    const/16 v1, 0x45a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmm/sms/purchasesdk/a;

    sget-object v3, Lmm/sms/purchasesdk/PurchaseCode;->ErrorTimeout:Ljava/lang/String;

    sget-object v4, Lmm/sms/purchasesdk/PurchaseCode;->ErrorTimeout:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmm/sms/purchasesdk/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static setStatusCode(I)V
    .locals 0

    sput p0, Lmm/sms/purchasesdk/PurchaseCode;->statusCode:I

    return-void
.end method
