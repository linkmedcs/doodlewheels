.class Lmm/sms/purchasesdk/d;
.super Landroid/os/Handler;


# instance fields
.field final synthetic b:Lmm/sms/purchasesdk/SMSPurchase;


# direct methods
.method constructor <init>(Lmm/sms/purchasesdk/SMSPurchase;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lmm/sms/purchasesdk/d;->b:Lmm/sms/purchasesdk/SMSPurchase;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lmm/sms/purchasesdk/b;

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_1
    iget-object v2, p0, Lmm/sms/purchasesdk/d;->b:Lmm/sms/purchasesdk/SMSPurchase;

    invoke-static {v2}, Lmm/sms/purchasesdk/SMSPurchase;->a(Lmm/sms/purchasesdk/SMSPurchase;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lmm/sms/purchasesdk/d;->b:Lmm/sms/purchasesdk/SMSPurchase;

    invoke-static {v3}, Lmm/sms/purchasesdk/SMSPurchase;->b(Lmm/sms/purchasesdk/SMSPurchase;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {v2, v3, v0, v1}, Lmm/sms/purchasesdk/c;->a(Landroid/os/Handler;Landroid/os/Handler;Lmm/sms/purchasesdk/b;I)V

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lmm/sms/purchasesdk/d;->b:Lmm/sms/purchasesdk/SMSPurchase;

    invoke-static {v2}, Lmm/sms/purchasesdk/SMSPurchase;->a(Lmm/sms/purchasesdk/SMSPurchase;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lmm/sms/purchasesdk/d;->b:Lmm/sms/purchasesdk/SMSPurchase;

    invoke-static {v3}, Lmm/sms/purchasesdk/SMSPurchase;->b(Lmm/sms/purchasesdk/SMSPurchase;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {v2, v3, v0, v1}, Lmm/sms/purchasesdk/c;->b(Landroid/os/Handler;Landroid/os/Handler;Lmm/sms/purchasesdk/b;I)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {v0}, Lmm/sms/purchasesdk/b;->a()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
