.class public abstract Lcom/netease/util/fragment/z;
.super Landroid/support/v4/content/AsyncTaskLoader;


# instance fields
.field private a:Z

.field private b:Ljava/util/Date;

.field private c:Ljava/lang/Object;

.field private d:Z

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/util/fragment/z;->e:Z

    return-void
.end method

.method private a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/util/fragment/z;->b:Ljava/util/Date;

    iput-object v0, p0, Lcom/netease/util/fragment/z;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public b()Ljava/util/Date;
    .locals 1

    iget-boolean v0, p0, Lcom/netease/util/fragment/z;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netease/util/fragment/z;->b:Ljava/util/Date;

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netease/util/fragment/z;->f:Z

    return v0
.end method

.method public deliverResult(Ljava/lang/Object;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/netease/util/fragment/z;->d:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/netease/util/fragment/z;->a()V

    iget-boolean v0, p0, Lcom/netease/util/fragment/z;->a:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/netease/util/fragment/z;->b:Ljava/util/Date;

    iput-object p1, p0, Lcom/netease/util/fragment/z;->c:Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/util/fragment/z;->f:Z

    :cond_1
    return-void
.end method

.method protected onAbandon()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/content/AsyncTaskLoader;->onAbandon()V

    invoke-direct {p0}, Lcom/netease/util/fragment/z;->a()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/util/fragment/z;->f:Z

    return-void
.end method

.method protected onForceLoad()V
    .locals 1

    iget-boolean v0, p0, Lcom/netease/util/fragment/z;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/util/fragment/z;->e:Z

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/util/fragment/z;->f:Z

    invoke-super {p0}, Landroid/support/v4/content/AsyncTaskLoader;->onForceLoad()V

    return-void
.end method

.method protected onReset()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/content/AsyncTaskLoader;->onReset()V

    invoke-direct {p0}, Lcom/netease/util/fragment/z;->a()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/util/fragment/z;->f:Z

    return-void
.end method

.method protected onStartLoading()V
    .locals 2

    invoke-super {p0}, Landroid/support/v4/content/AsyncTaskLoader;->onStartLoading()V

    iget-boolean v0, p0, Lcom/netease/util/fragment/z;->a:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/util/fragment/z;->b:Ljava/util/Date;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/util/fragment/z;->c:Ljava/lang/Object;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/netease/util/fragment/z;->d:Z

    invoke-virtual {p0, v0}, Lcom/netease/util/fragment/z;->deliverResult(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/util/fragment/z;->d:Z

    invoke-direct {p0}, Lcom/netease/util/fragment/z;->a()V

    :cond_2
    iget-boolean v0, p0, Lcom/netease/util/fragment/z;->f:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/netease/util/fragment/z;->e:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/netease/util/fragment/z;->takeContentChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    invoke-virtual {p0}, Lcom/netease/util/fragment/z;->forceLoad()V

    goto :goto_0
.end method

.method public registerListener(ILandroid/support/v4/content/Loader$OnLoadCompleteListener;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/support/v4/content/AsyncTaskLoader;->registerListener(ILandroid/support/v4/content/Loader$OnLoadCompleteListener;)V

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/netease/util/fragment/z;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unregisterListener(Landroid/support/v4/content/Loader$OnLoadCompleteListener;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;->unregisterListener(Landroid/support/v4/content/Loader$OnLoadCompleteListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/util/fragment/z;->a:Z

    return-void
.end method
