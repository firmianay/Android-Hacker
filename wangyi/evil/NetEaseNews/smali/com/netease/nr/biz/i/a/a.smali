.class public Lcom/netease/nr/biz/i/a/a;
.super Lcom/netease/nr/base/fragment/q;

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/netease/nr/biz/i/a/a/j;
.implements Lcom/netease/nr/biz/i/a/a/m;
.implements Lcom/netease/nr/biz/sns/a/d/b;


# instance fields
.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:Ljava/lang/String;

.field protected e:Ljava/lang/String;

.field protected f:Ljava/lang/String;

.field private g:Ljava/util/List;

.field private h:Ljava/util/Map;

.field private i:Ljava/util/List;

.field private m:Lcom/netease/nr/biz/i/a/a/d;

.field private n:Lcom/netease/nr/biz/i/a/e;

.field private o:Lcom/netease/nr/biz/i/a/a/i;

.field private p:I

.field private q:I

.field private r:Landroid/view/View;

.field private s:Z

.field private t:Lcom/netease/nr/base/c/e;

.field private u:Lcom/netease/nr/base/view/a;

.field private v:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/netease/nr/base/fragment/q;-><init>()V

    const-string v0, "hot"

    iput-object v0, p0, Lcom/netease/nr/biz/i/a/a;->b:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/biz/i/a/a;->g:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/biz/i/a/a;->h:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/biz/i/a/a;->i:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/nr/biz/i/a/a;->s:Z

    return-void
.end method

.method private a(Ljava/util/Map;I)V
    .locals 10

    const v9, 0x7f0c026c

    const v8, 0x7f0c026b

    const v7, 0x7f0c026a

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/netease/nr/biz/i/a/a;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a;->o:Lcom/netease/nr/biz/i/a/a/i;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "commentBuild"

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "floor"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/netease/nr/biz/i/a/a/a;->a(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a;->o:Lcom/netease/nr/biz/i/a/a/i;

    invoke-virtual {v0, v7, v5}, Lcom/netease/nr/biz/i/a/a/i;->b(IZ)V

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a;->o:Lcom/netease/nr/biz/i/a/a/i;

    const v2, 0x7f0c0200

    invoke-virtual {v0, v2, v5}, Lcom/netease/nr/biz/i/a/a/i;->b(IZ)V

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a;->o:Lcom/netease/nr/biz/i/a/a/i;

    const v2, 0x7f0c007b

    invoke-virtual {v0, v2, v5}, Lcom/netease/nr/biz/i/a/a/i;->b(IZ)V

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a;->o:Lcom/netease/nr/biz/i/a/a/i;

    invoke-virtual {v0, v8, v5}, Lcom/netease/nr/biz/i/a/a/i;->b(IZ)V

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a;->o:Lcom/netease/nr/biz/i/a/a/i;

    invoke-virtual {v0, v9, v5}, Lcom/netease/nr/biz/i/a/a/i;->b(IZ)V

    :goto_1
    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a;->o:Lcom/netease/nr/biz/i/a/a/i;

    invoke-virtual {v0}, Lcom/netease/nr/biz/i/a/a/i;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/i/a/a;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0}, Lcom/netease/nr/biz/i/a/a;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/netease/nr/biz/i/a/a;->q:I

    sub-int/2addr v3, v4

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, v3

    iget-object v3, p0, Lcom/netease/nr/biz/i/a/a;->o:Lcom/netease/nr/biz/i/a/a/i;

    invoke-virtual {p0}, Lcom/netease/nr/biz/i/a/a;->getListView()Landroid/widget/ListView;

    move-result-object v4

    neg-int v0, v0

    invoke-virtual {v3, v4, v2, v0, v1}, Lcom/netease/nr/biz/i/a/a/i;->a(Landroid/view/View;IILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a;->o:Lcom/netease/nr/biz/i/a/a/i;

    invoke-virtual {v0, v7, v6}, Lcom/netease/nr/biz/i/a/a/i;->b(IZ)V

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a;->o:Lcom/netease/nr/biz/i/a/a/i;

    const v2, 0x7f0c0200

    invoke-virtual {v0, v2, v6}, Lcom/netease/nr/biz/i/a/a/i;->b(IZ)V

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a;->o:Lcom/netease/nr/biz/i/a/a/i;

    const v2, 0x7f0c007b

    invoke-virtual {v0, v2, v6}, Lcom/netease/nr/biz/i/a/a/i;->b(IZ)V

    invoke-static {p1}, Lcom/netease/nr/biz/i/a/a/a;->e(Ljava/util/Map;)I

    move-result v2

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a;->o:Lcom/netease/nr/biz/i/a/a/i;

    invoke-virtual {v0}, Lcom/netease/nr/biz/i/a/a/i;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f0b013d

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/netease/nr/biz/i/a/a;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcom/netease/nr/biz/i/a/a/a;->g(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a;->o:Lcom/netease/nr/biz/i/a/a/i;

    invoke-virtual {v0, v7, v5}, Lcom/netease/nr/biz/i/a/a/i;->a(IZ)V

    :goto_2
    invoke-direct {p0, p1, p2}, Lcom/netease/nr/biz/i/a/a;->f(Ljava/util/Map;I)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a;->o:Lcom/netease/nr/biz/i/a/a/i;

    invoke-virtual {v0, v8, v6}, Lcom/netease/nr/biz/i/a/a/i;->b(IZ)V

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a;->o:Lcom/netease/nr/biz/i/a/a/i;

    invoke-virtual {v0, v9, v5}, Lcom/netease/nr/biz/i/a/a/i;->b(IZ)V

    goto/16 :goto_1

    :cond_3
    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a;->o:Lcom/netease/nr/biz/i/a/a/i;

    invoke-virtual {v0, v7, v6}, Lcom/netease/nr/biz/i/a/a/i;->a(IZ)V

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/netease/nr/biz/i/a/a;->o:Lcom/netease/nr/biz/i/a/a/i;

    invoke-virtual {v2, v8, v5}, Lcom/netease/nr/biz/i/a/a/i;->b(IZ)V

    iget-object v2, p0, Lcom/netease/nr/biz/i/a/a;->o:Lcom/netease/nr/biz/i/a/a/i;

    invoke-virtual {v2, v9, v6}, Lcom/netease/nr/biz/i/a/a/i;->b(IZ)V

    const-string v2, "collectId"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1
.end method

.method private b(Ljava/util/Map;I)V
    .locals 6

    const v4, 0x7f0c026a

    const/4 v5, 0x0

    invoke-static {p1}, Lcom/netease/nr/biz/i/a/a/a;->f(Ljava/util/Map;)V

    invoke-static {p1}, Lcom/netease/nr/biz/i/a/a/a;->e(Ljava/util/Map;)I

    move-result v1

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a;->o:Lcom/netease/nr/biz/i/a/a/i;

    invoke-virtual {v0}, Lcom/netease/nr/biz/i/a/a/i;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0b013d

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/netease/nr/biz/i/a/a;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/netease/nr/biz/i/a/a;->o:Lcom/netease/nr/biz/i/a/a/i;

    invoke-virtual {v1, v4, v5}, Lcom/netease/nr/biz/i/a/a/i;->a(IZ)V

    invoke-static {p1}, Lcom/netease/nr/biz/i/a/a/a;->d(Ljava/util/Map;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "pi"

    invoke-static {v1, v2}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/netease/nr/biz/i/a/d;

    invoke-virtual {p0}, Lcom/netease/nr/biz/i/a/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/nr/biz/i/a/a;->c:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v1}, Lcom/netease/nr/biz/i/a/d;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v1}, Lcom/netease/nr/biz/i/a/d;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    iget-object v1, p0, Lcom/netease/nr/biz/i/a/a;->r:Landroid/view/View;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/netease/nr/biz/i/a/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300d6

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/nr/biz/i/a/a;->r:Landroid/view/View;

    :cond_1
    invoke-virtual {p0}, Lcom/netease/nr/biz/i/a/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f04001a

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nr/biz/i/a/a;->r:Landroid/view/View;

    const v3, 0x7f0c0269

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget-object v3, p0, Lcom/netease/nr/biz/i/a/a;->r:Landroid/view/View;

    invoke-virtual {v3, v1, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/netease/nr/biz/i/a/a;->r:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    neg-int v0, v0

    iget-object v2, p0, Lcom/netease/nr/biz/i/a/a;->o:Lcom/netease/nr/biz/i/a/a/i;

    iget-object v3, p0, Lcom/netease/nr/biz/i/a/a;->r:Landroid/view/View;

    invoke-virtual {v2, v3, v1, v0}, Lcom/netease/nr/biz/i/a/a/i;->a(Landroid/view/View;II)V

    return-void
.end method

.method private c(Ljava/util/Map;I)V
    .locals 7

    const/4 v6, 0x2

    const/4 v1, 0x1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Lcom/netease/nr/biz/i/a/a/a;->d(Ljava/util/Map;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v4, "bi"

    invoke-static {v0, v4}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "NON"

    invoke-static {p1, v0}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    if-gt v1, p2, :cond_6

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-ne v1, p2, :cond_0

    const-string v3, "bi"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-gt p2, v6, :cond_3

    :goto_1
    if-gt v1, p2, :cond_6

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-ne v1, p2, :cond_2

    const-string v3, "bi"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_2
    if-gt v0, v6, :cond_4

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    const-string v0, "NON"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v3, -0x2

    add-int/lit8 v0, v0, 0x1

    move v1, v0

    :goto_3
    if-gt v1, p2, :cond_6

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-ne v1, p2, :cond_5

    const-string v3, "bi"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a;->m:Lcom/netease/nr/biz/i/a/a/d;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a;->m:Lcom/netease/nr/biz/i/a/a/d;

    invoke-virtual {v0}, Lcom/netease/nr/biz/i/a/a/d;->d()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a;->m:Lcom/netease/nr/biz/i/a/a/d;

    invoke-virtual {v0, v2}, Lcom/netease/nr/biz/i/a/a/d;->a(Ljava/util/Map;)V

    :cond_7
    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a;->o:Lcom/netease/nr/biz/i/a/a/i;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a;->o:Lcom/netease/nr/biz/i/a/a/i;

    invoke-virtual {v0}, Lcom/netease/nr/biz/i/a/a/i;->dismiss()V

    :cond_8
    return-void
.end method

.method private d(I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a;->t:Lcom/netease/nr/base/c/e;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcom/netease/nr/base/c/e;->a(II)I

    invoke-virtual {p0}, Lcom/netease/nr/biz/i/a/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b0148

    invoke-static {v0, v1}, Lcom/netease/nr/base/view/az;->a(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a;->o:Lcom/netease/nr/biz/i/a/a/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a;->o:Lcom/netease/nr/biz/i/a/a/i;

    invoke-virtual {v0}, Lcom/netease/nr/biz/i/a/a/i;->dismiss()V

    goto :goto_0
.end method

.method private d(Ljava/util/Map;I)V
    .locals 7

    const/4 v6, 0x0

    invoke-static {p1}, Lcom/netease/nr/biz/i/a/a/a;->d(Ljava/util/Map;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "bi"

    invoke-static {v0, v1}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pi"

    invoke-static {v0, v2}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nr/biz/i/a/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/netease/nr/biz/i/a/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "http://comment.news.163.com/%s/%s/%s.html"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v6

    const/4 v5, 0x1

    aput-object v2, v4, v5

    const/4 v5, 0x2

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "wap"

    invoke-static {v3, v4}, Lcom/netease/nr/base/c/y;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "www"

    invoke-static {v3, v5}, Lcom/netease/nr/base/c/y;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v0}, Lcom/netease/nr/base/c/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "share_wap_url"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "share_www_url"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "share_pic"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/netease/nr/biz/sns/a/d/a;

    invoke-direct {v2}, Lcom/netease/nr/biz/sns/a/d/a;-><init>()V

    const-string v3, "from_where"

    sget-object v0, Lcom/netease/nr/base/c/a;->a:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/netease/nr/biz/sns/a/d/a;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {v2, p0, v6}, Lcom/netease/nr/biz/sns/a/d/a;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/i/a/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/netease/nr/biz/sns/a/d/a;->a(Landroid/support/v4/app/FragmentActivity;)V

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a;->o:Lcom/netease/nr/biz/i/a/a/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a;->o:Lcom/netease/nr/biz/i/a/a/i;

    invoke-virtual {v0}, Lcom/netease/nr/biz/i/a/a/i;->dismiss()V

    :cond_0
    return-void
.end method

.method private e(Ljava/util/Map;I)V
    .locals 5

    const v2, 0x7f0b0149

    invoke-static {p1}, Lcom/netease/nr/biz/i/a/a/a;->d(Ljava/util/Map;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/netease/nr/biz/i/a/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/netease/nr/base/view/az;->a(Landroid/content/Context;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "pi"

    invoke-static {v0, v1}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/netease/nr/biz/i/a/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/netease/nr/base/view/az;->a(Landroid/content/Context;I)V

    goto :goto_0

    :cond_2
    const-string v1, "http://comment.api.163.com/api/json/post/load/%s/%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/netease/nr/biz/i/a/a;->c:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-static {p1, v2}, Lcom/netease/util/e/a;->c(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "b"

    invoke-static {v2, v3}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/netease/nr/base/c/e;->a()Lcom/netease/nr/base/c/g;

    move-result-object v3

    iput-object v1, v3, Lcom/netease/nr/base/c/g;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/nr/biz/i/a/a;->c:Ljava/lang/String;

    iput-object v1, v3, Lcom/netease/nr/base/c/g;->m:Ljava/lang/String;

    iput-object v0, v3, Lcom/netease/nr/base/c/g;->n:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a;->e:Ljava/lang/String;

    iput-object v0, v3, Lcom/netease/nr/base/c/g;->e:Ljava/lang/String;

    const/4 v0, 0x3

    iput v0, v3, Lcom/netease/nr/base/c/g;->d:I

    iput-object p1, v3, Lcom/netease/nr/base/c/g;->l:Ljava/util/Map;

    iput-object v2, v3, Lcom/netease/nr/base/c/g;->k:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a;->t:Lcom/netease/nr/base/c/e;

    invoke-virtual {v0, v3}, Lcom/netease/nr/base/c/e;->b(Lcom/netease/nr/base/c/g;)Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/netease/nr/biz/i/a/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b0147

    invoke-static {v0, v1}, Lcom/netease/nr/base/view/az;->a(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a;->o:Lcom/netease/nr/biz/i/a/a/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a;->o:Lcom/netease/nr/biz/i/a/a/i;

    invoke-virtual {v0}, Lcom/netease/nr/biz/i/a/a/i;->dismiss()V

    goto :goto_0
.end method

.method private f(Ljava/util/Map;I)I
    .locals 5

    const/4 v1, -0x1

    invoke-static {p1}, Lcom/netease/nr/biz/i/a/a/a;->d(Ljava/util/Map;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const-string v2, "pi"

    invoke-static {v0, v2}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const-string v1, "http://comment.api.163.com/api/json/post/load/%s/%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/netease/nr/biz/i/a/a;->c:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/netease/nr/base/c/e;->a()Lcom/netease/nr/base/c/g;

    move-result-object v1

    iput-object v0, v1, Lcom/netease/nr/base/c/g;->b:Ljava/lang/String;

    const/4 v0, 0x3

    iput v0, v1, Lcom/netease/nr/base/c/g;->d:I

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a;->t:Lcom/netease/nr/base/c/e;

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/c/e;->a(Lcom/netease/nr/base/c/g;)I

    move-result v0

    goto :goto_0
.end method

.method private g(Ljava/util/Map;I)V
    .locals 3

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "b"

    invoke-static {v0, v1}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netease/nr/biz/i/a/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v2, "clipboard"

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/i/a/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b0146

    invoke-static {v0, v1}, Lcom/netease/nr/base/view/az;->a(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a;->o:Lcom/netease/nr/biz/i/a/a/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a;->o:Lcom/netease/nr/biz/i/a/a/i;

    invoke-virtual {v0}, Lcom/netease/nr/biz/i/a/a/i;->dismiss()V

    :cond_0
    return-void
.end method

.method private m()V
    .locals 4

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a;->o:Lcom/netease/nr/biz/i/a/a/i;

    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/nr/biz/i/a/a/i;

    invoke-virtual {p0}, Lcom/netease/nr/biz/i/a/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netease/nr/biz/i/a/a/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/nr/biz/i/a/a;->o:Lcom/netease/nr/biz/i/a/a/i;

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a;->o:Lcom/netease/nr/biz/i/a/a/i;

    invoke-virtual {v0, p0}, Lcom/netease/nr/biz/i/a/a/i;->a(Lcom/netease/nr/biz/i/a/a/j;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/i/a/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300d7

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/i/a/a;->o:Lcom/netease/nr/biz/i/a/a/i;

    const/4 v2, 0x6

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {v1, v0, v2}, Lcom/netease/nr/biz/i/a/a/i;->a(Landroid/view/View;[I)V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x7f0c026a
        0x7f0c0200
        0x7f0c007b
        0x7f0c026b
        0x7f0c026c
        0x7f0c026d
    .end array-data
.end method

.method private n()V
    .locals 6

    new-instance v0, Lcom/netease/nr/biz/i/a/e;

    invoke-virtual {p0}, Lcom/netease/nr/biz/i/a/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nr/biz/i/a/a;->g:Ljava/util/List;

    iget-object v3, p0, Lcom/netease/nr/biz/i/a/a;->h:Ljava/util/Map;

    iget-object v4, p0, Lcom/netease/nr/biz/i/a/a;->i:Ljava/util/List;

    iget-object v5, p0, Lcom/netease/nr/biz/i/a/a;->c:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/netease/nr/biz/i/a/e;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/nr/biz/i/a/a;->n:Lcom/netease/nr/biz/i/a/e;

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a;->n:Lcom/netease/nr/biz/i/a/e;

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/i/a/a;->setListAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/netease/nr/biz/sns/a/d/a;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 9

    const v8, 0x7f0b007f

    const v7, 0x7f0b007d

    const/high16 v6, 0x7f0b0000

    const/4 v1, 0x0

    const v5, 0x7f0b0065

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Lcom/netease/nr/biz/sns/a/d/a;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    invoke-virtual {p1}, Lcom/netease/nr/biz/sns/a/d/a;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v2, v1

    :goto_1
    invoke-virtual {p1}, Lcom/netease/nr/biz/sns/a/d/a;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    if-nez v4, :cond_2

    :goto_2
    const-string v4, "share_wap_url"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "share_www_url"

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "share_pic"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sms"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Lcom/netease/nr/biz/i/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u300a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nr/biz/i/a/a;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u300b"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0b006a

    invoke-virtual {p0, v2}, Lcom/netease/nr/biz/i/a/a;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0b0068

    invoke-virtual {p0, v2}, Lcom/netease/nr/biz/i/a/a;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%%wap%%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0b0069

    invoke-virtual {p0, v2}, Lcom/netease/nr/biz/i/a/a;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%%www%%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "share_content"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-object v3

    :cond_0
    invoke-virtual {p1}, Lcom/netease/nr/biz/sns/a/d/a;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "share_wap_url"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/netease/nr/biz/sns/a/d/a;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "share_www_url"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/netease/nr/biz/sns/a/d/a;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "share_pic"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :cond_3
    const-string v0, "weixin"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "weixin_timeline"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "yiliao"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "yixin"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "yixin_timeline"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const-string v0, "share_title"

    const v1, 0x7f0b006f

    invoke-virtual {p0, v1}, Lcom/netease/nr/biz/i/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "share_content"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/netease/nr/biz/i/a/a;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v7}, Lcom/netease/nr/biz/i/a/a;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    const-string v0, "qqfriends"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "title"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/netease/nr/biz/i/a/a;->e:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v7}, Lcom/netease/nr/biz/i/a/a;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "targetUrl"

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "appName"

    invoke-virtual {p0, v6}, Lcom/netease/nr/biz/i/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "site"

    invoke-virtual {p0, v6}, Lcom/netease/nr/biz/i/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_6
    const-string v0, "email"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "ydnote"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_7
    const-string v0, "ydnote"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Lcom/netease/nr/biz/i/a/a;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\uff1a"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "<html><head></head><body style=\"margin:0px; padding:0px;\">"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "<center><div style=\"color:#464646;font-size:18px;font-weight:bold;\" >"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/netease/nr/biz/i/a/a;->e:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "</div>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "<p>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v4, 0x7f0b007e

    invoke-virtual {p0, v4}, Lcom/netease/nr/biz/i/a/a;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "<a href=\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "%%www%%"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\">"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "%%www%%"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "</a></p>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_8

    const-string v2, "<br/>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v8}, Lcom/netease/nr/biz/i/a/a;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "<img src=\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "%%img%%"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\' />"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    const-string v2, "</div>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "</body></html>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "//"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/netease/nr/biz/i/a/a;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/netease/nr/biz/i/a/a;->e:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "share_content"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "ydnote_content"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ydnote_title"

    iget-object v2, p0, Lcom/netease/nr/biz/i/a/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "share_other"

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_3

    :cond_8
    const-string v2, "<p>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v8}, Lcom/netease/nr/biz/i/a/a;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "<a href=\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "%%img%%"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\">"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "%%img%%"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "</a></p>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_9
    const-string v0, "share_title"

    const v2, 0x7f0b006d

    invoke-virtual {p0, v2}, Lcom/netease/nr/biz/i/a/a;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "share_content"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "//"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v1, 0x7f0b0071

    invoke-virtual {p0, v1}, Lcom/netease/nr/biz/i/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nr/biz/i/a/a;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "share_content"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Landroid/view/ViewGroup;)Lcom/netease/nr/base/view/TabletContainer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public a()Lcom/netease/nr/base/view/a;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a;->u:Lcom/netease/nr/base/view/a;

    return-object v0
.end method

.method public a(ILjava/lang/Object;)V
    .locals 4

    const/4 v3, -0x1

    check-cast p2, Ljava/util/Map;

    const-string v0, "commentBuild"

    invoke-static {p2, v0}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "floor"

    invoke-static {p2, v1, v3}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;I)I

    move-result v1

    const-string v2, "collectId"

    invoke-static {p2, v2, v3}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;I)I

    move-result v2

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    if-ge v1, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-direct {p0, v0, v1}, Lcom/netease/nr/biz/i/a/a;->d(Ljava/util/Map;I)V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0, v0, v1}, Lcom/netease/nr/biz/i/a/a;->b(Ljava/util/Map;I)V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0, v0, v1}, Lcom/netease/nr/biz/i/a/a;->c(Ljava/util/Map;I)V

    goto :goto_0

    :sswitch_3
    invoke-direct {p0, v0, v1}, Lcom/netease/nr/biz/i/a/a;->e(Ljava/util/Map;I)V

    goto :goto_0

    :sswitch_4
    invoke-direct {p0, v2}, Lcom/netease/nr/biz/i/a/a;->d(I)V

    goto :goto_0

    :sswitch_5
    invoke-direct {p0, v0, v1}, Lcom/netease/nr/biz/i/a/a;->g(Ljava/util/Map;I)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0c007b -> :sswitch_0
        0x7f0c0200 -> :sswitch_2
        0x7f0c026a -> :sswitch_1
        0x7f0c026b -> :sswitch_3
        0x7f0c026c -> :sswitch_4
        0x7f0c026d -> :sswitch_5
    .end sparse-switch
.end method

.method protected a(Lcom/netease/util/j/a;Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/fragment/q;->a(Lcom/netease/util/j/a;Landroid/view/View;)V

    const v0, 0x7f070014

    invoke-virtual {p1, p2, v0}, Lcom/netease/util/j/a;->b(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a;->m:Lcom/netease/nr/biz/i/a/a/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a;->m:Lcom/netease/nr/biz/i/a/a/d;

    invoke-virtual {v0, p1}, Lcom/netease/nr/biz/i/a/a/d;->a(Lcom/netease/util/j/a;)V

    :cond_0
    return-void
.end method

.method protected a(Lcom/netease/util/j/a;Landroid/widget/ListView;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a;->i:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a;->n:Lcom/netease/nr/biz/i/a/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a;->n:Lcom/netease/nr/biz/i/a/e;

    invoke-virtual {v0}, Lcom/netease/nr/biz/i/a/e;->a()V

    goto :goto_0
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/netease/nr/biz/i/a/a;->o:Lcom/netease/nr/biz/i/a/a/i;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netease/nr/biz/i/a/a;->o:Lcom/netease/nr/biz/i/a/a/i;

    invoke-virtual {v1, p1, p2}, Lcom/netease/nr/biz/i/a/a/i;->a(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/netease/nr/biz/i/a/a;->m:Lcom/netease/nr/biz/i/a/a/d;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/netease/nr/biz/i/a/a;->m:Lcom/netease/nr/biz/i/a/a/d;

    invoke-virtual {v1, p1, p2}, Lcom/netease/nr/biz/i/a/a/d;->a(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const v0, 0x7f0300d2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x7f0c0000

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/netease/nr/base/view/a;

    invoke-virtual {p0}, Lcom/netease/nr/biz/i/a/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/netease/nr/base/view/a;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v2, p0, Lcom/netease/nr/biz/i/a/a;->u:Lcom/netease/nr/base/view/a;

    iget-object v1, p0, Lcom/netease/nr/biz/i/a/a;->u:Lcom/netease/nr/base/view/a;

    invoke-virtual {v1, p0}, Lcom/netease/nr/base/view/a;->a(Lcom/netease/nr/base/view/i;)V

    return-object v0
.end method

.method public b(Landroid/os/Bundle;)Lcom/netease/util/fragment/z;
    .locals 3

    new-instance v0, Lcom/netease/nr/biz/i/a/c;

    invoke-direct {v0}, Lcom/netease/nr/biz/i/a/c;-><init>()V

    iget-object v1, v0, Lcom/netease/nr/biz/i/a/c;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/netease/nr/biz/i/a/a;->g:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, v0, Lcom/netease/nr/biz/i/a/c;->a:Ljava/util/List;

    const-string v2, "fake"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/netease/nr/biz/i/a/a;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/nr/biz/i/a/c;->d:Ljava/lang/String;

    iget v1, p0, Lcom/netease/nr/biz/i/a/a;->l:I

    iput v1, v0, Lcom/netease/nr/biz/i/a/c;->f:I

    iget-object v1, p0, Lcom/netease/nr/biz/i/a/a;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/nr/biz/i/a/c;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/nr/biz/i/a/a;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/nr/biz/i/a/c;->c:Ljava/lang/String;

    new-instance v1, Lcom/netease/nr/biz/i/a/b;

    invoke-virtual {p0}, Lcom/netease/nr/biz/i/a/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/netease/nr/biz/i/a/b;-><init>(Landroid/content/Context;Lcom/netease/nr/biz/i/a/c;)V

    return-object v1
.end method

.method public b(Landroid/support/v4/content/Loader;Ljava/util/Map;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/netease/nr/biz/i/a/a;->s:Z

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Lcom/netease/nr/biz/i/a/a;->s:Z

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a;->m:Lcom/netease/nr/biz/i/a/a/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a;->m:Lcom/netease/nr/biz/i/a/a/d;

    iget-object v1, p0, Lcom/netease/nr/biz/i/a/a;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/nr/biz/i/a/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netease/nr/biz/i/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a;->m:Lcom/netease/nr/biz/i/a/a/d;

    invoke-virtual {v0, v7}, Lcom/netease/nr/biz/i/a/a/d;->b(Z)V

    :cond_0
    invoke-static {p2}, Lcom/netease/util/e/c;->c(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lcom/netease/nr/biz/i/a/a;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v3

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-static {v2}, Lcom/netease/util/e/c;->a(Ljava/util/Map;)Z

    move-result v4

    invoke-static {v0, v1}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-static {v2}, Lcom/netease/util/e/c;->c(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/netease/nr/biz/i/a/a;->h:Ljava/util/Map;

    invoke-static {v6, v1}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    move v1, v4

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/netease/nr/biz/i/a/a;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    const-string v2, "fake"

    invoke-static {v0, v2}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {v0}, Lcom/netease/util/e/c;->c(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/netease/nr/biz/i/a/a;->i:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    invoke-direct {p0}, Lcom/netease/nr/biz/i/a/a;->n()V

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a;->h:Ljava/util/Map;

    const-string v2, "latest"

    invoke-static {v0, v2}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v2, p0, Lcom/netease/nr/biz/i/a/a;->l:I

    if-lt v0, v2, :cond_6

    invoke-virtual {p0, v7}, Lcom/netease/nr/biz/i/a/a;->b(Z)V

    :goto_1
    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a;->o:Lcom/netease/nr/biz/i/a/a/i;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a;->o:Lcom/netease/nr/biz/i/a/a/i;

    invoke-virtual {v0}, Lcom/netease/nr/biz/i/a/a/i;->dismiss()V

    :cond_4
    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/netease/nr/biz/i/a/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/netease/nr/biz/i/a/a;->f:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/nr/base/c/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void

    :cond_6
    invoke-virtual {p0, v3}, Lcom/netease/nr/biz/i/a/a;->b(Z)V

    goto :goto_1
.end method

.method public c(Landroid/os/Bundle;)Lcom/netease/util/fragment/z;
    .locals 3

    new-instance v0, Lcom/netease/nr/biz/i/a/c;

    invoke-direct {v0}, Lcom/netease/nr/biz/i/a/c;-><init>()V

    iget-object v1, v0, Lcom/netease/nr/biz/i/a/c;->a:Ljava/util/List;

    const-string v2, "latest"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/netease/nr/biz/i/a/a;->k:I

    iget v2, p0, Lcom/netease/nr/biz/i/a/a;->l:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/netease/nr/biz/i/a/c;->e:I

    iget v1, p0, Lcom/netease/nr/biz/i/a/a;->l:I

    iput v1, v0, Lcom/netease/nr/biz/i/a/c;->f:I

    iget-object v1, p0, Lcom/netease/nr/biz/i/a/a;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/nr/biz/i/a/c;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/nr/biz/i/a/a;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/nr/biz/i/a/c;->c:Ljava/lang/String;

    new-instance v1, Lcom/netease/nr/biz/i/a/b;

    invoke-virtual {p0}, Lcom/netease/nr/biz/i/a/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/netease/nr/biz/i/a/b;-><init>(Landroid/content/Context;Lcom/netease/nr/biz/i/a/c;)V

    return-object v1
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a;->m:Lcom/netease/nr/biz/i/a/a/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a;->m:Lcom/netease/nr/biz/i/a/a/d;

    invoke-virtual {v0}, Lcom/netease/nr/biz/i/a/a/d;->b()V

    :cond_0
    invoke-super {p0}, Lcom/netease/nr/base/fragment/q;->c()V

    return-void
.end method

.method public d(Landroid/support/v4/content/Loader;Ljava/util/Map;)V
    .locals 3

    invoke-static {p2}, Lcom/netease/util/e/c;->c(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "latest"

    invoke-static {v0, v1}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {v0}, Lcom/netease/util/e/c;->c(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/netease/nr/biz/i/a/a;->h:Ljava/util/Map;

    const-string v2, "latest"

    invoke-static {v1, v2}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    iget-object v1, p0, Lcom/netease/nr/biz/i/a/a;->n:Lcom/netease/nr/biz/i/a/e;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/netease/nr/biz/i/a/a;->n:Lcom/netease/nr/biz/i/a/e;

    invoke-virtual {v1}, Lcom/netease/nr/biz/i/a/e;->notifyDataSetChanged()V

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/netease/nr/biz/i/a/a;->l:I

    if-ge v0, v1, :cond_4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/i/a/a;->b(Z)V

    :goto_1
    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a;->o:Lcom/netease/nr/biz/i/a/a/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a;->o:Lcom/netease/nr/biz/i/a/a/i;

    invoke-virtual {v0}, Lcom/netease/nr/biz/i/a/a/i;->dismiss()V

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/i/a/a;->b(Z)V

    goto :goto_1
.end method

.method public g_()Ljava/lang/Object;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "mData"

    iget-object v2, p0, Lcom/netease/nr/biz/i/a/a;->h:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mFakeList"

    iget-object v2, p0, Lcom/netease/nr/biz/i/a/a;->i:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "clearRefreshTime"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method protected j()I
    .locals 1

    const v0, 0x7f0300d4

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/netease/nr/base/fragment/q;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/i/a/a;->a()Lcom/netease/nr/base/view/a;

    move-result-object v0

    const v1, 0x7f02011e

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/a;->a(I)V

    const v1, 0x7f02011d

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/a;->b(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/a;->a(Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v2, 0x1

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

    sget-object v3, Lcom/netease/nr/base/c/a;->a:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/netease/nr/biz/i/a/a;->a(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/i/a/a;->z()V

    invoke-virtual {p0}, Lcom/netease/nr/biz/i/a/a;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "boardid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/nr/biz/i/a/a;->c:Ljava/lang/String;

    const-string v1, "docid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/nr/biz/i/a/a;->d:Ljava/lang/String;

    const-string v1, "p"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/nr/biz/i/a/a;->b:Ljava/lang/String;

    const-string v1, "doctitle"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/nr/biz/i/a/a;->e:Ljava/lang/String;

    const-string v1, "read_status_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/i/a/a;->f:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "boardid or docid can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a;->g:Ljava/util/List;

    const-string v1, "top"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a;->h:Ljava/util/Map;

    const-string v1, "top"

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a;->g:Ljava/util/List;

    const-string v1, "hot"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a;->h:Ljava/util/Map;

    const-string v1, "hot"

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a;->g:Ljava/util/List;

    const-string v1, "latest"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a;->h:Ljava/util/Map;

    const-string v1, "latest"

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "comment_refresh"

    iput-object v0, p0, Lcom/netease/nr/biz/i/a/a;->a:Ljava/lang/String;

    const/16 v0, 0xa

    iput v0, p0, Lcom/netease/nr/biz/i/a/a;->l:I

    invoke-virtual {p0, v2}, Lcom/netease/nr/biz/i/a/a;->a(Z)V

    new-instance v0, Lcom/netease/nr/base/c/e;

    invoke-virtual {p0}, Lcom/netease/nr/biz/i/a/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netease/nr/base/c/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/nr/biz/i/a/a;->t:Lcom/netease/nr/base/c/e;

    invoke-virtual {p0}, Lcom/netease/nr/biz/i/a/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "TIE"

    const-string v3, "TIE"

    invoke-static {v0, v1, v3}, Lcom/netease/nr/base/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/i/a/a;->M()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_7

    const-string v1, "mData"

    invoke-static {v0, v1}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_4

    iget-object v3, p0, Lcom/netease/nr/biz/i/a/a;->h:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_4
    const-string v1, "mFakeList"

    invoke-static {v0, v1}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_5

    iget-object v3, p0, Lcom/netease/nr/biz/i/a/a;->i:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_5
    const-string v1, "clearRefreshTime"

    invoke-static {v0, v1, v2}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v2, p0, Lcom/netease/nr/biz/i/a/a;->v:Z

    :goto_0
    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/netease/nr/biz/i/a/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/i/a/a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/nr/base/c/s;->d(Landroid/content/Context;Ljava/lang/String;)V

    :cond_6
    return-void

    :cond_7
    move v0, v2

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/netease/nr/base/fragment/q;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/netease/nr/base/fragment/q;->onDestroyView()V

    invoke-virtual {p0}, Lcom/netease/nr/biz/i/a/a;->L()V

    invoke-static {p0}, Lcom/netease/nr/biz/i/a/a/k;->b(Lcom/netease/nr/biz/i/a/a/m;)V

    iput-object v1, p0, Lcom/netease/nr/biz/i/a/a;->m:Lcom/netease/nr/biz/i/a/a/d;

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a;->o:Lcom/netease/nr/biz/i/a/a/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a;->o:Lcom/netease/nr/biz/i/a/a/i;

    invoke-virtual {v0}, Lcom/netease/nr/biz/i/a/a/i;->dismiss()V

    iput-object v1, p0, Lcom/netease/nr/biz/i/a/a;->o:Lcom/netease/nr/biz/i/a/a/i;

    :cond_0
    iput-object v1, p0, Lcom/netease/nr/biz/i/a/a;->r:Landroid/view/View;

    iput-object v1, p0, Lcom/netease/nr/biz/i/a/a;->u:Lcom/netease/nr/base/view/a;

    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4

    const/4 v3, -0x1

    iget v0, p0, Lcom/netease/nr/biz/i/a/a;->p:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/netease/nr/biz/i/a/a;->q:I

    if-eq v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/biz/i/a/a;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/netease/nr/biz/i/a/a;->getListView()Landroid/widget/ListView;

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget v1, p0, Lcom/netease/nr/biz/i/a/a;->q:I

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, p2, v1}, Lcom/netease/nr/biz/i/a/a/b;->a(Ljava/util/Map;Landroid/view/View;I)I

    move-result v1

    if-eqz v0, :cond_0

    if-eq v1, v3, :cond_0

    invoke-direct {p0}, Lcom/netease/nr/biz/i/a/a;->m()V

    invoke-direct {p0, v0, v1}, Lcom/netease/nr/biz/i/a/a;->a(Ljava/util/Map;I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/netease/nr/base/fragment/q;->onResume()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/nr/biz/i/a/a;->v:Z

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v4, -0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a;->o:Lcom/netease/nr/biz/i/a/a/i;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a;->o:Lcom/netease/nr/biz/i/a/a/i;

    invoke-virtual {v0}, Lcom/netease/nr/biz/i/a/a/i;->a()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iput v4, p0, Lcom/netease/nr/biz/i/a/a;->p:I

    iput v4, p0, Lcom/netease/nr/biz/i/a/a;->q:I

    :cond_1
    :goto_0
    return v5

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/netease/nr/biz/i/a/a;->p:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/netease/nr/biz/i/a/a;->q:I

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/fragment/q;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/i/a/a;->K()V

    invoke-static {p0}, Lcom/netease/nr/biz/i/a/a/k;->a(Lcom/netease/nr/biz/i/a/a/m;)V

    const v0, 0x7f0c0266

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v2, Lcom/netease/nr/biz/i/a/a/d;

    invoke-virtual {p0}, Lcom/netease/nr/biz/i/a/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/netease/util/fragment/FragmentActivity;

    invoke-direct {v2, v1, v0}, Lcom/netease/nr/biz/i/a/a/d;-><init>(Lcom/netease/util/fragment/FragmentActivity;Landroid/view/ViewGroup;)V

    iput-object v2, p0, Lcom/netease/nr/biz/i/a/a;->m:Lcom/netease/nr/biz/i/a/a/d;

    iget-boolean v0, p0, Lcom/netease/nr/biz/i/a/a;->s:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a;->m:Lcom/netease/nr/biz/i/a/a/d;

    iget-object v1, p0, Lcom/netease/nr/biz/i/a/a;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/nr/biz/i/a/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netease/nr/biz/i/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a;->m:Lcom/netease/nr/biz/i/a/a/d;

    invoke-virtual {v0, v3}, Lcom/netease/nr/biz/i/a/a/d;->b(Z)V

    :goto_0
    invoke-virtual {p0}, Lcom/netease/nr/biz/i/a/a;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/nr/biz/i/a/a;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/i/a/a;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/i/a/a;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/i/a/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f080000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/netease/nr/biz/i/a/a;->k()Lcom/netease/nr/base/view/PullRefreshListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netease/nr/base/view/PullRefreshListView;->b(I)V

    iget-boolean v0, p0, Lcom/netease/nr/biz/i/a/a;->v:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/netease/nr/biz/i/a/a;->n()V

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a;->h:Ljava/util/Map;

    const-string v1, "latest"

    invoke-static {v0, v1}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    invoke-virtual {p0, v3}, Lcom/netease/nr/biz/i/a/a;->b(Z)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a;->m:Lcom/netease/nr/biz/i/a/a/d;

    invoke-virtual {v0, v4}, Lcom/netease/nr/biz/i/a/a/d;->b(Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v4}, Lcom/netease/nr/biz/i/a/a;->b(Z)V

    goto :goto_1
.end method
