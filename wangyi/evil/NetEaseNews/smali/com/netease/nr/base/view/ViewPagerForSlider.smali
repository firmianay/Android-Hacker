.class public Lcom/netease/nr/base/view/ViewPagerForSlider;
.super Lcom/netease/nr/base/view/ViewPagerWithIndicator;

# interfaces
.implements Lcom/netease/nr/base/view/ax;
.implements Lcom/netease/nr/base/view/bb;


# instance fields
.field private a:J

.field private b:F

.field private c:I

.field private d:Z

.field private e:Ljava/util/List;

.field private f:F

.field private g:F

.field private h:I

.field private i:Landroid/support/v4/view/PagerAdapter;

.field private j:I

.field private k:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/netease/nr/base/view/ViewPagerWithIndicator;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/base/view/ViewPagerForSlider;->e:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/netease/nr/base/view/ViewPagerForSlider;->j:I

    new-instance v0, Lcom/netease/nr/base/view/ch;

    invoke-direct {v0, p0}, Lcom/netease/nr/base/view/ch;-><init>(Lcom/netease/nr/base/view/ViewPagerForSlider;)V

    iput-object v0, p0, Lcom/netease/nr/base/view/ViewPagerForSlider;->k:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/netease/nr/base/view/ViewPagerForSlider;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/netease/nr/base/view/ViewPagerWithIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/base/view/ViewPagerForSlider;->e:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/netease/nr/base/view/ViewPagerForSlider;->j:I

    new-instance v0, Lcom/netease/nr/base/view/ch;

    invoke-direct {v0, p0}, Lcom/netease/nr/base/view/ch;-><init>(Lcom/netease/nr/base/view/ViewPagerForSlider;)V

    iput-object v0, p0, Lcom/netease/nr/base/view/ViewPagerForSlider;->k:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/netease/nr/base/view/ViewPagerForSlider;->a()V

    return-void
.end method

.method private a()V
    .locals 1

    invoke-virtual {p0}, Lcom/netease/nr/base/view/ViewPagerForSlider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/netease/nr/base/view/ViewPagerForSlider;->h:I

    return-void
.end method

.method private a(ZZ)V
    .locals 0

    return-void
.end method

.method private b(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/netease/nr/base/view/ViewPagerForSlider;->a(ZZ)V

    return-void
.end method

.method private b(JZ)Z
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/base/view/ViewPagerForSlider;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/bb;

    invoke-interface {v0, p1, p2, p3}, Lcom/netease/nr/base/view/bb;->a(JZ)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(F)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/netease/nr/base/view/ViewPagerForSlider;->b:F

    invoke-virtual {p0}, Lcom/netease/nr/base/view/ViewPagerForSlider;->requestLayout()V

    return-void
.end method

.method public a(Lcom/netease/nr/base/view/bb;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/view/ViewPagerForSlider;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/base/view/ViewPagerForSlider;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public a(Lcom/netease/util/j/a;)V
    .locals 7

    invoke-virtual {p0}, Lcom/netease/nr/base/view/ViewPagerForSlider;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f07000c

    invoke-virtual {p1, v0, v1}, Lcom/netease/util/j/a;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    invoke-virtual {p0}, Lcom/netease/nr/base/view/ViewPagerForSlider;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070010

    invoke-virtual {p1, v0, v1}, Lcom/netease/util/j/a;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    invoke-virtual {p0}, Lcom/netease/nr/base/view/ViewPagerForSlider;->getChildCount()I

    move-result v5

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v5, :cond_3

    invoke-virtual {p0, v2}, Lcom/netease/nr/base/view/ViewPagerForSlider;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v0, :cond_0

    instance-of v0, v1, Lcom/netease/nr/base/view/ba;

    if-eqz v0, :cond_1

    const v0, 0x7f02004e

    invoke-virtual {p1, v1, v0}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    move-object v0, v1

    check-cast v0, Lcom/netease/nr/base/view/ba;

    invoke-interface {v0, p1}, Lcom/netease/nr/base/view/ba;->a(Lcom/netease/util/j/a;)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    instance-of v0, v1, Landroid/support/v4/view/PagerTitleStrip;

    if-eqz v0, :cond_2

    move-object v0, v1

    check-cast v0, Landroid/support/v4/view/PagerTitleStrip;

    invoke-virtual {v0, v3}, Landroid/support/v4/view/PagerTitleStrip;->setTextColor(I)V

    const v6, 0x7f020042

    invoke-virtual {p1, v0, v6}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    :cond_2
    instance-of v0, v1, Landroid/support/v4/view/PagerTabStrip;

    if-eqz v0, :cond_0

    check-cast v1, Landroid/support/v4/view/PagerTabStrip;

    invoke-virtual {v1, v4}, Landroid/support/v4/view/PagerTabStrip;->setTabIndicatorColor(I)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public a(JZ)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-wide v2, p0, Lcom/netease/nr/base/view/ViewPagerForSlider;->a:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/base/view/ViewPagerForSlider;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v0

    :goto_0
    if-gt v2, v1, :cond_2

    :cond_0
    :goto_1
    return v0

    :cond_1
    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/netease/nr/base/view/ViewPagerForSlider;->getCurrentItem()I

    move-result v3

    if-nez v3, :cond_4

    iget v2, p0, Lcom/netease/nr/base/view/ViewPagerForSlider;->c:I

    rsub-int/lit8 v2, v2, 0x0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/netease/nr/base/view/ViewPagerForSlider;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    if-eqz p3, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/netease/nr/base/view/ViewPagerForSlider;->getScrollX()I

    move-result v3

    if-ge v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v2, -0x1

    if-ne v3, v2, :cond_3

    invoke-virtual {p0}, Lcom/netease/nr/base/view/ViewPagerForSlider;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/netease/nr/base/view/ViewPagerForSlider;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    if-nez p3, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/netease/nr/base/view/ViewPagerForSlider;->getScrollX()I

    move-result v3

    if-gt v2, v3, :cond_3

    goto :goto_1
.end method

.method public a(Landroid/view/MotionEvent;Z)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Lcom/netease/nr/base/view/ViewPagerForSlider;->b(JZ)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v0, v1, p2}, Lcom/netease/nr/base/view/ViewPagerForSlider;->a(JZ)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    invoke-virtual {p0, p3}, Lcom/netease/nr/base/view/ViewPagerForSlider;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p3}, Lcom/netease/nr/base/view/ViewPagerForSlider;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    :goto_0
    instance-of v0, p1, Lcom/netease/nr/base/view/ba;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    iget-boolean v2, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    or-int/lit8 v2, v2, 0x1

    iput-boolean v2, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    move-object v0, p1

    check-cast v0, Lcom/netease/nr/base/view/ba;

    invoke-virtual {p0, v0}, Lcom/netease/nr/base/view/ViewPagerForSlider;->a(Lcom/netease/nr/base/view/bb;)V

    :cond_0
    invoke-super {p0, p1, p2, v1}, Lcom/netease/nr/base/view/ViewPagerWithIndicator;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_1
    move-object v1, p3

    goto :goto_0
.end method

.method public b(Lcom/netease/nr/base/view/bb;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/view/ViewPagerForSlider;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method protected canScroll(Landroid/view/View;ZIII)Z
    .locals 3

    invoke-super/range {p0 .. p5}, Lcom/netease/nr/base/view/ViewPagerWithIndicator;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v1, p0, Lcom/netease/nr/base/view/ViewPagerForSlider;->a:J

    if-lez p3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v1, v2, v0}, Lcom/netease/nr/base/view/ViewPagerForSlider;->b(JZ)Z

    move-result v0

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/nr/base/view/ViewPagerForSlider;->d:Z

    invoke-super {p0, p1}, Lcom/netease/nr/base/view/ViewPagerWithIndicator;->dispatchDraw(Landroid/graphics/Canvas;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/netease/nr/base/view/ViewPagerForSlider;->d:Z

    invoke-virtual {p0}, Lcom/netease/nr/base/view/ViewPagerForSlider;->getDrawingTime()J

    invoke-virtual {p0}, Lcom/netease/nr/base/view/ViewPagerForSlider;->getChildCount()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/netease/nr/base/view/ViewPagerForSlider;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v3, v0, Lcom/netease/nr/base/view/ba;

    if-eqz v3, :cond_0

    check-cast v0, Lcom/netease/nr/base/view/ba;

    invoke-interface {v0, p0, p1}, Lcom/netease/nr/base/view/ba;->a(Landroid/support/v4/view/ViewPager;Landroid/graphics/Canvas;)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/netease/nr/base/view/ViewPagerWithIndicator;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-super {p0}, Lcom/netease/nr/base/view/ViewPagerWithIndicator;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/netease/nr/base/view/ViewPagerForSlider;->i:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/ViewPagerForSlider;->i:Landroid/support/v4/view/PagerAdapter;

    invoke-super {p0, v0}, Lcom/netease/nr/base/view/ViewPagerWithIndicator;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/nr/base/view/ViewPagerForSlider;->i:Landroid/support/v4/view/PagerAdapter;

    :cond_0
    iget v0, p0, Lcom/netease/nr/base/view/ViewPagerForSlider;->j:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/netease/nr/base/view/ViewPagerForSlider;->j:I

    invoke-virtual {p0, v0, v2}, Lcom/netease/nr/base/view/ViewPagerForSlider;->setCurrentItem(IZ)V

    iput v1, p0, Lcom/netease/nr/base/view/ViewPagerForSlider;->j:I

    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0, v2}, Lcom/netease/nr/base/view/ViewPagerForSlider;->a(ZZ)V

    iget-object v0, p0, Lcom/netease/nr/base/view/ViewPagerForSlider;->k:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Lcom/netease/nr/base/view/ViewPagerForSlider;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Lcom/netease/nr/base/view/ViewPagerWithIndicator;->onDetachedFromWindow()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netease/nr/base/view/ViewPagerForSlider;->b(Z)V

    iget-object v0, p0, Lcom/netease/nr/base/view/ViewPagerForSlider;->k:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/netease/nr/base/view/ViewPagerForSlider;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Lcom/netease/nr/base/view/ViewPagerWithIndicator;->onFinishInflate()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Lcom/netease/nr/base/view/ViewPagerWithIndicator;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netease/nr/base/view/ViewPagerForSlider;->a:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/netease/nr/base/view/ViewPagerForSlider;->f:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/netease/nr/base/view/ViewPagerForSlider;->g:F

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/netease/nr/base/view/ViewPagerForSlider;->f:F

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/netease/nr/base/view/ViewPagerForSlider;->g:F

    sub-float/2addr v1, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/netease/nr/base/view/ViewPagerForSlider;->h:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/netease/nr/base/view/ViewPagerForSlider;->h:I

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_0

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netease/nr/base/view/ViewPagerForSlider;->b(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/netease/nr/base/view/ViewPagerWithIndicator;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    const/high16 v3, 0x40000000    # 2.0f

    iget v0, p0, Lcom/netease/nr/base/view/ViewPagerForSlider;->b:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/netease/nr/base/view/ViewPagerForSlider;->getDefaultSize(II)I

    move-result v0

    int-to-float v1, v0

    iget v2, p0, Lcom/netease/nr/base/view/ViewPagerForSlider;->b:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/view/ViewPagerWithIndicator;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    if-eq v0, v2, :cond_0

    invoke-direct {p0, v2}, Lcom/netease/nr/base/view/ViewPagerForSlider;->b(Z)V

    :goto_0
    invoke-super {p0, p1}, Lcom/netease/nr/base/view/ViewPagerWithIndicator;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netease/nr/base/view/ViewPagerForSlider;->b(Z)V

    goto :goto_0
.end method

.method public setAdapter(Landroid/support/v4/view/PagerAdapter;)V
    .locals 4

    iput-object p1, p0, Lcom/netease/nr/base/view/ViewPagerForSlider;->i:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {p0}, Lcom/netease/nr/base/view/ViewPagerForSlider;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/nr/base/view/ViewPagerForSlider;->i:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {p0}, Lcom/netease/nr/base/view/ViewPagerForSlider;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-super {p0, p1}, Lcom/netease/nr/base/view/ViewPagerWithIndicator;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    invoke-virtual {p0}, Lcom/netease/nr/base/view/ViewPagerForSlider;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/netease/nr/base/view/ViewPagerForSlider;->getChildCount()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/netease/nr/base/view/ViewPagerForSlider;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v3, v0, Lcom/netease/nr/base/view/ba;

    if-eqz v3, :cond_0

    check-cast v0, Lcom/netease/nr/base/view/ba;

    invoke-interface {v0}, Lcom/netease/nr/base/view/ba;->b()V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 1

    iput p1, p0, Lcom/netease/nr/base/view/ViewPagerForSlider;->j:I

    invoke-virtual {p0}, Lcom/netease/nr/base/view/ViewPagerForSlider;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Lcom/netease/nr/base/view/ViewPagerForSlider;->j:I

    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/view/ViewPagerWithIndicator;->setCurrentItem(IZ)V

    :cond_0
    return-void
.end method
