.class public Lcom/netease/nr/biz/h/l;
.super Landroid/support/v4/content/AsyncTaskLoader;


# instance fields
.field private a:Landroid/util/Pair;

.field private b:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    invoke-direct {v0, p0}, Landroid/support/v4/content/Loader$ForceLoadContentObserver;-><init>(Landroid/support/v4/content/Loader;)V

    iput-object v0, p0, Lcom/netease/nr/biz/h/l;->b:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    iput-object p2, p0, Lcom/netease/nr/biz/h/l;->c:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/netease/nr/biz/h/l;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "top_columns"

    invoke-static {v1}, Lcom/netease/nr/base/db/BaseContentProvider;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/netease/nr/biz/h/l;->b:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/util/Pair;
    .locals 2

    const-string v0, "source_columns"

    iget-object v1, p0, Lcom/netease/nr/biz/h/l;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u7cbe\u9009"

    :goto_0
    invoke-virtual {p0}, Lcom/netease/nr/biz/h/l;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/netease/nr/biz/news/column/g;->f(Landroid/content/Context;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "source_media"

    iget-object v1, p0, Lcom/netease/nr/biz/h/l;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u9605\u8bfb"

    goto :goto_0

    :cond_1
    const-string v0, "\u7cbe\u9009"

    goto :goto_0
.end method

.method public a(Landroid/util/Pair;)V
    .locals 1

    iput-object p1, p0, Lcom/netease/nr/biz/h/l;->a:Landroid/util/Pair;

    invoke-virtual {p0}, Lcom/netease/nr/biz/h/l;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/h/l;->a(Landroid/util/Pair;)V

    return-void
.end method

.method public synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/netease/nr/biz/h/l;->a()Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method protected onReset()V
    .locals 2

    invoke-super {p0}, Landroid/support/v4/content/AsyncTaskLoader;->onReset()V

    invoke-virtual {p0}, Lcom/netease/nr/biz/h/l;->onStopLoading()V

    iget-object v0, p0, Lcom/netease/nr/biz/h/l;->b:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/biz/h/l;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/h/l;->b:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/nr/biz/h/l;->b:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    :cond_0
    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/content/AsyncTaskLoader;->onStartLoading()V

    invoke-virtual {p0}, Lcom/netease/nr/biz/h/l;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/h/l;->a:Landroid/util/Pair;

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/netease/nr/biz/h/l;->forceLoad()V

    :cond_1
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    invoke-super {p0}, Landroid/support/v4/content/AsyncTaskLoader;->onStopLoading()V

    invoke-virtual {p0}, Lcom/netease/nr/biz/h/l;->cancelLoad()Z

    return-void
.end method
