.class Lmm/sms/purchasesdk/ui/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field final synthetic a:Lmm/sms/purchasesdk/ui/f;


# direct methods
.method constructor <init>(Lmm/sms/purchasesdk/ui/f;)V
    .locals 0

    iput-object p1, p0, Lmm/sms/purchasesdk/ui/g;->a:Lmm/sms/purchasesdk/ui/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x1c

    if-ne p2, v0, :cond_0

    check-cast p1, Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
