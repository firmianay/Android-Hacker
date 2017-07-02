.class Lcom/netease/nr/biz/pc/b/p;
.super Landroid/support/v4/content/AsyncTaskLoader;


# instance fields
.field a:Lcom/netease/nr/biz/pc/b/o;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netease/nr/biz/pc/b/o;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/netease/nr/biz/pc/b/p;->a:Lcom/netease/nr/biz/pc/b/o;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/pc/b/p;->a:Lcom/netease/nr/biz/pc/b/o;

    invoke-interface {v0}, Lcom/netease/nr/biz/pc/b/o;->a()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/b/p;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected onReset()V
    .locals 0

    invoke-super {p0}, Landroid/support/v4/content/AsyncTaskLoader;->onReset()V

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/b/p;->onStopLoading()V

    return-void
.end method

.method protected onStartLoading()V
    .locals 0

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/b/p;->forceLoad()V

    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/b/p;->cancelLoad()Z

    return-void
.end method
