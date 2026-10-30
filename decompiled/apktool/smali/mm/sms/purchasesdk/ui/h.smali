.class Lmm/sms/purchasesdk/ui/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lmm/sms/purchasesdk/ui/f;


# direct methods
.method constructor <init>(Lmm/sms/purchasesdk/ui/f;)V
    .locals 0

    iput-object p1, p0, Lmm/sms/purchasesdk/ui/h;->a:Lmm/sms/purchasesdk/ui/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PurchaseDialog"

    const-string v1, "Activity is finished!"

    invoke-static {v0, v1}, Lmm/sms/purchasesdk/d/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmm/sms/purchasesdk/ui/h;->a:Lmm/sms/purchasesdk/ui/f;

    invoke-virtual {v0}, Lmm/sms/purchasesdk/ui/f;->dismiss()V

    iget-object v0, p0, Lmm/sms/purchasesdk/ui/h;->a:Lmm/sms/purchasesdk/ui/f;

    invoke-static {v0}, Lmm/sms/purchasesdk/ui/f;->a(Lmm/sms/purchasesdk/ui/f;)Lmm/sms/purchasesdk/b;

    move-result-object v0

    const/16 v1, 0x4b1

    invoke-virtual {v0, v1}, Lmm/sms/purchasesdk/b;->a(I)V

    iget-object v0, p0, Lmm/sms/purchasesdk/ui/h;->a:Lmm/sms/purchasesdk/ui/f;

    invoke-static {v0}, Lmm/sms/purchasesdk/ui/f;->a(Lmm/sms/purchasesdk/ui/f;)Lmm/sms/purchasesdk/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmm/sms/purchasesdk/b;->a(Ljava/util/HashMap;)V

    iget-object v0, p0, Lmm/sms/purchasesdk/ui/h;->a:Lmm/sms/purchasesdk/ui/f;

    invoke-static {v0}, Lmm/sms/purchasesdk/ui/f;->a(Lmm/sms/purchasesdk/ui/f;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lmm/sms/purchasesdk/ui/h;->a:Lmm/sms/purchasesdk/ui/f;

    invoke-static {v1}, Lmm/sms/purchasesdk/ui/f;->a(Lmm/sms/purchasesdk/ui/f;)Lmm/sms/purchasesdk/b;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
