.class public Lcom/netease/nr/biz/e/g;
.super Lcom/netease/nr/base/fragment/h;


# instance fields
.field private a:Lcom/netease/nr/biz/e/c;

.field private e:Ljava/util/List;

.field private f:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/netease/nr/base/fragment/h;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/biz/e/g;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)Lcom/netease/util/fragment/z;
    .locals 2

    new-instance v0, Lcom/netease/nr/biz/e/h;

    invoke-virtual {p0}, Lcom/netease/nr/biz/e/g;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netease/nr/biz/e/h;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public a_()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/e/g;->e:Ljava/util/List;

    return-object v0
.end method

.method public b(Landroid/support/v4/content/Loader;Ljava/util/Map;)V
    .locals 2

    invoke-static {p2}, Lcom/netease/util/e/c;->c(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/netease/nr/biz/e/g;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/netease/nr/biz/e/g;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/netease/nr/biz/e/g;->a:Lcom/netease/nr/biz/e/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/e/g;->a:Lcom/netease/nr/biz/e/c;

    invoke-virtual {v0}, Lcom/netease/nr/biz/e/c;->notifyDataSetChanged()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/e/g;->a(Z)V

    :cond_0
    return-void
.end method

.method protected b_()I
    .locals 1

    const v0, 0x7f0300b0

    return v0
.end method

.method protected e()Z
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/e/g;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/e/g;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/netease/nr/base/fragment/h;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/e/g;->u()V

    invoke-virtual {p0}, Lcom/netease/nr/biz/e/g;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nr/biz/e/a;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/netease/nr/biz/e/g;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    new-instance v0, Lcom/netease/nr/biz/e/c;

    invoke-virtual {p0}, Lcom/netease/nr/biz/e/g;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nr/biz/e/g;->e:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/netease/nr/biz/e/c;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/netease/nr/biz/e/g;->a:Lcom/netease/nr/biz/e/c;

    iget-object v0, p0, Lcom/netease/nr/biz/e/g;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/netease/nr/biz/e/g;->h()V

    :cond_1
    invoke-virtual {p0}, Lcom/netease/nr/biz/e/g;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/netease/util/fragment/FragmentActivity;

    invoke-virtual {v0}, Lcom/netease/util/fragment/FragmentActivity;->p()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Lcom/netease/nr/base/fragment/h;->onDestroyView()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/nr/biz/e/g;->f:Landroid/widget/ListView;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/fragment/h;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/e/g;->a()Lcom/netease/nr/base/view/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Lcom/netease/nr/base/view/a;->d(Z)V

    const v1, 0x7f0b01d4

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/a;->c(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/netease/nr/biz/e/g;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c00a8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/netease/nr/biz/e/g;->f:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/netease/nr/biz/e/g;->f:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/netease/nr/biz/e/g;->a:Lcom/netease/nr/biz/e/c;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/netease/nr/biz/e/g;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/netease/nr/biz/e/g;->a(Z)V

    :cond_1
    return-void
.end method
