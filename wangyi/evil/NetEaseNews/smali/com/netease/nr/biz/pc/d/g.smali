.class public Lcom/netease/nr/biz/pc/d/g;
.super Lcom/netease/nr/base/fragment/q;


# instance fields
.field private b:Landroid/support/v4/widget/SimpleCursorAdapter;

.field private c:Lcom/netease/nr/biz/pc/d/a;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/netease/nr/base/fragment/q;-><init>()V

    const-string v0, "netease_apps"

    iput-object v0, p0, Lcom/netease/nr/biz/pc/d/g;->d:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/content/Context;)Ljava/util/Map;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "imgsrc"

    const v2, 0x7f020280

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "priority"

    const/16 v2, 0x55

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "schema"

    const-string v2, "com.netease"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "stitle"

    const v2, 0x7f0b01d3

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "title"

    const v2, 0x7f0b01d2

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "url"

    const-string v2, "http://3g.163.com/m/android/"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private b(II)Lcom/netease/util/fragment/z;
    .locals 2

    new-instance v0, Lcom/netease/nr/biz/pc/d/h;

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/d/g;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/netease/nr/biz/pc/d/h;-><init>(Landroid/content/Context;II)V

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/netease/nr/biz/pc/d/a;)Landroid/support/v4/widget/SimpleCursorAdapter;
    .locals 6

    new-instance v0, Lcom/netease/nr/biz/pc/d/f;

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/d/g;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f030077

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/netease/nr/biz/pc/d/a;->a:[Ljava/lang/String;

    iget-object v5, p1, Lcom/netease/nr/biz/pc/d/a;->b:[I

    invoke-direct/range {v0 .. v5}, Lcom/netease/nr/biz/pc/d/f;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    invoke-virtual {v0, p1}, Lcom/netease/nr/biz/pc/d/f;->setViewBinder(Landroid/support/v4/widget/SimpleCursorAdapter$ViewBinder;)V

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)Lcom/netease/util/fragment/ac;
    .locals 1

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/d/g;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nr/biz/pc/d/e;->a(Landroid/content/Context;)Lcom/netease/util/fragment/ac;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/fragment/q;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    iget-object v0, p0, Lcom/netease/nr/biz/pc/d/g;->c:Lcom/netease/nr/biz/pc/d/a;

    invoke-virtual {v0, p2}, Lcom/netease/nr/biz/pc/d/a;->a(Landroid/database/Cursor;)V

    iget-object v0, p0, Lcom/netease/nr/biz/pc/d/g;->b:Landroid/support/v4/widget/SimpleCursorAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/pc/d/g;->b:Landroid/support/v4/widget/SimpleCursorAdapter;

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/SimpleCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    :cond_0
    return-void
.end method

.method protected a(Lcom/netease/util/j/a;Landroid/widget/ListView;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/fragment/q;->a(Lcom/netease/util/j/a;Landroid/widget/ListView;)V

    iget-object v0, p0, Lcom/netease/nr/biz/pc/d/g;->b:Landroid/support/v4/widget/SimpleCursorAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/pc/d/g;->b:Landroid/support/v4/widget/SimpleCursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/SimpleCursorAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/netease/nr/base/fragment/q;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/os/Bundle;)Lcom/netease/util/fragment/z;
    .locals 2

    iget v0, p0, Lcom/netease/nr/biz/pc/d/g;->k:I

    iget v1, p0, Lcom/netease/nr/biz/pc/d/g;->l:I

    invoke-direct {p0, v0, v1}, Lcom/netease/nr/biz/pc/d/g;->b(II)Lcom/netease/util/fragment/z;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/support/v4/content/Loader;Ljava/util/Map;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/fragment/q;->b(Landroid/support/v4/content/Loader;Ljava/util/Map;)V

    invoke-static {p2}, Lcom/netease/util/e/c;->c(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/d/g;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/netease/nr/biz/pc/d/g;->a(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/d/g;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0, v3}, Lcom/netease/nr/biz/pc/d/e;->a(Landroid/content/Context;Ljava/util/List;Z)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/netease/nr/biz/pc/d/g;->l:I

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/netease/nr/biz/pc/d/g;->b(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v3}, Lcom/netease/nr/biz/pc/d/g;->b(Z)V

    goto :goto_0
.end method

.method public c(Landroid/os/Bundle;)Lcom/netease/util/fragment/z;
    .locals 2

    iget v0, p0, Lcom/netease/nr/biz/pc/d/g;->l:I

    iget v1, p0, Lcom/netease/nr/biz/pc/d/g;->k:I

    add-int/2addr v1, v0

    invoke-direct {p0, v1, v0}, Lcom/netease/nr/biz/pc/d/g;->b(II)Lcom/netease/util/fragment/z;

    move-result-object v0

    return-object v0
.end method

.method public d(Landroid/support/v4/content/Loader;Ljava/util/Map;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/fragment/q;->d(Landroid/support/v4/content/Loader;Ljava/util/Map;)V

    invoke-static {p2}, Lcom/netease/util/e/c;->c(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/d/g;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0, v2}, Lcom/netease/nr/biz/pc/d/e;->a(Landroid/content/Context;Ljava/util/List;Z)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/netease/nr/biz/pc/d/g;->l:I

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/netease/nr/biz/pc/d/g;->b(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/pc/d/g;->b(Z)V

    goto :goto_0
.end method

.method protected m()Lcom/netease/nr/biz/pc/d/a;
    .locals 2

    new-instance v0, Lcom/netease/nr/biz/pc/d/a;

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/d/g;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netease/nr/biz/pc/d/a;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcom/netease/nr/base/fragment/q;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/d/g;->a()Lcom/netease/nr/base/view/a;

    move-result-object v0

    const v1, 0x7f0b01ef

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/a;->c(I)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/d/g;->a()Lcom/netease/nr/base/view/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/netease/nr/base/view/a;->d(Z)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/d/g;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setScrollbarFadingEnabled(Z)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/d/g;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelector(I)V

    iget-object v0, p0, Lcom/netease/nr/biz/pc/d/g;->b:Landroid/support/v4/widget/SimpleCursorAdapter;

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/pc/d/g;->setListAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/netease/nr/base/fragment/q;->onCreate(Landroid/os/Bundle;)V

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

    invoke-virtual {p0, v0, v1}, Lcom/netease/nr/biz/pc/d/g;->a(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "netease_apps"

    iput-object v0, p0, Lcom/netease/nr/biz/pc/d/g;->a:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/pc/d/g;->a(Z)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/d/g;->m()Lcom/netease/nr/biz/pc/d/a;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/pc/d/g;->c:Lcom/netease/nr/biz/pc/d/a;

    iget-object v0, p0, Lcom/netease/nr/biz/pc/d/g;->c:Lcom/netease/nr/biz/pc/d/a;

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/pc/d/g;->a(Lcom/netease/nr/biz/pc/d/a;)Landroid/support/v4/widget/SimpleCursorAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/pc/d/g;->b:Landroid/support/v4/widget/SimpleCursorAdapter;

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/d/g;->D()V

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/d/g;->z()V

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/netease/nr/base/fragment/q;->onDestroyView()V

    return-void
.end method
