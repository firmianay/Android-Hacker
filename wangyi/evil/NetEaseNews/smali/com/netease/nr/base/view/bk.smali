.class Lcom/netease/nr/base/view/bk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/netease/nr/base/view/PullRefreshListView;


# direct methods
.method private constructor <init>(Lcom/netease/nr/base/view/PullRefreshListView;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/base/view/bk;->a:Lcom/netease/nr/base/view/PullRefreshListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/nr/base/view/PullRefreshListView;Lcom/netease/nr/base/view/bf;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/nr/base/view/bk;-><init>(Lcom/netease/nr/base/view/PullRefreshListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/netease/nr/base/view/bk;->a:Lcom/netease/nr/base/view/PullRefreshListView;

    invoke-static {v0}, Lcom/netease/nr/base/view/PullRefreshListView;->a(Lcom/netease/nr/base/view/PullRefreshListView;)Lcom/netease/nr/base/view/PullListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/base/view/PullListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/netease/nr/base/view/bk;->a:Lcom/netease/nr/base/view/PullRefreshListView;

    invoke-virtual {v1}, Lcom/netease/nr/base/view/PullRefreshListView;->getMeasuredWidth()I

    move-result v1

    invoke-static {v5, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget-object v2, p0, Lcom/netease/nr/base/view/bk;->a:Lcom/netease/nr/base/view/PullRefreshListView;

    invoke-virtual {v2}, Lcom/netease/nr/base/view/PullRefreshListView;->getMeasuredHeight()I

    move-result v2

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int/2addr v2, v3

    invoke-static {v5, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget-object v3, p0, Lcom/netease/nr/base/view/bk;->a:Lcom/netease/nr/base/view/PullRefreshListView;

    invoke-static {v3}, Lcom/netease/nr/base/view/PullRefreshListView;->a(Lcom/netease/nr/base/view/PullRefreshListView;)Lcom/netease/nr/base/view/PullListView;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/netease/nr/base/view/PullListView;->measure(II)V

    iget-object v1, p0, Lcom/netease/nr/base/view/bk;->a:Lcom/netease/nr/base/view/PullRefreshListView;

    invoke-static {v1}, Lcom/netease/nr/base/view/PullRefreshListView;->a(Lcom/netease/nr/base/view/PullRefreshListView;)Lcom/netease/nr/base/view/PullListView;

    move-result-object v1

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    rsub-int/lit8 v0, v0, 0x0

    iget-object v2, p0, Lcom/netease/nr/base/view/bk;->a:Lcom/netease/nr/base/view/PullRefreshListView;

    invoke-virtual {v2}, Lcom/netease/nr/base/view/PullRefreshListView;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/netease/nr/base/view/bk;->a:Lcom/netease/nr/base/view/PullRefreshListView;

    invoke-virtual {v3}, Lcom/netease/nr/base/view/PullRefreshListView;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v1, v4, v0, v2, v3}, Lcom/netease/nr/base/view/PullListView;->layout(IIII)V

    iget-object v0, p0, Lcom/netease/nr/base/view/bk;->a:Lcom/netease/nr/base/view/PullRefreshListView;

    invoke-virtual {v0, v4, v4}, Lcom/netease/nr/base/view/PullRefreshListView;->scrollTo(II)V

    iget-object v0, p0, Lcom/netease/nr/base/view/bk;->a:Lcom/netease/nr/base/view/PullRefreshListView;

    new-instance v1, Lcom/netease/nr/base/view/bl;

    invoke-direct {v1, p0}, Lcom/netease/nr/base/view/bl;-><init>(Lcom/netease/nr/base/view/bk;)V

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/PullRefreshListView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
