.class public Lmm/sms/purchasesdk/b;
.super Ljava/lang/Object;


# static fields
.field private static b:I


# instance fields
.field private a:I

.field private a:Landroid/os/Handler;

.field private a:Ljava/util/HashMap;

.field private a:Lmm/sms/purchasesdk/OnSMSPurchaseListener;

.field private b:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lmm/sms/purchasesdk/b;->b:I

    return-void
.end method

.method public constructor <init>(Lmm/sms/purchasesdk/OnSMSPurchaseListener;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lmm/sms/purchasesdk/b;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lmm/sms/purchasesdk/b;->a:Ljava/util/HashMap;

    iput-object p1, p0, Lmm/sms/purchasesdk/b;->a:Lmm/sms/purchasesdk/OnSMSPurchaseListener;

    iput-object p2, p0, Lmm/sms/purchasesdk/b;->a:Landroid/os/Handler;

    iput-object p3, p0, Lmm/sms/purchasesdk/b;->b:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "onBillingfinish"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmm/sms/purchasesdk/b;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmm/sms/purchasesdk/b;->a:I

    invoke-static {v2}, Lmm/sms/purchasesdk/PurchaseCode;->getReason(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmm/sms/purchasesdk/d/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lmm/sms/purchasesdk/ui/j;->a()Lmm/sms/purchasesdk/ui/j;

    move-result-object v0

    invoke-virtual {v0}, Lmm/sms/purchasesdk/ui/j;->f()V

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lmm/sms/purchasesdk/d/b;->d(Ljava/lang/Boolean;)V

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->unlock()V

    invoke-static {}, Lmm/sms/purchasesdk/ui/n;->g()V

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lmm/sms/purchasesdk/sms/b;->a(Ljava/lang/Boolean;)V

    iget-object v0, p0, Lmm/sms/purchasesdk/b;->a:Lmm/sms/purchasesdk/OnSMSPurchaseListener;

    iget v1, p0, Lmm/sms/purchasesdk/b;->a:I

    iget-object v2, p0, Lmm/sms/purchasesdk/b;->a:Ljava/util/HashMap;

    invoke-interface {v0, v1, v2}, Lmm/sms/purchasesdk/OnSMSPurchaseListener;->onBillingFinish(ILjava/util/HashMap;)V

    return-void
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lmm/sms/purchasesdk/b;->a:I

    return-void
.end method

.method public a(ILjava/util/HashMap;)V
    .locals 6

    const-string v0, "onDialogShow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmm/sms/purchasesdk/d/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lmm/sms/purchasesdk/b;->a:Ljava/util/HashMap;

    invoke-static {}, Lmm/sms/purchasesdk/ui/j;->a()Lmm/sms/purchasesdk/ui/j;

    move-result-object v0

    iget-object v3, p0, Lmm/sms/purchasesdk/b;->a:Landroid/os/Handler;

    iget-object v4, p0, Lmm/sms/purchasesdk/b;->b:Landroid/os/Handler;

    move v1, p1

    move-object v2, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lmm/sms/purchasesdk/ui/j;->a(ILmm/sms/purchasesdk/b;Landroid/os/Handler;Landroid/os/Handler;Ljava/util/HashMap;)V

    return-void
.end method

.method public a(Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lmm/sms/purchasesdk/b;->a:Ljava/util/HashMap;

    return-void
.end method

.method public onInitFinish(I)V
    .locals 3

    const-string v0, "onInitFinish"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lmm/sms/purchasesdk/PurchaseCode;->getReason(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmm/sms/purchasesdk/d/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lmm/sms/purchasesdk/d/b;->unlock()V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lmm/sms/purchasesdk/sms/b;->a(Ljava/lang/Boolean;)V

    iget-object v0, p0, Lmm/sms/purchasesdk/b;->a:Lmm/sms/purchasesdk/OnSMSPurchaseListener;

    invoke-interface {v0, p1}, Lmm/sms/purchasesdk/OnSMSPurchaseListener;->onInitFinish(I)V

    return-void
.end method
