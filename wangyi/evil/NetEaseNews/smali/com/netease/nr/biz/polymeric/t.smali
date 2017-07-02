.class public Lcom/netease/nr/biz/polymeric/t;
.super Lcom/netease/nr/base/fragment/h;

# interfaces
.implements Lcom/netease/nr/biz/ad/r;
.implements Lcom/netease/nr/biz/polymeric/e;


# instance fields
.field private a:Lcom/netease/nr/biz/polymeric/PolymericPager;

.field private e:Ljava/util/Map;

.field private f:Lcom/netease/ad/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/netease/nr/base/fragment/h;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)Lcom/netease/util/fragment/z;
    .locals 2

    new-instance v0, Lcom/netease/nr/biz/polymeric/u;

    invoke-virtual {p0}, Lcom/netease/nr/biz/polymeric/t;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netease/nr/biz/polymeric/u;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public a(Lcom/netease/nr/biz/ad/q;)V
    .locals 3

    const-string v0, "JUHEYUEDU"

    invoke-virtual {p1}, Lcom/netease/nr/biz/ad/q;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "1"

    invoke-virtual {p1, v0}, Lcom/netease/nr/biz/ad/q;->a(Ljava/lang/String;)Lcom/netease/ad/e;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/polymeric/t;->f:Lcom/netease/ad/e;

    iget-object v0, p0, Lcom/netease/nr/biz/polymeric/t;->a:Lcom/netease/nr/biz/polymeric/PolymericPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/polymeric/t;->a:Lcom/netease/nr/biz/polymeric/PolymericPager;

    invoke-virtual {v0}, Lcom/netease/nr/biz/polymeric/PolymericPager;->f()Lcom/netease/nr/biz/polymeric/r;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/netease/nr/biz/polymeric/t;->f:Lcom/netease/ad/e;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netease/nr/biz/polymeric/t;->a:Lcom/netease/nr/biz/polymeric/PolymericPager;

    iget-object v2, p0, Lcom/netease/nr/biz/polymeric/t;->f:Lcom/netease/ad/e;

    invoke-virtual {v2}, Lcom/netease/ad/e;->c()Lcom/netease/ad/b/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/ad/b/j;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netease/nr/biz/polymeric/PolymericPager;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netease/nr/biz/polymeric/t;->f:Lcom/netease/ad/e;

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/polymeric/r;->a(Lcom/netease/ad/e;)V

    iget-object v0, p0, Lcom/netease/nr/biz/polymeric/t;->e:Ljava/util/Map;

    invoke-static {v0}, Lcom/netease/util/e/c;->c(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/netease/nr/biz/polymeric/t;->f:Lcom/netease/ad/e;

    invoke-static {v0, v1}, Lcom/netease/nr/biz/polymeric/p;->a(Ljava/util/List;Lcom/netease/ad/e;)Ljava/util/List;

    goto :goto_0
.end method

.method public a(Lcom/netease/nr/biz/polymeric/PolymericLayout;Z)V
    .locals 2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/netease/nr/biz/polymeric/PolymericLayout;->d()V

    :goto_0
    iget-object v0, p0, Lcom/netease/nr/biz/polymeric/t;->f:Lcom/netease/ad/e;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/netease/nr/biz/polymeric/PolymericLayout;->c()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/biz/polymeric/t;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/polymeric/t;->f:Lcom/netease/ad/e;

    invoke-static {v0, v1}, Lcom/netease/nr/biz/ad/o;->a(Landroid/content/Context;Lcom/netease/ad/e;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/netease/nr/biz/polymeric/PolymericLayout;->e()V

    goto :goto_0
.end method

.method protected a(Lcom/netease/util/j/a;Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/fragment/h;->a(Lcom/netease/util/j/a;Landroid/view/View;)V

    iget-object v0, p0, Lcom/netease/nr/biz/polymeric/t;->a:Lcom/netease/nr/biz/polymeric/PolymericPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/polymeric/t;->a:Lcom/netease/nr/biz/polymeric/PolymericPager;

    invoke-virtual {v0, p1}, Lcom/netease/nr/biz/polymeric/PolymericPager;->a(Lcom/netease/util/j/a;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 4

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/netease/nr/biz/polymeric/t;->e:Ljava/util/Map;

    new-instance v1, Lcom/netease/nr/biz/polymeric/r;

    invoke-virtual {p0}, Lcom/netease/nr/biz/polymeric/t;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {p1}, Lcom/netease/util/e/c;->c(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v3, p0, Lcom/netease/nr/biz/polymeric/t;->f:Lcom/netease/ad/e;

    invoke-static {v0, v3}, Lcom/netease/nr/biz/polymeric/p;->a(Ljava/util/List;Lcom/netease/ad/e;)Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/netease/nr/biz/polymeric/t;->f:Lcom/netease/ad/e;

    invoke-direct {v1, v2, v0, v3}, Lcom/netease/nr/biz/polymeric/r;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/netease/ad/e;)V

    iget-object v0, p0, Lcom/netease/nr/biz/polymeric/t;->a:Lcom/netease/nr/biz/polymeric/PolymericPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/polymeric/t;->a:Lcom/netease/nr/biz/polymeric/PolymericPager;

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/polymeric/PolymericPager;->a(Lcom/netease/nr/biz/polymeric/r;)V

    iget-object v0, p0, Lcom/netease/nr/biz/polymeric/t;->f:Lcom/netease/ad/e;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/biz/polymeric/t;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/polymeric/t;->f:Lcom/netease/ad/e;

    invoke-static {v0, v1}, Lcom/netease/nr/biz/ad/o;->a(Landroid/content/Context;Lcom/netease/ad/e;)V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/polymeric/t;->a(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/netease/nr/biz/polymeric/t;->l_()V

    return-void
.end method

.method public a_()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/polymeric/t;->e:Ljava/util/Map;

    return-object v0
.end method

.method public b(Landroid/support/v4/content/Loader;Ljava/util/Map;)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/netease/nr/biz/polymeric/t;->a(Ljava/util/Map;)V

    return-void
.end method

.method protected b_()I
    .locals 1

    const v0, 0x7f0300ae

    return v0
.end method

.method protected e()Z
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/polymeric/t;->e:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/netease/nr/base/fragment/h;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/polymeric/t;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c006e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/polymeric/PolymericPager;

    iput-object v0, p0, Lcom/netease/nr/biz/polymeric/t;->a:Lcom/netease/nr/biz/polymeric/PolymericPager;

    iget-object v1, p0, Lcom/netease/nr/biz/polymeric/t;->a:Lcom/netease/nr/biz/polymeric/PolymericPager;

    invoke-virtual {p0}, Lcom/netease/nr/biz/polymeric/t;->getView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0c0070

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/Indicator;

    invoke-virtual {v1, v0}, Lcom/netease/nr/biz/polymeric/PolymericPager;->a(Lcom/netease/nr/base/view/Indicator;)V

    iget-object v0, p0, Lcom/netease/nr/biz/polymeric/t;->a:Lcom/netease/nr/biz/polymeric/PolymericPager;

    invoke-virtual {v0, p0}, Lcom/netease/nr/biz/polymeric/PolymericPager;->a(Lcom/netease/nr/biz/polymeric/e;)V

    iget-object v0, p0, Lcom/netease/nr/biz/polymeric/t;->e:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/polymeric/t;->a(Z)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/polymeric/t;->h()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/polymeric/t;->e:Ljava/util/Map;

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/polymeric/t;->a(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/netease/nr/base/fragment/h;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/polymeric/t;->u()V

    invoke-virtual {p0}, Lcom/netease/nr/biz/polymeric/t;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "JUHEYUEDU"

    const-string v2, "1"

    invoke-static {v0, v1, v2, p0}, Lcom/netease/nr/biz/ad/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/netease/nr/biz/ad/r;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/polymeric/t;->B()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/netease/nr/biz/polymeric/t;->e:Ljava/util/Map;

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    invoke-super {p0}, Lcom/netease/nr/base/fragment/h;->onDestroy()V

    invoke-virtual {p0}, Lcom/netease/nr/biz/polymeric/t;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "JUHEYUEDU"

    const-string v2, "1"

    invoke-static {v0, v1, v2, p0}, Lcom/netease/nr/biz/ad/o;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/netease/nr/biz/ad/r;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Lcom/netease/nr/base/fragment/h;->onDestroyView()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/nr/biz/polymeric/t;->a:Lcom/netease/nr/biz/polymeric/PolymericPager;

    return-void
.end method
