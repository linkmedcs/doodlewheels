.class Lmm/sms/purchasesdk/f;
.super Landroid/os/Handler;


# instance fields
.field final synthetic b:Lmm/sms/purchasesdk/e;


# direct methods
.method constructor <init>(Lmm/sms/purchasesdk/e;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lmm/sms/purchasesdk/f;->b:Lmm/sms/purchasesdk/e;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lmm/sms/purchasesdk/b;

    const-string v1, "TaskThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ReqHandler Handler id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmm/sms/purchasesdk/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "TaskThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ReqHandler Handler name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmm/sms/purchasesdk/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v1}, Lmm/sms/purchasesdk/e;->a(Z)Z

    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :sswitch_0
    iget-object v1, p0, Lmm/sms/purchasesdk/f;->b:Lmm/sms/purchasesdk/e;

    invoke-static {v1, v0}, Lmm/sms/purchasesdk/e;->a(Lmm/sms/purchasesdk/e;Lmm/sms/purchasesdk/b;)V

    goto :goto_0

    :sswitch_1
    const-string v1, "TaskThread"

    const-string v2, "ORDER_REQUEST "

    invoke-static {v1, v2}, Lmm/sms/purchasesdk/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    if-nez v1, :cond_0

    iget-object v1, p0, Lmm/sms/purchasesdk/f;->b:Lmm/sms/purchasesdk/e;

    invoke-static {v1, v0}, Lmm/sms/purchasesdk/e;->b(Lmm/sms/purchasesdk/e;Lmm/sms/purchasesdk/b;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Lmm/sms/purchasesdk/e;->a(Z)Z

    iget-object v1, p0, Lmm/sms/purchasesdk/f;->b:Lmm/sms/purchasesdk/e;

    invoke-static {v1, v0}, Lmm/sms/purchasesdk/e;->c(Lmm/sms/purchasesdk/e;Lmm/sms/purchasesdk/b;)V

    goto :goto_0

    :sswitch_2
    const/16 v1, 0x3e8

    iget-object v2, p0, Lmm/sms/purchasesdk/f;->b:Lmm/sms/purchasesdk/e;

    invoke-static {v2, v0, v1}, Lmm/sms/purchasesdk/e;->a(Lmm/sms/purchasesdk/e;Lmm/sms/purchasesdk/b;I)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_1
        0x7 -> :sswitch_2
    .end sparse-switch
.end method
