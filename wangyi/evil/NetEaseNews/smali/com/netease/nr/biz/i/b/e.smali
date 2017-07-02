.class public Lcom/netease/nr/biz/i/b/e;
.super Lcom/netease/nr/biz/i/b/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/netease/nr/biz/i/b/a;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/os/Bundle;)Lcom/netease/util/fragment/z;
    .locals 5

    iget-object v0, p0, Lcom/netease/nr/biz/i/b/e;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget v1, p0, Lcom/netease/nr/biz/i/b/e;->l:I

    new-instance v0, Lcom/netease/nr/biz/i/b/f;

    invoke-virtual {p0}, Lcom/netease/nr/biz/i/b/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/nr/biz/i/b/e;->b:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/netease/nr/biz/i/b/f;-><init>(Landroid/content/Context;Ljava/lang/String;II)V

    goto :goto_0
.end method

.method public c(Landroid/os/Bundle;)Lcom/netease/util/fragment/z;
    .locals 5

    iget-object v0, p0, Lcom/netease/nr/biz/i/b/e;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget v1, p0, Lcom/netease/nr/biz/i/b/e;->l:I

    iget v0, p0, Lcom/netease/nr/biz/i/b/e;->k:I

    add-int v2, v0, v1

    new-instance v0, Lcom/netease/nr/biz/i/b/f;

    invoke-virtual {p0}, Lcom/netease/nr/biz/i/b/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/nr/biz/i/b/e;->b:Ljava/lang/String;

    invoke-direct {v0, v3, v4, v2, v1}, Lcom/netease/nr/biz/i/b/f;-><init>(Landroid/content/Context;Ljava/lang/String;II)V

    goto :goto_0
.end method

.method protected c(Lcom/netease/util/j/a;Landroid/view/View;)V
    .locals 2

    const v0, 0x1020004

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0202d0

    invoke-virtual {p1, v0, v1}, Lcom/netease/util/j/a;->a(Landroid/widget/ImageView;I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/netease/nr/biz/i/b/a;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/i/b/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "pref_pc_replyme_count"

    invoke-static {v0, v1}, Lcom/netease/util/g/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "ReplyMe"

    iput-object v0, p0, Lcom/netease/nr/biz/i/b/e;->a:Ljava/lang/String;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/netease/nr/biz/i/b/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x7f0202d0

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/i/b/e;->a_(I)V

    return-void
.end method
