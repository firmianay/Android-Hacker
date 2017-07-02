.class Lcom/netease/nr/biz/h/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/h/d;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/h/d;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/h/g;->a:Lcom/netease/nr/biz/h/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/content/Loader;Landroid/util/Pair;)V
    .locals 7

    const/4 v6, 0x1

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/h/g;->a:Lcom/netease/nr/biz/h/d;

    invoke-static {v0}, Lcom/netease/nr/biz/h/d;->c(Lcom/netease/nr/biz/h/d;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/netease/nr/biz/h/g;->a:Lcom/netease/nr/biz/h/d;

    invoke-static {v0}, Lcom/netease/nr/biz/h/d;->c(Lcom/netease/nr/biz/h/d;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/netease/nr/biz/h/g;->a:Lcom/netease/nr/biz/h/d;

    invoke-static {v0}, Lcom/netease/nr/biz/h/d;->c(Lcom/netease/nr/biz/h/d;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/netease/nr/biz/h/g;->a:Lcom/netease/nr/biz/h/d;

    invoke-static {v0}, Lcom/netease/nr/biz/h/d;->c(Lcom/netease/nr/biz/h/d;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v1, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/netease/nr/biz/h/g;->a:Lcom/netease/nr/biz/h/d;

    invoke-static {v0}, Lcom/netease/nr/biz/h/d;->d(Lcom/netease/nr/biz/h/d;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/netease/nr/biz/h/g;->a:Lcom/netease/nr/biz/h/d;

    invoke-static {v0}, Lcom/netease/nr/biz/h/d;->d(Lcom/netease/nr/biz/h/d;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/h/g;->a:Lcom/netease/nr/biz/h/d;

    invoke-virtual {v1}, Lcom/netease/nr/biz/h/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nr/biz/h/g;->a:Lcom/netease/nr/biz/h/d;

    invoke-static {v2}, Lcom/netease/nr/biz/h/d;->b(Lcom/netease/nr/biz/h/d;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/nr/biz/news/column/g;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/netease/nr/biz/h/g;->a:Lcom/netease/nr/biz/h/d;

    invoke-static {v0}, Lcom/netease/nr/biz/h/d;->e(Lcom/netease/nr/biz/h/d;)Landroid/widget/TabHost;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v0

    if-ne v0, v6, :cond_2

    iget-object v0, p0, Lcom/netease/nr/biz/h/g;->a:Lcom/netease/nr/biz/h/d;

    invoke-static {v0}, Lcom/netease/nr/biz/h/d;->e(Lcom/netease/nr/biz/h/d;)Landroid/widget/TabHost;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TabHost;->clearAllTabs()V

    iget-object v0, p0, Lcom/netease/nr/biz/h/g;->a:Lcom/netease/nr/biz/h/d;

    invoke-static {v0, p2}, Lcom/netease/nr/biz/h/d;->a(Lcom/netease/nr/biz/h/d;Landroid/util/Pair;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/netease/nr/biz/h/g;->a:Lcom/netease/nr/biz/h/d;

    invoke-virtual {v0}, Lcom/netease/nr/biz/h/d;->a()Lcom/netease/nr/base/view/a;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/a;->d(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const v1, 0x7f0c0135

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netease/nr/biz/h/g;->a:Lcom/netease/nr/biz/h/d;

    const v2, 0x7f0b00fb

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/netease/nr/biz/h/g;->a:Lcom/netease/nr/biz/h/d;

    invoke-static {v5}, Lcom/netease/nr/biz/h/d;->d(Lcom/netease/nr/biz/h/d;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/netease/nr/biz/h/d;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/h/g;->a:Lcom/netease/nr/biz/h/d;

    invoke-virtual {v0, v6}, Lcom/netease/nr/biz/h/d;->a(Z)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/netease/nr/biz/h/g;->a:Lcom/netease/nr/biz/h/d;

    invoke-static {v0}, Lcom/netease/nr/biz/h/d;->f(Lcom/netease/nr/biz/h/d;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netease/nr/biz/h/g;->a:Lcom/netease/nr/biz/h/d;

    invoke-static {v0}, Lcom/netease/nr/biz/h/d;->e(Lcom/netease/nr/biz/h/d;)Landroid/widget/TabHost;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/netease/nr/biz/h/g;->a:Lcom/netease/nr/biz/h/d;

    invoke-static {v0}, Lcom/netease/nr/biz/h/d;->e(Lcom/netease/nr/biz/h/d;)Landroid/widget/TabHost;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    invoke-virtual {v0}, Landroid/widget/ExpandableListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/h/a;

    invoke-virtual {v0}, Lcom/netease/nr/biz/h/a;->notifyDataSetChanged()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/netease/nr/biz/h/g;->a:Lcom/netease/nr/biz/h/d;

    invoke-static {v0}, Lcom/netease/nr/biz/h/d;->g(Lcom/netease/nr/biz/h/d;)Lcom/netease/nr/biz/h/y;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/h/g;->a:Lcom/netease/nr/biz/h/d;

    invoke-static {v0}, Lcom/netease/nr/biz/h/d;->g(Lcom/netease/nr/biz/h/d;)Lcom/netease/nr/biz/h/y;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/h/g;->a:Lcom/netease/nr/biz/h/d;

    invoke-static {v1}, Lcom/netease/nr/biz/h/d;->d(Lcom/netease/nr/biz/h/d;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/h/y;->a(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/netease/nr/biz/h/g;->a:Lcom/netease/nr/biz/h/d;

    invoke-static {v0}, Lcom/netease/nr/biz/h/d;->g(Lcom/netease/nr/biz/h/d;)Lcom/netease/nr/biz/h/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/biz/h/y;->notifyDataSetChanged()V

    goto/16 :goto_0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 3

    new-instance v0, Lcom/netease/nr/biz/h/l;

    iget-object v1, p0, Lcom/netease/nr/biz/h/g;->a:Lcom/netease/nr/biz/h/d;

    invoke-virtual {v1}, Lcom/netease/nr/biz/h/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nr/biz/h/g;->a:Lcom/netease/nr/biz/h/d;

    invoke-static {v2}, Lcom/netease/nr/biz/h/d;->b(Lcom/netease/nr/biz/h/d;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netease/nr/biz/h/l;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/util/Pair;

    invoke-virtual {p0, p1, p2}, Lcom/netease/nr/biz/h/g;->a(Landroid/support/v4/content/Loader;Landroid/util/Pair;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 0

    return-void
.end method
