.class public Lmm/sms/purchasesdk/a/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/Boolean;

.field private a:Lmm/sms/purchasesdk/a/c;

.field private b:Ljava/lang/Boolean;

.field private final c:I

.field private c:Ljava/lang/String;

.field private c:Z

.field private d:Ljava/lang/String;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lmm/sms/purchasesdk/a/a;->c:Z

    iput v0, p0, Lmm/sms/purchasesdk/a/a;->c:I

    iput-boolean v0, p0, Lmm/sms/purchasesdk/a/a;->d:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmm/sms/purchasesdk/a/a;->a:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmm/sms/purchasesdk/a/a;->b:Ljava/lang/Boolean;

    const-string v0, ""

    iput-object v0, p0, Lmm/sms/purchasesdk/a/a;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lmm/sms/purchasesdk/a/a;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lmm/sms/purchasesdk/a/a;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lmm/sms/purchasesdk/a/a;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    return v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmm/sms/purchasesdk/a/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public a()Lmm/sms/purchasesdk/a/c;
    .locals 1

    iget-object v0, p0, Lmm/sms/purchasesdk/a/a;->a:Lmm/sms/purchasesdk/a/c;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmm/sms/purchasesdk/a/a;->f:Ljava/lang/String;

    return-void
.end method

.method public a(Lmm/sms/purchasesdk/a/c;)V
    .locals 0

    iput-object p1, p0, Lmm/sms/purchasesdk/a/a;->a:Lmm/sms/purchasesdk/a/c;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lmm/sms/purchasesdk/a/a;->d:Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmm/sms/purchasesdk/a/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmm/sms/purchasesdk/a/a;->c:Ljava/lang/String;

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lmm/sms/purchasesdk/a/a;->c:Z

    return v0
.end method
