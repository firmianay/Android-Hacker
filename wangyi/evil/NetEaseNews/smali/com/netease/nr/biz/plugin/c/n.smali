.class Lcom/netease/nr/biz/plugin/c/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/plugin/c/m;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/plugin/c/m;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/plugin/c/n;->a:Lcom/netease/nr/biz/plugin/c/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/content/Loader;Ljava/util/List;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/c/n;->a:Lcom/netease/nr/biz/plugin/c/m;

    invoke-static {v0}, Lcom/netease/nr/biz/plugin/c/m;->a(Lcom/netease/nr/biz/plugin/c/m;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/c/n;->a:Lcom/netease/nr/biz/plugin/c/m;

    invoke-static {v0}, Lcom/netease/nr/biz/plugin/c/m;->a(Lcom/netease/nr/biz/plugin/c/m;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/plugin/c/n;->a:Lcom/netease/nr/biz/plugin/c/m;

    invoke-static {v0}, Lcom/netease/nr/biz/plugin/c/m;->b(Lcom/netease/nr/biz/plugin/c/m;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/c/n;->a:Lcom/netease/nr/biz/plugin/c/m;

    invoke-static {v0}, Lcom/netease/nr/biz/plugin/c/m;->b(Lcom/netease/nr/biz/plugin/c/m;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/netease/nr/biz/plugin/c/n;->a:Lcom/netease/nr/biz/plugin/c/m;

    invoke-static {v0}, Lcom/netease/nr/biz/plugin/c/m;->c(Lcom/netease/nr/biz/plugin/c/m;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/util/e/b;

    iget-object v1, p0, Lcom/netease/nr/biz/plugin/c/n;->a:Lcom/netease/nr/biz/plugin/c/m;

    invoke-static {v1}, Lcom/netease/nr/biz/plugin/c/m;->c(Lcom/netease/nr/biz/plugin/c/m;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/netease/nr/biz/plugin/c/n;->a:Lcom/netease/nr/biz/plugin/c/m;

    invoke-static {v1}, Lcom/netease/nr/biz/plugin/c/m;->c(Lcom/netease/nr/biz/plugin/c/m;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/c/n;->a:Lcom/netease/nr/biz/plugin/c/m;

    invoke-static {v0}, Lcom/netease/nr/biz/plugin/c/m;->c(Lcom/netease/nr/biz/plugin/c/m;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/c/n;->a:Lcom/netease/nr/biz/plugin/c/m;

    invoke-static {v0}, Lcom/netease/nr/biz/plugin/c/m;->d(Lcom/netease/nr/biz/plugin/c/m;)Lcom/netease/nr/biz/plugin/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/biz/plugin/c/a;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/c/n;->a:Lcom/netease/nr/biz/plugin/c/m;

    invoke-static {v0}, Lcom/netease/nr/biz/plugin/c/m;->a(Lcom/netease/nr/biz/plugin/c/m;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/c/n;->a:Lcom/netease/nr/biz/plugin/c/m;

    invoke-static {v0}, Lcom/netease/nr/biz/plugin/c/m;->a(Lcom/netease/nr/biz/plugin/c/m;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    new-instance v0, Lcom/netease/nr/biz/plugin/c/y;

    iget-object v1, p0, Lcom/netease/nr/biz/plugin/c/n;->a:Lcom/netease/nr/biz/plugin/c/m;

    invoke-virtual {v1}, Lcom/netease/nr/biz/plugin/c/m;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netease/nr/biz/plugin/c/y;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/netease/nr/biz/plugin/c/n;->a(Landroid/support/v4/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/c/n;->a:Lcom/netease/nr/biz/plugin/c/m;

    invoke-static {v0}, Lcom/netease/nr/biz/plugin/c/m;->d(Lcom/netease/nr/biz/plugin/c/m;)Lcom/netease/nr/biz/plugin/c/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/c/n;->a:Lcom/netease/nr/biz/plugin/c/m;

    invoke-static {v0}, Lcom/netease/nr/biz/plugin/c/m;->d(Lcom/netease/nr/biz/plugin/c/m;)Lcom/netease/nr/biz/plugin/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/biz/plugin/c/a;->a()V

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/plugin/c/n;->a:Lcom/netease/nr/biz/plugin/c/m;

    invoke-static {v0}, Lcom/netease/nr/biz/plugin/c/m;->a(Lcom/netease/nr/biz/plugin/c/m;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/c/n;->a:Lcom/netease/nr/biz/plugin/c/m;

    invoke-static {v0}, Lcom/netease/nr/biz/plugin/c/m;->a(Lcom/netease/nr/biz/plugin/c/m;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/plugin/c/n;->a:Lcom/netease/nr/biz/plugin/c/m;

    invoke-static {v0}, Lcom/netease/nr/biz/plugin/c/m;->b(Lcom/netease/nr/biz/plugin/c/m;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/c/n;->a:Lcom/netease/nr/biz/plugin/c/m;

    invoke-static {v0}, Lcom/netease/nr/biz/plugin/c/m;->b(Lcom/netease/nr/biz/plugin/c/m;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method
