.class public Lcom/netease/nr/biz/pc/b/d;
.super Lcom/netease/nr/base/fragment/k;


# instance fields
.field private b:Lcom/netease/nr/biz/i/a/a/b;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/netease/nr/base/fragment/k;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/biz/pc/b/d;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/nr/biz/pc/b/d;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/nr/biz/pc/b/d;->e:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/biz/pc/b/d;Lcom/netease/nr/biz/i/a/a/b;)Lcom/netease/nr/biz/i/a/a/b;
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/pc/b/d;->b:Lcom/netease/nr/biz/i/a/a/b;

    return-object p1
.end method

.method static synthetic a(Lcom/netease/nr/biz/pc/b/d;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/pc/b/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/netease/nr/biz/pc/b/d;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/pc/b/d;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/netease/nr/biz/pc/b/d;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/pc/b/d;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/netease/nr/biz/pc/b/d;)Lcom/netease/nr/biz/i/a/a/b;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/pc/b/d;->b:Lcom/netease/nr/biz/i/a/a/b;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/netease/nr/base/fragment/k;->onActivityCreated(Landroid/os/Bundle;)V

    const-string v0, "FavoriteCommentFragment"

    const-string v1, "onActivityCreated()"

    invoke-static {v0, v1}, Lcom/netease/util/d/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/b/d;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "comment_url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/nr/biz/pc/b/d;->c:Ljava/lang/String;

    const-string v1, "boardid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/nr/biz/pc/b/d;->d:Ljava/lang/String;

    const-string v1, "postid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/pc/b/d;->e:Ljava/lang/String;

    const-string v0, "FavoriteCommentFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mUri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nr/biz/pc/b/d;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/util/d/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "FavoriteCommentFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBoardid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nr/biz/pc/b/d;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/util/d/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "FavoriteCommentFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPostid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nr/biz/pc/b/d;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/util/d/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/pc/b/d;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/b/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    :cond_1
    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/b/d;->a()Lcom/netease/nr/base/view/a;

    move-result-object v0

    const v1, 0x7f0b01b9

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/a;->c(I)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/b/d;->a()Lcom/netease/nr/base/view/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/a;->d(Z)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/b/d;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/16 v1, 0xc8

    const/4 v2, 0x0

    new-instance v3, Lcom/netease/nr/biz/pc/b/f;

    invoke-direct {v3, p0}, Lcom/netease/nr/biz/pc/b/f;-><init>(Lcom/netease/nr/biz/pc/b/d;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/netease/nr/base/fragment/k;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/b/d;->z()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "FavoriteCommentFragment"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/netease/util/d/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/netease/nr/base/fragment/k;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 2

    const-string v0, "FavoriteCommentFragment"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Lcom/netease/util/d/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/netease/nr/base/fragment/k;->onPause()V

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/b/d;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/support/v4/app/LoaderManager;->destroyLoader(I)V

    return-void
.end method
