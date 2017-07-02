.class public Lcom/netease/nr/biz/news/a/c/c/f;
.super Lcom/netease/nr/base/fragment/q;


# instance fields
.field private b:Landroid/util/Pair;

.field private c:Lcom/netease/nr/biz/news/a/c/c/b;

.field private d:Lcom/netease/nr/biz/news/a/c/c/i;

.field private e:Lcom/netease/nr/base/a/c;

.field private f:Landroid/view/View;

.field private g:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/netease/nr/base/fragment/q;-><init>()V

    new-instance v0, Lcom/netease/nr/biz/news/a/c/c/g;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/netease/nr/biz/news/a/c/c/g;-><init>(Lcom/netease/nr/biz/news/a/c/c/f;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/netease/nr/biz/news/a/c/c/f;->g:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/biz/news/a/c/c/f;)Lcom/netease/nr/biz/news/a/c/c/b;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/c/f;->c:Lcom/netease/nr/biz/news/a/c/c/b;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Lcom/netease/util/j/a;Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/fragment/q;->a(Lcom/netease/util/j/a;Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/c/c/f;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {p1, v0, v1}, Lcom/netease/util/j/a;->a(Landroid/widget/ListView;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/c/f;->c:Lcom/netease/nr/biz/news/a/c/c/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/c/f;->c:Lcom/netease/nr/biz/news/a/c/c/b;

    invoke-virtual {v0}, Lcom/netease/nr/biz/news/a/c/c/b;->notifyDataSetChanged()V

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/c/f;->d:Lcom/netease/nr/biz/news/a/c/c/i;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/c/f;->d:Lcom/netease/nr/biz/news/a/c/c/i;

    invoke-virtual {v0}, Lcom/netease/nr/biz/news/a/c/c/i;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public b(Landroid/os/Bundle;)Lcom/netease/util/fragment/z;
    .locals 2

    new-instance v0, Lcom/netease/nr/biz/news/a/c/c/h;

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/c/c/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netease/nr/biz/news/a/c/c/h;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public b(Landroid/support/v4/content/Loader;Ljava/util/Map;)V
    .locals 3

    invoke-static {p2}, Lcom/netease/util/e/c;->c(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/c/c/f;->b:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/c/c/f;->b:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/c/c/f;->b:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/c/c/f;->b:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/c/f;->d:Lcom/netease/nr/biz/news/a/c/c/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/c/f;->d:Lcom/netease/nr/biz/news/a/c/c/i;

    invoke-virtual {v0}, Lcom/netease/nr/biz/news/a/c/c/i;->notifyDataSetChanged()V

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/c/f;->c:Lcom/netease/nr/biz/news/a/c/c/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/c/f;->c:Lcom/netease/nr/biz/news/a/c/c/b;

    invoke-virtual {v0}, Lcom/netease/nr/biz/news/a/c/c/b;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1}, Lcom/netease/nr/base/fragment/q;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/c/c/f;->z()V

    invoke-virtual {p0, v3}, Lcom/netease/nr/biz/news/a/c/c/f;->a(Z)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/c/c/f;->G()V

    const-string v0, "media_recommed"

    iput-object v0, p0, Lcom/netease/nr/biz/news/a/c/c/f;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/c/c/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nr/biz/news/column/g;->k(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/news/a/c/c/f;->b:Landroid/util/Pair;

    new-instance v1, Lcom/netease/nr/biz/news/a/c/c/i;

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/c/c/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/c/f;->b:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-direct {v1, v2, v0}, Lcom/netease/nr/biz/news/a/c/c/i;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/netease/nr/biz/news/a/c/c/f;->d:Lcom/netease/nr/biz/news/a/c/c/i;

    new-instance v1, Lcom/netease/nr/biz/news/a/c/c/b;

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/c/c/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/c/f;->b:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-direct {v1, v2, v0}, Lcom/netease/nr/biz/news/a/c/c/b;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/netease/nr/biz/news/a/c/c/f;->c:Lcom/netease/nr/biz/news/a/c/c/b;

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/c/c/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "top_columns"

    invoke-static {v1}, Lcom/netease/nr/base/db/BaseContentProvider;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nr/biz/news/a/c/c/f;->g:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/netease/nr/base/fragment/q;->onDestroy()V

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/c/c/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/c/c/f;->g:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 5

    const v4, 0x7f0c006e

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/netease/nr/base/fragment/q;->onDestroyView()V

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/c/f;->f:Landroid/view/View;

    if-nez v0, :cond_4

    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Lcom/netease/nr/base/view/ViewPagerForSlider;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    :cond_0
    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/c/c/f;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/ViewPagerForSlider;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/ViewPagerForSlider;->b(Lcom/netease/nr/base/view/bb;)V

    :cond_1
    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/c/c/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/util/i/b;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/c/c/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v3, 0x7f0c02c1

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/MySlidingDrawer;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/MySlidingDrawer;->b(Lcom/netease/nr/base/view/ax;)V

    :cond_2
    iput-object v2, p0, Lcom/netease/nr/biz/news/a/c/c/f;->f:Landroid/view/View;

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/c/f;->e:Lcom/netease/nr/base/a/c;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/c/f;->e:Lcom/netease/nr/base/a/c;

    invoke-virtual {v0, v2}, Lcom/netease/nr/base/a/c;->a(Landroid/view/View;)V

    iput-object v2, p0, Lcom/netease/nr/biz/news/a/c/c/f;->e:Lcom/netease/nr/base/a/c;

    :cond_3
    invoke-virtual {p0, v2}, Lcom/netease/nr/biz/news/a/c/c/f;->setListAdapter(Landroid/widget/ListAdapter;)V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/c/f;->f:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/ViewPagerForSlider;

    move-object v1, v0

    goto :goto_0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 11

    add-int/lit8 v0, p3, -0x1

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/c/c/f;->c:Lcom/netease/nr/biz/news/a/c/c/b;

    if-eqz v1, :cond_0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/c/c/f;->c:Lcom/netease/nr/biz/news/a/c/c/b;

    invoke-virtual {v1}, Lcom/netease/nr/biz/news/a/c/c/b;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/netease/nr/biz/news/a/c/c/f;->c:Lcom/netease/nr/biz/news/a/c/c/b;

    invoke-virtual {v1, v0}, Lcom/netease/nr/biz/news/a/c/c/b;->a(I)Ljava/util/Map;

    move-result-object v9

    const-string v0, "docid"

    invoke-static {v9, v0}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/c/c/f;->x()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/c/c/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v3, "tid"

    invoke-static {v9, v3}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "tname"

    invoke-static {v9, v4}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "-1"

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v10, "color"

    invoke-static {v9, v10}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static/range {v0 .. v10}, Lcom/netease/nr/biz/news/detailpage/NewsPageActivity;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/news/a/c/c/f;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/netease/nr/base/fragment/q;->onResume()V

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/c/f;->c:Lcom/netease/nr/biz/news/a/c/c/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/c/f;->c:Lcom/netease/nr/biz/news/a/c/c/b;

    invoke-virtual {v0}, Lcom/netease/nr/biz/news/a/c/c/b;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x0

    const v4, 0x7f0c006e

    const/4 v3, 0x1

    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/fragment/q;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/c/c/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300c8

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/news/a/c/c/f;->f:Landroid/view/View;

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/c/f;->f:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/ViewPagerForSlider;

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/c/c/f;->f:Landroid/view/View;

    const v2, 0x7f0c0070

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/netease/nr/base/view/Indicator;

    const v2, 0x3e9f8ee5

    invoke-virtual {v0, v2}, Lcom/netease/nr/base/view/ViewPagerForSlider;->a(F)V

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/ViewPagerForSlider;->a(Lcom/netease/nr/base/view/Indicator;)V

    invoke-virtual {v0, v3}, Lcom/netease/nr/base/view/ViewPagerForSlider;->a(Z)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/c/c/f;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/netease/nr/base/view/ViewPagerForSlider;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/netease/nr/base/view/ViewPagerForSlider;->a(Lcom/netease/nr/base/view/bb;)V

    :cond_0
    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/c/c/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/util/i/b;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/c/c/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0c02c1

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/netease/nr/base/view/MySlidingDrawer;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lcom/netease/nr/base/view/MySlidingDrawer;->a(Lcom/netease/nr/base/view/ax;)V

    :cond_1
    iget-object v1, p0, Lcom/netease/nr/biz/news/a/c/c/f;->d:Lcom/netease/nr/biz/news/a/c/c/i;

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/ViewPagerForSlider;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    new-instance v0, Lcom/netease/nr/base/a/c;

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/c/c/f;->c:Lcom/netease/nr/biz/news/a/c/c/b;

    iget-object v2, p0, Lcom/netease/nr/biz/news/a/c/c/f;->f:Landroid/view/View;

    invoke-direct {v0, v1, v2, v5}, Lcom/netease/nr/base/a/c;-><init>(Landroid/widget/ListAdapter;Landroid/view/View;Landroid/view/View;)V

    iput-object v0, p0, Lcom/netease/nr/biz/news/a/c/c/f;->e:Lcom/netease/nr/base/a/c;

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/c/f;->e:Lcom/netease/nr/base/a/c;

    invoke-virtual {v0, v3}, Lcom/netease/nr/base/a/c;->a(Z)V

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/c/f;->e:Lcom/netease/nr/base/a/c;

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/news/a/c/c/f;->setListAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method
