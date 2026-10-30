.class Lcom/cloud/dw/IAPListener$1;
.super Ljava/lang/Object;
.source "IAPListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/dw/IAPListener;->onBillingFinish(ILjava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cloud/dw/IAPListener;


# direct methods
.method constructor <init>(Lcom/cloud/dw/IAPListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cloud/dw/IAPListener$1;->this$0:Lcom/cloud/dw/IAPListener;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 38
    iget-object v0, p0, Lcom/cloud/dw/IAPListener$1;->this$0:Lcom/cloud/dw/IAPListener;

    invoke-static {v0}, Lcom/cloud/dw/IAPListener;->access$0(Lcom/cloud/dw/IAPListener;)Lcom/cloud/dw/DoodleWheels;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/dw/DoodleWheels;->dismissProgressDialog()V

    .line 39
    iget-object v0, p0, Lcom/cloud/dw/IAPListener$1;->this$0:Lcom/cloud/dw/IAPListener;

    invoke-static {v0}, Lcom/cloud/dw/IAPListener;->access$0(Lcom/cloud/dw/IAPListener;)Lcom/cloud/dw/DoodleWheels;

    move-result-object v0

    const v1, 0x7f030001

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 40
    return-void
.end method
