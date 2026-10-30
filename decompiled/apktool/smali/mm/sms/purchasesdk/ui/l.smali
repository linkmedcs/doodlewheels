.class Lmm/sms/purchasesdk/ui/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic b:Lmm/sms/purchasesdk/ui/k;


# direct methods
.method constructor <init>(Lmm/sms/purchasesdk/ui/k;)V
    .locals 0

    iput-object p1, p0, Lmm/sms/purchasesdk/ui/l;->b:Lmm/sms/purchasesdk/ui/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lmm/sms/purchasesdk/ui/l;->b:Lmm/sms/purchasesdk/ui/k;

    invoke-static {v0}, Lmm/sms/purchasesdk/ui/k;->a(Lmm/sms/purchasesdk/ui/k;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "\u91cd \u65b0 \u8d2d \u4e70"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ResultDialog"

    const-string v1, "Activity is finished!"

    invoke-static {v0, v1}, Lmm/sms/purchasesdk/d/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmm/sms/purchasesdk/ui/l;->b:Lmm/sms/purchasesdk/ui/k;

    invoke-virtual {v0}, Lmm/sms/purchasesdk/ui/k;->dismiss()V

    iget-object v0, p0, Lmm/sms/purchasesdk/ui/l;->b:Lmm/sms/purchasesdk/ui/k;

    invoke-static {v0}, Lmm/sms/purchasesdk/ui/k;->a(Lmm/sms/purchasesdk/ui/k;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput v2, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lmm/sms/purchasesdk/ui/l;->b:Lmm/sms/purchasesdk/ui/k;

    invoke-static {v1}, Lmm/sms/purchasesdk/ui/k;->a(Lmm/sms/purchasesdk/ui/k;)Lmm/sms/purchasesdk/b;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput v2, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lmm/sms/purchasesdk/d/b;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "ResultDialog"

    const-string v1, "Activity is finished!"

    invoke-static {v0, v1}, Lmm/sms/purchasesdk/d/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lmm/sms/purchasesdk/ui/l;->b:Lmm/sms/purchasesdk/ui/k;

    invoke-virtual {v0}, Lmm/sms/purchasesdk/ui/k;->dismiss()V

    iget-object v0, p0, Lmm/sms/purchasesdk/ui/l;->b:Lmm/sms/purchasesdk/ui/k;

    invoke-static {v0}, Lmm/sms/purchasesdk/ui/k;->a(Lmm/sms/purchasesdk/ui/k;)Lmm/sms/purchasesdk/b;

    move-result-object v0

    iget-object v1, p0, Lmm/sms/purchasesdk/ui/l;->b:Lmm/sms/purchasesdk/ui/k;

    invoke-static {v1}, Lmm/sms/purchasesdk/ui/k;->a(Lmm/sms/purchasesdk/ui/k;)I

    move-result v1

    invoke-virtual {v0, v1}, Lmm/sms/purchasesdk/b;->a(I)V

    iget-object v0, p0, Lmm/sms/purchasesdk/ui/l;->b:Lmm/sms/purchasesdk/ui/k;

    invoke-static {v0}, Lmm/sms/purchasesdk/ui/k;->a(Lmm/sms/purchasesdk/ui/k;)Lmm/sms/purchasesdk/b;

    move-result-object v0

    iget-object v1, p0, Lmm/sms/purchasesdk/ui/l;->b:Lmm/sms/purchasesdk/ui/k;

    invoke-static {v1}, Lmm/sms/purchasesdk/ui/k;->a(Lmm/sms/purchasesdk/ui/k;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmm/sms/purchasesdk/b;->a(Ljava/util/HashMap;)V

    iget-object v0, p0, Lmm/sms/purchasesdk/ui/l;->b:Lmm/sms/purchasesdk/ui/k;

    invoke-static {v0}, Lmm/sms/purchasesdk/ui/k;->b(Lmm/sms/purchasesdk/ui/k;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lmm/sms/purchasesdk/ui/l;->b:Lmm/sms/purchasesdk/ui/k;

    invoke-static {v1}, Lmm/sms/purchasesdk/ui/k;->a(Lmm/sms/purchasesdk/ui/k;)Lmm/sms/purchasesdk/b;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
