.class public Lcom/netease/nr/base/view/PullRefreshListView;
.super Landroid/widget/FrameLayout;


# instance fields
.field a:I

.field private b:Landroid/view/View;

.field private c:Lcom/netease/nr/base/view/PullListView;

.field private d:I

.field private e:Lcom/netease/nr/base/view/bi;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:F

.field private i:I

.field private j:Lcom/netease/nr/base/view/bh;

.field private k:Z

.field private l:Ljava/lang/Runnable;

.field private m:Lcom/netease/nr/base/view/bk;

.field private n:Lcom/netease/nr/base/view/bj;

.field private o:Z

.field private p:Z

.field private q:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput v1, p0, Lcom/netease/nr/base/view/PullRefreshListView;->d:I

    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/netease/nr/base/view/PullRefreshListView;->h:F

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/netease/nr/base/view/PullRefreshListView;->i:I

    new-instance v0, Lcom/netease/nr/base/view/bh;

    invoke-direct {v0, p0}, Lcom/netease/nr/base/view/bh;-><init>(Lcom/netease/nr/base/view/PullRefreshListView;)V

    iput-object v0, p0, Lcom/netease/nr/base/view/PullRefreshListView;->j:Lcom/netease/nr/base/view/bh;

    iput-boolean v1, p0, Lcom/netease/nr/base/view/PullRefreshListView;->k:Z

    new-instance v0, Lcom/netease/nr/base/view/bk;

    invoke-direct {v0, p0, v2}, Lcom/netease/nr/base/view/bk;-><init>(Lcom/netease/nr/base/view/PullRefreshListView;Lcom/netease/nr/base/view/bf;)V

    iput-object v0, p0, Lcom/netease/nr/base/view/PullRefreshListView;->m:Lcom/netease/nr/base/view/bk;

    new-instance v0, Lcom/netease/nr/base/view/bj;

    invoke-direct {v0, p0, v2}, Lcom/netease/nr/base/view/bj;-><init>(Lcom/netease/nr/base/view/PullRefreshListView;Lcom/netease/nr/base/view/bf;)V

    iput-object v0, p0, Lcom/netease/nr/base/view/PullRefreshListView;->n:Lcom/netease/nr/base/view/bj;

    iput-boolean v1, p0, Lcom/netease/nr/base/view/PullRefreshListView;->o:Z

    iput-boolean v1, p0, Lcom/netease/nr/base/view/PullRefreshListView;->p:Z

    iput v1, p0, Lcom/netease/nr/base/view/PullRefreshListView;->q:I

    iput v1, p0, Lcom/netease/nr/base/view/PullRefreshListView;->a:I

    invoke-direct {p0, p1}, Lcom/netease/nr/base/view/PullRefreshListView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v1, p0, Lcom/netease/nr/base/view/PullRefreshListView;->d:I

    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/netease/nr/base/view/PullRefreshListView;->h:F

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/netease/nr/base/view/PullRefreshListView;->i:I

    new-instance v0, Lcom/netease/nr/base/view/bh;

    invoke-direct {v0, p0}, Lcom/netease/nr/base/view/bh;-><init>(Lcom/netease/nr/base/view/PullRefreshListView;)V

    iput-object v0, p0, Lcom/netease/nr/base/view/PullRefreshListView;->j:Lcom/netease/nr/base/view/bh;

    iput-boolean v1, p0, Lcom/netease/nr/base/view/PullRefreshListView;->k:Z

    new-instance v0, Lcom/netease/nr/base/view/bk;

    invoke-direct {v0, p0, v2}, Lcom/netease/nr/base/view/bk;-><init>(Lcom/netease/nr/base/view/PullRefreshListView;Lcom/netease/nr/base/view/bf;)V

    iput-object v0, p0, Lcom/netease/nr/base/view/PullRefreshListView;->m:Lcom/netease/nr/base/view/bk;

    new-instance v0, Lcom/netease/nr/base/view/bj;

    invoke-direct {v0, p0, v2}, Lcom/netease/nr/base/view/bj;-><init>(Lcom/netease/nr/base/view/PullRefreshListView;Lcom/netease/nr/base/view/bf;)V

    iput-object v0, p0, Lcom/netease/nr/base/view/PullRefreshListView;->n:Lcom/netease/nr/base/view/bj;

    iput-boolean v1, p0, Lcom/netease/nr/base/view/PullRefreshListView;->o:Z

    iput-boolean v1, p0, Lcom/netease/nr/base/view/PullRefreshListView;->p:Z

    iput v1, p0, Lcom/netease/nr/base/view/PullRefreshListView;->q:I

    iput v1, p0, Lcom/netease/nr/base/view/PullRefreshListView;->a:I

    invoke-direct {p0, p1}, Lcom/netease/nr/base/view/PullRefreshListView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v1, p0, Lcom/netease/nr/base/view/PullRefreshListView;->d:I

    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/netease/nr/base/view/PullRefreshListView;->h:F

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/netease/nr/base/view/PullRefreshListView;->i:I

    new-instance v0, Lcom/netease/nr/base/view/bh;

    invoke-direct {v0, p0}, Lcom/netease/nr/base/view/bh;-><init>(Lcom/netease/nr/base/view/PullRefreshListView;)V

    iput-object v0, p0, Lcom/netease/nr/base/view/PullRefreshListView;->j:Lcom/netease/nr/base/view/bh;

    iput-boolean v1, p0, Lcom/netease/nr/base/view/PullRefreshListView;->k:Z

    new-instance v0, Lcom/netease/nr/base/view/bk;

    invoke-direct {v0, p0, v2}, Lcom/netease/nr/base/view/bk;-><init>(Lcom/netease/nr/base/view/PullRefreshListView;Lcom/netease/nr/base/view/bf;)V

    iput-object v0, p0, Lcom/netease/nr/base/view/PullRefreshListView;->m:Lcom/netease/nr/base/view/bk;

    new-instance v0, Lcom/netease/nr/base/view/bj;

    invoke-direct {v0, p0, v2}, Lcom/netease/nr/base/view/bj;-><init>(Lcom/netease/nr/base/view/PullRefreshListView;Lcom/netease/nr/base/view/bf;)V

    iput-object v0, p0, Lcom/netease/nr/base/view/PullRefreshListView;->n:Lcom/netease/nr/base/view/bj;

    iput-boolean v1, p0, Lcom/netease/nr/base/view/PullRefreshListView;->o:Z

    iput-boolean v1, p0, Lcom/netease/nr/base/view/PullRefreshListView;->p:Z

    iput v1, p0, Lcom/netease/nr/base/view/PullRefreshListView;->q:I

    iput v1, p0, Lcom/netease/nr/base/view/PullRefreshListView;->a:I

    invoke-direct {p0, p1}, Lcom/netease/nr/base/view/PullRefreshListView;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/base/view/PullRefreshListView;)Lcom/netease/nr/base/view/PullListView;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/view/PullRefreshListView;->c:Lcom/netease/nr/base/view/PullListView;

    return-object v0
.end method

.method static synthetic a(Lcom/netease/nr/base/view/PullRefreshListView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/base/view/PullRefreshListView;->l:Ljava/lang/Runnable;

    return-object p1
.end method

.method private a(IZ)V
    .locals 7

    const/high16 v6, 0x40000000    # 2.0f

    const/16 v4, 0x270f

    const/4 v2, 0x3

    const/4 v1, 0x0

    iget v0, p0, Lcom/netease/nr/base/view/PullRefreshListView;->d:I

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    :sswitch_0
    return-void

    :cond_1
    if-ne p1, v2, :cond_3

    iget-object v0, p0, Lcom/netease/nr/base/view/PullRefreshListView;->e:Lcom/netease/nr/base/view/bi;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/nr/base/view/PullRefreshListView;->e:Lcom/netease/nr/base/view/bi;

    iget-object v3, p0, Lcom/netease/nr/base/view/PullRefreshListView;->f:Ljava/lang/String;

    invoke-interface {v0, v3}, Lcom/netease/nr/base/view/bi;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    move p1, v1

    :cond_3
    iget v0, p0, Lcom/netease/nr/base/view/PullRefreshListView;->d:I

    if-eq v0, p1, :cond_0

    iget v0, p0, Lcom/netease/nr/base/view/PullRefreshListView;->d:I

    if-ne v0, v4, :cond_5

    move v0, v2

    :goto_1
    iput p1, p0, Lcom/netease/nr/base/view/PullRefreshListView;->d:I

    iget v3, p0, Lcom/netease/nr/base/view/PullRefreshListView;->d:I

    if-ne v3, v4, :cond_6

    :goto_2
    iget-object v3, p0, Lcom/netease/nr/base/view/PullRefreshListView;->e:Lcom/netease/nr/base/view/bi;

    if-eqz v3, :cond_4

    if-eq v2, v0, :cond_4

    iget-object v3, p0, Lcom/netease/nr/base/view/PullRefreshListView;->e:Lcom/netease/nr/base/view/bi;

    iget-object v4, p0, Lcom/netease/nr/base/view/PullRefreshListView;->f:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/nr/base/view/PullRefreshListView;->b:Landroid/view/View;

    invoke-interface {v3, v4, v5, v0, v2}, Lcom/netease/nr/base/view/bi;->a(Ljava/lang/String;Landroid/view/View;II)V

    :cond_4
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_1
    if-eqz p2, :cond_7

    iget-object v0, p0, Lcom/netease/nr/base/view/PullRefreshListView;->j:Lcom/netease/nr/base/view/bh;

    invoke-virtual {p0}, Lcom/netease/nr/base/view/PullRefreshListView;->getScrollY()I

    move-result v2

    neg-int v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/netease/nr/base/view/bh;->a(ILjava/lang/Runnable;Z)V

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/netease/nr/base/view/PullRefreshListView;->d:I

    goto :goto_1

    :cond_6
    iget v2, p0, Lcom/netease/nr/base/view/PullRefreshListView;->d:I

    goto :goto_2

    :cond_7
    invoke-virtual {p0, v1, v1}, Lcom/netease/nr/base/view/PullRefreshListView;->scrollTo(II)V

    goto :goto_0

    :sswitch_2
    iput-boolean p2, p0, Lcom/netease/nr/base/view/PullRefreshListView;->o:Z

    if-eqz p2, :cond_8

    iget-object v0, p0, Lcom/netease/nr/base/view/PullRefreshListView;->j:Lcom/netease/nr/base/view/bh;

    invoke-virtual {p0}, Lcom/netease/nr/base/view/PullRefreshListView;->c()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p0}, Lcom/netease/nr/base/view/PullRefreshListView;->getScrollY()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/netease/nr/base/view/PullRefreshListView;->m:Lcom/netease/nr/base/view/bk;

    invoke-virtual {v0, v2, v3, v1}, Lcom/netease/nr/base/view/bh;->a(ILjava/lang/Runnable;Z)V

    goto :goto_0

    :cond_8
    invoke-virtual {p0, v1, v1}, Lcom/netease/nr/base/view/PullRefreshListView;->scrollTo(II)V

    iget-object v0, p0, Lcom/netease/nr/base/view/PullRefreshListView;->e:Lcom/netease/nr/base/view/bi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/PullRefreshListView;->e:Lcom/netease/nr/base/view/bi;

    iget-object v1, p0, Lcom/netease/nr/base/view/PullRefreshListView;->f:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/netease/nr/base/view/bi;->b(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_3
    if-eqz p2, :cond_b

    iget-boolean v0, p0, Lcom/netease/nr/base/view/PullRefreshListView;->o:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/netease/nr/base/view/PullRefreshListView;->c:Lcom/netease/nr/base/view/PullListView;

    invoke-virtual {v0}, Lcom/netease/nr/base/view/PullListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_9

    iget-object v0, p0, Lcom/netease/nr/base/view/PullRefreshListView;->c:Lcom/netease/nr/base/view/PullListView;

    invoke-virtual {v0}, Lcom/netease/nr/base/view/PullListView;->getFirstVisiblePosition()I

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0, v1, v1}, Lcom/netease/nr/base/view/PullRefreshListView;->scrollTo(II)V

    invoke-direct {p0, v1, v1}, Lcom/netease/nr/base/view/PullRefreshListView;->a(IZ)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/netease/nr/base/view/PullRefreshListView;->c:Lcom/netease/nr/base/view/PullListView;

    invoke-virtual {v0}, Lcom/netease/nr/base/view/PullListView;->getFirstVisiblePosition()I

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/netease/nr/base/view/PullRefreshListView;->c:Lcom/netease/nr/base/view/PullListView;

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/PullListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/netease/nr/base/view/PullRefreshListView;->c()I

    move-result v0

    neg-int v0, v0

    iget-object v2, p0, Lcom/netease/nr/base/view/PullRefreshListView;->c:Lcom/netease/nr/base/view/PullListView;

    invoke-virtual {v2, v1}, Lcom/netease/nr/base/view/PullListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0, v1, v0}, Lcom/netease/nr/base/view/PullRefreshListView;->scrollBy(II)V

    :goto_3
    iget-object v0, p0, Lcom/netease/nr/base/view/PullRefreshListView;->c:Lcom/netease/nr/base/view/PullListView;

    invoke-virtual {v0}, Lcom/netease/nr/base/view/PullListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/netease/nr/base/view/PullRefreshListView;->c()I

    move-result v2

    neg-int v2, v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Lcom/netease/nr/base/view/PullRefreshListView;->getMeasuredWidth()I

    move-result v2

    invoke-static {v6, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p0}, Lcom/netease/nr/base/view/PullRefreshListView;->getMeasuredHeight()I

    move-result v3

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int/2addr v3, v4

    invoke-static {v6, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget-object v4, p0, Lcom/netease/nr/base/view/PullRefreshListView;->c:Lcom/netease/nr/base/view/PullListView;

    invoke-virtual {v4, v2, v3}, Lcom/netease/nr/base/view/PullListView;->measure(II)V

    iget-object v2, p0, Lcom/netease/nr/base/view/PullRefreshListView;->c:Lcom/netease/nr/base/view/PullListView;

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    rsub-int/lit8 v0, v0, 0x0

    invoke-virtual {p0}, Lcom/netease/nr/base/view/PullRefreshListView;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/netease/nr/base/view/PullRefreshListView;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v2, v1, v0, v3, v4}, Lcom/netease/nr/base/view/PullListView;->layout(IIII)V

    iget-object v0, p0, Lcom/netease/nr/base/view/PullRefreshListView;->j:Lcom/netease/nr/base/view/bh;

    invoke-virtual {p0}, Lcom/netease/nr/base/view/PullRefreshListView;->getScrollY()I

    move-result v2

    neg-int v2, v2

    iget-object v3, p0, Lcom/netease/nr/base/view/PullRefreshListView;->n:Lcom/netease/nr/base/view/bj;

    invoke-virtual {v0, v2, v3, v1}, Lcom/netease/nr/base/view/bh;->a(ILjava/lang/Runnable;Z)V

    :goto_4
    iput-boolean v1, p0, Lcom/netease/nr/base/view/PullRefreshListView;->o:Z

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p0}, Lcom/netease/nr/base/view/PullRefreshListView;->c()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p0, v1, v0}, Lcom/netease/nr/base/view/PullRefreshListView;->scrollBy(II)V

    goto :goto_3

    :cond_b
    invoke-virtual {p0, v1, v1}, Lcom/netease/nr/base/view/PullRefreshListView;->scrollTo(II)V

    invoke-direct {p0, v1, v1}, Lcom/netease/nr/base/view/PullRefreshListView;->a(IZ)V

    goto :goto_4

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_2
        0x270f -> :sswitch_3
    .end sparse-switch
.end method

.method private a(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/base/view/PullRefreshListView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/nr/base/view/PullRefreshListView;->d(I)V

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/base/view/PullRefreshListView;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netease/nr/base/view/PullRefreshListView;->a(IZ)V

    return-void
.end method

.method static synthetic b(Lcom/netease/nr/base/view/PullRefreshListView;)Lcom/netease/nr/base/view/bi;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/view/PullRefreshListView;->e:Lcom/netease/nr/base/view/bi;

    return-object v0
.end method

.method static synthetic c(Lcom/netease/nr/base/view/PullRefreshListView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/view/PullRefreshListView;->f:Ljava/lang/String;

    return-object v0
.end method

.method private c(I)Z
    .locals 3

    const/4 v0, 0x0

    if-lez p1, :cond_0

    int-to-float v1, p1

    iget v2, p0, Lcom/netease/nr/base/view/PullRefreshListView;->h:F

    div-float/2addr v1, v2

    float-to-int p1, v1

    :cond_0
    neg-int v1, p1

    invoke-direct {p0, v1}, Lcom/netease/nr/base/view/PullRefreshListView;->d(I)V

    invoke-direct {p0}, Lcom/netease/nr/base/view/PullRefreshListView;->j()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/netease/nr/base/view/PullRefreshListView;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_0
    invoke-virtual {p0}, Lcom/netease/nr/base/view/PullRefreshListView;->getScrollY()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    invoke-direct {p0, v1, v0}, Lcom/netease/nr/base/view/PullRefreshListView;->a(IZ)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/netease/nr/base/view/PullRefreshListView;)I
    .locals 1

    iget v0, p0, Lcom/netease/nr/base/view/PullRefreshListView;->i:I

    return v0
.end method

.method private d(I)V
    .locals 6

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/netease/nr/base/view/PullRefreshListView;->e(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/netease/nr/base/view/PullRefreshListView;->scrollBy(II)V

    iget-object v0, p0, Lcom/netease/nr/base/view/PullRefreshListView;->c:Lcom/netease/nr/base/view/PullListView;

    iget-object v1, p0, Lcom/netease/nr/base/view/PullRefreshListView;->c:Lcom/netease/nr/base/view/PullListView;

    invoke-virtual {v1}, Lcom/netease/nr/base/view/PullListView;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/netease/nr/base/view/PullRefreshListView;->c:Lcom/netease/nr/base/view/PullListView;

    invoke-virtual {v2}, Lcom/netease/nr/base/view/PullListView;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/netease/nr/base/view/PullRefreshListView;->c:Lcom/netease/nr/base/view/PullListView;

    invoke-virtual {v3}, Lcom/netease/nr/base/view/PullListView;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/netease/nr/base/view/PullRefreshListView;->c()I

    move-result v4

    iget v5, p0, Lcom/netease/nr/base/view/PullRefreshListView;->a:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/netease/nr/base/view/PullListView;->invalidate(IIII)V

    goto :goto_0
.end method

.method private e(I)I
    .locals 2

    invoke-virtual {p0}, Lcom/netease/nr/base/view/PullRefreshListView;->getScrollY()I

    move-result v0

    if-gez p1, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/base/view/PullRefreshListView;->getMeasuredHeight()I

    move-result v1

    neg-int v1, v1

    sub-int v0, v1, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    rsub-int/lit8 v0, v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method private f(I)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/netease/nr/base/view/PullRefreshListView;->c:Lcom/netease/nr/base/view/PullListView;

    if-lez p1, :cond_1

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    if-ltz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private j()I
    .locals 2

    invoke-virtual {p0}, Lcom/netease/nr/base/view/PullRefreshListView;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/netease/nr/base/view/PullRefreshListView;->getScrollY()I

    move-result v0

    invoke-virtual {p0}, Lcom/netease/nr/base/view/PullRefreshListView;->c()I

    move-result v1

    neg-int v1, v1

    if-gt v0, v1, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    if-gez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 2

    iget v0, p0, Lcom/netease/nr/base/view/PullRefreshListView;->q:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/netease/nr/base/view/PullRefreshListView;->q:I

    invoke-virtual {p0}, Lcom/netease/nr/base/view/PullRefreshListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/netease/nr/base/view/PullRefreshListView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/base/view/PullRefreshListView;->b:Landroid/view/View;

    iget-object v0, p0, Lcom/netease/nr/base/view/PullRefreshListView;->c:Lcom/netease/nr/base/view/PullListView;

    iget-object v1, p0, Lcom/netease/nr/base/view/PullRefreshListView;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/PullListView;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netease/nr/base/view/bi;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/base/view/PullRefreshListView;->f:Ljava/lang/String;

    iput-object p2, p0, Lcom/netease/nr/base/view/PullRefreshListView;->e:Lcom/netease/nr/base/view/bi;

    return-void
.end method

.method a()Z
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/base/view/PullRefreshListView;->c:Lcom/netease/nr/base/view/PullListView;

    invoke-virtual {v0}, Lcom/netease/nr/base/view/PullListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/netease/nr/base/view/PullRefreshListView;->getScrollY()I

    move-result v1

    if-ltz v1, :cond_0

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 4

    const/4 v3, 0x3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/netease/nr/base/view/PullRefreshListView;->j:Lcom/netease/nr/base/view/bh;

    invoke-static {v0}, Lcom/netease/nr/base/view/bh;->a(Lcom/netease/nr/base/view/bh;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/netease/nr/base/view/PullRefreshListView;->d:I

    if-ne v0, v3, :cond_1

    invoke-virtual {p0}, Lcom/netease/nr/base/view/PullRefreshListView;->getScrollY()I

    move-result v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/PullRefreshListView;->j:Lcom/netease/nr/base/view/bh;

    invoke-virtual {p0}, Lcom/netease/nr/base/view/PullRefreshListView;->getScrollY()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/bh;->a(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/netease/nr/base/view/PullRefreshListView;->c:Lcom/netease/nr/base/view/PullListView;

    invoke-virtual {v0}, Lcom/netease/nr/base/view/PullListView;->invalidate()V

    return-void

    :cond_1
    iget v0, p0, Lcom/netease/nr/base/view/PullRefreshListView;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-direct {p0, v3, v2}, Lcom/netease/nr/base/view/PullRefreshListView;->a(IZ)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/netease/nr/base/view/PullRefreshListView;->d:I

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0, v2}, Lcom/netease/nr/base/view/PullRefreshListView;->a(IZ)V

    goto :goto_0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/netease/nr/base/view/PullRefreshListView;->a:I

    return-void
.end method

.method public c()I
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/base/view/PullRefreshListView;->b:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/base/view/PullRefreshListView;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/netease/nr/base/view/PullRefreshListView;->c:Lcom/netease/nr/base/view/PullListView;

    invoke-virtual {v1}, Lcom/netease/nr/base/view/PullListView;->getDividerHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/netease/nr/base/view/PullRefreshListView;->a:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public d()Z
    .locals 2

    iget v0, p0, Lcom/netease/nr/base/view/PullRefreshListView;->d:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/netease/nr/base/view/PullRefreshListView;->d:I

    const/16 v1, 0x270f

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    move v2, v1

    :goto_1
    if-eqz v2, :cond_1

    neg-int v0, v2

    invoke-virtual {p0, v1, v0}, Lcom/netease/nr/base/view/PullRefreshListView;->scrollBy(II)V

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v2, :cond_2

    invoke-virtual {p0, v1, v2}, Lcom/netease/nr/base/view/PullRefreshListView;->scrollBy(II)V

    iget-object v1, p0, Lcom/netease/nr/base/view/PullRefreshListView;->j:Lcom/netease/nr/base/view/bh;

    invoke-static {v1}, Lcom/netease/nr/base/view/bh;->a(Lcom/netease/nr/base/view/bh;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v2}, Lcom/netease/nr/base/view/PullRefreshListView;->c(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/netease/nr/base/view/PullRefreshListView;->p:Z

    :cond_2
    return v0

    :pswitch_0
    iput-boolean v1, p0, Lcom/netease/nr/base/view/PullRefreshListView;->p:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/netease/nr/base/view/PullRefreshListView;->g:I

    move v2, v1

    goto :goto_1

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v3, v0

    iget v0, p0, Lcom/netease/nr/base/view/PullRefreshListView;->g:I

    sub-int v2, v3, v0

    iget-object v0, p0, Lcom/netease/nr/base/view/PullRefreshListView;->c:Lcom/netease/nr/base/view/PullListView;

    invoke-virtual {v0}, Lcom/netease/nr/base/view/PullListView;->a()Z

    move-result v4

    iget-boolean v0, p0, Lcom/netease/nr/base/view/PullRefreshListView;->p:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/netease/nr/base/view/PullRefreshListView;->k:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/netease/nr/base/view/PullRefreshListView;->j:Lcom/netease/nr/base/view/bh;

    invoke-static {v0}, Lcom/netease/nr/base/view/bh;->a(Lcom/netease/nr/base/view/bh;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz v4, :cond_4

    invoke-direct {p0, v2}, Lcom/netease/nr/base/view/PullRefreshListView;->f(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lcom/netease/nr/base/view/PullRefreshListView;->p:Z

    :cond_3
    iget-boolean v0, p0, Lcom/netease/nr/base/view/PullRefreshListView;->p:Z

    if-eqz v0, :cond_5

    iput v3, p0, Lcom/netease/nr/base/view/PullRefreshListView;->g:I

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2

    :cond_5
    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/PullRefreshListView;->j:Lcom/netease/nr/base/view/bh;

    invoke-static {v0}, Lcom/netease/nr/base/view/bh;->a(Lcom/netease/nr/base/view/bh;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v2

    :goto_3
    iput v3, p0, Lcom/netease/nr/base/view/PullRefreshListView;->g:I

    move v2, v0

    goto :goto_1

    :pswitch_2
    iget-boolean v0, p0, Lcom/netease/nr/base/view/PullRefreshListView;->p:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/base/view/PullRefreshListView;->b()V

    iput-boolean v1, p0, Lcom/netease/nr/base/view/PullRefreshListView;->p:Z

    goto/16 :goto_0

    :cond_6
    move v0, v1

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public e()V
    .locals 2

    iget v0, p0, Lcom/netease/nr/base/view/PullRefreshListView;->d:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x270f

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/netease/nr/base/view/PullRefreshListView;->a(IZ)V

    invoke-virtual {p0}, Lcom/netease/nr/base/view/PullRefreshListView;->requestLayout()V

    goto :goto_0
.end method

.method public f()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/netease/nr/base/view/PullRefreshListView;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/PullRefreshListView;->e:Lcom/netease/nr/base/view/bi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/PullRefreshListView;->e:Lcom/netease/nr/base/view/bi;

    iget-object v1, p0, Lcom/netease/nr/base/view/PullRefreshListView;->f:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/netease/nr/base/view/bi;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/netease/nr/base/view/PullRefreshListView;->getHeight()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/netease/nr/base/view/PullRefreshListView;->l:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/nr/base/view/bf;

    invoke-direct {v0, p0}, Lcom/netease/nr/base/view/bf;-><init>(Lcom/netease/nr/base/view/PullRefreshListView;)V

    iput-object v0, p0, Lcom/netease/nr/base/view/PullRefreshListView;->l:Ljava/lang/Runnable;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/netease/nr/base/view/PullRefreshListView;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/netease/nr/base/view/PullRefreshListView;->k:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netease/nr/base/view/PullRefreshListView;->c:Lcom/netease/nr/base/view/PullListView;

    invoke-virtual {v0, v2}, Lcom/netease/nr/base/view/PullListView;->setSelection(I)V

    const/4 v0, 0x2

    invoke-direct {p0, v0, v2}, Lcom/netease/nr/base/view/PullRefreshListView;->a(IZ)V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/netease/nr/base/view/bg;

    invoke-direct {v0, p0}, Lcom/netease/nr/base/view/bg;-><init>(Lcom/netease/nr/base/view/PullRefreshListView;)V

    iput-object v0, p0, Lcom/netease/nr/base/view/PullRefreshListView;->l:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/netease/nr/base/view/PullRefreshListView;->c:Lcom/netease/nr/base/view/PullListView;

    invoke-virtual {v0, v2}, Lcom/netease/nr/base/view/PullListView;->setSelection(I)V

    invoke-virtual {p0}, Lcom/netease/nr/base/view/PullRefreshListView;->requestLayout()V

    goto :goto_0
.end method

.method public g()V
    .locals 2

    iget v0, p0, Lcom/netease/nr/base/view/PullRefreshListView;->d:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x270f

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/netease/nr/base/view/PullRefreshListView;->a(IZ)V

    invoke-virtual {p0}, Lcom/netease/nr/base/view/PullRefreshListView;->requestLayout()V

    goto :goto_0
.end method

.method public h()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/netease/nr/base/view/PullRefreshListView;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/PullRefreshListView;->e:Lcom/netease/nr/base/view/bi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/PullRefreshListView;->e:Lcom/netease/nr/base/view/bi;

    iget-object v1, p0, Lcom/netease/nr/base/view/PullRefreshListView;->f:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/netease/nr/base/view/bi;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/base/view/PullRefreshListView;->c:Lcom/netease/nr/base/view/PullListView;

    invoke-virtual {v0, v2}, Lcom/netease/nr/base/view/PullListView;->setSelection(I)V

    const/4 v0, 0x3

    invoke-direct {p0, v0, v2}, Lcom/netease/nr/base/view/PullRefreshListView;->a(IZ)V

    goto :goto_0
.end method

.method public i()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/view/PullRefreshListView;->b:Landroid/view/View;

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/netease/nr/base/view/PullRefreshListView;->l:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/PullRefreshListView;->l:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/netease/nr/base/view/PullRefreshListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/base/view/PullRefreshListView;->j:Lcom/netease/nr/base/view/bh;

    invoke-virtual {p0, v0}, Lcom/netease/nr/base/view/PullRefreshListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/netease/nr/base/view/PullRefreshListView;->m:Lcom/netease/nr/base/view/bk;

    invoke-virtual {p0, v0}, Lcom/netease/nr/base/view/PullRefreshListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/netease/nr/base/view/PullRefreshListView;->n:Lcom/netease/nr/base/view/bj;

    invoke-virtual {p0, v0}, Lcom/netease/nr/base/view/PullRefreshListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/netease/nr/base/view/PullRefreshListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/PullListView;

    iput-object v0, p0, Lcom/netease/nr/base/view/PullRefreshListView;->c:Lcom/netease/nr/base/view/PullListView;

    iget-object v0, p0, Lcom/netease/nr/base/view/PullRefreshListView;->c:Lcom/netease/nr/base/view/PullListView;

    invoke-virtual {v0, p0}, Lcom/netease/nr/base/view/PullListView;->a(Lcom/netease/nr/base/view/PullRefreshListView;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/netease/nr/base/view/PullRefreshListView;->c:Lcom/netease/nr/base/view/PullListView;

    invoke-virtual {p0}, Lcom/netease/nr/base/view/PullRefreshListView;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/netease/nr/base/view/PullRefreshListView;->c:Lcom/netease/nr/base/view/PullListView;

    invoke-virtual {v2}, Lcom/netease/nr/base/view/PullListView;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0}, Lcom/netease/nr/base/view/PullRefreshListView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/netease/nr/base/view/PullRefreshListView;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/netease/nr/base/view/PullListView;->layout(IIII)V

    iget-object v0, p0, Lcom/netease/nr/base/view/PullRefreshListView;->l:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/PullRefreshListView;->l:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/netease/nr/base/view/PullRefreshListView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    const/high16 v3, 0x40000000    # 2.0f

    iget-object v0, p0, Lcom/netease/nr/base/view/PullRefreshListView;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/PullRefreshListView;->c:Lcom/netease/nr/base/view/PullListView;

    invoke-virtual {v0, p1, p2}, Lcom/netease/nr/base/view/PullListView;->a(II)V

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/base/view/PullRefreshListView;->c:Lcom/netease/nr/base/view/PullListView;

    invoke-virtual {v0}, Lcom/netease/nr/base/view/PullListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/netease/nr/base/view/PullRefreshListView;->d:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/netease/nr/base/view/PullRefreshListView;->l:Ljava/lang/Runnable;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/netease/nr/base/view/PullRefreshListView;->j:Lcom/netease/nr/base/view/bh;

    invoke-static {v1}, Lcom/netease/nr/base/view/bh;->a(Lcom/netease/nr/base/view/bh;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/netease/nr/base/view/PullRefreshListView;->setMeasuredDimension(II)V

    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int v0, v2, v0

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget-object v2, p0, Lcom/netease/nr/base/view/PullRefreshListView;->c:Lcom/netease/nr/base/view/PullListView;

    invoke-virtual {v2, v1, v0}, Lcom/netease/nr/base/view/PullListView;->measure(II)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/netease/nr/base/view/PullRefreshListView;->c()I

    move-result v1

    neg-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0
.end method
