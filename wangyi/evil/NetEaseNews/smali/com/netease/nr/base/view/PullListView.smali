.class public Lcom/netease/nr/base/view/PullListView;
.super Landroid/widget/ListView;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private a:Landroid/widget/FrameLayout;

.field private b:Lcom/netease/nr/base/a/c;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Landroid/widget/AbsListView$OnScrollListener;

.field private h:Lcom/netease/nr/base/view/PullRefreshListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/nr/base/view/PullListView;->f:I

    invoke-direct {p0, p1}, Lcom/netease/nr/base/view/PullListView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/nr/base/view/PullListView;->f:I

    invoke-direct {p0, p1}, Lcom/netease/nr/base/view/PullListView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/nr/base/view/PullListView;->f:I

    invoke-direct {p0, p1}, Lcom/netease/nr/base/view/PullListView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/nr/base/view/PullListView;->a:Landroid/widget/FrameLayout;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/netease/nr/base/view/PullListView;->e:I

    invoke-virtual {p0, p0}, Lcom/netease/nr/base/view/PullListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 3

    iget-object v0, p0, Lcom/netease/nr/base/view/PullListView;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/netease/nr/base/view/PullListView;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/base/view/PullListView;->a:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0, p1, p2}, Lcom/netease/nr/base/view/PullListView;->measureChild(Landroid/view/View;II)V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/view/PullListView;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/netease/nr/base/view/PullListView;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method a(Lcom/netease/nr/base/view/PullRefreshListView;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/base/view/PullListView;->h:Lcom/netease/nr/base/view/PullRefreshListView;

    return-void
.end method

.method a()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/netease/nr/base/view/PullListView;->f:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/view/PullListView;->h:Lcom/netease/nr/base/view/PullRefreshListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/PullListView;->h:Lcom/netease/nr/base/view/PullRefreshListView;

    invoke-virtual {v0}, Lcom/netease/nr/base/view/PullRefreshListView;->getScrollY()I

    move-result v0

    if-gez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/netease/nr/base/view/PullListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/view/PullListView;->a:Landroid/widget/FrameLayout;

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/PullListView;->h:Lcom/netease/nr/base/view/PullRefreshListView;

    invoke-virtual {v0}, Lcom/netease/nr/base/view/PullRefreshListView;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    goto :goto_0
.end method

.method public getItemAtPosition(I)Ljava/lang/Object;
    .locals 2

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0}, Lcom/netease/nr/base/view/PullListView;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, v0}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected layoutChildren()V
    .locals 3

    invoke-virtual {p0}, Lcom/netease/nr/base/view/PullListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    :goto_0
    invoke-virtual {p0}, Lcom/netease/nr/base/view/PullListView;->getCount()I

    move-result v2

    if-eq v2, v1, :cond_2

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/BaseAdapter;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    goto :goto_1
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/ListView;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/netease/nr/base/view/PullListView;->b:Lcom/netease/nr/base/a/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/PullListView;->b:Lcom/netease/nr/base/a/c;

    iget-object v1, p0, Lcom/netease/nr/base/view/PullListView;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/a/c;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/ListView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/netease/nr/base/view/PullListView;->b:Lcom/netease/nr/base/a/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/PullListView;->b:Lcom/netease/nr/base/a/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/a/c;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected onDrawVerticalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/base/view/PullListView;->h:Lcom/netease/nr/base/view/PullRefreshListView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/base/view/PullListView;->h:Lcom/netease/nr/base/view/PullRefreshListView;

    invoke-virtual {v0}, Lcom/netease/nr/base/view/PullRefreshListView;->c()I

    move-result v0

    iget-object v1, p0, Lcom/netease/nr/base/view/PullListView;->h:Lcom/netease/nr/base/view/PullRefreshListView;

    iget v1, v1, Lcom/netease/nr/base/view/PullRefreshListView;->a:I

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/netease/nr/base/view/PullListView;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-eq p4, v0, :cond_1

    sub-int v1, p6, p4

    add-int/2addr v1, v0

    invoke-static {p6, v1}, Ljava/lang/Math;->min(II)I

    move-result p6

    move p4, v0

    :cond_1
    invoke-virtual {p2, p3, p4, p5, p6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_1
    return v0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/netease/nr/base/view/PullListView;->c:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/netease/nr/base/view/PullListView;->d:I

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/netease/nr/base/view/PullListView;->c:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/netease/nr/base/view/PullListView;->d:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v0, v1, :cond_0

    iget v1, p0, Lcom/netease/nr/base/view/PullListView;->e:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/view/PullListView;->g:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/PullListView;->g:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    iput p2, p0, Lcom/netease/nr/base/view/PullListView;->f:I

    iget-object v0, p0, Lcom/netease/nr/base/view/PullListView;->g:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/PullListView;->g:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x1

    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/netease/nr/base/view/PullListView;->f:I

    if-eq v1, v4, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/netease/nr/base/view/PullListView;->c:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Lcom/netease/nr/base/view/PullListView;->d:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/netease/nr/base/view/PullListView;->e:I

    if-gt v2, v3, :cond_0

    iget v2, p0, Lcom/netease/nr/base/view/PullListView;->e:I

    if-le v1, v2, :cond_1

    :cond_0
    iput v4, p0, Lcom/netease/nr/base/view/PullListView;->f:I

    :cond_1
    return v0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/netease/nr/base/view/PullListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/netease/nr/base/view/PullListView;->b:Lcom/netease/nr/base/a/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/PullListView;->b:Lcom/netease/nr/base/a/c;

    invoke-virtual {v0, v2}, Lcom/netease/nr/base/a/c;->a(Landroid/view/View;)V

    iput-object v2, p0, Lcom/netease/nr/base/view/PullListView;->b:Lcom/netease/nr/base/a/c;

    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Lcom/netease/nr/base/a/c;

    iget-object v1, p0, Lcom/netease/nr/base/view/PullListView;->a:Landroid/widget/FrameLayout;

    invoke-direct {v0, p1, v1, v2}, Lcom/netease/nr/base/a/c;-><init>(Landroid/widget/ListAdapter;Landroid/view/View;Landroid/view/View;)V

    iput-object v0, p0, Lcom/netease/nr/base/view/PullListView;->b:Lcom/netease/nr/base/a/c;

    iget-object v0, p0, Lcom/netease/nr/base/view/PullListView;->b:Lcom/netease/nr/base/a/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/a/c;->a(Z)V

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/base/view/PullListView;->b:Lcom/netease/nr/base/a/c;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/netease/nr/base/view/bc;

    invoke-direct {v0, p0, p1}, Lcom/netease/nr/base/view/bc;-><init>(Lcom/netease/nr/base/view/PullListView;Landroid/widget/AdapterView$OnItemClickListener;)V

    move-object p1, v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/netease/nr/base/view/bd;

    invoke-direct {v0, p0, p1}, Lcom/netease/nr/base/view/bd;-><init>(Lcom/netease/nr/base/view/PullListView;Landroid/widget/AdapterView$OnItemLongClickListener;)V

    move-object p1, v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/netease/nr/base/view/be;

    invoke-direct {v0, p0, p1}, Lcom/netease/nr/base/view/be;-><init>(Lcom/netease/nr/base/view/PullListView;Landroid/widget/AdapterView$OnItemSelectedListener;)V

    move-object p1, v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    if-ne p1, p0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/netease/nr/base/view/PullListView;->g:Landroid/widget/AbsListView$OnScrollListener;

    goto :goto_0
.end method
