.class public Lcom/netease/nr/biz/news/a/d;
.super Lcom/netease/nr/base/fragment/q;

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/netease/nr/biz/ad/r;


# instance fields
.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:Ljava/lang/String;

.field private e:Lcom/netease/nr/base/a/c;

.field private f:Lcom/netease/nr/biz/news/a/h;

.field private g:Lcom/netease/nr/biz/news/a/g;

.field private h:Ljava/util/List;

.field private i:Ljava/util/List;

.field private m:Ljava/util/List;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Z

.field private q:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/netease/nr/base/fragment/q;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/biz/news/a/d;->h:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/biz/news/a/d;->i:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/biz/news/a/d;->m:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/biz/news/a/d;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/d;->h:Ljava/util/List;

    return-object v0
.end method

.method private a(Ljava/util/List;)V
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    iget-object v1, p0, Lcom/netease/nr/biz/news/a/d;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/d;->m:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/d;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/d;->t()I

    move-result v4

    move v3, v0

    move v2, v0

    :goto_0
    if-ge v3, v4, :cond_3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/d;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/d;->i:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ad/e;

    invoke-direct {p0, v0}, Lcom/netease/nr/biz/news/a/d;->b(Lcom/netease/ad/e;)Ljava/util/Map;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_5

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/d;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_5

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/d;->m:Ljava/util/List;

    add-int/lit8 v1, v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    :goto_1
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/netease/nr/biz/news/a/d;->h:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v2, v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/netease/nr/biz/news/a/d;->g:Lcom/netease/nr/biz/news/a/g;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/d;->g:Lcom/netease/nr/biz/news/a/g;

    invoke-virtual {v0}, Lcom/netease/nr/biz/news/a/g;->notifyDataSetChanged()V

    :cond_4
    return-void

    :cond_5
    move v1, v2

    goto :goto_1
.end method

.method static synthetic b(Lcom/netease/nr/biz/news/a/d;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/d;->i:Ljava/util/List;

    return-object v0
.end method

.method private b(Lcom/netease/ad/e;)Ljava/util/Map;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "from_sdk"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/netease/ad/e;->c()Lcom/netease/ad/b/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ad/b/j;->g()Ljava/lang/String;

    move-result-object v0

    const-string v2, "title"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "imgsrc"

    invoke-virtual {p1}, Lcom/netease/ad/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/netease/ad/e;->c()Lcom/netease/ad/b/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ad/b/j;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v0, 0x7f0b01b4

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/news/a/d;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v2, "subtitle"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    :cond_1
    return-object v0
.end method

.method private b(Landroid/view/View;)V
    .locals 4

    const v3, 0x7f0c006e

    const v0, 0x7f0c0070

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/Indicator;

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/netease/nr/base/view/ViewPagerForSlider;

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/netease/nr/base/c/a/f;->b(Landroid/content/Context;)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/netease/nr/base/view/ViewPagerForSlider;->a(F)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/netease/nr/base/view/ViewPagerForSlider;->a(Z)V

    invoke-virtual {v1, v0}, Lcom/netease/nr/base/view/ViewPagerForSlider;->a(Lcom/netease/nr/base/view/Indicator;)V

    invoke-virtual {v1, p0}, Lcom/netease/nr/base/view/ViewPagerForSlider;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/d;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/ViewPagerForSlider;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/ViewPagerForSlider;->a(Lcom/netease/nr/base/view/bb;)V

    :cond_2
    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/util/i/b;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f0c02c1

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/MySlidingDrawer;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/MySlidingDrawer;->a(Lcom/netease/nr/base/view/ax;)V

    :cond_3
    iget-object v0, p0, Lcom/netease/nr/biz/news/a/d;->g:Lcom/netease/nr/biz/news/a/g;

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/d;->r()Lcom/netease/nr/biz/news/a/g;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/news/a/d;->g:Lcom/netease/nr/biz/news/a/g;

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/d;->s()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/nr/biz/news/a/d;->a(Ljava/util/List;)V

    :cond_4
    iget-object v0, p0, Lcom/netease/nr/biz/news/a/d;->g:Lcom/netease/nr/biz/news/a/g;

    invoke-virtual {v1, v0}, Lcom/netease/nr/base/view/ViewPagerForSlider;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    goto :goto_0
.end method

.method private c(Lcom/netease/ad/e;)Z
    .locals 3

    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/news/a/d;->a(Lcom/netease/ad/e;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/netease/nr/biz/news/a/d;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, v0, :cond_1

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/d;->i:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/netease/nr/biz/news/a/d;->i:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected a(Lcom/netease/ad/e;)I
    .locals 3

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/d;->n:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/d;->o:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/d;->n:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/netease/ad/e;->c()Lcom/netease/ad/b/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/ad/b/j;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/netease/ad/e;->c()Lcom/netease/ad/b/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/ad/b/j;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nr/biz/news/a/d;->o:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 3

    const v0, 0x7f03005b

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Lcom/netease/nr/biz/news/a/h;)Lcom/netease/nr/biz/news/a/b;
    .locals 7

    new-instance v0, Lcom/netease/nr/biz/news/a/b;

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f03005c

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/netease/nr/biz/news/a/h;->g:[Ljava/lang/String;

    iget-object v5, p1, Lcom/netease/nr/biz/news/a/h;->h:[I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/netease/nr/biz/news/a/b;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    invoke-virtual {v0, p1}, Lcom/netease/nr/biz/news/a/b;->setViewBinder(Landroid/support/v4/widget/SimpleCursorAdapter$ViewBinder;)V

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)Lcom/netease/util/fragment/ac;
    .locals 7

    const/4 v3, 0x0

    const-string v0, "news_list"

    const-string v1, "select t1.*, t2.article_read_is_read, t2.article_read_date from news_list t1 left join article_read_status_list t2 on t1.news_doc_id=t2.article_read_doc_id where t1.news_col_id=?"

    invoke-static {v0, v1}, Lcom/netease/nr/base/db/BaseContentProvider;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "news_list"

    invoke-static {v1}, Lcom/netease/nr/base/db/BaseContentProvider;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nr/biz/news/a/d;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/nr/base/db/BaseContentProvider;->a(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/d;->b:Ljava/lang/String;

    aput-object v1, v5, v0

    new-instance v0, Lcom/netease/util/fragment/ac;

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    move-object v4, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/netease/util/fragment/ac;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/util/fragment/ac;->a(Ljava/lang/String;)V

    return-object v0
.end method

.method public a(Landroid/support/v4/content/Loader;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/netease/nr/base/fragment/q;->a(Landroid/support/v4/content/Loader;)V

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/d;->e:Lcom/netease/nr/base/a/c;

    invoke-virtual {v0}, Lcom/netease/nr/base/a/c;->a()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/news/a/b;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/news/a/b;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    :cond_0
    return-void
.end method

.method public a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/fragment/q;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/d;->f:Lcom/netease/nr/biz/news/a/h;

    invoke-virtual {v0, p2}, Lcom/netease/nr/biz/news/a/h;->a(Landroid/database/Cursor;)V

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/d;->e:Lcom/netease/nr/base/a/c;

    invoke-virtual {v0}, Lcom/netease/nr/base/a/c;->a()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v1, v0, Landroid/support/v4/widget/CursorAdapter;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/CursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/d;->e:Lcom/netease/nr/base/a/c;

    invoke-virtual {v1}, Lcom/netease/nr/base/a/c;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/d;->e:Lcom/netease/nr/base/a/c;

    invoke-virtual {v1}, Lcom/netease/nr/base/a/c;->getCount()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {p0, v2}, Lcom/netease/nr/biz/news/a/d;->b(Z)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/d;->v()Z

    move-result v0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/netease/nr/biz/news/a/d;->e:Lcom/netease/nr/base/a/c;

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/a/c;->a(Z)V

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/d;->e:Lcom/netease/nr/base/a/c;

    invoke-virtual {v0}, Lcom/netease/nr/base/a/c;->a()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/news/a/b;

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/news/a/b;->a(Z)V

    if-eqz v1, :cond_1

    iget-boolean v0, p0, Lcom/netease/nr/biz/news/a/d;->p:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/d;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/d;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-boolean v2, p0, Lcom/netease/nr/biz/news/a/d;->p:Z

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/d;->n:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/nr/biz/news/a/d;->o:Ljava/lang/String;

    invoke-static {v0, v1, v2, p0}, Lcom/netease/nr/biz/ad/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/netease/nr/biz/ad/r;)V

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/news/a/d;->g:Lcom/netease/nr/biz/news/a/g;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/d;->g:Lcom/netease/nr/biz/news/a/g;

    invoke-virtual {v0}, Lcom/netease/nr/biz/news/a/g;->notifyDataSetChanged()V

    :cond_2
    return-void

    :cond_3
    move v1, v0

    goto :goto_0
.end method

.method protected a(Landroid/view/View;)V
    .locals 4

    const v3, 0x7f0c006e

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/ViewPagerForSlider;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/ViewPagerForSlider;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/d;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/netease/nr/base/view/ViewPagerForSlider;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/netease/nr/base/view/ViewPagerForSlider;->b(Lcom/netease/nr/base/view/bb;)V

    :cond_0
    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/util/i/b;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0c02c1

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/netease/nr/base/view/MySlidingDrawer;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lcom/netease/nr/base/view/MySlidingDrawer;->b(Lcom/netease/nr/base/view/ax;)V

    :cond_1
    return-void
.end method

.method public final a(Lcom/netease/nr/biz/ad/q;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/news/a/d;->b(Lcom/netease/nr/biz/ad/q;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ad/e;

    invoke-direct {p0, v0}, Lcom/netease/nr/biz/news/a/d;->c(Lcom/netease/ad/e;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_2
    move v1, v0

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/d;->m:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0, v0}, Lcom/netease/nr/biz/news/a/d;->a(Ljava/util/List;)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method protected a(Lcom/netease/util/j/a;Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/fragment/q;->a(Lcom/netease/util/j/a;Landroid/view/View;)V

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/d;->f:Lcom/netease/nr/biz/news/a/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/d;->f:Lcom/netease/nr/biz/news/a/h;

    invoke-virtual {v0, p1}, Lcom/netease/nr/biz/news/a/h;->a(Lcom/netease/util/j/a;)V

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/news/a/d;->e:Lcom/netease/nr/base/a/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/d;->e:Lcom/netease/nr/base/a/c;

    invoke-virtual {v0}, Lcom/netease/nr/base/a/c;->notifyDataSetChanged()V

    :cond_1
    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/d;->q()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    const v1, 0x7f0c0070

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/Indicator;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/netease/nr/base/view/Indicator;->b(Lcom/netease/util/j/a;)V

    :cond_2
    iget-object v0, p0, Lcom/netease/nr/biz/news/a/d;->g:Lcom/netease/nr/biz/news/a/g;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/d;->g:Lcom/netease/nr/biz/news/a/g;

    invoke-virtual {v0, p1}, Lcom/netease/nr/biz/news/a/g;->a(Lcom/netease/util/j/a;)V

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/d;->g:Lcom/netease/nr/biz/news/a/g;

    invoke-virtual {v0}, Lcom/netease/nr/biz/news/a/g;->notifyDataSetChanged()V

    :cond_3
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
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v0, "docId"

    invoke-virtual {v4, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "replyCount"

    invoke-virtual {v4, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "lastModify"

    invoke-virtual {v4, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/d;->x()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/netease/nr/biz/audio/d;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AudioPlayFragment"

    const/4 v5, 0x0

    const-class v6, Lcom/netease/nr/biz/audio/AudioPlayActivity;

    invoke-static/range {v0 .. v6}, Lcom/netease/util/fragment/ab;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/news/a/d;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v0, "channel"

    invoke-virtual {v4, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "setid"

    invoke-virtual {v4, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "imgTitle"

    invoke-virtual {v4, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "clientcover"

    invoke-virtual {v4, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "read_docid"

    invoke-virtual {v4, v0, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/d;->x()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/netease/nr/biz/pics/b;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PicShowFragment"

    const/4 v5, 0x0

    const-class v6, Lcom/netease/nr/base/activity/BaseActivity;

    invoke-static/range {v0 .. v6}, Lcom/netease/util/fragment/ab;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/news/a/d;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 9

    const/4 v7, 0x1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/d;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/d;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "columnRelative"

    invoke-virtual {v0, v1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    :cond_1
    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/d;->x()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v3, p0, Lcom/netease/nr/biz/news/a/d;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/nr/biz/news/a/d;->d:Ljava/lang/String;

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    move v8, p4

    invoke-static/range {v0 .. v8}, Lcom/netease/nr/biz/news/detailpage/NewsPageActivity;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/news/a/d;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public a(Landroid/database/Cursor;I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected a(Landroid/view/View;Ljava/util/Map;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/netease/nr/base/fragment/q;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/news/a/d;->a(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/nr/biz/news/a/d;->q:Landroid/view/View;

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/d;->q:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/d;->q:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/netease/nr/biz/news/a/d;->b(Landroid/view/View;)V

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/d;->e:Lcom/netease/nr/base/a/c;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/d;->e:Lcom/netease/nr/base/a/c;

    iget-object v2, p0, Lcom/netease/nr/biz/news/a/d;->q:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/netease/nr/base/a/c;->a(Landroid/view/View;)V

    :cond_0
    return-object v0
.end method

.method protected b(Lcom/netease/nr/biz/news/a/h;)Lcom/netease/nr/base/a/c;
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/news/a/d;->a(Lcom/netease/nr/biz/news/a/h;)Lcom/netease/nr/biz/news/a/b;

    move-result-object v0

    new-instance v1, Lcom/netease/nr/base/a/c;

    iget-object v2, p0, Lcom/netease/nr/biz/news/a/d;->q:Landroid/view/View;

    invoke-direct {v1, v0, v2, v3}, Lcom/netease/nr/base/a/c;-><init>(Landroid/widget/ListAdapter;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v1, v3}, Lcom/netease/nr/base/a/c;->a(Lcom/netease/nr/base/a/d;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/netease/nr/base/a/c;->a(Z)V

    return-object v1
.end method

.method protected b(II)Lcom/netease/util/fragment/z;
    .locals 3

    new-instance v0, Lcom/netease/nr/biz/news/a/f;

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nr/biz/news/a/d;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/netease/nr/biz/news/a/f;-><init>(Landroid/content/Context;Ljava/lang/String;II)V

    return-object v0
.end method

.method public b(Landroid/os/Bundle;)Lcom/netease/util/fragment/z;
    .locals 2

    iget v0, p0, Lcom/netease/nr/biz/news/a/d;->k:I

    iget v1, p0, Lcom/netease/nr/biz/news/a/d;->l:I

    invoke-virtual {p0, v0, v1}, Lcom/netease/nr/biz/news/a/d;->b(II)Lcom/netease/util/fragment/z;

    move-result-object v0

    return-object v0
.end method

.method protected b(Lcom/netease/nr/biz/ad/q;)Ljava/util/List;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/d;->o:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/netease/nr/biz/news/a/d;->o:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/netease/nr/biz/ad/q;->a(Ljava/lang/String;)Lcom/netease/ad/e;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public b(Landroid/support/v4/content/Loader;Ljava/util/Map;)V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/fragment/q;->b(Landroid/support/v4/content/Loader;Ljava/util/Map;)V

    invoke-static {p2}, Lcom/netease/util/e/c;->c(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nr/biz/news/a/d;->b:Ljava/lang/String;

    invoke-static {v1, v2, v0, v3}, Lcom/netease/nr/biz/news/a/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Z)V

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/netease/nr/biz/news/a/d;->l:I

    if-lt v1, v2, :cond_4

    invoke-virtual {p0, v3}, Lcom/netease/nr/biz/news/a/d;->b(Z)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/d;->s()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/nr/biz/news/a/d;->a(Ljava/util/List;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/d;->n:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/d;->o:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/d;->n:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/nr/biz/news/a/d;->o:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/nr/biz/ad/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/netease/nr/biz/ad/q;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/netease/nr/biz/ad/q;->b()Lcom/netease/ad/e;

    :cond_2
    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/d;->q()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    const v1, 0x7f0c006e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/ViewPagerForSlider;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/d;->g:Lcom/netease/nr/biz/news/a/g;

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/ViewPagerForSlider;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    :cond_3
    return-void

    :cond_4
    if-nez v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/news/a/d;->b(Z)V

    goto :goto_0
.end method

.method public c(Landroid/os/Bundle;)Lcom/netease/util/fragment/z;
    .locals 2

    iget v0, p0, Lcom/netease/nr/biz/news/a/d;->l:I

    iget v1, p0, Lcom/netease/nr/biz/news/a/d;->k:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1, v0}, Lcom/netease/nr/biz/news/a/d;->b(II)Lcom/netease/util/fragment/z;

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

    const-string v0, "param_url"

    invoke-virtual {v4, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "param_title"

    const/high16 v1, 0x7f0b0000

    invoke-virtual {p0, v1}, Lcom/netease/nr/biz/news/a/d;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/d;->x()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/netease/nr/base/fragment/BaseWebFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BaseWebFragment"

    const/4 v5, 0x0

    const-class v6, Lcom/netease/nr/base/activity/BaseActivity;

    invoke-static/range {v0 .. v6}, Lcom/netease/util/fragment/ab;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/news/a/d;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected d(I)V
    .locals 10

    const/4 v4, -0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/d;->e:Lcom/netease/nr/base/a/c;

    if-eqz v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/news/a/d;->e:Lcom/netease/nr/base/a/c;

    invoke-virtual {v0}, Lcom/netease/nr/base/a/c;->a()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/news/a/b;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/netease/nr/biz/news/a/b;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1, p1}, Lcom/netease/nr/biz/news/a/d;->a(Landroid/database/Cursor;I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "news_special_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_a

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/news/a/d;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, v3

    goto :goto_1

    :cond_3
    const-string v0, "news_doc_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v0, "news_photoset_ID"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_4

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {v0}, Lcom/netease/nr/biz/pics/p;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "channel"

    invoke-static {v0, v1}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "setid"

    invoke-static {v0, v2}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/netease/nr/biz/news/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v0, "lmodify"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_9

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_3
    const-string v0, "news_reply_count"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_8

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_4
    const-string v0, "news_subtitle"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_7

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_5
    const-string v2, "TAG"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v4, :cond_6

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    :goto_6
    const-string v1, "\u97f3\u9891"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0, v5, v6, v7}, Lcom/netease/nr/biz/news/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/netease/nr/biz/news/a/i;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/netease/nr/biz/news/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    move-object v9, v3

    goto :goto_6

    :cond_7
    move-object v0, v3

    goto :goto_5

    :cond_8
    move-object v7, v3

    goto :goto_4

    :cond_9
    move-object v6, v3

    goto :goto_3

    :cond_a
    move-object v0, v3

    goto/16 :goto_2
.end method

.method public d(Landroid/support/v4/content/Loader;Ljava/util/Map;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/fragment/q;->d(Landroid/support/v4/content/Loader;Ljava/util/Map;)V

    invoke-static {p2}, Lcom/netease/util/e/c;->c(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/d;->u()Landroid/support/v4/content/Loader;

    move-result-object v1

    check-cast v1, Lcom/netease/util/fragment/ac;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/netease/util/fragment/ac;->a()V

    :cond_0
    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nr/biz/news/a/d;->b:Ljava/lang/String;

    invoke-static {v1, v2, v0, v3}, Lcom/netease/nr/biz/news/a/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Z)V

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/news/a/d;->b(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-nez v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_3
    invoke-virtual {p0, v3}, Lcom/netease/nr/biz/news/a/d;->b(Z)V

    goto :goto_0
.end method

.method protected d(Ljava/lang/String;)V
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

    const-string v0, "columnId"

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/d;->b:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/d;->x()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/netease/nr/biz/g/p;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SpecilaNewsListFragment"

    const/4 v5, 0x0

    const-class v6, Lcom/netease/nr/base/activity/BaseActivity;

    invoke-static/range {v0 .. v6}, Lcom/netease/util/fragment/ab;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/news/a/d;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected l()Lcom/netease/nr/biz/news/a/h;
    .locals 3

    new-instance v0, Lcom/netease/nr/biz/news/a/h;

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nr/biz/news/a/d;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/nr/biz/news/a/h;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method protected m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method protected n()Ljava/lang/String;
    .locals 1

    const-string v0, "10"

    return-object v0
.end method

.method public o()Lcom/netease/nr/biz/news/a/h;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/d;->f:Lcom/netease/nr/biz/news/a/h;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/netease/nr/base/fragment/q;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/d;->e:Lcom/netease/nr/base/a/c;

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/news/a/d;->setListAdapter(Landroid/widget/ListAdapter;)V

    const-string v0, "T1348648233485"

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "TOPIC"

    const-string v2, "\u6df1\u5ea6"

    invoke-static {v0, v1, v2}, Lcom/netease/nr/base/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "T1351840906470"

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "LocalNews"

    const-string v2, "LocalNews"

    invoke-static {v0, v1, v2}, Lcom/netease/nr/base/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "T1349687019494"

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "WSH"

    const-string v2, "\u5fae\u751f\u6d3b"

    invoke-static {v0, v1, v2}, Lcom/netease/nr/base/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "T1371543208049"

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "my_msg_center"

    const-string v2, "my_msg_center"

    invoke-static {v0, v1, v2}, Lcom/netease/nr/base/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "LIST"

    iget-object v2, p0, Lcom/netease/nr/biz/news/a/d;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/nr/base/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

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

    invoke-virtual {p0, v0, v1}, Lcom/netease/nr/biz/news/a/d;->a(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/d;->z()V

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/d;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "columnId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/nr/biz/news/a/d;->b:Ljava/lang/String;

    const-string v1, "columnCId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/nr/biz/news/a/d;->c:Ljava/lang/String;

    const-string v1, "columnName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/news/a/d;->d:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/news/a/d;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "columnId can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/d;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/news/a/d;->n:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/d;->n()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/news/a/d;->o:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/d;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/nr/biz/news/a/d;->a:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/news/a/d;->a(Z)V

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/d;->f:Lcom/netease/nr/biz/news/a/h;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/d;->l()Lcom/netease/nr/biz/news/a/h;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/news/a/d;->f:Lcom/netease/nr/biz/news/a/h;

    :cond_2
    iget-object v0, p0, Lcom/netease/nr/biz/news/a/d;->e:Lcom/netease/nr/base/a/c;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/d;->f:Lcom/netease/nr/biz/news/a/h;

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/news/a/d;->b(Lcom/netease/nr/biz/news/a/h;)Lcom/netease/nr/base/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/news/a/d;->e:Lcom/netease/nr/base/a/c;

    :cond_3
    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/d;->D()V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    invoke-super {p0}, Lcom/netease/nr/base/fragment/q;->onDestroy()V

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/d;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/d;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/d;->n:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/nr/biz/news/a/d;->o:Ljava/lang/String;

    invoke-static {v0, v1, v2, p0}, Lcom/netease/nr/biz/ad/o;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/netease/nr/biz/ad/r;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/nr/biz/news/a/d;->p:Z

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/netease/nr/base/fragment/q;->onDestroyView()V

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/d;->q:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/d;->q:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/news/a/d;->a(Landroid/view/View;)V

    iput-object v1, p0, Lcom/netease/nr/biz/news/a/d;->q:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/news/a/d;->e:Lcom/netease/nr/base/a/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/d;->e:Lcom/netease/nr/base/a/c;

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/a/c;->a(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0

    invoke-virtual {p0, p3}, Lcom/netease/nr/biz/news/a/d;->d(I)V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/d;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/news/a/d;->h:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "from_sdk"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/d;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, p1, -0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/d;->i:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ad/e;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/netease/nr/biz/ad/o;->a(Landroid/content/Context;Lcom/netease/ad/e;)V

    goto :goto_0
.end method

.method public p()Lcom/netease/nr/base/a/c;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/d;->e:Lcom/netease/nr/base/a/c;

    return-object v0
.end method

.method protected p_()Z
    .locals 9

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-super {p0}, Lcom/netease/nr/base/fragment/q;->p_()Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v0, "top_columns"

    invoke-static {v0}, Lcom/netease/nr/base/db/BaseContentProvider;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v3, Lcom/netease/util/db/c;

    invoke-direct {v3}, Lcom/netease/util/db/c;-><init>()V

    const-string v0, "tid"

    invoke-virtual {v3, v0}, Lcom/netease/util/db/c;->a(Ljava/lang/String;)Lcom/netease/util/db/c;

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v7, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v6

    invoke-virtual {v3}, Lcom/netease/util/db/c;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/nr/biz/news/a/d;->b:Ljava/lang/String;

    aput-object v5, v4, v6

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/d;->B()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nr/base/c/s;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v7

    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    return v0

    :cond_2
    move v0, v6

    goto :goto_0

    :cond_3
    move v0, v8

    goto :goto_0

    :cond_4
    move v0, v8

    goto :goto_1
.end method

.method public q()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/d;->q:Landroid/view/View;

    return-object v0
.end method

.method protected r()Lcom/netease/nr/biz/news/a/g;
    .locals 5

    new-instance v0, Lcom/netease/nr/biz/news/a/g;

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nr/biz/news/a/d;->h:Ljava/util/List;

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/d;->o()Lcom/netease/nr/biz/news/a/h;

    move-result-object v3

    new-instance v4, Lcom/netease/nr/biz/news/a/e;

    invoke-direct {v4, p0}, Lcom/netease/nr/biz/news/a/e;-><init>(Lcom/netease/nr/biz/news/a/d;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netease/nr/biz/news/a/g;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/netease/nr/biz/news/a/h;Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method protected s()Ljava/util/List;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected t()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected u()Landroid/support/v4/content/Loader;
    .locals 2

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/d;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/support/v4/app/LoaderManager;->getLoader(I)Landroid/support/v4/content/Loader;

    move-result-object v0

    return-object v0
.end method

.method protected v()Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/d;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "columnHasHeader"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    :goto_0
    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/d;->f:Lcom/netease/nr/biz/news/a/h;

    invoke-virtual {v1}, Lcom/netease/nr/biz/news/a/h;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    move v1, v0

    goto :goto_0
.end method
