.class public Lcom/netease/nr/base/view/af;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/graphics/PointF;

.field private d:Landroid/graphics/PointF;

.field private e:F

.field private f:F

.field private g:Landroid/view/VelocityTracker;

.field private h:I

.field private i:I

.field private j:I

.field private k:Landroid/widget/Scroller;

.field private l:Ljava/lang/Runnable;

.field private m:I

.field private n:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/nr/base/view/af;->a:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/netease/nr/base/view/af;->b:I

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/base/view/af;->c:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/base/view/af;->d:Landroid/graphics/PointF;

    iput v1, p0, Lcom/netease/nr/base/view/af;->e:F

    iput v1, p0, Lcom/netease/nr/base/view/af;->f:F

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/netease/nr/base/view/af;->h:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/netease/nr/base/view/af;->i:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/netease/nr/base/view/af;->j:I

    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/nr/base/view/af;->k:Landroid/widget/Scroller;

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/base/view/af;)Landroid/widget/Scroller;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/view/af;->k:Landroid/widget/Scroller;

    return-object v0
.end method

.method private a(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {p2, v2}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v0

    invoke-static {p2, v4}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v1

    add-float/2addr v0, v1

    invoke-static {p2, v2}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v1

    invoke-static {p2, v4}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v2

    add-float/2addr v1, v2

    div-float/2addr v0, v3

    div-float/2addr v1, v3

    invoke-virtual {p1, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method private a(Landroid/support/v4/view/ViewPager;F)V
    .locals 3

    const/4 v2, 0x0

    cmpl-float v0, p2, v2

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/netease/nr/base/view/af;->m:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/netease/nr/base/view/af;->m:I

    int-to-float v0, v0

    sub-float/2addr v0, p2

    iget v1, p0, Lcom/netease/nr/base/view/af;->m:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    iget v0, p0, Lcom/netease/nr/base/view/af;->m:I

    int-to-float p2, v0

    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v0

    invoke-virtual {p1, p2}, Landroid/support/v4/view/ViewPager;->fakeDragBy(F)V

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v1

    sub-int v0, v1, v0

    iput v0, p0, Lcom/netease/nr/base/view/af;->n:I

    iget v0, p0, Lcom/netease/nr/base/view/af;->m:I

    iget v1, p0, Lcom/netease/nr/base/view/af;->n:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/netease/nr/base/view/af;->m:I

    :cond_1
    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 4

    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    iget v2, p0, Lcom/netease/nr/base/view/af;->b:I

    if-ne v1, v2, :cond_0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/netease/nr/base/view/af;->c:Landroid/graphics/PointF;

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v2

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/netease/nr/base/view/af;->b:I

    iget-object v0, p0, Lcom/netease/nr/base/view/af;->g:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/af;->g:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/netease/nr/base/view/ImageViewTouch;II)V
    .locals 9

    const/4 v4, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/netease/nr/base/view/ImageViewTouch;->c()Landroid/graphics/RectF;

    move-result-object v0

    if-ltz p2, :cond_0

    move v5, v1

    :goto_0
    if-lez p2, :cond_1

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {p1}, Lcom/netease/nr/base/view/ImageViewTouch;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v6, v2

    :goto_1
    if-lez p3, :cond_2

    move v7, v1

    :goto_2
    if-lez p3, :cond_3

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {p1}, Lcom/netease/nr/base/view/ImageViewTouch;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v8, v0

    :goto_3
    iget-object v0, p0, Lcom/netease/nr/base/view/af;->c:Landroid/graphics/PointF;

    int-to-float v2, v1

    int-to-float v3, v1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    iget-object v0, p0, Lcom/netease/nr/base/view/af;->k:Landroid/widget/Scroller;

    move v2, v1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    new-instance v0, Lcom/netease/nr/base/view/ag;

    invoke-direct {v0, p0, p1}, Lcom/netease/nr/base/view/ag;-><init>(Lcom/netease/nr/base/view/af;Lcom/netease/nr/base/view/ImageViewTouch;)V

    iput-object v0, p0, Lcom/netease/nr/base/view/af;->l:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/netease/nr/base/view/af;->l:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lcom/netease/nr/base/view/ImageViewTouch;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p1}, Lcom/netease/nr/base/view/ImageViewTouch;->invalidate()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {p1}, Lcom/netease/nr/base/view/ImageViewTouch;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v2, v2

    neg-int v5, v2

    goto :goto_0

    :cond_1
    move v6, v1

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {p1}, Lcom/netease/nr/base/view/ImageViewTouch;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v2, v2

    neg-int v7, v2

    goto :goto_2

    :cond_3
    move v8, v1

    goto :goto_3
.end method

.method static synthetic a(Lcom/netease/nr/base/view/af;Lcom/netease/nr/base/view/ImageViewTouch;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/nr/base/view/af;->b(Lcom/netease/nr/base/view/ImageViewTouch;)V

    return-void
.end method

.method private b(Landroid/view/MotionEvent;)F
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v0

    invoke-static {p1, v3}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v1

    invoke-static {p1, v3}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v2

    sub-float/2addr v1, v2

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/netease/nr/base/view/af;)Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/view/af;->c:Landroid/graphics/PointF;

    return-object v0
.end method

.method private b(Lcom/netease/nr/base/view/ImageViewTouch;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/base/view/af;->k:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    iget-object v0, p0, Lcom/netease/nr/base/view/af;->l:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/af;->l:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lcom/netease/nr/base/view/ImageViewTouch;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/nr/base/view/af;->l:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/netease/nr/base/view/ImageViewTouch;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/netease/nr/base/view/ImageViewTouch;Landroid/view/MotionEvent;)Z
    .locals 9

    const/4 v6, 0x2

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v7, 0x43480000    # 200.0f

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/netease/nr/base/view/ImageViewTouch;->b()Landroid/support/v4/view/ViewPager;

    move-result-object v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/af;->g:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/af;->g:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/nr/base/view/af;->g:Landroid/view/VelocityTracker;

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/base/view/af;->g:Landroid/view/VelocityTracker;

    if-nez v0, :cond_1

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/base/view/af;->g:Landroid/view/VelocityTracker;

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/base/view/af;->g:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-static {p2}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v2

    and-int/2addr v0, v2

    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_0
    :pswitch_0
    return v3

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/netease/nr/base/view/af;->b(Lcom/netease/nr/base/view/ImageViewTouch;)V

    iget-object v0, p0, Lcom/netease/nr/base/view/af;->c:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    iput v3, p0, Lcom/netease/nr/base/view/af;->a:I

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/netease/util/k/a;->a()Lcom/netease/util/k/i;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/netease/util/k/i;->a(Landroid/view/MotionEvent;)F

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    invoke-static {p2, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/netease/nr/base/view/af;->b:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/netease/nr/base/view/af;->a:I

    invoke-direct {p0, p2}, Lcom/netease/nr/base/view/af;->b(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/netease/nr/base/view/af;->e:F

    iget v0, p0, Lcom/netease/nr/base/view/af;->e:F

    const/high16 v1, 0x41200000    # 10.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/netease/nr/base/view/af;->d:Landroid/graphics/PointF;

    invoke-direct {p0, v0, p2}, Lcom/netease/nr/base/view/af;->a(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p2}, Lcom/netease/nr/base/view/af;->a(Landroid/view/MotionEvent;)V

    invoke-static {}, Lcom/netease/util/k/a;->a()Lcom/netease/util/k/i;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/netease/util/k/i;->a(Landroid/view/MotionEvent;)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/netease/nr/base/view/ImageViewTouch;->d()F

    move-result v0

    cmpg-float v1, v0, v8

    if-gez v1, :cond_4

    iput v8, p0, Lcom/netease/nr/base/view/af;->f:F

    iget-object v0, p0, Lcom/netease/nr/base/view/af;->d:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/netease/nr/base/view/af;->d:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v8, v0, v1, v7}, Lcom/netease/nr/base/view/ImageViewTouch;->a(FFFF)V

    :cond_3
    :goto_1
    iput v6, p0, Lcom/netease/nr/base/view/af;->a:I

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/netease/nr/base/view/ImageViewTouch;->g()F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3

    invoke-virtual {p1}, Lcom/netease/nr/base/view/ImageViewTouch;->g()F

    move-result v0

    iput v0, p0, Lcom/netease/nr/base/view/af;->f:F

    invoke-virtual {p1}, Lcom/netease/nr/base/view/ImageViewTouch;->g()F

    move-result v0

    iget-object v1, p0, Lcom/netease/nr/base/view/af;->d:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/netease/nr/base/view/af;->d:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0, v1, v2, v7}, Lcom/netease/nr/base/view/ImageViewTouch;->a(FFFF)V

    goto :goto_1

    :pswitch_4
    iget v0, p0, Lcom/netease/nr/base/view/af;->a:I

    if-ne v0, v3, :cond_6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v5, p0, Lcom/netease/nr/base/view/af;->c:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v5

    iget-object v5, p0, Lcom/netease/nr/base/view/af;->c:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v5, p0, Lcom/netease/nr/base/view/af;->h:I

    int-to-float v5, v5

    cmpl-float v0, v0, v5

    if-gtz v0, :cond_5

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Lcom/netease/nr/base/view/af;->h:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_6

    :cond_5
    iput v6, p0, Lcom/netease/nr/base/view/af;->a:I

    :cond_6
    iget v0, p0, Lcom/netease/nr/base/view/af;->a:I

    if-ne v0, v6, :cond_d

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v5, p0, Lcom/netease/nr/base/view/af;->c:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    sub-float v5, v0, v5

    iget v6, p0, Lcom/netease/nr/base/view/af;->n:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-direct {p0, v4, v5}, Lcom/netease/nr/base/view/af;->a(Landroid/support/v4/view/ViewPager;F)V

    iget-object v5, p0, Lcom/netease/nr/base/view/af;->c:Landroid/graphics/PointF;

    invoke-virtual {v5, v0, v2}, Landroid/graphics/PointF;->set(FF)V

    iget v0, p0, Lcom/netease/nr/base/view/af;->m:I

    if-nez v0, :cond_2

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->endFakeDrag()V

    iput v1, p0, Lcom/netease/nr/base/view/af;->n:I

    iput v1, p0, Lcom/netease/nr/base/view/af;->m:I

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget-object v0, p0, Lcom/netease/nr/base/view/af;->c:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    sub-float v6, v2, v0

    iget-object v0, p0, Lcom/netease/nr/base/view/af;->c:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float v0, v5, v0

    if-eqz v4, :cond_a

    invoke-virtual {p1}, Lcom/netease/nr/base/view/ImageViewTouch;->h()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {p1}, Lcom/netease/nr/base/view/ImageViewTouch;->d()F

    move-result v7

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_a

    :cond_8
    if-eqz v4, :cond_9

    const/4 v0, 0x0

    cmpl-float v0, v6, v0

    if-lez v0, :cond_1a

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_1a

    move v0, v1

    :goto_2
    if-eqz v0, :cond_9

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->beginFakeDrag()Z

    iput v1, p0, Lcom/netease/nr/base/view/af;->n:I

    iput v1, p0, Lcom/netease/nr/base/view/af;->m:I

    invoke-direct {p0, v4, v6}, Lcom/netease/nr/base/view/af;->a(Landroid/support/v4/view/ViewPager;F)V

    :cond_9
    :goto_3
    iget-object v0, p0, Lcom/netease/nr/base/view/af;->c:Landroid/graphics/PointF;

    invoke-virtual {v0, v2, v5}, Landroid/graphics/PointF;->set(FF)V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p1, v6, v0}, Lcom/netease/nr/base/view/ImageViewTouch;->b(FF)I

    move-result v0

    if-eqz v4, :cond_9

    and-int/lit8 v7, v0, 0x3

    if-eqz v7, :cond_b

    move v0, v3

    :goto_4
    if-eqz v0, :cond_9

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->beginFakeDrag()Z

    iput v1, p0, Lcom/netease/nr/base/view/af;->n:I

    iput v1, p0, Lcom/netease/nr/base/view/af;->m:I

    goto :goto_3

    :cond_b
    and-int/lit8 v7, v0, 0x1

    if-eqz v7, :cond_c

    const/4 v7, 0x0

    cmpl-float v7, v6, v7

    if-lez v7, :cond_c

    move v0, v3

    goto :goto_4

    :cond_c
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_19

    const/4 v0, 0x0

    cmpg-float v0, v6, v0

    if-gez v0, :cond_19

    move v0, v3

    goto :goto_4

    :cond_d
    iget v0, p0, Lcom/netease/nr/base/view/af;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    invoke-direct {p0, p2}, Lcom/netease/nr/base/view/af;->b(Landroid/view/MotionEvent;)F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    iget v1, p0, Lcom/netease/nr/base/view/af;->f:F

    iget v2, p0, Lcom/netease/nr/base/view/af;->e:F

    div-float v2, v0, v2

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/netease/nr/base/view/af;->f:F

    iget v1, p0, Lcom/netease/nr/base/view/af;->f:F

    iget-object v2, p0, Lcom/netease/nr/base/view/af;->d:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/netease/nr/base/view/af;->d:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v1, v2, v4}, Lcom/netease/nr/base/view/ImageViewTouch;->a(FFF)V

    iput v0, p0, Lcom/netease/nr/base/view/af;->e:F

    goto/16 :goto_0

    :pswitch_5
    iget v0, p0, Lcom/netease/nr/base/view/af;->a:I

    if-ne v0, v3, :cond_10

    invoke-virtual {p1}, Lcom/netease/nr/base/view/ImageViewTouch;->performClick()Z

    :goto_5
    iget-object v0, p0, Lcom/netease/nr/base/view/af;->g:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/netease/nr/base/view/af;->g:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/nr/base/view/af;->g:Landroid/view/VelocityTracker;

    :cond_e
    const/4 v0, -0x1

    iput v0, p0, Lcom/netease/nr/base/view/af;->b:I

    iput v1, p0, Lcom/netease/nr/base/view/af;->a:I

    if-eqz v4, :cond_f

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->endFakeDrag()V

    :cond_f
    iput v1, p0, Lcom/netease/nr/base/view/af;->n:I

    iput v1, p0, Lcom/netease/nr/base/view/af;->m:I

    goto/16 :goto_0

    :cond_10
    iget v0, p0, Lcom/netease/nr/base/view/af;->a:I

    if-ne v0, v6, :cond_16

    if-eqz v4, :cond_11

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->endFakeDrag()V

    goto :goto_5

    :cond_11
    iget-object v0, p0, Lcom/netease/nr/base/view/af;->g:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    iget v5, p0, Lcom/netease/nr/base/view/af;->j:I

    int-to-float v5, v5

    invoke-virtual {v0, v2, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v0, p0, Lcom/netease/nr/base/view/af;->g:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    float-to-int v0, v0

    iget-object v2, p0, Lcom/netease/nr/base/view/af;->g:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v2

    float-to-int v2, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lcom/netease/nr/base/view/af;->i:I

    if-gt v5, v6, :cond_12

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lcom/netease/nr/base/view/af;->i:I

    if-le v5, v6, :cond_15

    :cond_12
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lcom/netease/nr/base/view/af;->i:I

    if-gt v5, v6, :cond_13

    move v0, v1

    :cond_13
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lcom/netease/nr/base/view/af;->i:I

    if-gt v5, v6, :cond_14

    move v2, v1

    :cond_14
    neg-int v0, v0

    neg-int v2, v2

    invoke-direct {p0, p1, v0, v2}, Lcom/netease/nr/base/view/af;->a(Lcom/netease/nr/base/view/ImageViewTouch;II)V

    goto :goto_5

    :cond_15
    invoke-virtual {p1, v3, v3, v7}, Lcom/netease/nr/base/view/ImageViewTouch;->a(ZZF)V

    goto :goto_5

    :cond_16
    invoke-virtual {p1, v3, v3, v7}, Lcom/netease/nr/base/view/ImageViewTouch;->a(ZZF)V

    goto :goto_5

    :pswitch_6
    iget-object v0, p0, Lcom/netease/nr/base/view/af;->g:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/netease/nr/base/view/af;->g:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/nr/base/view/af;->g:Landroid/view/VelocityTracker;

    :cond_17
    const/4 v0, -0x1

    iput v0, p0, Lcom/netease/nr/base/view/af;->b:I

    iput v1, p0, Lcom/netease/nr/base/view/af;->a:I

    invoke-virtual {p1, v3, v3, v7}, Lcom/netease/nr/base/view/ImageViewTouch;->a(ZZF)V

    if-eqz v4, :cond_18

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->endFakeDrag()V

    :cond_18
    iput v1, p0, Lcom/netease/nr/base/view/af;->n:I

    iput v1, p0, Lcom/netease/nr/base/view/af;->m:I

    goto/16 :goto_0

    :cond_19
    move v0, v1

    goto/16 :goto_4

    :cond_1a
    move v0, v3

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
