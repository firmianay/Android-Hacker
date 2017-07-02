.class public Lcom/netease/nr/biz/g/p;
.super Lcom/netease/nr/base/fragment/q;


# instance fields
.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:Ljava/lang/String;

.field protected e:Lcom/netease/nr/biz/g/g;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Ljava/util/List;

.field private i:Ljava/util/List;

.field private m:Landroid/view/View;

.field private n:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/netease/nr/base/fragment/q;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/nr/biz/g/p;->g:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/biz/g/p;->h:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/biz/g/p;->i:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/biz/g/p;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/g/p;->i:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/netease/nr/biz/g/p;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/nr/biz/g/p;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 7

    const/4 v4, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/biz/g/p;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/util/e/b;

    if-eqz v0, :cond_5

    iget-object v1, v0, Lcom/netease/util/e/b;->a:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    const-string v3, "headerinfo"

    invoke-static {v1, v3}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, v0, Lcom/netease/util/e/b;->a:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    iget-object v0, v0, Lcom/netease/util/e/b;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_1
    iget-object v3, p0, Lcom/netease/nr/biz/g/p;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    iget-object v3, p0, Lcom/netease/nr/biz/g/p;->h:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v3, p0, Lcom/netease/nr/biz/g/p;->e:Lcom/netease/nr/biz/g/g;

    if-nez v3, :cond_2

    new-instance v3, Lcom/netease/nr/biz/g/g;

    iget-object v4, p0, Lcom/netease/nr/biz/g/p;->h:Ljava/util/List;

    invoke-virtual {p0}, Lcom/netease/nr/biz/g/p;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    iget-object v6, p0, Lcom/netease/nr/biz/g/p;->d:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v6}, Lcom/netease/nr/biz/g/g;-><init>(Ljava/util/List;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/netease/nr/biz/g/p;->e:Lcom/netease/nr/biz/g/g;

    :cond_2
    if-nez v1, :cond_3

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    new-instance v3, Lcom/netease/nr/base/a/c;

    iget-object v4, p0, Lcom/netease/nr/biz/g/p;->e:Lcom/netease/nr/biz/g/g;

    iget-object v5, p0, Lcom/netease/nr/biz/g/p;->m:Landroid/view/View;

    invoke-direct {v3, v4, v5, v2}, Lcom/netease/nr/base/a/c;-><init>(Landroid/widget/ListAdapter;Landroid/view/View;Landroid/view/View;)V

    new-instance v2, Lcom/netease/nr/biz/g/a;

    invoke-virtual {p0}, Lcom/netease/nr/biz/g/p;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v2, v4, v1, v0}, Lcom/netease/nr/biz/g/a;-><init>(Landroid/content/Context;Ljava/util/Map;Ljava/util/List;)V

    invoke-virtual {v3, v2}, Lcom/netease/nr/base/a/c;->a(Lcom/netease/nr/base/a/d;)V

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/netease/nr/base/a/c;->a(Z)V

    invoke-virtual {p0, v3}, Lcom/netease/nr/biz/g/p;->setListAdapter(Landroid/widget/ListAdapter;)V

    :goto_2
    iget-object v0, p0, Lcom/netease/nr/biz/g/p;->m:Landroid/view/View;

    invoke-direct {p0, v1, v0}, Lcom/netease/nr/biz/g/p;->a(Ljava/util/Map;Landroid/view/View;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/netease/nr/biz/g/p;->e:Lcom/netease/nr/biz/g/g;

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/g/p;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_2

    :cond_5
    move-object v0, v2

    move-object v1, v2

    goto :goto_1
.end method

.method private a(Ljava/util/Map;Landroid/view/View;)V
    .locals 6

    if-eqz p1, :cond_2

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    :try_start_0
    const-string v0, "sdocid"

    invoke-static {p1, v0}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "type"

    invoke-static {p1, v1}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "photoset"

    invoke-static {p1, v2}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "replyCount"

    invoke-static {p1, v3}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const v4, 0x7f0c0106

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/netease/nr/base/view/FitImageView;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "img"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v2}, Lcom/netease/nr/biz/pics/p;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "channel"

    invoke-static {v0, v1}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "setid"

    invoke-static {v0, v2}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "channelid"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "setid"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Lcom/netease/nr/biz/g/r;

    invoke-direct {v2, p0, v1, v0}, Lcom/netease/nr/biz/g/r;-><init>(Lcom/netease/nr/biz/g/p;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Lcom/netease/nr/base/view/FitImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lcom/netease/nr/biz/g/s;

    invoke-direct {v1, p0, v0, v3}, Lcom/netease/nr/biz/g/s;-><init>(Lcom/netease/nr/biz/g/p;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Lcom/netease/nr/base/view/FitImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/netease/nr/biz/g/p;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/netease/nr/biz/g/p;->n:Z

    return p1
.end method

.method private b(II)Lcom/netease/util/fragment/z;
    .locals 3

    new-instance v0, Lcom/netease/nr/biz/g/t;

    invoke-virtual {p0}, Lcom/netease/nr/biz/g/p;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nr/biz/g/p;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/nr/biz/g/t;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic b(Lcom/netease/nr/biz/g/p;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/netease/nr/biz/g/p;->g()Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 3

    const v0, 0x7f0300c0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/view/ViewGroup;)Lcom/netease/nr/base/view/TabletContainer;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/g/p;->b(Landroid/view/ViewGroup;)Lcom/netease/nr/base/view/TabletContainer;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/netease/util/j/a;Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/fragment/q;->a(Lcom/netease/util/j/a;Landroid/view/View;)V

    iget-object v0, p0, Lcom/netease/nr/biz/g/p;->e:Lcom/netease/nr/biz/g/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/g/p;->e:Lcom/netease/nr/biz/g/g;

    invoke-virtual {v0}, Lcom/netease/nr/biz/g/g;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method protected a(Lcom/netease/util/j/a;Landroid/widget/ListView;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/fragment/q;->a(Lcom/netease/util/j/a;Landroid/widget/ListView;)V

    iget-object v0, p0, Lcom/netease/nr/biz/g/p;->e:Lcom/netease/nr/biz/g/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/g/p;->e:Lcom/netease/nr/biz/g/g;

    invoke-virtual {v0}, Lcom/netease/nr/biz/g/g;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method protected a(Lcom/netease/util/j/a;Lcom/netease/nr/base/view/a;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/fragment/q;->a(Lcom/netease/util/j/a;Lcom/netease/nr/base/view/a;)V

    invoke-virtual {p2}, Lcom/netease/nr/base/view/a;->d()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/netease/nr/biz/g/p;->g:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/biz/g/p;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f02033e

    invoke-virtual {p1, v1, v2}, Lcom/netease/util/j/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/netease/nr/base/fragment/q;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/g/p;->a(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/nr/biz/g/p;->m:Landroid/view/View;

    return-object v0
.end method

.method public b(Landroid/os/Bundle;)Lcom/netease/util/fragment/z;
    .locals 2

    iget v0, p0, Lcom/netease/nr/biz/g/p;->k:I

    iget v1, p0, Lcom/netease/nr/biz/g/p;->l:I

    invoke-direct {p0, v0, v1}, Lcom/netease/nr/biz/g/p;->b(II)Lcom/netease/util/fragment/z;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/support/v4/content/Loader;Ljava/util/Map;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/fragment/q;->b(Landroid/support/v4/content/Loader;Ljava/util/Map;)V

    invoke-static {p2}, Lcom/netease/util/e/c;->c(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/netease/nr/biz/g/p;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/netease/nr/biz/g/p;->i:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/netease/nr/biz/g/p;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nr/biz/g/p;->b:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/netease/nr/biz/g/c;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/netease/nr/biz/g/p;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/netease/nr/biz/g/p;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/netease/nr/biz/g/p;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "from_push"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/netease/nr/biz/g/p;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nr/biz/main/MainActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "from_push"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/g/p;->startActivity(Landroid/content/Intent;)V

    :cond_1
    invoke-virtual {p0}, Lcom/netease/nr/biz/g/p;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    :cond_2
    return-void
.end method

.method public g_()Ljava/lang/Object;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/netease/nr/biz/g/p;->i:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netease/nr/biz/g/p;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SpecilaNewsListFragment"

    iget-object v2, p0, Lcom/netease/nr/biz/g/p;->i:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "LocalLoaded"

    iget-boolean v2, p0, Lcom/netease/nr/biz/g/p;->n:Z

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
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcom/netease/nr/base/fragment/q;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/g/p;->a()Lcom/netease/nr/base/view/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/netease/nr/biz/g/p;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/netease/nr/biz/g/p;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/a;->a(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0, v2}, Lcom/netease/nr/base/view/a;->d(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/netease/nr/biz/g/p;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/netease/nr/biz/g/p;->i:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/g/p;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/g/p;->i:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/netease/nr/biz/g/p;->a(Ljava/util/List;)V

    invoke-virtual {p0, v2}, Lcom/netease/nr/biz/g/p;->setListShown(Z)V

    :cond_1
    return-void

    :cond_2
    const v1, 0x7f0b00de

    invoke-virtual {p0, v1}, Lcom/netease/nr/biz/g/p;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/netease/nr/base/fragment/q;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/g/p;->z()V

    invoke-virtual {p0}, Lcom/netease/nr/biz/g/p;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "specialId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/nr/biz/g/p;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/netease/nr/biz/g/p;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "SPECIAL"

    iget-object v3, p0, Lcom/netease/nr/biz/g/p;->b:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/netease/nr/base/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "columnName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/nr/biz/g/p;->c:Ljava/lang/String;

    const-string v1, "columnId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/nr/biz/g/p;->d:Ljava/lang/String;

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/nr/biz/g/p;->f:Ljava/lang/String;

    const-string v1, "isShowicon"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/netease/nr/biz/g/p;->g:Z

    const-string v1, "from_push"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/biz/g/p;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "pref_pc_msg_count"

    invoke-static {v0, v1}, Lcom/netease/util/g/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/g/p;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/netease/nr/biz/g/p;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/g/p;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/nr/biz/g/p;->a:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/netease/nr/biz/g/p;->a(Z)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/g/p;->G()V

    invoke-virtual {p0}, Lcom/netease/nr/biz/g/p;->M()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_3

    const-string v1, "SpecilaNewsListFragment"

    invoke-static {v0, v1}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/netease/nr/biz/g/p;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, p0, Lcom/netease/nr/biz/g/p;->i:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    const-string v1, "LocalLoaded"

    invoke-static {v0, v1, v4}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/nr/biz/g/p;->n:Z

    :cond_3
    invoke-virtual {p0}, Lcom/netease/nr/biz/g/p;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/netease/util/fragment/FragmentActivity;

    invoke-virtual {v0}, Lcom/netease/util/fragment/FragmentActivity;->p()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Lcom/netease/nr/base/fragment/q;->onDestroyView()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/nr/biz/g/p;->m:Landroid/view/View;

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/netease/nr/base/fragment/q;->onResume()V

    iget-boolean v0, p0, Lcom/netease/nr/biz/g/p;->n:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/g/p;->setListShownNoAnimation(Z)V

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/g/p;->e:Lcom/netease/nr/biz/g/g;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/g/p;->e:Lcom/netease/nr/biz/g/g;

    invoke-virtual {v0}, Lcom/netease/nr/biz/g/g;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 4

    invoke-super {p0}, Lcom/netease/nr/base/fragment/q;->onStart()V

    iget-boolean v0, p0, Lcom/netease/nr/biz/g/p;->n:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/biz/g/p;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Lcom/netease/nr/biz/g/q;

    invoke-direct {v3, p0}, Lcom/netease/nr/biz/g/q;-><init>(Lcom/netease/nr/biz/g/p;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/content/Loader;->forceLoad()V

    :cond_0
    invoke-virtual {p0}, Lcom/netease/nr/biz/g/p;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/netease/nr/biz/g/p;->E()V

    :cond_1
    return-void
.end method

.method protected p_()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netease/nr/biz/g/p;->n:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/netease/nr/base/fragment/q;->p_()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
