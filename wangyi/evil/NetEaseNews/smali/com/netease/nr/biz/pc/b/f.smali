.class Lcom/netease/nr/biz/pc/b/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/pc/b/d;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/pc/b/d;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/pc/b/f;->a:Lcom/netease/nr/biz/pc/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/content/Loader;Ljava/util/Map;)V
    .locals 4

    const-string v0, "FavoriteCommentFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "map: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/util/d/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/pc/b/f;->a:Lcom/netease/nr/biz/pc/b/d;

    invoke-virtual {v0}, Lcom/netease/nr/biz/pc/b/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/netease/nr/biz/pc/b/f;->a:Lcom/netease/nr/biz/pc/b/d;

    new-instance v2, Lcom/netease/nr/biz/i/a/a/b;

    iget-object v3, p0, Lcom/netease/nr/biz/pc/b/f;->a:Lcom/netease/nr/biz/pc/b/d;

    invoke-virtual {v3}, Lcom/netease/nr/biz/pc/b/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/netease/nr/biz/i/a/a/b;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-static {v1, v2}, Lcom/netease/nr/biz/pc/b/d;->a(Lcom/netease/nr/biz/pc/b/d;Lcom/netease/nr/biz/i/a/a/b;)Lcom/netease/nr/biz/i/a/a/b;

    iget-object v0, p0, Lcom/netease/nr/biz/pc/b/f;->a:Lcom/netease/nr/biz/pc/b/d;

    iget-object v1, p0, Lcom/netease/nr/biz/pc/b/f;->a:Lcom/netease/nr/biz/pc/b/d;

    invoke-static {v1}, Lcom/netease/nr/biz/pc/b/d;->d(Lcom/netease/nr/biz/pc/b/d;)Lcom/netease/nr/biz/i/a/a/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/pc/b/d;->setListAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 5

    new-instance v0, Lcom/netease/nr/biz/pc/b/e;

    iget-object v1, p0, Lcom/netease/nr/biz/pc/b/f;->a:Lcom/netease/nr/biz/pc/b/d;

    invoke-virtual {v1}, Lcom/netease/nr/biz/pc/b/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nr/biz/pc/b/f;->a:Lcom/netease/nr/biz/pc/b/d;

    invoke-static {v2}, Lcom/netease/nr/biz/pc/b/d;->a(Lcom/netease/nr/biz/pc/b/d;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/nr/biz/pc/b/f;->a:Lcom/netease/nr/biz/pc/b/d;

    invoke-static {v3}, Lcom/netease/nr/biz/pc/b/d;->b(Lcom/netease/nr/biz/pc/b/d;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/nr/biz/pc/b/f;->a:Lcom/netease/nr/biz/pc/b/d;

    invoke-static {v4}, Lcom/netease/nr/biz/pc/b/d;->c(Lcom/netease/nr/biz/pc/b/d;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netease/nr/biz/pc/b/e;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/netease/nr/biz/pc/b/f;->a(Landroid/support/v4/content/Loader;Ljava/util/Map;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 0

    return-void
.end method
