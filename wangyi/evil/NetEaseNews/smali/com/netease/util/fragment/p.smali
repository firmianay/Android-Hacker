.class Lcom/netease/util/fragment/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# instance fields
.field final synthetic a:Lcom/netease/util/fragment/o;


# direct methods
.method constructor <init>(Lcom/netease/util/fragment/o;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/util/fragment/p;->a:Lcom/netease/util/fragment/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/util/fragment/p;->a:Lcom/netease/util/fragment/o;

    invoke-virtual {v0, p1, p2}, Lcom/netease/util/fragment/o;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 1

    iget-object v0, p0, Lcom/netease/util/fragment/p;->a:Lcom/netease/util/fragment/o;

    invoke-virtual {v0, p2}, Lcom/netease/util/fragment/o;->b(Landroid/os/Bundle;)Lcom/netease/util/fragment/ac;

    move-result-object v0

    return-object v0
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/netease/util/fragment/p;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/util/fragment/p;->a:Lcom/netease/util/fragment/o;

    invoke-virtual {v0, p1}, Lcom/netease/util/fragment/o;->a(Landroid/support/v4/content/Loader;)V

    return-void
.end method
