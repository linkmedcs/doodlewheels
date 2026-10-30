.class Lcom/cloud/dw/DoodleWheels$1;
.super Ljava/lang/Object;
.source "DoodleWheels.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/dw/DoodleWheels;->doBilling()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cloud/dw/DoodleWheels;


# direct methods
.method constructor <init>(Lcom/cloud/dw/DoodleWheels;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cloud/dw/DoodleWheels$1;->this$0:Lcom/cloud/dw/DoodleWheels;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 100
    iget-object v1, p0, Lcom/cloud/dw/DoodleWheels$1;->this$0:Lcom/cloud/dw/DoodleWheels;

    invoke-static {v1}, Lcom/cloud/dw/DoodleWheels;->access$0(Lcom/cloud/dw/DoodleWheels;)V

    .line 103
    :try_start_0
    iget-object v1, p0, Lcom/cloud/dw/DoodleWheels$1;->this$0:Lcom/cloud/dw/DoodleWheels;

    iget-object v1, v1, Lcom/cloud/dw/DoodleWheels;->mPurchase:Lmm/sms/purchasesdk/SMSPurchase;

    iget-object v2, p0, Lcom/cloud/dw/DoodleWheels$1;->this$0:Lcom/cloud/dw/DoodleWheels;

    const-string v3, "30000282686101"

    iget-object v4, p0, Lcom/cloud/dw/DoodleWheels$1;->this$0:Lcom/cloud/dw/DoodleWheels;

    invoke-static {v4}, Lcom/cloud/dw/DoodleWheels;->access$1(Lcom/cloud/dw/DoodleWheels;)Lcom/cloud/dw/IAPListener;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lmm/sms/purchasesdk/SMSPurchase;->smsOrder(Landroid/content/Context;Ljava/lang/String;Lmm/sms/purchasesdk/OnSMSPurchaseListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    return-void

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e1":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
