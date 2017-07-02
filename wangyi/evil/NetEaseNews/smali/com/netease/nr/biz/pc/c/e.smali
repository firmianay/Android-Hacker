.class public Lcom/netease/nr/biz/pc/c/e;
.super Lcom/netease/nr/base/fragment/q;


# instance fields
.field public b:Ljava/util/List;

.field private c:Lcom/netease/nr/biz/pc/c/a;

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/netease/nr/base/fragment/q;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/biz/pc/c/e;->b:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/nr/biz/pc/c/e;->e:Z

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/biz/pc/c/e;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/nr/biz/pc/c/e;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/pc/c/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/netease/nr/biz/pc/c/e;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/netease/nr/biz/pc/c/e;->c:Lcom/netease/nr/biz/pc/c/a;

    if-nez v0, :cond_1

    new-instance v0, Lcom/netease/nr/biz/pc/c/a;

    iget-object v1, p0, Lcom/netease/nr/biz/pc/c/e;->b:Ljava/util/List;

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/c/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netease/nr/biz/pc/c/a;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/nr/biz/pc/c/e;->c:Lcom/netease/nr/biz/pc/c/a;

    iget-object v0, p0, Lcom/netease/nr/biz/pc/c/e;->c:Lcom/netease/nr/biz/pc/c/a;

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/pc/c/e;->setListAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/pc/c/e;->c:Lcom/netease/nr/biz/pc/c/a;

    invoke-virtual {v0}, Lcom/netease/nr/biz/pc/c/a;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/netease/nr/biz/pc/c/e;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/c/e;->g()Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/netease/nr/biz/pc/c/e;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/netease/nr/biz/pc/c/e;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/netease/nr/biz/pc/c/e;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/pc/c/e;->b(Z)V

    return-void
.end method

.method private m()V
    .locals 2

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/c/e;->a()Lcom/netease/nr/base/view/a;

    move-result-object v0

    const v1, 0x7f0b0123

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/a;->c(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/a;->d(Z)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    invoke-static {p1, p2}, Lcom/netease/nr/base/view/a;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/netease/util/j/a;Landroid/widget/ListView;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/fragment/q;->a(Lcom/netease/util/j/a;Landroid/widget/ListView;)V

    iget-object v0, p0, Lcom/netease/nr/biz/pc/c/e;->c:Lcom/netease/nr/biz/pc/c/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/pc/c/e;->c:Lcom/netease/nr/biz/pc/c/a;

    invoke-virtual {v0}, Lcom/netease/nr/biz/pc/c/a;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/c/e;->x()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/c/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v3, "T1371543208049"

    const-string v4, "messageCenter"

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/netease/nr/biz/news/detailpage/NewsPageActivity;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/pc/c/e;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected b(II)Lcom/netease/util/fragment/z;
    .locals 3

    new-instance v0, Lcom/netease/nr/biz/pc/c/h;

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/c/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "T1371543208049"

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/netease/nr/biz/pc/c/h;-><init>(Landroid/content/Context;Ljava/lang/String;II)V

    return-object v0
.end method

.method public b(Landroid/os/Bundle;)Lcom/netease/util/fragment/z;
    .locals 2

    iget v0, p0, Lcom/netease/nr/biz/pc/c/e;->k:I

    iget v1, p0, Lcom/netease/nr/biz/pc/c/e;->l:I

    invoke-virtual {p0, v0, v1}, Lcom/netease/nr/biz/pc/c/e;->b(II)Lcom/netease/util/fragment/z;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/support/v4/content/Loader;Ljava/util/Map;)V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/fragment/q;->b(Landroid/support/v4/content/Loader;Ljava/util/Map;)V

    invoke-static {p2}, Lcom/netease/util/e/c;->c(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/c/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "T1371543208049"

    invoke-static {v1, v2, v0, v3}, Lcom/netease/nr/biz/news/a/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Z)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/c/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/netease/nr/biz/pc/c/i;->a(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/netease/nr/biz/pc/c/e;->a(Ljava/util/List;)V

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/netease/nr/biz/pc/c/e;->l:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_1

    invoke-virtual {p0, v3}, Lcom/netease/nr/biz/pc/c/e;->b(Z)V

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/pc/c/e;->b(Z)V

    goto :goto_0
.end method

.method public c(Landroid/os/Bundle;)Lcom/netease/util/fragment/z;
    .locals 2

    iget v0, p0, Lcom/netease/nr/biz/pc/c/e;->l:I

    iget v1, p0, Lcom/netease/nr/biz/pc/c/e;->k:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1, v0}, Lcom/netease/nr/biz/pc/c/e;->b(II)Lcom/netease/util/fragment/z;

    move-result-object v0

    return-object v0
.end method

.method protected c(Ljava/lang/String;)V
    .locals 7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v0, "specialId"

    invoke-virtual {v4, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/c/e;->x()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/c/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/netease/nr/biz/g/p;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SpecilaNewsListFragment"

    const/4 v5, 0x0

    const-class v6, Lcom/netease/nr/base/activity/BaseActivity;

    invoke-static/range {v0 .. v6}, Lcom/netease/util/fragment/ab;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/pc/c/e;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public d(Landroid/support/v4/content/Loader;Ljava/util/Map;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/fragment/q;->d(Landroid/support/v4/content/Loader;Ljava/util/Map;)V

    invoke-static {p2}, Lcom/netease/util/e/c;->c(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/c/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "T1371543208049"

    invoke-static {v1, v2, v0, v3}, Lcom/netease/nr/biz/news/a/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Z)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/c/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nr/biz/pc/c/e;->b:Ljava/util/List;

    invoke-static {v1, v2, v0}, Lcom/netease/nr/biz/pc/c/i;->a(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/netease/nr/biz/pc/c/e;->a(Ljava/util/List;)V

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/netease/nr/biz/pc/c/e;->l:I

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/pc/c/e;->b(Z)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v3}, Lcom/netease/nr/biz/pc/c/e;->b(Z)V

    goto :goto_0
.end method

.method public g_()Ljava/lang/Object;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/netease/nr/biz/pc/c/e;->b:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netease/nr/biz/pc/c/e;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MsgCenterListViewFragment"

    iget-object v2, p0, Lcom/netease/nr/biz/pc/c/e;->b:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "LocalLoaded"

    iget-boolean v2, p0, Lcom/netease/nr/biz/pc/c/e;->d:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "firstload"

    iget-boolean v2, p0, Lcom/netease/nr/biz/pc/c/e;->e:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/netease/nr/base/fragment/q;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/netease/nr/biz/pc/c/e;->m()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

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

    invoke-virtual {p0, v0, v1}, Lcom/netease/nr/biz/pc/c/e;->a(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/c/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "pref_pc_msg_count"

    invoke-static {v0, v1}, Lcom/netease/util/g/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/c/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const v1, 0x7f020332

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    const-string v0, "messageCenter"

    iput-object v0, p0, Lcom/netease/nr/biz/pc/c/e;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/c/e;->M()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    const-string v1, "firstload"

    invoke-static {v0, v1, v4}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/netease/nr/biz/pc/c/e;->e:Z

    const-string v1, "LocalLoaded"

    invoke-static {v0, v1, v4}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/nr/biz/pc/c/e;->d:Z

    :cond_0
    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/c/e;->z()V

    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 5

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/c/e;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    iget-object v0, p0, Lcom/netease/nr/biz/pc/c/e;->c:Lcom/netease/nr/biz/pc/c/a;

    invoke-virtual {v0, p3}, Lcom/netease/nr/biz/pc/c/a;->getItem(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/netease/nr/biz/pc/c/e;->c:Lcom/netease/nr/biz/pc/c/a;

    invoke-virtual {v0, p3}, Lcom/netease/nr/biz/pc/c/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    const-string v1, "specialID"

    invoke-static {v0, v1}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "replyCount"

    invoke-static {v0, v2}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "lmodify"

    invoke-static {v0, v3}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "docid"

    invoke-static {v0, v4}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0, v1}, Lcom/netease/nr/biz/pc/c/e;->c(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0, v3, v2}, Lcom/netease/nr/biz/pc/c/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/netease/nr/base/fragment/q;->onResume()V

    iget-object v0, p0, Lcom/netease/nr/biz/pc/c/e;->c:Lcom/netease/nr/biz/pc/c/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/pc/c/e;->c:Lcom/netease/nr/biz/pc/c/a;

    invoke-virtual {v0}, Lcom/netease/nr/biz/pc/c/a;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 4

    invoke-super {p0}, Lcom/netease/nr/base/fragment/q;->onStart()V

    iget-boolean v0, p0, Lcom/netease/nr/biz/pc/c/e;->d:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/c/e;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Lcom/netease/nr/biz/pc/c/f;

    invoke-direct {v3, p0}, Lcom/netease/nr/biz/pc/c/f;-><init>(Lcom/netease/nr/biz/pc/c/e;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/content/Loader;->forceLoad()V

    :cond_0
    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/c/e;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/c/e;->E()V

    :cond_1
    return-void
.end method
