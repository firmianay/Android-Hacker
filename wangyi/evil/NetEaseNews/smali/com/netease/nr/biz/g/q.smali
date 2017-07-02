.class Lcom/netease/nr/biz/g/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/g/p;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/g/p;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/g/q;->a:Lcom/netease/nr/biz/g/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/content/Loader;Ljava/util/List;)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/netease/nr/biz/g/q;->a:Lcom/netease/nr/biz/g/p;

    invoke-static {v0, v1}, Lcom/netease/nr/biz/g/p;->a(Lcom/netease/nr/biz/g/p;Z)Z

    iget-object v0, p0, Lcom/netease/nr/biz/g/q;->a:Lcom/netease/nr/biz/g/p;

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/g/p;->setListShown(Z)V

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/g/q;->a:Lcom/netease/nr/biz/g/p;

    invoke-virtual {v0}, Lcom/netease/nr/biz/g/p;->E()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/netease/nr/biz/g/q;->a:Lcom/netease/nr/biz/g/p;

    invoke-static {v0}, Lcom/netease/nr/biz/g/p;->a(Lcom/netease/nr/biz/g/p;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/netease/nr/biz/g/q;->a:Lcom/netease/nr/biz/g/p;

    invoke-static {v0}, Lcom/netease/nr/biz/g/p;->a(Lcom/netease/nr/biz/g/p;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/netease/nr/biz/g/q;->a:Lcom/netease/nr/biz/g/p;

    invoke-static {v0, p2}, Lcom/netease/nr/biz/g/p;->a(Lcom/netease/nr/biz/g/p;Ljava/util/List;)V

    iget-object v0, p0, Lcom/netease/nr/biz/g/q;->a:Lcom/netease/nr/biz/g/p;

    invoke-static {v0}, Lcom/netease/nr/biz/g/p;->b(Lcom/netease/nr/biz/g/p;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/g/q;->a:Lcom/netease/nr/biz/g/p;

    invoke-virtual {v0}, Lcom/netease/nr/biz/g/p;->E()V

    goto :goto_0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 4

    new-instance v0, Lcom/netease/nr/biz/g/u;

    iget-object v1, p0, Lcom/netease/nr/biz/g/q;->a:Lcom/netease/nr/biz/g/p;

    invoke-virtual {v1}, Lcom/netease/nr/biz/g/p;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nr/biz/g/q;->a:Lcom/netease/nr/biz/g/p;

    iget-object v2, v2, Lcom/netease/nr/biz/g/p;->b:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/netease/nr/biz/g/u;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/netease/nr/biz/g/q;)V

    return-object v0
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/netease/nr/biz/g/q;->a(Landroid/support/v4/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 0

    return-void
.end method
