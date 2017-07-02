.class public Lcom/netease/nr/biz/plugin/c/ac;
.super Landroid/support/v4/content/AsyncTaskLoader;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/netease/nr/biz/plugin/c/ac;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/netease/nr/biz/plugin/c/ac;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/nr/biz/plugin/c/ac;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 3

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/c/ac;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/netease/nr/biz/plugin/c/ac;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/nr/biz/plugin/c/ac;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/nr/biz/plugin/c/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/c/ac;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected onReset()V
    .locals 0

    invoke-super {p0}, Landroid/support/v4/content/AsyncTaskLoader;->onReset()V

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/c/ac;->onStopLoading()V

    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/c/ac;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/c/ac;->forceLoad()V

    :cond_0
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    invoke-super {p0}, Landroid/support/v4/content/AsyncTaskLoader;->onStopLoading()V

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/c/ac;->cancelLoad()Z

    return-void
.end method
