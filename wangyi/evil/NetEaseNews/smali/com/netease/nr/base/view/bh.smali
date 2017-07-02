.class Lcom/netease/nr/base/view/bh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/netease/nr/base/view/PullRefreshListView;

.field private b:Landroid/widget/Scroller;

.field private c:I

.field private d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/netease/nr/base/view/PullRefreshListView;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/nr/base/view/bh;->a:Lcom/netease/nr/base/view/PullRefreshListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p1}, Lcom/netease/nr/base/view/PullRefreshListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/nr/base/view/bh;->b:Landroid/widget/Scroller;

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/base/view/bh;)Landroid/widget/Scroller;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/view/bh;->b:Landroid/widget/Scroller;

    return-object v0
.end method

.method private a()V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/view/bh;->a:Lcom/netease/nr/base/view/PullRefreshListView;

    invoke-virtual {v0, p0}, Lcom/netease/nr/base/view/PullRefreshListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/base/view/bh;->b:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/bh;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/bh;->a:Lcom/netease/nr/base/view/PullRefreshListView;

    iget-object v1, p0, Lcom/netease/nr/base/view/bh;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/PullRefreshListView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/nr/base/view/bh;->d:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/netease/nr/base/view/bh;->a:Lcom/netease/nr/base/view/PullRefreshListView;

    invoke-static {v0}, Lcom/netease/nr/base/view/PullRefreshListView;->a(Lcom/netease/nr/base/view/PullRefreshListView;)Lcom/netease/nr/base/view/PullListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/base/view/PullListView;->invalidate()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/netease/nr/base/view/bh;->a(ILjava/lang/Runnable;Z)V

    return-void
.end method

.method public a(ILjava/lang/Runnable;Z)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p3}, Lcom/netease/nr/base/view/bh;->a(ZZ)V

    iput-object p2, p0, Lcom/netease/nr/base/view/bh;->d:Ljava/lang/Runnable;

    if-nez p1, :cond_0

    invoke-direct {p0, v0, v0}, Lcom/netease/nr/base/view/bh;->a(ZZ)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/netease/nr/base/view/bh;->a()V

    iput v1, p0, Lcom/netease/nr/base/view/bh;->c:I

    iget-object v0, p0, Lcom/netease/nr/base/view/bh;->b:Landroid/widget/Scroller;

    neg-int v4, p1

    iget-object v2, p0, Lcom/netease/nr/base/view/bh;->a:Lcom/netease/nr/base/view/PullRefreshListView;

    invoke-static {v2}, Lcom/netease/nr/base/view/PullRefreshListView;->d(Lcom/netease/nr/base/view/PullRefreshListView;)I

    move-result v5

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    iget-object v0, p0, Lcom/netease/nr/base/view/bh;->a:Lcom/netease/nr/base/view/PullRefreshListView;

    invoke-virtual {v0, p0}, Lcom/netease/nr/base/view/PullRefreshListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public run()V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/netease/nr/base/view/bh;->b:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v3

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    iget v4, p0, Lcom/netease/nr/base/view/bh;->c:I

    sub-int/2addr v4, v2

    iget-object v5, p0, Lcom/netease/nr/base/view/bh;->a:Lcom/netease/nr/base/view/PullRefreshListView;

    invoke-static {v5, v4}, Lcom/netease/nr/base/view/PullRefreshListView;->a(Lcom/netease/nr/base/view/PullRefreshListView;I)V

    iget-object v4, p0, Lcom/netease/nr/base/view/bh;->a:Lcom/netease/nr/base/view/PullRefreshListView;

    invoke-virtual {v4}, Lcom/netease/nr/base/view/PullRefreshListView;->getScrollY()I

    move-result v4

    if-ne v4, v0, :cond_0

    move v0, v1

    :cond_0
    if-eqz v3, :cond_1

    if-nez v0, :cond_1

    iput v2, p0, Lcom/netease/nr/base/view/bh;->c:I

    iget-object v0, p0, Lcom/netease/nr/base/view/bh;->a:Lcom/netease/nr/base/view/PullRefreshListView;

    invoke-virtual {v0, p0}, Lcom/netease/nr/base/view/PullRefreshListView;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v1, v1}, Lcom/netease/nr/base/view/bh;->a(ZZ)V

    goto :goto_0
.end method
