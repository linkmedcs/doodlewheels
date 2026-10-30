.class final Lcom/cloud/dw/StartupCoverDismiss;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final activity:Lcom/cloud/dw/DoodleWheels;


# direct methods
.method public constructor <init>(Lcom/cloud/dw/DoodleWheels;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/dw/StartupCoverDismiss;->activity:Lcom/cloud/dw/DoodleWheels;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/dw/StartupCoverDismiss;->activity:Lcom/cloud/dw/DoodleWheels;

    invoke-virtual {v0}, Lcom/cloud/dw/DoodleWheels;->dismissStartupCover()V

    return-void
.end method
