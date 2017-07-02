.class Lcom/netease/nr/biz/pc/b/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/pc/b/g;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/pc/b/g;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/pc/b/n;->a:Lcom/netease/nr/biz/pc/b/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/content/Loader;Ljava/util/Map;)V
    .locals 0

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 3

    new-instance v0, Lcom/netease/nr/biz/pc/b/p;

    iget-object v1, p0, Lcom/netease/nr/biz/pc/b/n;->a:Lcom/netease/nr/biz/pc/b/g;

    invoke-virtual {v1}, Lcom/netease/nr/biz/pc/b/g;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nr/biz/pc/b/n;->a:Lcom/netease/nr/biz/pc/b/g;

    invoke-static {v2}, Lcom/netease/nr/biz/pc/b/g;->a(Lcom/netease/nr/biz/pc/b/g;)Lcom/netease/nr/biz/pc/b/o;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netease/nr/biz/pc/b/p;-><init>(Landroid/content/Context;Lcom/netease/nr/biz/pc/b/o;)V

    return-object v0
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/netease/nr/biz/pc/b/n;->a(Landroid/support/v4/content/Loader;Ljava/util/Map;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 0

    return-void
.end method
