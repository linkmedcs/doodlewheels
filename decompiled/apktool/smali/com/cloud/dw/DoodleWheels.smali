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

.field private startupCover:Landroid/view/View;


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

.method private applyFullscreen()V
    .locals 4

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_1

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt v1, v3, :cond_0

    const/4 v3, 0x3

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_0
    iget v1, v2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    if-eq v1, v3, :cond_1

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_3

    const/16 v2, 0x704

    const/16 v3, 0x13

    if-lt v1, v3, :cond_2

    const/16 v2, 0x1706

    :cond_2
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_3
    return-void
.end method

.method private installStartupCover()V
    .locals 3

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    iput-object v0, p0, Lcom/cloud/dw/DoodleWheels;->startupCover:Landroid/view/View;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private native nativeOnDestroy()V
.end method

.method private native nativeOnStart()V
.end method

.method public static onFirstFrameReady()V
    .locals 2

    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Lcom/cloud/dw/DoodleWheels;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/cloud/dw/DoodleWheels;

    new-instance v1, Lcom/cloud/dw/StartupCoverDismiss;

    invoke-direct {v1, v0}, Lcom/cloud/dw/StartupCoverDismiss;-><init>(Lcom/cloud/dw/DoodleWheels;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
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

.method public dismissStartupCover()V
    .locals 4

    iget-object v0, p0, Lcom/cloud/dw/DoodleWheels;->startupCover:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/cloud/dw/DoodleWheels;->startupCover:Landroid/view/View;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    const-wide/16 v2, 0x78

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    new-instance v1, Lcom/cloud/dw/StartupCoverRemove;

    invoke-direct {v1, v0}, Lcom/cloud/dw/StartupCoverRemove;-><init>(Landroid/view/View;)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/cloud/dw/StartupCoverRemove;

    invoke-direct {v1, v0}, Lcom/cloud/dw/StartupCoverRemove;-><init>(Landroid/view/View;)V

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_1
    :goto_0
    return-void
.end method

.method public doBilling()V
    .locals 0

    invoke-virtual {p0}, Lcom/cloud/dw/DoodleWheels;->setActivated()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Lcom/cloud/dw/DoodleWheels;->applyFullscreen()V

    invoke-super {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/cloud/dw/DoodleWheels;->installStartupCover()V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/cloud/dw/DoodleWheels;->setVolumeControlStream(I)V

    return-void
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

.method protected onResume()V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/dw/DoodleWheels;->applyFullscreen()V

    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onResume()V

    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 65
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onStart()V

    .line 66
    invoke-direct {p0}, Lcom/cloud/dw/DoodleWheels;->nativeOnStart()V

    invoke-virtual {p0}, Lcom/cloud/dw/DoodleWheels;->setActivated()V

    .line 67
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/cloud/dw/DoodleWheels;->applyFullscreen()V

    :cond_0
    return-void
.end method

.method native setActivated()V
.end method
