.class public Lcom/cloud/dw/IAPListener;
.super Ljava/lang/Object;
.source "IAPListener.java"

# interfaces
.implements Lmm/sms/purchasesdk/OnSMSPurchaseListener;


# instance fields
.field private context:Lcom/cloud/dw/DoodleWheels;

.field private iapHandler:Lcom/cloud/dw/IAPHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/cloud/dw/IAPHandler;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iapHandler"    # Lcom/cloud/dw/IAPHandler;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    check-cast p1, Lcom/cloud/dw/DoodleWheels;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/cloud/dw/IAPListener;->context:Lcom/cloud/dw/DoodleWheels;

    .line 20
    iput-object p2, p0, Lcom/cloud/dw/IAPListener;->iapHandler:Lcom/cloud/dw/IAPHandler;

    .line 21
    return-void
.end method

.method static synthetic access$0(Lcom/cloud/dw/IAPListener;)Lcom/cloud/dw/DoodleWheels;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/cloud/dw/IAPListener;->context:Lcom/cloud/dw/DoodleWheels;

    return-object v0
.end method


# virtual methods
.method public onBillingFinish(ILjava/util/HashMap;)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "arg1"    # Ljava/util/HashMap;

    .prologue
    .line 33
    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/cloud/dw/IAPListener;->context:Lcom/cloud/dw/DoodleWheels;

    invoke-virtual {v0}, Lcom/cloud/dw/DoodleWheels;->setActivated()V

    .line 35
    iget-object v0, p0, Lcom/cloud/dw/IAPListener;->context:Lcom/cloud/dw/DoodleWheels;

    new-instance v1, Lcom/cloud/dw/IAPListener$1;

    invoke-direct {v1, p0}, Lcom/cloud/dw/IAPListener$1;-><init>(Lcom/cloud/dw/IAPListener;)V

    invoke-virtual {v0, v1}, Lcom/cloud/dw/DoodleWheels;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 51
    :goto_0
    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/cloud/dw/IAPListener;->context:Lcom/cloud/dw/DoodleWheels;

    new-instance v1, Lcom/cloud/dw/IAPListener$2;

    invoke-direct {v1, p0}, Lcom/cloud/dw/IAPListener$2;-><init>(Lcom/cloud/dw/IAPListener;)V

    invoke-virtual {v0, v1}, Lcom/cloud/dw/DoodleWheels;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onInitFinish(I)V
    .locals 4
    .param p1, "code"    # I

    .prologue
    .line 25
    iget-object v2, p0, Lcom/cloud/dw/IAPListener;->iapHandler:Lcom/cloud/dw/IAPHandler;

    const/16 v3, 0x2710

    invoke-virtual {v2, v3}, Lcom/cloud/dw/IAPHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 26
    .local v0, "message":Landroid/os/Message;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Init result: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lmm/sms/purchasesdk/SMSPurchase;->getReason(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 27
    .local v1, "result":Ljava/lang/String;
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 28
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 29
    return-void
.end method
