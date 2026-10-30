.class public Lcom/cloud/dw/DoodleWheels;
.super Lorg/cocos2dx/lib/Cocos2dxActivity;
.source "DoodleWheels.java"


# static fields
.field private static final APPID:Ljava/lang/String; = "300002826861"

.field private static final APPKEY:Ljava/lang/String; = "E7A3C05453C9C090"

.field private static final LEASE_PAYCODE:Ljava/lang/String; = "30000282686101"


# instance fields
.field private mListener:Lcom/cloud/dw/IAPListener;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field public mPurchase:Lmm/sms/purchasesdk/SMSPurchase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "game"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/cloud/dw/DoodleWheels;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/cloud/dw/DoodleWheels;->showProgressDialog()V

    return-void
.end method

.method static synthetic access$1(Lcom/cloud/dw/DoodleWheels;)Lcom/cloud/dw/IAPListener;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/cloud/dw/DoodleWheels;->mListener:Lcom/cloud/dw/IAPListener;

    return-object v0
.end method

.method private native nativeOnDestroy()V
.end method

.method private native nativeOnStart()V
.end method

.method private showProgressDialog()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/cloud/dw/DoodleWheels;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cloud/dw/DoodleWheels;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 82
    iget-object v0, p0, Lcom/cloud/dw/DoodleWheels;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 83
    iget-object v0, p0, Lcom/cloud/dw/DoodleWheels;->mProgressDialog:Landroid/app/ProgressDialog;

    const-string v1, "\u8bf7\u7a0d\u5019....."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/cloud/dw/DoodleWheels;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/cloud/dw/DoodleWheels;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 88
    :cond_1
    return-void
.end method


# virtual methods
.method public dismissProgressDialog()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/cloud/dw/DoodleWheels;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/dw/DoodleWheels;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/cloud/dw/DoodleWheels;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 94
    :cond_0
    return-void
.end method

.method public doBilling()V
    .locals 1

    .prologue
    .line 97
    new-instance v0, Lcom/cloud/dw/DoodleWheels$1;

    invoke-direct {v0, p0}, Lcom/cloud/dw/DoodleWheels$1;-><init>(Lcom/cloud/dw/DoodleWheels;)V

    invoke-virtual {p0, v0}, Lcom/cloud/dw/DoodleWheels;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 109
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/cloud/dw/DoodleWheels;->setVolumeControlStream(I)V

    .line 52
    new-instance v1, Lcom/cloud/dw/IAPHandler;

    invoke-direct {v1, p0}, Lcom/cloud/dw/IAPHandler;-><init>(Landroid/app/Activity;)V

    .line 53
    .local v1, "iapHandler":Lcom/cloud/dw/IAPHandler;
    new-instance v2, Lcom/cloud/dw/IAPListener;

    invoke-direct {v2, p0, v1}, Lcom/cloud/dw/IAPListener;-><init>(Landroid/content/Context;Lcom/cloud/dw/IAPHandler;)V

    iput-object v2, p0, Lcom/cloud/dw/DoodleWheels;->mListener:Lcom/cloud/dw/IAPListener;

    .line 54
    invoke-static {}, Lmm/sms/purchasesdk/SMSPurchase;->getInstance()Lmm/sms/purchasesdk/SMSPurchase;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/dw/DoodleWheels;->mPurchase:Lmm/sms/purchasesdk/SMSPurchase;

    .line 56
    :try_start_0
    iget-object v2, p0, Lcom/cloud/dw/DoodleWheels;->mPurchase:Lmm/sms/purchasesdk/SMSPurchase;

    const-string v3, "300002826861"

    const-string v4, "E7A3C05453C9C090"

    invoke-virtual {v2, v3, v4}, Lmm/sms/purchasesdk/SMSPurchase;->setAppInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v2, p0, Lcom/cloud/dw/DoodleWheels;->mPurchase:Lmm/sms/purchasesdk/SMSPurchase;

    iget-object v3, p0, Lcom/cloud/dw/DoodleWheels;->mListener:Lcom/cloud/dw/IAPListener;

    invoke-virtual {v2, p0, v3}, Lmm/sms/purchasesdk/SMSPurchase;->smsInit(Landroid/content/Context;Lmm/sms/purchasesdk/OnSMSPurchaseListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e1":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/cloud/dw/DoodleWheels;->nativeOnDestroy()V

    .line 72
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onDestroy()V

    .line 73
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 65
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onStart()V

    .line 66
    invoke-direct {p0}, Lcom/cloud/dw/DoodleWheels;->nativeOnStart()V

    .line 67
    return-void
.end method

.method native setActivated()V
.end method
