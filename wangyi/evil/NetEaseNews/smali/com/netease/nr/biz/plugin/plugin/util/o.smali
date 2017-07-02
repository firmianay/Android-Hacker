.class public Lcom/netease/nr/biz/plugin/plugin/util/o;
.super Lcom/netease/nr/base/fragment/k;


# instance fields
.field private b:Lcom/netease/nr/biz/plugin/plugin/util/p;

.field private c:Ljava/util/List;

.field private d:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/netease/nr/base/fragment/k;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/o;->c:Ljava/util/List;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/o;->d:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/biz/plugin/plugin/util/o;)Landroid/util/SparseBooleanArray;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/o;->d:Landroid/util/SparseBooleanArray;

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/netease/util/j/a;Landroid/widget/ListView;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/fragment/k;->a(Lcom/netease/util/j/a;Landroid/widget/ListView;)V

    const v0, 0x106000d

    invoke-virtual {p1, p2, v0}, Lcom/netease/util/j/a;->a(Landroid/widget/ListView;I)V

    const v0, 0x7f07005b

    invoke-virtual {p1, p2, v0}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/netease/nr/base/fragment/k;->onCreate(Landroid/os/Bundle;)V

    sget-object v0, Lcom/netease/nr/base/c/a;->a:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/netease/nr/base/c/a;->b:Ljava/util/Map;

    sget-object v2, Lcom/netease/nr/base/c/a;->a:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/netease/nr/biz/plugin/plugin/util/o;->a(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/plugin/util/o;->z()V

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/plugin/util/o;->G()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/plugin/plugin/util/o;->a(Z)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/plugin/util/o;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/netease/util/fragment/FragmentActivity;

    invoke-static {v0}, Lcom/netease/nr/biz/plugin/plugin/util/n;->a(Lcom/netease/util/fragment/FragmentActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/netease/nr/biz/plugin/plugin/util/o;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/plugin/plugin/util/a;

    iget-object v2, p0, Lcom/netease/nr/biz/plugin/plugin/util/o;->d:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Lcom/netease/nr/biz/plugin/plugin/util/a;->p()I

    move-result v3

    invoke-virtual {v0}, Lcom/netease/nr/biz/plugin/plugin/util/a;->q()Z

    move-result v0

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/netease/nr/biz/plugin/plugin/util/p;

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/plugin/util/o;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/plugin/util/o;->N()Lcom/netease/util/j/a;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/nr/biz/plugin/plugin/util/o;->c:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/netease/nr/biz/plugin/plugin/util/p;-><init>(Lcom/netease/nr/biz/plugin/plugin/util/o;Landroid/content/Context;Lcom/netease/util/j/a;Ljava/util/List;)V

    iput-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/o;->b:Lcom/netease/nr/biz/plugin/plugin/util/p;

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/o;->b:Lcom/netease/nr/biz/plugin/plugin/util/p;

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/plugin/plugin/util/o;->setListAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/o;->b:Lcom/netease/nr/biz/plugin/plugin/util/p;

    invoke-virtual {v0, p3}, Lcom/netease/nr/biz/plugin/plugin/util/p;->a(I)Lcom/netease/nr/biz/plugin/plugin/util/a;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v3}, Lcom/netease/nr/biz/plugin/plugin/util/a;->p()I

    move-result v4

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/o;->d:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/o;->d:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    iget-object v5, p0, Lcom/netease/nr/biz/plugin/plugin/util/o;->d:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v4, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    instance-of v3, v3, Lcom/netease/nr/biz/plugin/plugin/util/b;

    if-eqz v3, :cond_4

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/plugin/util/o;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/netease/nr/biz/plugin/plugin/util/c;->a(Landroid/content/Context;I)Z

    :goto_2
    iget-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/o;->b:Lcom/netease/nr/biz/plugin/plugin/util/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/o;->b:Lcom/netease/nr/biz/plugin/plugin/util/p;

    invoke-virtual {v0}, Lcom/netease/nr/biz/plugin/plugin/util/p;->notifyDataSetChanged()V

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/plugin/util/o;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/netease/nr/biz/plugin/plugin/util/c;->b(Landroid/content/Context;I)Z

    goto :goto_2

    :cond_4
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "removed"

    if-eqz v0, :cond_5

    const-string v0, "1"

    :goto_3
    invoke-virtual {v3, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/netease/util/db/c;

    invoke-direct {v0}, Lcom/netease/util/db/c;-><init>()V

    const-string v5, "id"

    invoke-virtual {v0, v5}, Lcom/netease/util/db/c;->a(Ljava/lang/String;)Lcom/netease/util/db/c;

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/plugin/util/o;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "plugin_list"

    invoke-static {v6}, Lcom/netease/nr/base/db/BaseContentProvider;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v0}, Lcom/netease/util/db/c;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-virtual {v5, v6, v3, v0, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    const-string v0, "0"

    goto :goto_3
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/fragment/k;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/plugin/util/o;->a()Lcom/netease/nr/base/view/a;

    move-result-object v0

    const v1, 0x7f0b00b5

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/a;->c(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/a;->d(Z)V

    const v0, 0x1020004

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
