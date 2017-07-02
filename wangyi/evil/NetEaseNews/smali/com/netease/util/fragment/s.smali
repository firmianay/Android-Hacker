.class public Lcom/netease/util/fragment/s;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# instance fields
.field a:I

.field private b:Landroid/support/v4/app/LoaderManager;

.field private c:Lcom/netease/util/fragment/t;


# direct methods
.method constructor <init>(Landroid/support/v4/app/LoaderManager;Lcom/netease/util/fragment/t;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/util/fragment/s;->a:I

    iput-object p1, p0, Lcom/netease/util/fragment/s;->b:Landroid/support/v4/app/LoaderManager;

    iput-object p2, p0, Lcom/netease/util/fragment/s;->c:Lcom/netease/util/fragment/t;

    return-void
.end method

.method public static a(Landroid/support/v4/app/Fragment;)V
    .locals 1

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p0, Lcom/netease/util/fragment/o;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/netease/util/fragment/o;

    invoke-static {p0}, Lcom/netease/util/fragment/o;->a(Lcom/netease/util/fragment/o;)V

    goto :goto_0

    :cond_2
    instance-of v0, p0, Lcom/netease/util/fragment/u;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/netease/util/fragment/u;

    invoke-static {p0}, Lcom/netease/util/fragment/u;->a(Lcom/netease/util/fragment/u;)V

    goto :goto_0
.end method

.method public static a(Landroid/support/v4/app/Fragment;Z)V
    .locals 1

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p0, Lcom/netease/util/fragment/o;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Lcom/netease/util/fragment/o;

    check-cast p0, Lcom/netease/util/fragment/o;

    invoke-static {p0, p1}, Lcom/netease/util/fragment/o;->a(Lcom/netease/util/fragment/o;Z)V

    goto :goto_0

    :cond_2
    instance-of v0, p0, Lcom/netease/util/fragment/u;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/netease/util/fragment/u;

    check-cast p0, Lcom/netease/util/fragment/u;

    invoke-static {p0, p1}, Lcom/netease/util/fragment/u;->a(Lcom/netease/util/fragment/u;Z)V

    goto :goto_0
.end method

.method public static b(Landroid/support/v4/app/Fragment;)V
    .locals 1

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p0, Lcom/netease/util/fragment/o;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/netease/util/fragment/o;

    invoke-virtual {p0}, Lcom/netease/util/fragment/o;->x()V

    goto :goto_0

    :cond_2
    instance-of v0, p0, Lcom/netease/util/fragment/u;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/netease/util/fragment/u;

    invoke-virtual {p0}, Lcom/netease/util/fragment/u;->C()V

    goto :goto_0
.end method


# virtual methods
.method a()V
    .locals 2

    iget v0, p0, Lcom/netease/util/fragment/s;->a:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/util/fragment/s;->c:Lcom/netease/util/fragment/t;

    iget v1, p0, Lcom/netease/util/fragment/s;->a:I

    invoke-interface {v0, v1}, Lcom/netease/util/fragment/t;->c(I)V

    :cond_0
    iget-object v0, p0, Lcom/netease/util/fragment/s;->b:Landroid/support/v4/app/LoaderManager;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/support/v4/app/LoaderManager;->destroyLoader(I)V

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Landroid/support/v4/app/LoaderManager;->destroyLoader(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/util/fragment/s;->a:I

    return-void
.end method

.method a(Z)V
    .locals 3

    const/4 v1, 0x0

    const/16 v2, 0x3ea

    iget v0, p0, Lcom/netease/util/fragment/s;->a:I

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/netease/util/fragment/s;->c:Lcom/netease/util/fragment/t;

    invoke-interface {v0, v2}, Lcom/netease/util/fragment/t;->b_(I)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/netease/util/fragment/s;->a()V

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/netease/util/fragment/s;->b:Landroid/support/v4/app/LoaderManager;

    invoke-virtual {v0, v2, v1, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/netease/util/fragment/z;

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/support/v4/content/Loader;->startLoading()V

    :goto_2
    iput v2, p0, Lcom/netease/util/fragment/s;->a:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/netease/util/fragment/s;->b:Landroid/support/v4/app/LoaderManager;

    invoke-virtual {v0, v2, v1, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    move-result-object v0

    goto :goto_1

    :cond_3
    instance-of v1, v0, Landroid/support/v4/content/CursorLoader;

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Landroid/support/v4/content/Loader;->startLoading()V

    goto :goto_2

    :cond_4
    instance-of v1, v0, Landroid/support/v4/content/AsyncTaskLoader;

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Landroid/support/v4/content/Loader;->forceLoad()V

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Landroid/support/v4/content/Loader;->startLoading()V

    goto :goto_2
.end method

.method a(ZLandroid/support/v4/app/LoaderManager$LoaderCallbacks;)V
    .locals 3

    const/4 v2, 0x0

    const/16 v1, 0x3e9

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netease/util/fragment/s;->b:Landroid/support/v4/app/LoaderManager;

    invoke-virtual {v0, v1, v2, p2}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/util/fragment/s;->b:Landroid/support/v4/app/LoaderManager;

    invoke-virtual {v0, v1, v2, p2}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    move-result-object v0

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lcom/netease/util/fragment/z;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/support/v4/content/Loader;->startLoading()V

    goto :goto_1

    :cond_2
    instance-of v1, v0, Landroid/support/v4/content/CursorLoader;

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/support/v4/content/Loader;->startLoading()V

    goto :goto_1

    :cond_3
    instance-of v1, v0, Landroid/support/v4/content/AsyncTaskLoader;

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Landroid/support/v4/content/Loader;->forceLoad()V

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Landroid/support/v4/content/Loader;->startLoading()V

    goto :goto_1
.end method

.method b(Z)V
    .locals 3

    const/4 v1, 0x0

    const/16 v2, 0x3eb

    iget v0, p0, Lcom/netease/util/fragment/s;->a:I

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/netease/util/fragment/s;->c:Lcom/netease/util/fragment/t;

    invoke-interface {v0, v2}, Lcom/netease/util/fragment/t;->b_(I)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/netease/util/fragment/s;->a()V

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/netease/util/fragment/s;->b:Landroid/support/v4/app/LoaderManager;

    invoke-virtual {v0, v2, v1, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/netease/util/fragment/z;

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/support/v4/content/Loader;->startLoading()V

    :goto_2
    iput v2, p0, Lcom/netease/util/fragment/s;->a:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/netease/util/fragment/s;->b:Landroid/support/v4/app/LoaderManager;

    invoke-virtual {v0, v2, v1, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    move-result-object v0

    goto :goto_1

    :cond_3
    instance-of v1, v0, Landroid/support/v4/content/CursorLoader;

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Landroid/support/v4/content/Loader;->startLoading()V

    goto :goto_2

    :cond_4
    instance-of v1, v0, Landroid/support/v4/content/AsyncTaskLoader;

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Landroid/support/v4/content/Loader;->forceLoad()V

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Landroid/support/v4/content/Loader;->startLoading()V

    goto :goto_2
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 1

    iget-object v0, p0, Lcom/netease/util/fragment/s;->c:Lcom/netease/util/fragment/t;

    invoke-interface {v0, p1, p2}, Lcom/netease/util/fragment/t;->onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;

    move-result-object v0

    return-object v0
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v0

    iget v1, p0, Lcom/netease/util/fragment/s;->a:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/util/fragment/s;->a:I

    iget-object v0, p0, Lcom/netease/util/fragment/s;->c:Lcom/netease/util/fragment/t;

    invoke-interface {v0, p1, p2}, Lcom/netease/util/fragment/t;->onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 2

    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v0

    iget v1, p0, Lcom/netease/util/fragment/s;->a:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/util/fragment/s;->a:I

    iget-object v0, p0, Lcom/netease/util/fragment/s;->c:Lcom/netease/util/fragment/t;

    invoke-interface {v0, p1}, Lcom/netease/util/fragment/t;->onLoaderReset(Landroid/support/v4/content/Loader;)V

    :cond_0
    return-void
.end method
