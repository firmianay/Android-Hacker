.class public Lcom/netease/nr/base/view/MySlidingDrawer;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# instance fields
.field private A:F

.field private B:Landroid/graphics/drawable/Drawable;

.field private C:Landroid/graphics/drawable/Drawable;

.field private D:Ljava/util/List;

.field private E:Ljava/util/List;

.field private F:Ljava/util/List;

.field private a:Landroid/view/GestureDetector;

.field private b:F

.field private c:F

.field private d:I

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/graphics/Rect;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Landroid/os/Handler;

.field private m:F

.field private n:F

.field private o:F

.field private p:J

.field private q:J

.field private r:Z

.field private s:I

.field private t:I

.field private u:I

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/netease/nr/base/view/MySlidingDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->h:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->k:Z

    new-instance v0, Lcom/netease/nr/base/view/au;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/netease/nr/base/view/au;-><init>(Lcom/netease/nr/base/view/MySlidingDrawer;Lcom/netease/nr/base/view/at;)V

    iput-object v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->l:Landroid/os/Handler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->w:Z

    iput v2, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->z:F

    iput v2, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->A:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->D:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->E:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->F:Ljava/util/List;

    invoke-direct {p0}, Lcom/netease/nr/base/view/MySlidingDrawer;->i()V

    return-void
.end method

.method private a(I)V
    .locals 6

    const/4 v5, 0x4

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->g:Landroid/view/View;

    iget-boolean v4, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->j:Z

    if-eqz v4, :cond_0

    iget-object v1, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->e:Landroid/view/View;

    move-object v2, v1

    :goto_0
    if-nez v2, :cond_1

    iput-boolean v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->i:Z

    invoke-virtual {p0}, Lcom/netease/nr/base/view/MySlidingDrawer;->invalidate()V

    :goto_1
    return-void

    :cond_0
    iget-object v1, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->f:Landroid/view/View;

    move-object v2, v1

    goto :goto_0

    :cond_1
    const/16 v1, -0x2711

    if-ne p1, v1, :cond_3

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->i:Z

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    invoke-virtual {p0}, Lcom/netease/nr/base/view/MySlidingDrawer;->invalidate()V

    invoke-direct {p0, v4}, Lcom/netease/nr/base/view/MySlidingDrawer;->d(Z)V

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_2

    :cond_3
    const/16 v1, -0x2712

    if-ne p1, v1, :cond_4

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    iput-boolean v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->i:Z

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {v3, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    invoke-virtual {p0}, Lcom/netease/nr/base/view/MySlidingDrawer;->invalidate()V

    invoke-direct {p0, v4}, Lcom/netease/nr/base/view/MySlidingDrawer;->e(Z)V

    goto :goto_1

    :cond_4
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    if-eqz v4, :cond_6

    move v1, v0

    :goto_3
    if-eqz v4, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v0

    :cond_5
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v2

    if-ge p1, v1, :cond_7

    sub-int v0, v1, v2

    :goto_4
    invoke-virtual {v3, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    invoke-virtual {p0}, Lcom/netease/nr/base/view/MySlidingDrawer;->invalidate()V

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->f:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v5, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->g:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int/2addr v1, v5

    goto :goto_3

    :cond_7
    if-le p1, v0, :cond_8

    sub-int/2addr v0, v2

    goto :goto_4

    :cond_8
    sub-int v0, p1, v2

    goto :goto_4
.end method

.method private a(IFZ)V
    .locals 5

    const/16 v4, 0x3e8

    const/4 v1, 0x0

    int-to-float v0, p1

    iput v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->o:F

    iput p2, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->n:F

    iget-boolean v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->j:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->i:Z

    if-eqz v0, :cond_3

    if-nez p3, :cond_0

    iget v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->t:I

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    if-le p1, v0, :cond_2

    iget v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->t:I

    neg-int v0, v0

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_2

    :cond_0
    iget v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->s:I

    int-to-float v0, v0

    iput v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->m:F

    cmpg-float v0, p2, v1

    if-gez v0, :cond_1

    iput v1, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->n:F

    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->p:J

    const-wide/16 v2, 0x10

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->q:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->r:Z

    iget-object v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->l:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->l:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->q:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void

    :cond_2
    iget v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->s:I

    neg-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->m:F

    cmpl-float v0, p2, v1

    if-lez v0, :cond_1

    iput v1, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->n:F

    goto :goto_0

    :cond_3
    if-nez p3, :cond_5

    iget v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->t:I

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-gtz v0, :cond_4

    iget-object v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    if-le p1, v0, :cond_5

    iget v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->t:I

    neg-int v0, v0

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_5

    :cond_4
    iget v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->s:I

    int-to-float v0, v0

    iput v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->m:F

    cmpg-float v0, p2, v1

    if-gez v0, :cond_1

    iput v1, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->n:F

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->s:I

    neg-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->m:F

    cmpl-float v0, p2, v1

    if-lez v0, :cond_1

    iput v1, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->n:F

    goto :goto_0

    :cond_6
    iget-boolean v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->i:Z

    if-eqz v0, :cond_9

    if-nez p3, :cond_7

    iget v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->t:I

    neg-int v0, v0

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_7

    iget-object v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    if-ge p1, v0, :cond_8

    iget v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->t:I

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_8

    :cond_7
    iget v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->s:I

    neg-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->m:F

    cmpg-float v0, p2, v1

    if-gez v0, :cond_1

    iput v1, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->n:F

    goto/16 :goto_0

    :cond_8
    iget v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->s:I

    int-to-float v0, v0

    iput v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->m:F

    cmpg-float v0, p2, v1

    if-gez v0, :cond_1

    iput v1, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->n:F

    goto/16 :goto_0

    :cond_9
    if-nez p3, :cond_b

    iget v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->t:I

    neg-int v0, v0

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_a

    iget-object v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    if-ge p1, v0, :cond_b

    iget v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->t:I

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_b

    :cond_a
    iget v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->s:I

    neg-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->m:F

    cmpl-float v0, p2, v1

    if-lez v0, :cond_1

    iput v1, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->n:F

    goto/16 :goto_0

    :cond_b
    iget v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->s:I

    int-to-float v0, v0

    iput v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->m:F

    cmpl-float v0, p2, v1

    if-lez v0, :cond_1

    iput v1, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->n:F

    goto/16 :goto_0
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    const/4 v1, -0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-nez v0, :cond_1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_0
.end method

.method static synthetic a(Lcom/netease/nr/base/view/MySlidingDrawer;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/nr/base/view/MySlidingDrawer;->j()V

    return-void
.end method

.method private a(Landroid/view/MotionEvent;FFZ)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    if-nez p4, :cond_0

    iget v4, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->d:I

    int-to-float v4, v4

    cmpl-float v4, v2, v4

    if-lez v4, :cond_1

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    :cond_0
    iget-boolean v2, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->i:Z

    if-eqz v2, :cond_2

    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    cmpl-float v2, p2, v5

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->e:Landroid/view/View;

    if-eqz v2, :cond_3

    invoke-direct {p0, p1, v1}, Lcom/netease/nr/base/view/MySlidingDrawer;->a(Landroid/view/MotionEvent;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v1}, Lcom/netease/nr/base/view/MySlidingDrawer;->c(Z)V

    iput-boolean v1, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->j:Z

    move v0, v1

    goto :goto_0

    :cond_3
    cmpg-float v2, p2, v5

    if-gez v2, :cond_1

    iget-object v2, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->f:Landroid/view/View;

    if-eqz v2, :cond_1

    invoke-direct {p0, p1, v0}, Lcom/netease/nr/base/view/MySlidingDrawer;->a(Landroid/view/MotionEvent;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v0}, Lcom/netease/nr/base/view/MySlidingDrawer;->c(Z)V

    iput-boolean v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->j:Z

    move v0, v1

    goto :goto_0
.end method

.method private a(Landroid/view/MotionEvent;Z)Z
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/ax;

    invoke-interface {v0, p1, p2}, Lcom/netease/nr/base/view/ax;->a(Landroid/view/MotionEvent;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b(I)V
    .locals 2

    iget v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->s:I

    div-int/lit8 v0, v0, 0x5

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/netease/nr/base/view/MySlidingDrawer;->a(IFZ)V

    return-void
.end method

.method private c(I)V
    .locals 2

    iget v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->s:I

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x5

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/netease/nr/base/view/MySlidingDrawer;->a(IFZ)V

    return-void
.end method

.method private c(Z)V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/aw;

    invoke-interface {v0, p1}, Lcom/netease/nr/base/view/aw;->a(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private d(I)V
    .locals 2

    iget v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->s:I

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x5

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/netease/nr/base/view/MySlidingDrawer;->a(IFZ)V

    return-void
.end method

.method private d(Z)V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/aw;

    invoke-interface {v0, p1}, Lcom/netease/nr/base/view/aw;->b(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private e(I)V
    .locals 2

    iget v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->s:I

    div-int/lit8 v0, v0, 0x5

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/netease/nr/base/view/MySlidingDrawer;->a(IFZ)V

    return-void
.end method

.method private e(Z)V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/aw;

    invoke-interface {v0, p1}, Lcom/netease/nr/base/view/aw;->c(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private f(Z)V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->F:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/ay;

    invoke-interface {v0, p1}, Lcom/netease/nr/base/view/ay;->d(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private g(Z)V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->F:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/ay;

    invoke-interface {v0, p1}, Lcom/netease/nr/base/view/ay;->e(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private i()V
    .locals 3

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {p0}, Lcom/netease/nr/base/view/MySlidingDrawer;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/view/GestureDetector;

    invoke-direct {v1, v0, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->a:Landroid/view/GestureDetector;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->d:I

    invoke-virtual {p0}, Lcom/netease/nr/base/view/MySlidingDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x457a0000    # 4000.0f

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->s:I

    const/high16 v1, 0x43480000    # 200.0f

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->t:I

    return-void
.end method

.method private j()V
    .locals 5

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->r:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/netease/nr/base/view/MySlidingDrawer;->m()V

    iget-boolean v4, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->j:Z

    if-eqz v4, :cond_1

    iget-object v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->e:Landroid/view/View;

    if-nez v0, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    :cond_2
    if-eqz v4, :cond_3

    iget-object v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->e:Landroid/view/View;

    move-object v3, v0

    :goto_1
    if-eqz v4, :cond_4

    move v2, v1

    :goto_2
    if-eqz v4, :cond_5

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v0

    :goto_3
    iget v3, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->o:F

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    cmpl-float v0, v3, v0

    if-ltz v0, :cond_7

    iput-boolean v1, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->r:Z

    if-eqz v4, :cond_6

    invoke-direct {p0}, Lcom/netease/nr/base/view/MySlidingDrawer;->l()V

    :goto_4
    iget-boolean v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->x:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/base/view/MySlidingDrawer;->requestLayout()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->f:Landroid/view/View;

    move-object v3, v0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v2, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->g:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    move v2, v0

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_3

    :cond_6
    invoke-direct {p0}, Lcom/netease/nr/base/view/MySlidingDrawer;->k()V

    goto :goto_4

    :cond_7
    iget v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->o:F

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_9

    iput-boolean v1, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->r:Z

    if-eqz v4, :cond_8

    invoke-direct {p0}, Lcom/netease/nr/base/view/MySlidingDrawer;->k()V

    :goto_5
    iget-boolean v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->x:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/base/view/MySlidingDrawer;->requestLayout()V

    goto :goto_0

    :cond_8
    invoke-direct {p0}, Lcom/netease/nr/base/view/MySlidingDrawer;->l()V

    goto :goto_5

    :cond_9
    iget v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->o:F

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/netease/nr/base/view/MySlidingDrawer;->a(I)V

    iget-wide v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->q:J

    const-wide/16 v2, 0x10

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->q:J

    iget-object v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->l:Landroid/os/Handler;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->q:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private k()V
    .locals 1

    const/16 v0, -0x2712

    invoke-direct {p0, v0}, Lcom/netease/nr/base/view/MySlidingDrawer;->a(I)V

    return-void
.end method

.method private l()V
    .locals 1

    const/16 v0, -0x2711

    invoke-direct {p0, v0}, Lcom/netease/nr/base/view/MySlidingDrawer;->a(I)V

    return-void
.end method

.method private m()V
    .locals 7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->p:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    iget v3, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->o:F

    iget v4, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->n:F

    iget v5, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->m:F

    mul-float v6, v4, v2

    add-float/2addr v3, v6

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v6, v5

    mul-float/2addr v6, v2

    mul-float/2addr v6, v2

    add-float/2addr v3, v6

    iput v3, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->o:F

    mul-float/2addr v2, v5

    add-float/2addr v2, v4

    iput v2, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->n:F

    iput-wide v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->p:J

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-boolean v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->i:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/base/view/MySlidingDrawer;->c()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/netease/nr/base/view/MySlidingDrawer;->b()V

    goto :goto_0
.end method

.method public a(F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->z:F

    invoke-virtual {p0}, Lcom/netease/nr/base/view/MySlidingDrawer;->requestLayout()V

    invoke-virtual {p0}, Lcom/netease/nr/base/view/MySlidingDrawer;->invalidate()V

    goto :goto_0
.end method

.method public a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->B:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->C:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/netease/nr/base/view/MySlidingDrawer;->invalidate()V

    return-void
.end method

.method public a(Lcom/netease/nr/base/view/aw;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->E:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->E:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public a(Lcom/netease/nr/base/view/ax;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->D:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->D:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public a(Lcom/netease/nr/base/view/ay;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->F:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->F:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->y:Z

    return-void
.end method

.method public b()V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->i:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->j:Z

    invoke-virtual {p0}, Lcom/netease/nr/base/view/MySlidingDrawer;->getWidth()I

    move-result v0

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->i:Z

    iget-object v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->e:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/netease/nr/base/view/MySlidingDrawer;->requestLayout()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/netease/nr/base/view/MySlidingDrawer;->b(I)V

    invoke-direct {p0, v1}, Lcom/netease/nr/base/view/MySlidingDrawer;->f(Z)V

    goto :goto_0
.end method

.method public b(F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->A:F

    invoke-virtual {p0}, Lcom/netease/nr/base/view/MySlidingDrawer;->requestLayout()V

    invoke-virtual {p0}, Lcom/netease/nr/base/view/MySlidingDrawer;->invalidate()V

    goto :goto_0
.end method

.method public b(Lcom/netease/nr/base/view/aw;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->E:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Lcom/netease/nr/base/view/ax;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->D:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Lcom/netease/nr/base/view/ay;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->F:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->k:Z

    return-void
.end method

.method public c()V
    .locals 1

    iget-boolean v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->i:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->j:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/netease/nr/base/view/MySlidingDrawer;->c(I)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/netease/nr/base/view/MySlidingDrawer;->g(Z)V

    goto :goto_0
.end method

.method public d()V
    .locals 1

    iget-boolean v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->i:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/base/view/MySlidingDrawer;->f()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/netease/nr/base/view/MySlidingDrawer;->e()V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10

    const/4 v1, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/netease/nr/base/view/MySlidingDrawer;->getDrawingTime()J

    move-result-wide v3

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Lcom/netease/nr/base/view/MySlidingDrawer;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/netease/nr/base/view/MySlidingDrawer;->getPaddingLeft()I

    move-result v5

    add-int/2addr v0, v5

    invoke-virtual {p0}, Lcom/netease/nr/base/view/MySlidingDrawer;->getScrollY()I

    move-result v5

    invoke-virtual {p0}, Lcom/netease/nr/base/view/MySlidingDrawer;->getPaddingTop()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/netease/nr/base/view/MySlidingDrawer;->getWidth()I

    move-result v6

    add-int/2addr v6, v0

    invoke-virtual {p0}, Lcom/netease/nr/base/view/MySlidingDrawer;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/netease/nr/base/view/MySlidingDrawer;->getHeight()I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {p0}, Lcom/netease/nr/base/view/MySlidingDrawer;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p1, v0, v5, v6, v7}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget-boolean v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->j:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->e:Landroid/view/View;

    :goto_0
    iget-boolean v5, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->r:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->v:Z

    if-eqz v5, :cond_3

    :cond_0
    if-eqz v0, :cond_8

    invoke-virtual {p0, p1, v0, v3, v4}, Lcom/netease/nr/base/view/MySlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move v0, v1

    :goto_1
    iget-object v1, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->g:Landroid/view/View;

    invoke-virtual {p0, p1, v1, v3, v4}, Lcom/netease/nr/base/view/MySlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move v2, v0

    :goto_2
    if-eqz v2, :cond_6

    iget-boolean v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->j:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->B:Landroid/graphics/drawable/Drawable;

    :goto_3
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->j:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->g:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v1, v9}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    :goto_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->f:Landroid/view/View;

    goto :goto_0

    :cond_3
    iget-boolean v5, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->i:Z

    if-eqz v5, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1, v0, v3, v4}, Lcom/netease/nr/base/view/MySlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move v2, v1

    :cond_4
    iget-object v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->g:Landroid/view/View;

    invoke-virtual {p0, p1, v0, v3, v4}, Lcom/netease/nr/base/view/MySlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->C:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    goto :goto_3

    :cond_7
    iget-object v1, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->g:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1, v9}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_4

    :cond_8
    move v0, v2

    goto :goto_1
.end method

.method public e()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->i:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->j:Z

    invoke-virtual {p0}, Lcom/netease/nr/base/view/MySlidingDrawer;->getWidth()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->i:Z

    iget-object v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/netease/nr/base/view/MySlidingDrawer;->requestLayout()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/netease/nr/base/view/MySlidingDrawer;->d(I)V

    invoke-direct {p0, v1}, Lcom/netease/nr/base/view/MySlidingDrawer;->f(Z)V

    goto :goto_0
.end method

.method public f()V
    .locals 1

    iget-boolean v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->i:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->j:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/netease/nr/base/view/MySlidingDrawer;->e(I)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netease/nr/base/view/MySlidingDrawer;->g(Z)V

    goto :goto_0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->i:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->i:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->j:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    sub-int v0, v1, v0

    iput v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->u:I

    const/4 v0, 0x1

    return v0
.end method

.method protected onFinishInflate()V
    .locals 3

    const/4 v2, 0x4

    const/4 v1, 0x1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0c02c5

    invoke-virtual {p0, v0}, Lcom/netease/nr/base/view/MySlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->g:Landroid/view/View;

    iget-object v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    const v0, 0x7f0c02c2

    invoke-virtual {p0, v0}, Lcom/netease/nr/base/view/MySlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->e:Landroid/view/View;

    iget-object v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    iget-object v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const v0, 0x7f0c02c4

    invoke-virtual {p0, v0}, Lcom/netease/nr/base/view/MySlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->f:Landroid/view/View;

    iget-object v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->f:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    iget-object v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    iget-boolean v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->v:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->u:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p3, v1}, Lcom/netease/nr/base/view/MySlidingDrawer;->a(IFZ)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    iget-boolean v3, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->k:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->i:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->g:Landroid/view/View;

    iget-object v4, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->h:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v3, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->h:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return v0

    :cond_0
    packed-switch v2, :pswitch_data_0

    :cond_1
    :goto_1
    :pswitch_0
    if-eqz v1, :cond_2

    iput-boolean v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->v:Z

    iget-object v1, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->g:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    sub-int v1, v2, v1

    iput v1, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->u:I

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->b:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->c:F

    goto :goto_1

    :pswitch_2
    iget-boolean v2, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->y:Z

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->b:F

    sub-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->c:F

    sub-float/2addr v3, v4

    invoke-direct {p0, p1, v2, v3, v1}, Lcom/netease/nr/base/view/MySlidingDrawer;->a(Landroid/view/MotionEvent;FFZ)Z

    move-result v1

    goto :goto_1

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    const/4 v6, 0x0

    iget-boolean v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->r:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->v:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->x:Z

    :goto_0
    return-void

    :cond_1
    iput-boolean v6, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->x:Z

    invoke-virtual {p0}, Lcom/netease/nr/base/view/MySlidingDrawer;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/netease/nr/base/view/MySlidingDrawer;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->e:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->e:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->e:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int v4, v1, v3

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->e:Landroid/view/View;

    add-int/lit8 v2, v2, 0x0

    add-int/2addr v3, v4

    invoke-virtual {v5, v6, v4, v2, v3}, Landroid/view/View;->layout(IIII)V

    :cond_2
    iget-object v2, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->f:Landroid/view/View;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->f:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->f:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int v4, v0, v2

    sub-int v5, v1, v3

    div-int/lit8 v5, v5, 0x2

    iget-object v6, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->f:Landroid/view/View;

    add-int/2addr v2, v4

    add-int/2addr v3, v5

    invoke-virtual {v6, v4, v5, v2, v3}, Landroid/view/View;->layout(IIII)V

    :cond_3
    iget-object v2, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->g:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->g:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget-boolean v4, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->i:Z

    if-eqz v4, :cond_5

    iget-boolean v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->j:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    :goto_1
    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    iget-object v4, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->g:Landroid/view/View;

    add-int/2addr v2, v0

    add-int/2addr v3, v1

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int/2addr v0, v2

    goto :goto_1

    :cond_5
    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    goto :goto_1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->e:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/netease/nr/base/view/MySlidingDrawer;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->g:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/netease/nr/base/view/MySlidingDrawer;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->f:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/netease/nr/base/view/MySlidingDrawer;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->g:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->g:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/netease/nr/base/view/MySlidingDrawer;->setMeasuredDimension(II)V

    iget-object v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->B:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->B:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->B:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/netease/nr/base/view/MySlidingDrawer;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->C:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->C:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->C:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/netease/nr/base/view/MySlidingDrawer;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->e:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/netease/nr/base/view/MySlidingDrawer;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->z:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/netease/nr/base/view/MySlidingDrawer;->getMeasuredHeight()I

    move-result v1

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget-object v2, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->e:Landroid/view/View;

    invoke-virtual {v2, v0, v1}, Landroid/view/View;->measure(II)V

    :cond_2
    iget-object v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->f:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/netease/nr/base/view/MySlidingDrawer;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->A:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/netease/nr/base/view/MySlidingDrawer;->getMeasuredHeight()I

    move-result v1

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget-object v2, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->f:Landroid/view/View;

    invoke-virtual {v2, v0, v1}, Landroid/view/View;->measure(II)V

    :cond_3
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    check-cast p1, Lcom/netease/nr/base/view/MySlidingDrawer$SavedState;

    invoke-virtual {p1}, Lcom/netease/nr/base/view/MySlidingDrawer$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-boolean v0, p1, Lcom/netease/nr/base/view/MySlidingDrawer$SavedState;->b:Z

    iput-boolean v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->i:Z

    iget-boolean v0, p1, Lcom/netease/nr/base/view/MySlidingDrawer$SavedState;->a:Z

    iput-boolean v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->j:Z

    iget-boolean v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->e:Landroid/view/View;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->j:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->i:Z

    :cond_0
    iget-boolean v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->i:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->f:Landroid/view/View;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->j:Z

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->i:Z

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->e:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/netease/nr/base/view/MySlidingDrawer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/util/i/b;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/netease/nr/base/view/MySlidingDrawer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/util/i/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v2, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->i:Z

    iput-boolean v2, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->j:Z

    :cond_2
    iget-boolean v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->i:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->j:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->e:Landroid/view/View;

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/netease/nr/base/view/MySlidingDrawer;->requestLayout()V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->f:Landroid/view/View;

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/netease/nr/base/view/MySlidingDrawer$SavedState;

    invoke-direct {v1, v0}, Lcom/netease/nr/base/view/MySlidingDrawer$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget-boolean v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->j:Z

    iput-boolean v0, v1, Lcom/netease/nr/base/view/MySlidingDrawer$SavedState;->a:Z

    iget-boolean v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->i:Z

    iput-boolean v0, v1, Lcom/netease/nr/base/view/MySlidingDrawer$SavedState;->b:Z

    return-object v1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->w:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->v:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->i:Z

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->v:Z

    :cond_0
    iget-boolean v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->v:Z

    if-nez v0, :cond_1

    neg-float v0, p3

    neg-float v1, p4

    invoke-direct {p0, p2, v0, v1, v2}, Lcom/netease/nr/base/view/MySlidingDrawer;->a(Landroid/view/MotionEvent;FFZ)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->v:Z

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->w:Z

    :cond_2
    iget-boolean v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->v:Z

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->u:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/netease/nr/base/view/MySlidingDrawer;->a(I)V

    :cond_3
    return v2
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-boolean v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->g:Landroid/view/View;

    iget-object v1, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->h:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->h:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->j:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->h:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-direct {p0, v0}, Lcom/netease/nr/base/view/MySlidingDrawer;->c(I)V

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->h:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-direct {p0, v0}, Lcom/netease/nr/base/view/MySlidingDrawer;->e(I)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->y:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->i:Z

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->a:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    if-eq v3, v1, :cond_1

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    :cond_1
    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->v:Z

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->u:I

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, v0}, Lcom/netease/nr/base/view/MySlidingDrawer;->a(IFZ)V

    :cond_2
    iput-boolean v0, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->v:Z

    iput-boolean v1, p0, Lcom/netease/nr/base/view/MySlidingDrawer;->w:Z

    :cond_3
    move v0, v1

    goto :goto_0
.end method
