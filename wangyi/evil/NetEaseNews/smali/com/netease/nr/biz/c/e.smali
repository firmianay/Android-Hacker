.class public Lcom/netease/nr/biz/c/e;
.super Lcom/netease/nr/base/fragment/k;


# instance fields
.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field private d:Lcom/netease/nr/base/a/c;

.field private e:Ljava/util/List;

.field private f:Ljava/util/List;

.field private g:Landroid/view/View;

.field private h:Landroid/widget/RelativeLayout;

.field private i:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/view/View;

.field private q:Landroid/view/View;

.field private r:Lcom/netease/nr/base/view/MyImageView;

.field private s:Lcom/netease/nr/base/view/MyImageView;

.field private t:Lcom/netease/nr/base/c/a/m;

.field private u:Ljava/util/List;

.field private v:Landroid/os/Handler;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/netease/nr/base/fragment/k;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/nr/biz/c/e;->d:Lcom/netease/nr/base/a/c;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/biz/c/e;->e:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/biz/c/e;->f:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/biz/c/e;->u:Ljava/util/List;

    const-string v0, ""

    iput-object v0, p0, Lcom/netease/nr/biz/c/e;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/netease/nr/biz/c/e;->c:Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/biz/c/e;->v:Landroid/os/Handler;

    new-instance v0, Lcom/netease/nr/biz/c/f;

    invoke-direct {v0, p0}, Lcom/netease/nr/biz/c/f;-><init>(Lcom/netease/nr/biz/c/e;)V

    iput-object v0, p0, Lcom/netease/nr/biz/c/e;->y:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/biz/c/e;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/c/e;->v:Landroid/os/Handler;

    return-object v0
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 6

    const/4 v0, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v0

    move-object v3, v0

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "section"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v2

    :goto_1
    const-string v2, "section"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v2, v1

    move-object v3, v0

    goto :goto_0

    :cond_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v3, v2}, Lcom/netease/util/e/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/netease/util/e/b;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {v3, v2}, Lcom/netease/util/e/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/netease/util/e/b;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v4
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0c00ab

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/netease/nr/biz/c/e;->h:Landroid/widget/RelativeLayout;

    const v0, 0x7f0c00af

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/nr/biz/c/e;->i:Landroid/widget/TextView;

    const v0, 0x7f0c00b3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/nr/biz/c/e;->m:Landroid/widget/TextView;

    const v0, 0x7f0c00ac

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/nr/biz/c/e;->o:Landroid/widget/TextView;

    const v0, 0x7f0c00ae

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/c/e;->p:Landroid/view/View;

    const v0, 0x7f0c00b2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/c/e;->q:Landroid/view/View;

    const v0, 0x7f0c00b0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/MyImageView;

    iput-object v0, p0, Lcom/netease/nr/biz/c/e;->r:Lcom/netease/nr/base/view/MyImageView;

    const v0, 0x7f0c00b4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/MyImageView;

    iput-object v0, p0, Lcom/netease/nr/biz/c/e;->s:Lcom/netease/nr/base/view/MyImageView;

    return-void
.end method

.method private a(Landroid/view/View;I)V
    .locals 6

    const v0, 0x7f0c00b6

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0c00b7

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0c00b8

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0c00b9

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    div-int/lit16 v4, p2, 0x3e8

    if-eqz v4, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    rem-int/lit16 v0, p2, 0x3e8

    div-int/lit8 v0, v0, 0x64

    if-nez v0, :cond_1

    if-eqz v4, :cond_2

    :cond_1
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    rem-int/lit8 v1, p2, 0x64

    div-int/lit8 v1, v1, 0xa

    if-nez v0, :cond_3

    if-nez v4, :cond_3

    if-eqz v1, :cond_4

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    rem-int/lit8 v0, p2, 0xa

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/netease/nr/biz/c/e;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/nr/biz/c/e;->d(Ljava/util/Map;)V

    return-void
.end method

.method private b(Ljava/util/Map;)Ljava/util/List;
    .locals 3

    const-string v0, "logOrder"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "logs"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v2, "asc"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    :cond_1
    invoke-direct {p0, v1}, Lcom/netease/nr/biz/c/e;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method private b(Landroid/view/View;)V
    .locals 5

    const v0, 0x7f0c00b6

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0c00b7

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0c00b8

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0c00b9

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v0, 0x8

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private b(Ljava/util/List;)V
    .locals 8

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/netease/nr/biz/c/e;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/c/e;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-direct {p0, p1}, Lcom/netease/nr/biz/c/e;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/nr/biz/c/e;->c(Ljava/util/List;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v3, v4

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "homeScore"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "awayScore"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_3
    :goto_2
    const-string v1, "section"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/nr/biz/c/e;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v5, v3

    :cond_4
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/util/e/b;

    iget-object v3, v2, Lcom/netease/util/e/b;->a:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v2, Lcom/netease/util/e/b;->b:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v2, v2, Lcom/netease/util/e/b;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v4, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v5, 0x1

    goto :goto_3

    :cond_5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/netease/nr/biz/c/e;->b(II)V

    goto :goto_2

    :cond_6
    move v3, v5

    goto :goto_1

    :cond_7
    if-eqz v3, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/netease/nr/biz/c/e;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0, v0}, Lcom/netease/nr/biz/c/e;->c(Ljava/util/List;)V

    goto/16 :goto_0
.end method

.method private c(Ljava/util/List;)V
    .locals 4

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/c/e;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/netease/nr/biz/c/e;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/netease/nr/biz/c/e;->d:Lcom/netease/nr/base/a/c;

    if-nez v0, :cond_1

    new-instance v0, Lcom/netease/nr/biz/c/a;

    iget-object v1, p0, Lcom/netease/nr/biz/c/e;->e:Ljava/util/List;

    invoke-virtual {p0}, Lcom/netease/nr/biz/c/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netease/nr/biz/c/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/netease/util/j/a;->a(Landroid/content/Context;)Lcom/netease/util/j/a;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/netease/nr/biz/c/a;-><init>(Ljava/util/List;Landroid/content/Context;Lcom/netease/util/j/a;)V

    new-instance v1, Lcom/netease/nr/base/a/c;

    iget-object v2, p0, Lcom/netease/nr/biz/c/e;->g:Landroid/view/View;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/netease/nr/base/a/c;-><init>(Landroid/widget/ListAdapter;Landroid/view/View;Landroid/view/View;)V

    iput-object v1, p0, Lcom/netease/nr/biz/c/e;->d:Lcom/netease/nr/base/a/c;

    iget-object v0, p0, Lcom/netease/nr/biz/c/e;->d:Lcom/netease/nr/base/a/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/a/c;->a(Z)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/c/e;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/c/e;->d:Lcom/netease/nr/base/a/c;

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/c/e;->setListAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/c/e;->d:Lcom/netease/nr/base/a/c;

    invoke-virtual {v0}, Lcom/netease/nr/base/a/c;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private d(Ljava/util/Map;)V
    .locals 4

    iget-object v0, p0, Lcom/netease/nr/biz/c/e;->r:Lcom/netease/nr/base/view/MyImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/c/e;->s:Lcom/netease/nr/base/view/MyImageView;

    if-eqz v0, :cond_0

    const-string v0, "homeFlag"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "awayFlag"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/nr/biz/c/e;->t:Lcom/netease/nr/base/c/a/m;

    iget-object v3, p0, Lcom/netease/nr/biz/c/e;->r:Lcom/netease/nr/base/view/MyImageView;

    invoke-virtual {v2, v0, v3}, Lcom/netease/nr/base/c/a/m;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    iget-object v0, p0, Lcom/netease/nr/biz/c/e;->t:Lcom/netease/nr/base/c/a/m;

    iget-object v2, p0, Lcom/netease/nr/biz/c/e;->s:Lcom/netease/nr/base/view/MyImageView;

    invoke-virtual {v0, v1, v2}, Lcom/netease/nr/base/c/a/m;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Lcom/netease/util/j/a;Landroid/view/View;)V
    .locals 7

    const v6, 0x7f0c00b8

    const v5, 0x7f0c00b7

    const v4, 0x7f0c00b6

    const v3, 0x7f0700a3

    const v2, 0x7f0200bd

    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/fragment/k;->a(Lcom/netease/util/j/a;Landroid/view/View;)V

    iget-object v0, p0, Lcom/netease/nr/biz/c/e;->d:Lcom/netease/nr/base/a/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/c/e;->d:Lcom/netease/nr/base/a/c;

    invoke-virtual {v0}, Lcom/netease/nr/base/a/c;->notifyDataSetChanged()V

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/c/e;->h:Landroid/widget/RelativeLayout;

    const v1, 0x7f070014

    invoke-virtual {p1, v0, v1}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/c/e;->r:Lcom/netease/nr/base/view/MyImageView;

    const v1, 0x7f0200bf

    invoke-virtual {p1, v0, v1}, Lcom/netease/util/j/a;->a(Landroid/widget/ImageView;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/c/e;->s:Lcom/netease/nr/base/view/MyImageView;

    const v1, 0x7f0200bf

    invoke-virtual {p1, v0, v1}, Lcom/netease/util/j/a;->a(Landroid/widget/ImageView;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/c/e;->o:Landroid/widget/TextView;

    const v1, 0x7f0700a1

    invoke-virtual {p1, v0, v1}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/c/e;->p:Landroid/view/View;

    const v1, 0x7f0c00b9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/c/e;->p:Landroid/view/View;

    const v1, 0x7f0c00b9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1, v0, v3}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/c/e;->p:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/c/e;->p:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1, v0, v3}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/c/e;->p:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/c/e;->p:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1, v0, v3}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/c/e;->p:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/c/e;->p:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1, v0, v3}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/c/e;->q:Landroid/view/View;

    const v1, 0x7f0c00b9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/c/e;->q:Landroid/view/View;

    const v1, 0x7f0c00b9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1, v0, v3}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/c/e;->q:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/c/e;->q:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1, v0, v3}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/c/e;->q:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/c/e;->q:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1, v0, v3}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/c/e;->q:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/c/e;->q:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1, v0, v3}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 6

    const/16 v5, 0x8

    const-string v0, "homeTeam"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "awayTeam"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "homeScore"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "awayScore"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/c/e;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/nr/biz/c/e;->x:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/c/e;->n:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netease/nr/biz/c/e;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/c/e;->n:Landroid/widget/TextView;

    const v1, 0x7f0b01f1

    invoke-virtual {p0, v1}, Lcom/netease/nr/biz/c/e;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v4, p0, Lcom/netease/nr/biz/c/e;->h:Landroid/widget/RelativeLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v4, p0, Lcom/netease/nr/biz/c/e;->n:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, p0, Lcom/netease/nr/biz/c/e;->i:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netease/nr/biz/c/e;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/netease/nr/biz/c/e;->b(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/netease/nr/biz/c/e;->q:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/netease/nr/biz/c/e;->b(Landroid/view/View;)V

    iget-object v0, p0, Lcom/netease/nr/biz/c/e;->p:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/netease/nr/biz/c/e;->b(Landroid/view/View;)V

    goto :goto_0
.end method

.method public b(Landroid/os/Bundle;)Lcom/netease/util/fragment/z;
    .locals 3

    new-instance v0, Lcom/netease/nr/biz/c/h;

    invoke-virtual {p0}, Lcom/netease/nr/biz/c/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nr/biz/c/e;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/nr/biz/c/h;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public b(II)V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/c/e;->p:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/netease/nr/biz/c/e;->a(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/c/e;->q:Landroid/view/View;

    invoke-direct {p0, v0, p2}, Lcom/netease/nr/biz/c/e;->a(Landroid/view/View;I)V

    return-void
.end method

.method public b(Landroid/support/v4/content/Loader;Ljava/util/Map;)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/fragment/k;->b(Landroid/support/v4/content/Loader;Ljava/util/Map;)V

    invoke-static {p2}, Lcom/netease/util/e/c;->c(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/netease/nr/biz/c/e;->b(Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v1, "flagUrl"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/netease/nr/biz/c/e;->w:Ljava/lang/String;

    const-string v1, "commentator"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/nr/biz/c/e;->x:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/nr/biz/c/e;->w:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/nr/biz/c/g;

    invoke-virtual {p0}, Lcom/netease/nr/biz/c/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/netease/nr/biz/c/e;->w:Ljava/lang/String;

    invoke-direct {v0, v1, v3, p0}, Lcom/netease/nr/biz/c/g;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/netease/nr/biz/c/e;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v1, v4

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/c/g;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/util/e/b;

    iget-object v0, v0, Lcom/netease/util/e/b;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/util/e/b;

    iget-object v0, v0, Lcom/netease/util/e/b;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/c/e;->a(Ljava/util/Map;)V

    :cond_1
    invoke-direct {p0, v2}, Lcom/netease/nr/biz/c/e;->c(Ljava/util/List;)V

    iget-object v0, p0, Lcom/netease/nr/biz/c/e;->v:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netease/nr/biz/c/e;->y:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/netease/nr/biz/c/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b01f2

    invoke-static {v0, v1}, Lcom/netease/nr/base/view/az;->a(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public c(Landroid/os/Bundle;)Lcom/netease/util/fragment/z;
    .locals 6

    new-instance v0, Lcom/netease/nr/biz/c/i;

    invoke-virtual {p0}, Lcom/netease/nr/biz/c/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "http://data.live.126.net/liveMobile/%s.json"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/netease/nr/biz/c/e;->b:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netease/nr/biz/c/i;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public d(Landroid/support/v4/content/Loader;Ljava/util/Map;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/fragment/k;->d(Landroid/support/v4/content/Loader;Ljava/util/Map;)V

    invoke-static {p2}, Lcom/netease/util/e/c;->c(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "logs"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v0}, Lcom/netease/nr/biz/c/e;->b(Ljava/util/List;)V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/netease/nr/base/fragment/k;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/netease/nr/base/fragment/k;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/c/e;->z()V

    invoke-virtual {p0}, Lcom/netease/nr/biz/c/e;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "roomid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/nr/biz/c/e;->b:Ljava/lang/String;

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/c/e;->c:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0}, Lcom/netease/nr/biz/c/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0200bf

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/nr/base/c/a/m;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/netease/nr/base/c/a/m;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/c/e;->t:Lcom/netease/nr/base/c/a/m;

    return-void
.end method

.method public onDestroyView()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/netease/nr/base/fragment/k;->onDestroyView()V

    iget-object v0, p0, Lcom/netease/nr/biz/c/e;->v:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netease/nr/biz/c/e;->y:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/netease/nr/biz/c/e;->i:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/netease/nr/biz/c/e;->m:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/netease/nr/biz/c/e;->n:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/netease/nr/biz/c/e;->p:Landroid/view/View;

    iput-object v2, p0, Lcom/netease/nr/biz/c/e;->q:Landroid/view/View;

    iput-object v2, p0, Lcom/netease/nr/biz/c/e;->r:Lcom/netease/nr/base/view/MyImageView;

    iput-object v2, p0, Lcom/netease/nr/biz/c/e;->s:Lcom/netease/nr/base/view/MyImageView;

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/netease/nr/base/fragment/k;->onResume()V

    invoke-virtual {p0}, Lcom/netease/nr/biz/c/e;->E()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/fragment/k;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/c/e;->a()Lcom/netease/nr/base/view/a;

    move-result-object v0

    const v1, 0x7f0b01f0

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/a;->c(I)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/c/e;->a()Lcom/netease/nr/base/view/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/a;->d(Z)V

    :try_start_0
    iget-object v0, p0, Lcom/netease/nr/biz/c/e;->g:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/biz/c/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03003c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/c/e;->g:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/c/e;->g:Landroid/view/View;

    const v1, 0x7f0c00b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/nr/biz/c/e;->n:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/netease/nr/biz/c/e;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/c/e;->n:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netease/nr/biz/c/e;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/c/e;->g:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/netease/nr/biz/c/e;->a(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/c/e;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_2

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelector(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
