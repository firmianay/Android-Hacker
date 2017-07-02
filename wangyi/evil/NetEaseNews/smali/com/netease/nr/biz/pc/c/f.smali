.class Lcom/netease/nr/biz/pc/c/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/pc/c/e;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/pc/c/e;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/pc/c/f;->a:Lcom/netease/nr/biz/pc/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/content/Loader;Ljava/util/List;)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/netease/nr/biz/pc/c/f;->a:Lcom/netease/nr/biz/pc/c/e;

    invoke-static {v0, v1}, Lcom/netease/nr/biz/pc/c/e;->a(Lcom/netease/nr/biz/pc/c/e;Z)Z

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/pc/c/f;->a:Lcom/netease/nr/biz/pc/c/e;

    invoke-virtual {v0}, Lcom/netease/nr/biz/pc/c/e;->E()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/pc/c/f;->a:Lcom/netease/nr/biz/pc/c/e;

    invoke-static {v0, p2}, Lcom/netease/nr/biz/pc/c/e;->a(Lcom/netease/nr/biz/pc/c/e;Ljava/util/List;)V

    iget-object v0, p0, Lcom/netease/nr/biz/pc/c/f;->a:Lcom/netease/nr/biz/pc/c/e;

    invoke-static {v0}, Lcom/netease/nr/biz/pc/c/e;->a(Lcom/netease/nr/biz/pc/c/e;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/nr/biz/pc/c/f;->a:Lcom/netease/nr/biz/pc/c/e;

    invoke-virtual {v0}, Lcom/netease/nr/biz/pc/c/e;->E()V

    :cond_2
    iget-object v0, p0, Lcom/netease/nr/biz/pc/c/f;->a:Lcom/netease/nr/biz/pc/c/e;

    invoke-static {v0, v1}, Lcom/netease/nr/biz/pc/c/e;->b(Lcom/netease/nr/biz/pc/c/e;Z)V

    goto :goto_0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 4

    new-instance v0, Lcom/netease/nr/biz/pc/c/g;

    iget-object v1, p0, Lcom/netease/nr/biz/pc/c/f;->a:Lcom/netease/nr/biz/pc/c/e;

    invoke-virtual {v1}, Lcom/netease/nr/biz/pc/c/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "T1371543208049"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/netease/nr/biz/pc/c/g;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/netease/nr/biz/pc/c/f;)V

    return-object v0
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/netease/nr/biz/pc/c/f;->a(Landroid/support/v4/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 0

    return-void
.end method
