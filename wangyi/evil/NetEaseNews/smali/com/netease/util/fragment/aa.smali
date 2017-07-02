.class public abstract Lcom/netease/util/fragment/aa;
.super Lcom/netease/util/fragment/z;


# instance fields
.field private a:Z

.field private b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/util/fragment/z;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final deliverResult(Ljava/lang/Object;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/netease/util/fragment/z;->deliverResult(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/util/fragment/aa;->a:Z

    iput-object p1, p0, Lcom/netease/util/fragment/aa;->b:Ljava/lang/Object;

    return-void
.end method

.method protected onForceLoad()V
    .locals 1

    iget-boolean v0, p0, Lcom/netease/util/fragment/aa;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/util/fragment/aa;->b:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/netease/util/fragment/aa;->deliverResult(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Lcom/netease/util/fragment/z;->onForceLoad()V

    goto :goto_0
.end method

.method protected onStartLoading()V
    .locals 1

    iget-boolean v0, p0, Lcom/netease/util/fragment/aa;->a:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/util/fragment/aa;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/util/fragment/aa;->forceLoad()V

    :cond_0
    return-void
.end method
