.class Lmm/sms/purchasesdk/ui/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lmm/sms/purchasesdk/ui/f;


# direct methods
.method constructor <init>(Lmm/sms/purchasesdk/ui/f;)V
    .locals 0

    iput-object p1, p0, Lmm/sms/purchasesdk/ui/i;->a:Lmm/sms/purchasesdk/ui/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

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
    invoke-static {}, Lmm/sms/purchasesdk/ui/j;->a()Lmm/sms/purchasesdk/ui/j;

    move-result-object v0

    invoke-virtual {v0}, Lmm/sms/purchasesdk/ui/j;->c()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "OrderCount"

    iget-object v2, p0, Lmm/sms/purchasesdk/ui/i;->a:Lmm/sms/purchasesdk/ui/f;

    invoke-static {v2}, Lmm/sms/purchasesdk/ui/f;->a(Lmm/sms/purchasesdk/ui/f;)Lmm/sms/purchasesdk/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lmm/sms/purchasesdk/a/a;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "multiSubs"

    iget-object v2, p0, Lmm/sms/purchasesdk/ui/i;->a:Lmm/sms/purchasesdk/ui/f;

    invoke-static {v2}, Lmm/sms/purchasesdk/ui/f;->a(Lmm/sms/purchasesdk/ui/f;)Lmm/sms/purchasesdk/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lmm/sms/purchasesdk/a/a;->b()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lmm/sms/purchasesdk/ui/i;->a:Lmm/sms/purchasesdk/ui/f;

    invoke-static {v1}, Lmm/sms/purchasesdk/ui/f;->b(Lmm/sms/purchasesdk/ui/f;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    iget-object v2, p0, Lmm/sms/purchasesdk/ui/i;->a:Lmm/sms/purchasesdk/ui/f;

    invoke-static {v2}, Lmm/sms/purchasesdk/ui/f;->a(Lmm/sms/purchasesdk/ui/f;)Lmm/sms/purchasesdk/b;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
