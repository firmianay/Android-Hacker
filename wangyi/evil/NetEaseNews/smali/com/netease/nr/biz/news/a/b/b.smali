.class public Lcom/netease/nr/biz/news/a/b/b;
.super Lcom/netease/nr/biz/news/a/d;

# interfaces
.implements Lcom/netease/nr/biz/plugin/c/h;


# instance fields
.field private e:Ljava/util/List;

.field private f:Ljava/util/List;

.field private g:Lcom/netease/nr/biz/news/a/b/d;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private m:Lcom/netease/nr/biz/news/a/b/e;

.field private n:Ljava/lang/String;

.field private o:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/netease/nr/biz/news/a/d;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/biz/news/a/b/b;->e:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/biz/news/a/b/b;->f:Ljava/util/List;

    return-void
.end method

.method private O()V
    .locals 7

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/b/b;->x()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/b/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/netease/nr/biz/plugin/c/aa;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WeatherFragment"

    const-class v6, Lcom/netease/nr/base/activity/BaseActivity;

    move-object v5, v4

    invoke-static/range {v0 .. v6}, Lcom/netease/util/fragment/ab;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/news/a/b/b;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/biz/news/a/b/b;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/nr/biz/news/a/b/b;->b(Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/news/a/b/b;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/b/b;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/b/b;->m:Lcom/netease/nr/biz/news/a/b/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/b/b;->m:Lcom/netease/nr/biz/news/a/b/e;

    invoke-virtual {v0}, Lcom/netease/nr/biz/news/a/b/e;->notifyDataSetChanged()V

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/news/a/b/b;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/b/b;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/b/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/netease/nr/biz/plugin/c/f;->a(Landroid/content/Context;Z)[Ljava/lang/String;

    move-result-object v0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/netease/nr/biz/news/a/b/b;->h:Ljava/lang/String;

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/netease/nr/biz/news/a/b/b;->i:Ljava/lang/String;

    :cond_3
    iget-object v0, p0, Lcom/netease/nr/biz/news/a/b/b;->g:Lcom/netease/nr/biz/news/a/b/d;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/b/b;->g:Lcom/netease/nr/biz/news/a/b/d;

    invoke-virtual {v0, v2}, Lcom/netease/nr/biz/news/a/b/d;->cancel(Z)Z

    :cond_4
    new-instance v0, Lcom/netease/nr/biz/news/a/b/d;

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/b/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nr/biz/news/a/b/b;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/nr/biz/news/a/b/b;->i:Ljava/lang/String;

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/netease/nr/biz/news/a/b/d;-><init>(Landroid/content/Context;Lcom/netease/nr/biz/news/a/b/b;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/nr/biz/news/a/b/b;->g:Lcom/netease/nr/biz/news/a/b/d;

    invoke-static {}, Lcom/netease/util/k/a;->b()Lcom/netease/util/k/f;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/b/b;->g:Lcom/netease/nr/biz/news/a/b/d;

    invoke-interface {v0, v1}, Lcom/netease/util/k/f;->a(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    return-void
.end method

.method private b(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/b/b;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/b/b;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/news/a/b/b;->m:Lcom/netease/nr/biz/news/a/b/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/b/b;->m:Lcom/netease/nr/biz/news/a/b/e;

    invoke-virtual {v0}, Lcom/netease/nr/biz/news/a/b/e;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1, p2}, Lcom/netease/nr/biz/news/a/d;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/b/b;->p()Lcom/netease/nr/base/a/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netease/nr/base/a/c;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/netease/nr/base/a/c;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0, v3}, Lcom/netease/nr/base/a/c;->a(Z)V

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/news/a/b/b;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_1

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "partner"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/news/a/b/b;->n:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/news/a/b/b;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/b/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/netease/nr/biz/plugin/c/f;->a(Landroid/content/Context;Z)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0b01b1

    invoke-virtual {p0, v1}, Lcom/netease/nr/biz/news/a/b/b;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/news/a/b/b;->n:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/netease/nr/biz/news/a/b/b;->o:Landroid/view/View;

    if-eqz v0, :cond_3

    const v1, 0x7f0c00be

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/b/b;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method protected a(Lcom/netease/util/j/a;Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/netease/nr/biz/news/a/d;->a(Lcom/netease/util/j/a;Landroid/view/View;)V

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/b/b;->m:Lcom/netease/nr/biz/news/a/b/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/b/b;->m:Lcom/netease/nr/biz/news/a/b/e;

    invoke-virtual {v0, p1}, Lcom/netease/nr/biz/news/a/b/e;->a(Lcom/netease/util/j/a;)V

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/b/b;->m:Lcom/netease/nr/biz/news/a/b/e;

    invoke-virtual {v0}, Lcom/netease/nr/biz/news/a/b/e;->notifyDataSetChanged()V

    :cond_0
    iget-object v1, p0, Lcom/netease/nr/biz/news/a/b/b;->o:Landroid/view/View;

    if-eqz v1, :cond_1

    const v0, 0x7f0c0070

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/Indicator;

    invoke-virtual {v0, p1}, Lcom/netease/nr/base/view/Indicator;->b(Lcom/netease/util/j/a;)V

    const v0, 0x7f0c00be

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f02029e

    invoke-virtual {p1, v0, v1}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    const v1, 0x7f07009d

    invoke-virtual {p1, v0, v1}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x4

    iput-object p1, p0, Lcom/netease/nr/biz/news/a/b/b;->h:Ljava/lang/String;

    iput-object p2, p0, Lcom/netease/nr/biz/news/a/b/b;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/b/b;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/b/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "LOCALX"

    invoke-static {v0, v1, p2}, Lcom/netease/nr/base/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/b/b;->u()Landroid/support/v4/content/Loader;

    move-result-object v0

    check-cast v0, Lcom/netease/util/fragment/ac;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/netease/util/fragment/ac;->a()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/nr/biz/news/a/b/b;->n:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/b/b;->a()Lcom/netease/nr/base/view/a;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_2
    invoke-virtual {p0, p2}, Lcom/netease/nr/biz/news/a/b/b;->e(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/b/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "LOCALX"

    iget-object v2, p0, Lcom/netease/nr/biz/news/a/b/b;->i:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/nr/base/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-super/range {p0 .. p5}, Lcom/netease/nr/biz/news/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public a(Landroid/database/Cursor;I)Z
    .locals 3

    const-string v0, "TAG"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v1, "news_doc_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-ne p2, v2, :cond_0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const v2, 0x7f0b01b4

    invoke-virtual {p0, v2}, Lcom/netease/nr/biz/news/a/b/b;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/netease/nr/biz/news/a/b/b;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "$$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/b/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "LADC"

    invoke-static {v1, v2, v0}, Lcom/netease/nr/base/c/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/netease/nr/biz/news/a/d;->a(Landroid/database/Cursor;I)Z

    move-result v0

    return v0
.end method

.method protected b(II)Lcom/netease/util/fragment/z;
    .locals 3

    new-instance v0, Lcom/netease/nr/biz/news/a/b/c;

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/b/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nr/biz/news/a/b/b;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/netease/nr/biz/news/a/b/c;-><init>(Landroid/content/Context;Ljava/lang/String;II)V

    return-object v0
.end method

.method public b(Landroid/support/v4/content/Loader;Ljava/util/Map;)V
    .locals 4

    const/4 v3, 0x1

    invoke-static {p2}, Lcom/netease/util/e/c;->c(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/b/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nr/biz/news/a/b/b;->b:Ljava/lang/String;

    invoke-static {v1, v2, v0, v3}, Lcom/netease/nr/biz/news/a/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Z)V

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/netease/nr/biz/news/a/b/b;->l:I

    if-le v0, v1, :cond_2

    invoke-virtual {p0, v3}, Lcom/netease/nr/biz/news/a/b/b;->b(Z)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/b/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nr/biz/news/a/b/a;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/nr/biz/news/a/b/b;->a(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/b/b;->w()Landroid/support/v4/view/ViewPager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/b/b;->m:Lcom/netease/nr/biz/news/a/b/e;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/news/a/b/b;->b(Z)V

    goto :goto_0
.end method

.method protected e(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/b/b;->a()Lcom/netease/nr/base/view/a;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-gt v1, v2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0b01b0

    invoke-virtual {p0, v2}, Lcom/netease/nr/biz/news/a/b/b;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    invoke-virtual {v0, p1}, Lcom/netease/nr/base/view/a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/netease/nr/biz/news/a/d;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/b/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "LOCALX"

    iget-object v2, p0, Lcom/netease/nr/biz/news/a/b/b;->i:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/nr/base/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/Integer;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/b/b;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v0, v1, :cond_0

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/b/b;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/netease/nr/biz/news/a/b/b;->O()V

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/netease/nr/biz/news/a/b/b;->O()V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/netease/nr/biz/news/a/b/b;->e:Ljava/util/List;

    if-nez v0, :cond_5

    move v0, v7

    :goto_1
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "url"

    invoke-static {v0, v1}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/netease/nr/biz/news/a/b/b;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "$$"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/b/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "LADC"

    invoke-static {v2, v3, v1}, Lcom/netease/nr/base/c/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v1, "tag"

    invoke-static {v0, v1}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "special"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v1, "specialID"

    invoke-static {v0, v1}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/news/a/b/b;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_6
    const-string v2, "photoset"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v1, "url"

    invoke-static {v0, v1}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/nr/biz/pics/p;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    const-string v1, "channel"

    invoke-static {v2, v1}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "setid"

    invoke-static {v2, v3}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "title"

    invoke-static {v0, v3}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "imgsrc"

    invoke-static {v0, v4}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/netease/nr/biz/news/a/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string v2, "link"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v1, "url"

    invoke-static {v0, v1}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/news/a/b/b;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const-string v2, "doc"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "url"

    invoke-static {v0, v1}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v3, p0

    move-object v6, v5

    move-object v8, v5

    invoke-virtual/range {v3 .. v8}, Lcom/netease/nr/biz/news/a/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/netease/nr/biz/news/a/d;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "T1351840906470"

    iput-object v0, p0, Lcom/netease/nr/biz/news/a/b/b;->b:Ljava/lang/String;

    const v0, 0x7f0b0025

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/news/a/b/b;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/news/a/b/b;->d:Ljava/lang/String;

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

    invoke-virtual {p0, v0, v1}, Lcom/netease/nr/biz/news/a/b/b;->a(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {p0}, Lcom/netease/nr/biz/plugin/c/f;->a(Lcom/netease/nr/biz/plugin/c/h;)V

    if-eqz p1, :cond_0

    const-string v0, "province"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/news/a/b/b;->h:Ljava/lang/String;

    const-string v0, "city"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/news/a/b/b;->i:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/news/a/b/b;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/b/b;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/b/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/netease/nr/biz/plugin/c/f;->a(Landroid/content/Context;Z)[Ljava/lang/String;

    move-result-object v0

    aget-object v1, v0, v4

    iput-object v1, p0, Lcom/netease/nr/biz/news/a/b/b;->h:Ljava/lang/String;

    aget-object v1, v0, v5

    iput-object v1, p0, Lcom/netease/nr/biz/news/a/b/b;->i:Ljava/lang/String;

    aget-object v1, v0, v4

    iget-object v2, p0, Lcom/netease/nr/biz/news/a/b/b;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    aget-object v1, v0, v5

    iget-object v2, p0, Lcom/netease/nr/biz/news/a/b/b;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    aget-object v1, v0, v4

    aget-object v0, v0, v5

    invoke-virtual {p0, v1, v0}, Lcom/netease/nr/biz/news/a/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/netease/nr/biz/news/a/d;->onDestroy()V

    invoke-static {p0}, Lcom/netease/nr/biz/plugin/c/f;->b(Lcom/netease/nr/biz/plugin/c/h;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/netease/nr/biz/news/a/d;->onDestroyView()V

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/b/b;->w()Landroid/support/v4/view/ViewPager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    :cond_0
    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/b/b;->p()Lcom/netease/nr/base/a/c;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/a/c;->a(Landroid/view/View;)V

    :cond_1
    iput-object v1, p0, Lcom/netease/nr/biz/news/a/b/b;->o:Landroid/view/View;

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/b/b;->g:Lcom/netease/nr/biz/news/a/b/d;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/b/b;->g:Lcom/netease/nr/biz/news/a/b/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/news/a/b/d;->cancel(Z)Z

    :cond_2
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 6

    if-lez p3, :cond_0

    add-int/lit8 v3, p3, -0x1

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    invoke-super/range {v0 .. v5}, Lcom/netease/nr/biz/news/a/d;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    return-void

    :cond_0
    move v3, p3

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/netease/nr/biz/news/a/d;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "province"

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/b/b;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "city"

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/b/b;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 9

    const/4 v8, 0x1

    invoke-super {p0, p1, p2}, Lcom/netease/nr/biz/news/a/d;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/b/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03003f

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/netease/nr/biz/news/a/b/b;->o:Landroid/view/View;

    const v0, 0x7f0c0070

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/Indicator;

    const v1, 0x7f0c006e

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/netease/nr/base/view/ViewPagerForSlider;

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/b/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/nr/base/c/a/f;->b(Landroid/content/Context;)F

    move-result v1

    invoke-virtual {v6, v1}, Lcom/netease/nr/base/view/ViewPagerForSlider;->a(F)V

    invoke-virtual {v6, v0}, Lcom/netease/nr/base/view/ViewPagerForSlider;->a(Lcom/netease/nr/base/view/Indicator;)V

    invoke-virtual {v6, v8}, Lcom/netease/nr/base/view/ViewPagerForSlider;->a(Z)V

    const v0, 0x7f0c00be

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/b/b;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/b/b;->m:Lcom/netease/nr/biz/news/a/b/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/nr/biz/news/a/b/e;

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/b/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nr/biz/news/a/b/b;->e:Ljava/util/List;

    iget-object v3, p0, Lcom/netease/nr/biz/news/a/b/b;->f:Ljava/util/List;

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/b/b;->o()Lcom/netease/nr/biz/news/a/h;

    move-result-object v4

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/netease/nr/biz/news/a/b/e;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Lcom/netease/nr/biz/news/a/h;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/netease/nr/biz/news/a/b/b;->m:Lcom/netease/nr/biz/news/a/b/e;

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/news/a/b/b;->m:Lcom/netease/nr/biz/news/a/b/e;

    invoke-virtual {v6, v0}, Lcom/netease/nr/base/view/ViewPagerForSlider;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/b/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nr/biz/news/a/b/a;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/nr/biz/news/a/b/b;->a(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/b/b;->p()Lcom/netease/nr/base/a/c;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v7}, Lcom/netease/nr/base/a/c;->a(Landroid/view/View;)V

    invoke-virtual {v0, v8}, Lcom/netease/nr/base/a/c;->a(Z)V

    :cond_1
    return-void
.end method

.method protected v()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public w()Landroid/support/v4/view/ViewPager;
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/b/b;->o:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/news/a/b/b;->o:Landroid/view/View;

    const v1, 0x7f0c006e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    goto :goto_0
.end method
