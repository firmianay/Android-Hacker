.class Lcom/netease/util/fragment/v;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# instance fields
.field final synthetic a:Lcom/netease/util/fragment/u;


# direct methods
.method constructor <init>(Lcom/netease/util/fragment/u;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/util/fragment/v;->a:Lcom/netease/util/fragment/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/netease/util/fragment/v;->a:Lcom/netease/util/fragment/u;

    invoke-virtual {v1, p1, p2}, Lcom/netease/util/fragment/u;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    iget-object v1, p0, Lcom/netease/util/fragment/v;->a:Lcom/netease/util/fragment/u;

    invoke-static {v1}, Lcom/netease/util/fragment/u;->b(Lcom/netease/util/fragment/u;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netease/util/fragment/v;->a:Lcom/netease/util/fragment/u;

    invoke-static {v1, v0}, Lcom/netease/util/fragment/u;->b(Lcom/netease/util/fragment/u;Z)Z

    :cond_0
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/netease/util/fragment/v;->a:Lcom/netease/util/fragment/u;

    invoke-virtual {v2}, Lcom/netease/util/fragment/u;->B()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/netease/util/fragment/v;->a:Lcom/netease/util/fragment/u;

    invoke-virtual {v3}, Lcom/netease/util/fragment/u;->h()Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v0

    :cond_1
    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/netease/util/fragment/v;->a:Lcom/netease/util/fragment/u;

    invoke-static {v2}, Lcom/netease/util/fragment/u;->c(Lcom/netease/util/fragment/u;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/netease/util/fragment/v;->a:Lcom/netease/util/fragment/u;

    invoke-static {v2}, Lcom/netease/util/fragment/u;->d(Lcom/netease/util/fragment/u;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_0
    iget-object v1, p0, Lcom/netease/util/fragment/v;->a:Lcom/netease/util/fragment/u;

    invoke-virtual {v1, v0}, Lcom/netease/util/fragment/u;->setListShownNoAnimation(Z)V

    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 1

    iget-object v0, p0, Lcom/netease/util/fragment/v;->a:Lcom/netease/util/fragment/u;

    invoke-virtual {v0, p2}, Lcom/netease/util/fragment/u;->a(Landroid/os/Bundle;)Lcom/netease/util/fragment/ac;

    move-result-object v0

    return-object v0
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/netease/util/fragment/v;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/util/fragment/v;->a:Lcom/netease/util/fragment/u;

    invoke-virtual {v0, p1}, Lcom/netease/util/fragment/u;->a(Landroid/support/v4/content/Loader;)V

    return-void
.end method
