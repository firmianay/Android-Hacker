.class public Lcom/netease/nr/biz/j/d/a/a;
.super Lcom/netease/nr/base/fragment/h;

# interfaces
.implements Lcom/netease/nr/biz/sns/a/d/b;


# instance fields
.field private a:Ljava/util/List;

.field private e:Lcom/netease/nr/biz/j/d/a/i;

.field private f:Lcom/netease/nr/base/view/ViewPagerForSlider;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/netease/nr/base/fragment/h;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/biz/j/d/a/a;->a:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/nr/biz/j/d/a/a;->e:Lcom/netease/nr/biz/j/d/a/i;

    return-void
.end method

.method private j()Lcom/netease/util/fragment/z;
    .locals 2

    new-instance v0, Lcom/netease/nr/biz/j/d/a/b;

    invoke-virtual {p0}, Lcom/netease/nr/biz/j/d/a/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netease/nr/biz/j/d/a/b;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/netease/nr/biz/sns/a/d/a;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)Lcom/netease/util/fragment/z;
    .locals 1

    invoke-direct {p0}, Lcom/netease/nr/biz/j/d/a/a;->j()Lcom/netease/util/fragment/z;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/netease/util/j/a;Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/fragment/h;->a(Lcom/netease/util/j/a;Landroid/view/View;)V

    iget-object v0, p0, Lcom/netease/nr/biz/j/d/a/a;->e:Lcom/netease/nr/biz/j/d/a/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/j/d/a/a;->e:Lcom/netease/nr/biz/j/d/a/i;

    invoke-virtual {v0}, Lcom/netease/nr/biz/j/d/a/i;->notifyDataSetChanged()V

    :cond_0
    const v0, 0x7f0c0070

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/Indicator;

    invoke-virtual {v0, p1}, Lcom/netease/nr/base/view/Indicator;->b(Lcom/netease/util/j/a;)V

    return-void
.end method

.method public a_()Ljava/lang/Object;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/netease/nr/biz/j/d/a/a;->a:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netease/nr/biz/j/d/a/a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "vote"

    iget-object v2, p0, Lcom/netease/nr/biz/j/d/a/a;->a:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/support/v4/content/Loader;Ljava/util/Map;)V
    .locals 3

    invoke-static {p2}, Lcom/netease/util/e/c;->c(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/biz/j/d/a/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/netease/nr/biz/j/d/a/a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/netease/nr/biz/j/d/a/a;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Lcom/netease/nr/biz/j/d/a/i;

    iget-object v1, p0, Lcom/netease/nr/biz/j/d/a/a;->a:Ljava/util/List;

    invoke-virtual {p0}, Lcom/netease/nr/biz/j/d/a/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netease/nr/biz/j/d/a/i;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/nr/biz/j/d/a/a;->e:Lcom/netease/nr/biz/j/d/a/i;

    iget-object v0, p0, Lcom/netease/nr/biz/j/d/a/a;->f:Lcom/netease/nr/base/view/ViewPagerForSlider;

    iget-object v1, p0, Lcom/netease/nr/biz/j/d/a/a;->e:Lcom/netease/nr/biz/j/d/a/i;

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/ViewPagerForSlider;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/j/d/a/a;->l_()V

    goto :goto_0
.end method

.method protected b_()I
    .locals 1

    const v0, 0x7f0300de

    return v0
.end method

.method protected e()Z
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/j/d/a/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/netease/nr/base/fragment/h;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/j/d/a/a;->B()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    const-string v1, "vote"

    invoke-static {v0, v1}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/netease/nr/biz/j/d/a/a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/netease/nr/biz/j/d/a/a;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/netease/nr/biz/j/d/a/a;->u()V

    return-void
.end method

.method public onDestroyView()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/netease/nr/biz/j/d/a/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0c02c1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/MySlidingDrawer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/netease/nr/biz/j/d/a/a;->f:Lcom/netease/nr/base/view/ViewPagerForSlider;

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/MySlidingDrawer;->b(Lcom/netease/nr/base/view/ax;)V

    :cond_0
    invoke-super {p0}, Lcom/netease/nr/base/fragment/h;->onDestroyView()V

    iput-object v2, p0, Lcom/netease/nr/biz/j/d/a/a;->f:Lcom/netease/nr/base/view/ViewPagerForSlider;

    iput-object v2, p0, Lcom/netease/nr/biz/j/d/a/a;->e:Lcom/netease/nr/biz/j/d/a/i;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/fragment/h;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x7f0c0274

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/ViewPagerForSlider;

    iput-object v0, p0, Lcom/netease/nr/biz/j/d/a/a;->f:Lcom/netease/nr/base/view/ViewPagerForSlider;

    const v0, 0x7f0c0070

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/Indicator;

    iget-object v1, p0, Lcom/netease/nr/biz/j/d/a/a;->f:Lcom/netease/nr/base/view/ViewPagerForSlider;

    invoke-virtual {v1, v0}, Lcom/netease/nr/base/view/ViewPagerForSlider;->a(Lcom/netease/nr/base/view/Indicator;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/j/d/a/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0c02c1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/MySlidingDrawer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/netease/nr/biz/j/d/a/a;->f:Lcom/netease/nr/base/view/ViewPagerForSlider;

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/MySlidingDrawer;->a(Lcom/netease/nr/base/view/ax;)V

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/j/d/a/a;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/j/d/a/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/j/d/a/a;->e:Lcom/netease/nr/biz/j/d/a/i;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/netease/nr/biz/j/d/a/a;->h()V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/netease/nr/biz/j/d/a/a;->f:Lcom/netease/nr/base/view/ViewPagerForSlider;

    iget-object v1, p0, Lcom/netease/nr/biz/j/d/a/a;->e:Lcom/netease/nr/biz/j/d/a/i;

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/ViewPagerForSlider;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    invoke-virtual {p0, v3}, Lcom/netease/nr/biz/j/d/a/a;->a(Z)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/j/d/a/a;->l_()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/netease/nr/biz/j/d/a/a;->e:Lcom/netease/nr/biz/j/d/a/i;

    if-nez v0, :cond_4

    new-instance v0, Lcom/netease/nr/biz/j/d/a/i;

    iget-object v1, p0, Lcom/netease/nr/biz/j/d/a/a;->a:Ljava/util/List;

    invoke-virtual {p0}, Lcom/netease/nr/biz/j/d/a/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netease/nr/biz/j/d/a/i;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/nr/biz/j/d/a/a;->e:Lcom/netease/nr/biz/j/d/a/i;

    :cond_4
    iget-object v0, p0, Lcom/netease/nr/biz/j/d/a/a;->f:Lcom/netease/nr/base/view/ViewPagerForSlider;

    iget-object v1, p0, Lcom/netease/nr/biz/j/d/a/a;->e:Lcom/netease/nr/biz/j/d/a/i;

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/ViewPagerForSlider;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    invoke-virtual {p0, v3}, Lcom/netease/nr/biz/j/d/a/a;->a(Z)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/j/d/a/a;->l_()V

    goto :goto_0
.end method
