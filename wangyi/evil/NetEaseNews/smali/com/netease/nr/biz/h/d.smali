.class public Lcom/netease/nr/biz/h/d;
.super Lcom/netease/nr/base/fragment/h;

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;
.implements Landroid/widget/TabHost$TabContentFactory;


# instance fields
.field private a:Lcom/netease/nr/biz/h/y;

.field private e:Landroid/widget/ListView;

.field private f:Landroid/widget/TabHost;

.field private g:Landroid/view/LayoutInflater;

.field private h:[I

.field private i:Lcom/netease/util/j/a;

.field private j:Ljava/util/List;

.field private k:Ljava/util/ArrayList;

.field private l:Landroid/util/Pair;

.field private m:Ljava/util/Map;

.field private n:Ljava/lang/String;

.field private o:Landroid/content/BroadcastReceiver;

.field private p:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

.field private q:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/netease/nr/base/fragment/h;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/biz/h/d;->j:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/biz/h/d;->k:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/Pair;

    iget-object v1, p0, Lcom/netease/nr/biz/h/d;->k:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/netease/nr/biz/h/d;->j:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/netease/nr/biz/h/d;->l:Landroid/util/Pair;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/biz/h/d;->m:Ljava/util/Map;

    new-instance v0, Lcom/netease/nr/biz/h/e;

    invoke-direct {v0, p0}, Lcom/netease/nr/biz/h/e;-><init>(Lcom/netease/nr/biz/h/d;)V

    iput-object v0, p0, Lcom/netease/nr/biz/h/d;->o:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/netease/nr/biz/h/g;

    invoke-direct {v0, p0}, Lcom/netease/nr/biz/h/g;-><init>(Lcom/netease/nr/biz/h/d;)V

    iput-object v0, p0, Lcom/netease/nr/biz/h/d;->p:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    new-instance v0, Lcom/netease/nr/biz/h/j;

    invoke-direct {v0, p0}, Lcom/netease/nr/biz/h/j;-><init>(Lcom/netease/nr/biz/h/d;)V

    iput-object v0, p0, Lcom/netease/nr/biz/h/d;->q:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/biz/h/d;)Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/h/d;->p:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    return-object v0
.end method

.method private a(Landroid/util/Pair;)V
    .locals 7

    invoke-direct {p0}, Lcom/netease/nr/biz/h/d;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    move v6, v0

    :goto_0
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_3

    invoke-direct {p0}, Lcom/netease/nr/biz/h/d;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez v5, :cond_1

    const v0, 0x7f0b00f1

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/h/d;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_2
    iget-object v1, p0, Lcom/netease/nr/biz/h/d;->f:Landroid/widget/TabHost;

    iget-object v2, p0, Lcom/netease/nr/biz/h/d;->g:Landroid/view/LayoutInflater;

    move-object v0, p0

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/netease/nr/biz/h/d;->a(Landroid/widget/TabHost;Landroid/view/LayoutInflater;Ljava/lang/String;Landroid/widget/TabHost$TabContentFactory;I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v6, v0

    goto :goto_0

    :cond_1
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-direct {p0}, Lcom/netease/nr/biz/h/d;->j()Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v1, v5, -0x1

    :goto_3
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    const-string v1, "cName"

    invoke-static {v0, v1}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_2
    move v1, v5

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/netease/nr/biz/h/d;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f0c0136

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_4
    return-void

    :cond_5
    const v0, 0x7f0c006e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/ViewPagerForSlider;

    new-instance v2, Lcom/netease/nr/biz/h/m;

    invoke-virtual {p0}, Lcom/netease/nr/biz/h/d;->c_()Landroid/content/Context;

    move-result-object v3

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-direct {v2, v3, v1}, Lcom/netease/nr/biz/h/m;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Lcom/netease/nr/base/view/ViewPagerForSlider;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    goto :goto_4
.end method

.method private a(Landroid/widget/TabHost;Landroid/view/LayoutInflater;Ljava/lang/String;Landroid/widget/TabHost$TabContentFactory;I)V
    .locals 3

    const v0, 0x7f03006b

    invoke-virtual {p1}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/netease/nr/biz/h/d;->h:[I

    if-eqz v1, :cond_0

    if-ltz p5, :cond_0

    iget-object v1, p0, Lcom/netease/nr/biz/h/d;->h:[I

    iget-object v2, p0, Lcom/netease/nr/biz/h/d;->h:[I

    array-length v2, v2

    rem-int v2, p5, v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/netease/nr/biz/h/d;->i:Lcom/netease/util/j/a;

    invoke-virtual {p0}, Lcom/netease/nr/biz/h/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netease/util/j/a;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    invoke-virtual {p1, p3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/biz/h/d;Landroid/util/Pair;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/nr/biz/h/d;->a(Landroid/util/Pair;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/biz/h/d;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/nr/biz/h/d;->a(Ljava/util/Map;)V

    return-void
.end method

.method private a(Ljava/util/Map;)V
    .locals 8

    const/4 v0, 0x0

    const-string v1, "tid"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "tname"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v3, "columnId"

    invoke-virtual {v4, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "columnName"

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "icon"

    const-string v1, "icon"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ename"

    const-string v1, "ename"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "type"

    const-string v1, "type"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "columnSubscribed"

    const-string v1, "status"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v4, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/h/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {p0}, Lcom/netease/nr/biz/h/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/netease/nr/biz/h/p;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SubscribeListFragment"

    const-class v6, Lcom/netease/nr/base/activity/BaseActivity;

    move-object v5, v0

    invoke-static/range {v0 .. v6}, Lcom/netease/util/fragment/ab;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private b(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/biz/h/d;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/netease/nr/biz/h/d;->q:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/netease/nr/biz/h/d;->e:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic b(Lcom/netease/nr/biz/h/d;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/h/d;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/netease/nr/biz/h/d;)Landroid/util/Pair;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/h/d;->l:Landroid/util/Pair;

    return-object v0
.end method

.method static synthetic d(Lcom/netease/nr/biz/h/d;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/h/d;->m:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic e(Lcom/netease/nr/biz/h/d;)Landroid/widget/TabHost;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/h/d;->f:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic f(Lcom/netease/nr/biz/h/d;)Z
    .locals 1

    invoke-direct {p0}, Lcom/netease/nr/biz/h/d;->j()Z

    move-result v0

    return v0
.end method

.method static synthetic g(Lcom/netease/nr/biz/h/d;)Lcom/netease/nr/biz/h/y;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/h/d;->a:Lcom/netease/nr/biz/h/y;

    return-object v0
.end method

.method private j()Z
    .locals 2

    const-string v0, "source_media"

    iget-object v1, p0, Lcom/netease/nr/biz/h/d;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private k()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/netease/nr/biz/h/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "top_column_changed"

    invoke-static {v0, v1, v2}, Lcom/netease/util/g/a;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/netease/nr/biz/h/k;

    invoke-virtual {p0}, Lcom/netease/nr/biz/h/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netease/nr/biz/h/k;-><init>(Landroid/content/Context;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/h/k;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    invoke-virtual {p0}, Lcom/netease/nr/biz/h/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nr/biz/pc/sync/a;->h(Landroid/content/Context;)V

    return-void
.end method

.method private l()Landroid/view/View;
    .locals 5

    iget-object v0, p0, Lcom/netease/nr/biz/h/d;->g:Landroid/view/LayoutInflater;

    const v1, 0x7f03006e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    new-instance v2, Lcom/netease/nr/biz/h/a;

    invoke-virtual {p0}, Lcom/netease/nr/biz/h/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v1, p0, Lcom/netease/nr/biz/h/d;->l:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-direct {p0}, Lcom/netease/nr/biz/h/d;->j()Z

    move-result v4

    invoke-direct {v2, v3, v1, v4}, Lcom/netease/nr/biz/h/a;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    iget-object v1, p0, Lcom/netease/nr/biz/h/d;->m:Ljava/util/Map;

    invoke-virtual {v2, v1}, Lcom/netease/nr/biz/h/a;->a(Ljava/util/Map;)V

    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    invoke-virtual {v2}, Lcom/netease/nr/biz/h/a;->getGroupCount()I

    move-result v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/netease/nr/biz/h/h;

    invoke-direct {v1, p0}, Lcom/netease/nr/biz/h/h;-><init>(Lcom/netease/nr/biz/h/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    invoke-virtual {v2}, Lcom/netease/nr/biz/h/a;->notifyDataSetChanged()V

    new-instance v1, Lcom/netease/nr/biz/h/i;

    invoke-direct {v1, p0}, Lcom/netease/nr/biz/h/i;-><init>(Lcom/netease/nr/biz/h/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/netease/util/j/a;Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/fragment/h;->a(Lcom/netease/util/j/a;Landroid/view/View;)V

    iget-object v0, p0, Lcom/netease/nr/biz/h/d;->e:Landroid/widget/ListView;

    const v1, 0x7f02014e

    invoke-virtual {p1, v0, v1}, Lcom/netease/util/j/a;->b(Landroid/widget/ListView;I)V

    const v0, 0x7f0c0020

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f020151

    invoke-virtual {p1, v0, v1}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    const v0, 0x7f0c0139

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0202aa

    invoke-virtual {p1, v0, v1}, Lcom/netease/util/j/a;->a(Landroid/widget/ImageView;I)V

    const v0, 0x7f0c0138

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f02016a

    invoke-virtual {p1, v0, v1}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    return-void
.end method

.method protected a(Lcom/netease/util/j/a;Lcom/netease/nr/base/view/a;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/fragment/h;->a(Lcom/netease/util/j/a;Lcom/netease/nr/base/view/a;)V

    const/16 v0, 0x3e8

    invoke-virtual {p2, v0}, Lcom/netease/nr/base/view/a;->d(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f0c0135

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0700b0

    invoke-virtual {p1, v0, v1}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    :cond_0
    return-void
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/netease/nr/biz/h/d;->k()V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/fragment/h;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public a_(II)V
    .locals 7

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v1, "param_source"

    iget-object v2, p0, Lcom/netease/nr/biz/h/d;->n:Ljava/lang/String;

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/h/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/netease/nr/biz/h/ad;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/netease/nr/biz/h/ad;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-class v6, Lcom/netease/nr/base/activity/BaseActivity;

    move-object v5, v0

    invoke-static/range {v0 .. v6}, Lcom/netease/util/fragment/ab;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/h/d;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_1
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v1, "param_source"

    iget-object v2, p0, Lcom/netease/nr/biz/h/d;->n:Ljava/lang/String;

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/h/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/netease/nr/biz/h/t;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/netease/nr/biz/h/t;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-class v6, Lcom/netease/nr/base/activity/BaseActivity;

    move-object v5, v0

    invoke-static/range {v0 .. v6}, Lcom/netease/util/fragment/ab;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/h/d;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected b_()I
    .locals 1

    const v0, 0x7f03006c

    return v0
.end method

.method public c()V
    .locals 0

    invoke-direct {p0}, Lcom/netease/nr/biz/h/d;->k()V

    invoke-super {p0}, Lcom/netease/nr/base/fragment/h;->c()V

    return-void
.end method

.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/biz/h/d;->f:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    invoke-direct {p0}, Lcom/netease/nr/biz/h/d;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/netease/nr/biz/h/d;->l()Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/netease/nr/biz/h/d;->b(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method protected e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/netease/nr/base/fragment/h;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/h/d;->z()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "intent.broadcast.switch.topcolumn"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/h/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nr/biz/h/d;->o:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/netease/nr/biz/h/d;->a()Lcom/netease/nr/base/view/a;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/netease/nr/biz/h/d;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b00e7

    :goto_0
    invoke-virtual {v1, v0}, Lcom/netease/nr/base/view/a;->c(I)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/netease/nr/base/view/a;->d(Z)V

    const/16 v0, 0x3e9

    const-string v2, ""

    const v3, 0x7f020007

    invoke-virtual {v1, v0, v2, v3}, Lcom/netease/nr/base/view/a;->a(ILjava/lang/String;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/h/d;->g:Landroid/view/LayoutInflater;

    const v2, 0x7f03006a

    invoke-virtual {v1}, Lcom/netease/nr/base/view/a;->a()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2, v0}, Lcom/netease/nr/base/view/a;->a(ILandroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/h/d;->f:Landroid/widget/TabHost;

    invoke-virtual {v0, v4}, Landroid/widget/TabHost;->setCurrentTab(I)V

    iget-object v0, p0, Lcom/netease/nr/biz/h/d;->g:Landroid/view/LayoutInflater;

    const v1, 0x7f03006d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/netease/nr/biz/h/d;->e:Landroid/widget/ListView;

    new-instance v0, Lcom/netease/nr/biz/h/y;

    invoke-virtual {p0}, Lcom/netease/nr/biz/h/d;->c_()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0}, Lcom/netease/nr/biz/h/d;->j()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/netease/nr/biz/h/y;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/netease/nr/biz/h/d;->a:Lcom/netease/nr/biz/h/y;

    iget-object v0, p0, Lcom/netease/nr/biz/h/d;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/netease/nr/biz/h/d;->a:Lcom/netease/nr/biz/h/y;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    :cond_1
    const v0, 0x7f0b00e8

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/netease/nr/base/fragment/h;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/h/d;->u()V

    invoke-virtual {p0}, Lcom/netease/nr/biz/h/d;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/netease/nr/biz/h/d;->n:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/nr/biz/h/d;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "source_columns"

    iput-object v0, p0, Lcom/netease/nr/biz/h/d;->n:Ljava/lang/String;

    :cond_0
    const-string v0, "source_media"

    iget-object v2, p0, Lcom/netease/nr/biz/h/d;->n:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/netease/nr/biz/h/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v2, "show_subscribe_guide_key"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/netease/util/g/a;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/netease/nr/biz/h/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v2, "show_subscribe_guide_key"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/netease/util/g/a;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/netease/nr/biz/h/d;->c_()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/h/d;->g:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/netease/nr/biz/h/d;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/16 v2, 0x64

    iget-object v3, p0, Lcom/netease/nr/biz/h/d;->p:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v2, v1, v3}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    invoke-virtual {p0}, Lcom/netease/nr/biz/h/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/util/j/a;->a(Landroid/content/Context;)Lcom/netease/util/j/a;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/h/d;->i:Lcom/netease/util/j/a;

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/netease/nr/biz/h/d;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "param_source"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 2

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/netease/nr/base/fragment/h;->onDestroyView()V

    iput-object v0, p0, Lcom/netease/nr/biz/h/d;->f:Landroid/widget/TabHost;

    iput-object v0, p0, Lcom/netease/nr/biz/h/d;->e:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/netease/nr/biz/h/d;->A()V

    invoke-virtual {p0}, Lcom/netease/nr/biz/h/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/h/d;->o:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/netease/nr/biz/h/d;->f:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v1

    invoke-direct {p0}, Lcom/netease/nr/biz/h/d;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    if-lez v1, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/h/d;->l:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v1, v0, :cond_0

    iget-object v2, p0, Lcom/netease/nr/biz/h/d;->a:Lcom/netease/nr/biz/h/y;

    iget-object v0, p0, Lcom/netease/nr/biz/h/d;->l:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-virtual {v2, v0}, Lcom/netease/nr/biz/h/y;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/netease/nr/biz/h/d;->a:Lcom/netease/nr/biz/h/y;

    invoke-virtual {v0}, Lcom/netease/nr/biz/h/y;->notifyDataSetChanged()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ltz v1, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/h/d;->l:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/netease/nr/biz/h/d;->a:Lcom/netease/nr/biz/h/y;

    iget-object v0, p0, Lcom/netease/nr/biz/h/d;->l:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-virtual {v2, v0}, Lcom/netease/nr/biz/h/y;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/netease/nr/biz/h/d;->a:Lcom/netease/nr/biz/h/y;

    invoke-virtual {v0}, Lcom/netease/nr/biz/h/y;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    const/4 v4, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/fragment/h;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x7f0c0070

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/Indicator;

    const v1, 0x7f0c006e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/netease/nr/base/view/ViewPagerForSlider;

    const/high16 v3, 0x3e800000    # 0.25f

    invoke-virtual {v1, v3}, Lcom/netease/nr/base/view/ViewPagerForSlider;->a(F)V

    invoke-virtual {v1, v0}, Lcom/netease/nr/base/view/ViewPagerForSlider;->a(Lcom/netease/nr/base/view/Indicator;)V

    invoke-virtual {v1, v4}, Lcom/netease/nr/base/view/ViewPagerForSlider;->a(Z)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/h/d;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c0137

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lcom/netease/nr/biz/h/d;->f:Landroid/widget/TabHost;

    iget-object v0, p0, Lcom/netease/nr/biz/h/d;->f:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->setup()V

    iget-object v0, p0, Lcom/netease/nr/biz/h/d;->f:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TabWidget;->setOrientation(I)V

    iget-object v0, p0, Lcom/netease/nr/biz/h/d;->f:Landroid/widget/TabHost;

    invoke-virtual {v0, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    iget-object v0, p0, Lcom/netease/nr/biz/h/d;->f:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/netease/nr/biz/h/d;->f:Landroid/widget/TabHost;

    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    new-instance v3, Lcom/netease/nr/biz/h/f;

    invoke-direct {v3, p0}, Lcom/netease/nr/biz/h/f;-><init>(Lcom/netease/nr/biz/h/d;)V

    invoke-virtual {v1, v3}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/h/d;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    new-array v0, v3, [I

    iput-object v0, p0, Lcom/netease/nr/biz/h/d;->h:[I

    move v0, v2

    :goto_0
    if-ge v0, v3, :cond_0

    iget-object v4, p0, Lcom/netease/nr/biz/h/d;->h:[I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    aput v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    return-void
.end method
