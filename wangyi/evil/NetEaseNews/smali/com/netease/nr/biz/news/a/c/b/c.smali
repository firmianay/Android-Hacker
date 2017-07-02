.class public Lcom/netease/nr/biz/news/a/c/b/c;
.super Lcom/netease/nr/base/fragment/h;


# instance fields
.field private a:Lcom/netease/nr/biz/news/a/c/b/e;

.field private e:Lcom/netease/nr/biz/news/a/c/b/a;

.field private f:Ljava/util/List;

.field private g:Landroid/widget/ExpandableListView;

.field private h:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/netease/nr/base/fragment/h;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/biz/news/a/c/b/c;)Lcom/netease/nr/biz/news/a/c/b/a;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/c;->e:Lcom/netease/nr/biz/news/a/c/b/a;

    return-object v0
.end method

.method static synthetic a(Lcom/netease/nr/biz/news/a/c/b/c;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/nr/biz/news/a/c/b/c;->a(Ljava/util/Map;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/c;->g:Landroid/widget/ExpandableListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/c;->e:Lcom/netease/nr/biz/news/a/c/b/a;

    invoke-virtual {v0, p1}, Lcom/netease/nr/biz/news/a/c/b/a;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/c;->e:Lcom/netease/nr/biz/news/a/c/b/a;

    invoke-virtual {v0}, Lcom/netease/nr/biz/news/a/c/b/a;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/c;->g:Landroid/widget/ExpandableListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/news/a/c/b/c;->a(Z)V

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/c;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/c;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/c/b/c;->f:Ljava/util/List;

    invoke-static {v1}, Lcom/netease/nr/biz/news/a/c/b/j;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private a(Ljava/util/Map;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/c;->a:Lcom/netease/nr/biz/news/a/c/b/e;

    invoke-static {p1}, Lcom/netease/util/e/c;->a(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/netease/util/e/c;->c(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/c;->f:Ljava/util/List;

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/c;->f:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/netease/nr/biz/news/a/c/b/c;->a(Ljava/util/List;)V

    :cond_0
    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/c/b/c;->l_()V

    return-void
.end method

.method static synthetic b(Lcom/netease/nr/biz/news/a/c/b/c;)Landroid/widget/ExpandableListView;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/c;->g:Landroid/widget/ExpandableListView;

    return-object v0
.end method

.method static synthetic c(Lcom/netease/nr/biz/news/a/c/b/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/nr/biz/news/a/c/b/c;->j()V

    return-void
.end method

.method private j()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/c;->a:Lcom/netease/nr/biz/news/a/c/b/e;

    return-void
.end method


# virtual methods
.method protected a(Lcom/netease/util/j/a;Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/fragment/h;->a(Lcom/netease/util/j/a;Landroid/view/View;)V

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/c;->e:Lcom/netease/nr/biz/news/a/c/b/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/c;->e:Lcom/netease/nr/biz/news/a/c/b/a;

    invoke-virtual {v0}, Lcom/netease/nr/biz/news/a/c/b/a;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/c;->g:Landroid/widget/ExpandableListView;

    const v1, 0x7f02012e

    invoke-virtual {p1, v0, v1}, Lcom/netease/util/j/a;->b(Landroid/widget/ListView;I)V

    :cond_0
    return-void
.end method

.method public a_()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/c;->f:Ljava/util/List;

    return-object v0
.end method

.method public a_(II)V
    .locals 3

    const/16 v0, 0x65

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/c;->a:Lcom/netease/nr/biz/news/a/c/b/e;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/news/a/c/b/c;->a(Z)V

    new-instance v0, Lcom/netease/nr/biz/news/a/c/b/e;

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/c/b/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, p0, v2}, Lcom/netease/nr/biz/news/a/c/b/e;-><init>(Landroid/content/Context;Lcom/netease/nr/biz/news/a/c/b/c;Z)V

    iput-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/c;->a:Lcom/netease/nr/biz/news/a/c/b/e;

    invoke-static {}, Lcom/netease/util/k/a;->b()Lcom/netease/util/k/f;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/c/b/c;->a:Lcom/netease/nr/biz/news/a/c/b/e;

    invoke-interface {v0, v1}, Lcom/netease/util/k/f;->a(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method protected b_()I
    .locals 1

    const v0, 0x7f03005e

    return v0
.end method

.method protected e()Z
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/c;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/c;->f:Ljava/util/List;

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

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/netease/nr/base/fragment/h;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/c/b/c;->a()Lcom/netease/nr/base/view/a;

    move-result-object v0

    const v1, 0x7f0b00d8

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/a;->c(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/a;->d(Z)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/c/b/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030060

    invoke-virtual {v0}, Lcom/netease/nr/base/view/a;->a()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x65

    invoke-virtual {v0, v2, v1}, Lcom/netease/nr/base/view/a;->a(ILandroid/view/View;)V

    const v0, 0x7f0c0112

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/c;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/c/b/c;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c00a8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/c;->g:Landroid/widget/ExpandableListView;

    new-instance v0, Lcom/netease/nr/biz/news/a/c/b/a;

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/c/b/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netease/nr/biz/news/a/c/b/a;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/c;->e:Lcom/netease/nr/biz/news/a/c/b/a;

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/c;->g:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/c/b/c;->e:Lcom/netease/nr/biz/news/a/c/b/a;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/c;->g:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/netease/nr/biz/news/a/c/b/d;

    invoke-direct {v1, p0}, Lcom/netease/nr/biz/news/a/c/b/d;-><init>(Lcom/netease/nr/biz/news/a/c/b/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnGroupExpandListener(Landroid/widget/ExpandableListView$OnGroupExpandListener;)V

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/c;->f:Ljava/util/List;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/c;->a:Lcom/netease/nr/biz/news/a/c/b/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/nr/biz/news/a/c/b/e;

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/c/b/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p0, v4}, Lcom/netease/nr/biz/news/a/c/b/e;-><init>(Landroid/content/Context;Lcom/netease/nr/biz/news/a/c/b/c;Z)V

    iput-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/c;->a:Lcom/netease/nr/biz/news/a/c/b/e;

    invoke-static {}, Lcom/netease/util/k/a;->b()Lcom/netease/util/k/f;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/c/b/c;->a:Lcom/netease/nr/biz/news/a/c/b/e;

    invoke-interface {v0, v1}, Lcom/netease/util/k/f;->a(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/c;->f:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/netease/nr/biz/news/a/c/b/c;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/netease/nr/base/fragment/h;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/c/b/c;->u()V

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/c/b/c;->B()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/c;->f:Ljava/util/List;

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/netease/nr/base/fragment/h;->onDestroyView()V

    iput-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/c;->g:Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/c;->h:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/c;->f:Ljava/util/List;

    return-void
.end method
