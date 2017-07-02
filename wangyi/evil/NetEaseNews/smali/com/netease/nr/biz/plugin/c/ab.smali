.class Lcom/netease/nr/biz/plugin/c/ab;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/plugin/c/aa;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/plugin/c/aa;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/plugin/c/ab;->a:Lcom/netease/nr/biz/plugin/c/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/content/Loader;Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/c/ab;->a:Lcom/netease/nr/biz/plugin/c/aa;

    invoke-static {v0, p2}, Lcom/netease/nr/biz/plugin/c/aa;->a(Lcom/netease/nr/biz/plugin/c/aa;Ljava/util/List;)V

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 4

    new-instance v0, Lcom/netease/nr/biz/plugin/c/ac;

    iget-object v1, p0, Lcom/netease/nr/biz/plugin/c/ab;->a:Lcom/netease/nr/biz/plugin/c/aa;

    invoke-virtual {v1}, Lcom/netease/nr/biz/plugin/c/aa;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nr/biz/plugin/c/ab;->a:Lcom/netease/nr/biz/plugin/c/aa;

    invoke-static {v2}, Lcom/netease/nr/biz/plugin/c/aa;->a(Lcom/netease/nr/biz/plugin/c/aa;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/nr/biz/plugin/c/ab;->a:Lcom/netease/nr/biz/plugin/c/aa;

    invoke-static {v3}, Lcom/netease/nr/biz/plugin/c/aa;->b(Lcom/netease/nr/biz/plugin/c/aa;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/netease/nr/biz/plugin/c/ac;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/netease/nr/biz/plugin/c/ab;->a(Landroid/support/v4/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 0

    return-void
.end method
