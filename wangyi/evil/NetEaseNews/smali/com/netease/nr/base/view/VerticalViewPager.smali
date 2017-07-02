.class public Lcom/netease/nr/base/view/VerticalViewPager;
.super Landroid/view/ViewGroup;


# static fields
.field private static final a:[I

.field private static final ab:Lcom/netease/nr/base/view/ce;

.field private static final b:Ljava/util/Comparator;

.field private static final c:Landroid/view/animation/Interpolator;


# instance fields
.field private A:I

.field private B:I

.field private C:F

.field private D:F

.field private E:F

.field private F:F

.field private G:I

.field private H:Landroid/view/VelocityTracker;

.field private I:I

.field private J:I

.field private K:I

.field private L:I

.field private M:I

.field private N:I

.field private O:Z

.field private P:Landroid/support/v4/widget/EdgeEffectCompat;

.field private Q:Landroid/support/v4/widget/EdgeEffectCompat;

.field private R:Z

.field private S:Z

.field private T:I

.field private U:Lcom/netease/nr/base/view/cb;

.field private V:Lcom/netease/nr/base/view/cb;

.field private W:Lcom/netease/nr/base/view/cc;

.field private Z:I

.field private aa:Ljava/util/ArrayList;

.field private final ac:Ljava/lang/Runnable;

.field private ad:I

.field private final d:Ljava/util/ArrayList;

.field private final e:Lcom/netease/nr/base/view/bz;

.field private final f:Landroid/graphics/Rect;

.field private g:Lcom/netease/nr/base/view/bu;

.field private h:I

.field private i:I

.field private j:Landroid/os/Parcelable;

.field private k:Ljava/lang/ClassLoader;

.field private l:Landroid/widget/Scroller;

.field private m:I

.field private n:Landroid/graphics/drawable/Drawable;

.field private o:I

.field private p:I

.field private q:F

.field private r:F

.field private s:I

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:I

.field private x:Z

.field private y:Z

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100b3

    aput v2, v0, v1

    sput-object v0, Lcom/netease/nr/base/view/VerticalViewPager;->a:[I

    new-instance v0, Lcom/netease/nr/base/view/bv;

    invoke-direct {v0}, Lcom/netease/nr/base/view/bv;-><init>()V

    sput-object v0, Lcom/netease/nr/base/view/VerticalViewPager;->b:Ljava/util/Comparator;

    new-instance v0, Lcom/netease/nr/base/view/bw;

    invoke-direct {v0}, Lcom/netease/nr/base/view/bw;-><init>()V

    sput-object v0, Lcom/netease/nr/base/view/VerticalViewPager;->c:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/netease/nr/base/view/ce;

    invoke-direct {v0}, Lcom/netease/nr/base/view/ce;-><init>()V

    sput-object v0, Lcom/netease/nr/base/view/VerticalViewPager;->ab:Lcom/netease/nr/base/view/ce;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, -0x1

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->d:Ljava/util/ArrayList;

    new-instance v0, Lcom/netease/nr/base/view/bz;

    invoke-direct {v0}, Lcom/netease/nr/base/view/bz;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->e:Lcom/netease/nr/base/view/bz;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->f:Landroid/graphics/Rect;

    iput v1, p0, Lcom/netease/nr/base/view/VerticalViewPager;->i:I

    iput-object v3, p0, Lcom/netease/nr/base/view/VerticalViewPager;->j:Landroid/os/Parcelable;

    iput-object v3, p0, Lcom/netease/nr/base/view/VerticalViewPager;->k:Ljava/lang/ClassLoader;

    const v0, -0x800001

    iput v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->q:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->r:F

    iput v2, p0, Lcom/netease/nr/base/view/VerticalViewPager;->w:I

    iput v1, p0, Lcom/netease/nr/base/view/VerticalViewPager;->G:I

    iput-boolean v2, p0, Lcom/netease/nr/base/view/VerticalViewPager;->R:Z

    new-instance v0, Lcom/netease/nr/base/view/bx;

    invoke-direct {v0, p0}, Lcom/netease/nr/base/view/bx;-><init>(Lcom/netease/nr/base/view/VerticalViewPager;)V

    iput-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->ac:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->ad:I

    invoke-virtual {p0}, Lcom/netease/nr/base/view/VerticalViewPager;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->d:Ljava/util/ArrayList;

    new-instance v0, Lcom/netease/nr/base/view/bz;

    invoke-direct {v0}, Lcom/netease/nr/base/view/bz;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->e:Lcom/netease/nr/base/view/bz;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->f:Landroid/graphics/Rect;

    iput v1, p0, Lcom/netease/nr/base/view/VerticalViewPager;->i:I

    iput-object v3, p0, Lcom/netease/nr/base/view/VerticalViewPager;->j:Landroid/os/Parcelable;

    iput-object v3, p0, Lcom/netease/nr/base/view/VerticalViewPager;->k:Ljava/lang/ClassLoader;

    const v0, -0x800001

    iput v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->q:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->r:F

    iput v2, p0, Lcom/netease/nr/base/view/VerticalViewPager;->w:I

    iput v1, p0, Lcom/netease/nr/base/view/VerticalViewPager;->G:I

    iput-boolean v2, p0, Lcom/netease/nr/base/view/VerticalViewPager;->R:Z

    new-instance v0, Lcom/netease/nr/base/view/bx;

    invoke-direct {v0, p0}, Lcom/netease/nr/base/view/bx;-><init>(Lcom/netease/nr/base/view/VerticalViewPager;)V

    iput-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->ac:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->ad:I

    invoke-virtual {p0}, Lcom/netease/nr/base/view/VerticalViewPager;->a()V

    return-void
.end method

.method private a(IFII)I
    .locals 3

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/netease/nr/base/view/VerticalViewPager;->K:I

    if-le v0, v1, :cond_2

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/netease/nr/base/view/VerticalViewPager;->I:I

    if-le v0, v1, :cond_2

    if-lez p3, :cond_1

    :goto_0
    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->d:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/bz;

    iget-object v1, p0, Lcom/netease/nr/base/view/VerticalViewPager;->d:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/netease/nr/base/view/VerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/nr/base/view/bz;

    iget v0, v0, Lcom/netease/nr/base/view/bz;->b:I

    iget v1, v1, Lcom/netease/nr/base/view/bz;->b:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :cond_0
    return p1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->M:I

    if-ltz v0, :cond_3

    iget v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->M:I

    if-ge v0, p1, :cond_3

    cmpg-float v0, p2, v2

    if-gez v0, :cond_3

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->N:I

    if-ltz v0, :cond_4

    iget v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->N:I

    add-int/lit8 v1, p1, 0x1

    if-le v0, v1, :cond_4

    cmpl-float v0, p2, v2

    if-ltz v0, :cond_4

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_4
    int-to-float v0, p1

    add-float/2addr v0, p2

    add-float/2addr v0, v2

    float-to-int p1, v0

    goto :goto_0
.end method

.method private a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_2

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    :goto_0
    if-nez p2, :cond_0

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_2
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    if-eq v0, p0, :cond_1

    check-cast v0, Landroid/view/ViewGroup;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget v2, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_2

    :cond_1
    move-object v0, v1

    goto :goto_1

    :cond_2
    move-object v1, p1

    goto :goto_0
.end method

.method static synthetic a(Lcom/netease/nr/base/view/VerticalViewPager;)Lcom/netease/nr/base/view/bu;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->g:Lcom/netease/nr/base/view/bu;

    return-object v0
.end method

.method private a(IIII)V
    .locals 6

    const/4 v1, 0x0

    if-lez p2, :cond_1

    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    add-int v0, p1, p3

    add-int v2, p2, p4

    invoke-virtual {p0}, Lcom/netease/nr/base/view/VerticalViewPager;->getScrollY()I

    move-result v3

    int-to-float v3, v3

    int-to-float v2, v2

    div-float v2, v3, v2

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v2, v0

    invoke-virtual {p0}, Lcom/netease/nr/base/view/VerticalViewPager;->getScrollX()I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/netease/nr/base/view/VerticalViewPager;->scrollTo(II)V

    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->l:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->l:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getDuration()I

    move-result v0

    iget-object v3, p0, Lcom/netease/nr/base/view/VerticalViewPager;->l:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->timePassed()I

    move-result v3

    sub-int v5, v0, v3

    iget v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->h:I

    invoke-virtual {p0, v0}, Lcom/netease/nr/base/view/VerticalViewPager;->c(I)Lcom/netease/nr/base/view/bz;

    move-result-object v3

    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->l:Landroid/widget/Scroller;

    iget v3, v3, Lcom/netease/nr/base/view/bz;->f:F

    int-to-float v4, p1

    mul-float/2addr v3, v4

    float-to-int v4, v3

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->h:I

    invoke-virtual {p0, v0}, Lcom/netease/nr/base/view/VerticalViewPager;->c(I)Lcom/netease/nr/base/view/bz;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v0, v0, Lcom/netease/nr/base/view/bz;->f:F

    iget v2, p0, Lcom/netease/nr/base/view/VerticalViewPager;->r:F

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :goto_1
    int-to-float v2, p1

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/netease/nr/base/view/VerticalViewPager;->getScrollY()I

    move-result v2

    if-eq v0, v2, :cond_0

    invoke-direct {p0, v1}, Lcom/netease/nr/base/view/VerticalViewPager;->a(Z)V

    invoke-virtual {p0}, Lcom/netease/nr/base/view/VerticalViewPager;->getScrollX()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/netease/nr/base/view/VerticalViewPager;->scrollTo(II)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(IZIZ)V
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/netease/nr/base/view/VerticalViewPager;->c(I)Lcom/netease/nr/base/view/bz;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/netease/nr/base/view/VerticalViewPager;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/netease/nr/base/view/VerticalViewPager;->q:F

    iget v0, v0, Lcom/netease/nr/base/view/bz;->f:F

    iget v4, p0, Lcom/netease/nr/base/view/VerticalViewPager;->r:F

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {p0, v1, v0, p3}, Lcom/netease/nr/base/view/VerticalViewPager;->a(III)V

    if-eqz p4, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->U:Lcom/netease/nr/base/view/cb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->U:Lcom/netease/nr/base/view/cb;

    invoke-interface {v0, p1}, Lcom/netease/nr/base/view/cb;->a(I)V

    :cond_0
    if-eqz p4, :cond_1

    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->V:Lcom/netease/nr/base/view/cb;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->V:Lcom/netease/nr/base/view/cb;

    invoke-interface {v0, p1}, Lcom/netease/nr/base/view/cb;->a(I)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    if-eqz p4, :cond_3

    iget-object v2, p0, Lcom/netease/nr/base/view/VerticalViewPager;->U:Lcom/netease/nr/base/view/cb;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/netease/nr/base/view/VerticalViewPager;->U:Lcom/netease/nr/base/view/cb;

    invoke-interface {v2, p1}, Lcom/netease/nr/base/view/cb;->a(I)V

    :cond_3
    if-eqz p4, :cond_4

    iget-object v2, p0, Lcom/netease/nr/base/view/VerticalViewPager;->V:Lcom/netease/nr/base/view/cb;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/netease/nr/base/view/VerticalViewPager;->V:Lcom/netease/nr/base/view/cb;

    invoke-interface {v2, p1}, Lcom/netease/nr/base/view/cb;->a(I)V

    :cond_4
    invoke-direct {p0, v1}, Lcom/netease/nr/base/view/VerticalViewPager;->a(Z)V

    invoke-virtual {p0, v1, v0}, Lcom/netease/nr/base/view/VerticalViewPager;->scrollTo(II)V

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    iget v2, p0, Lcom/netease/nr/base/view/VerticalViewPager;->G:I

    if-ne v1, v2, :cond_0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v1

    iput v1, p0, Lcom/netease/nr/base/view/VerticalViewPager;->F:F

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->G:I

    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->H:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->H:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/netease/nr/base/view/VerticalViewPager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/nr/base/view/VerticalViewPager;->e(I)V

    return-void
.end method

.method private a(Lcom/netease/nr/base/view/bz;ILcom/netease/nr/base/view/bz;)V
    .locals 10

    const/high16 v9, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->g:Lcom/netease/nr/base/view/bu;

    invoke-virtual {v0}, Lcom/netease/nr/base/view/bu;->a()I

    move-result v6

    invoke-virtual {p0}, Lcom/netease/nr/base/view/VerticalViewPager;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    iget v1, p0, Lcom/netease/nr/base/view/VerticalViewPager;->m:I

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    move v5, v0

    :goto_0
    if-eqz p3, :cond_6

    iget v0, p3, Lcom/netease/nr/base/view/bz;->b:I

    iget v1, p1, Lcom/netease/nr/base/view/bz;->b:I

    if-ge v0, v1, :cond_3

    const/4 v1, 0x0

    iget v2, p3, Lcom/netease/nr/base/view/bz;->f:F

    iget v3, p3, Lcom/netease/nr/base/view/bz;->e:F

    add-float/2addr v2, v3

    add-float v3, v2, v5

    add-int/lit8 v2, v0, 0x1

    :goto_1
    iget v0, p1, Lcom/netease/nr/base/view/bz;->b:I

    if-gt v2, v0, :cond_6

    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/bz;

    :goto_2
    iget v4, v0, Lcom/netease/nr/base/view/bz;->b:I

    if-le v2, v4, :cond_1

    iget-object v4, p0, Lcom/netease/nr/base/view/VerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/bz;

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    move v5, v0

    goto :goto_0

    :cond_1
    :goto_3
    iget v4, v0, Lcom/netease/nr/base/view/bz;->b:I

    if-ge v2, v4, :cond_2

    iget-object v4, p0, Lcom/netease/nr/base/view/VerticalViewPager;->g:Lcom/netease/nr/base/view/bu;

    invoke-virtual {v4, v2}, Lcom/netease/nr/base/view/bu;->b(I)F

    move-result v4

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_2
    iput v3, v0, Lcom/netease/nr/base/view/bz;->f:F

    iget v0, v0, Lcom/netease/nr/base/view/bz;->e:F

    add-float/2addr v0, v5

    add-float/2addr v3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget v1, p1, Lcom/netease/nr/base/view/bz;->b:I

    if-le v0, v1, :cond_6

    iget-object v1, p0, Lcom/netease/nr/base/view/VerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget v3, p3, Lcom/netease/nr/base/view/bz;->f:F

    add-int/lit8 v2, v0, -0x1

    :goto_4
    iget v0, p1, Lcom/netease/nr/base/view/bz;->b:I

    if-lt v2, v0, :cond_6

    if-ltz v1, :cond_6

    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/bz;

    :goto_5
    iget v4, v0, Lcom/netease/nr/base/view/bz;->b:I

    if-ge v2, v4, :cond_4

    if-lez v1, :cond_4

    add-int/lit8 v1, v1, -0x1

    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/bz;

    goto :goto_5

    :cond_4
    :goto_6
    iget v4, v0, Lcom/netease/nr/base/view/bz;->b:I

    if-le v2, v4, :cond_5

    iget-object v4, p0, Lcom/netease/nr/base/view/VerticalViewPager;->g:Lcom/netease/nr/base/view/bu;

    invoke-virtual {v4, v2}, Lcom/netease/nr/base/view/bu;->b(I)F

    move-result v4

    add-float/2addr v4, v5

    sub-float/2addr v3, v4

    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    :cond_5
    iget v4, v0, Lcom/netease/nr/base/view/bz;->e:F

    add-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v0, Lcom/netease/nr/base/view/bz;->f:F

    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    iget v2, p1, Lcom/netease/nr/base/view/bz;->f:F

    iget v0, p1, Lcom/netease/nr/base/view/bz;->b:I

    add-int/lit8 v1, v0, -0x1

    iget v0, p1, Lcom/netease/nr/base/view/bz;->b:I

    if-nez v0, :cond_7

    iget v0, p1, Lcom/netease/nr/base/view/bz;->f:F

    :goto_7
    iput v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->q:F

    iget v0, p1, Lcom/netease/nr/base/view/bz;->b:I

    add-int/lit8 v3, v6, -0x1

    if-ne v0, v3, :cond_8

    iget v0, p1, Lcom/netease/nr/base/view/bz;->f:F

    iget v3, p1, Lcom/netease/nr/base/view/bz;->e:F

    add-float/2addr v0, v3

    sub-float/2addr v0, v9

    :goto_8
    iput v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->r:F

    add-int/lit8 v0, p2, -0x1

    move v4, v0

    :goto_9
    if-ltz v4, :cond_b

    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/bz;

    move v3, v2

    :goto_a
    iget v2, v0, Lcom/netease/nr/base/view/bz;->b:I

    if-le v1, v2, :cond_9

    iget-object v8, p0, Lcom/netease/nr/base/view/VerticalViewPager;->g:Lcom/netease/nr/base/view/bu;

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v8, v1}, Lcom/netease/nr/base/view/bu;->b(I)F

    move-result v1

    add-float/2addr v1, v5

    sub-float v1, v3, v1

    move v3, v1

    move v1, v2

    goto :goto_a

    :cond_7
    const v0, -0x800001

    goto :goto_7

    :cond_8
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_8

    :cond_9
    iget v2, v0, Lcom/netease/nr/base/view/bz;->e:F

    add-float/2addr v2, v5

    sub-float v2, v3, v2

    iput v2, v0, Lcom/netease/nr/base/view/bz;->f:F

    iget v0, v0, Lcom/netease/nr/base/view/bz;->b:I

    if-nez v0, :cond_a

    iput v2, p0, Lcom/netease/nr/base/view/VerticalViewPager;->q:F

    :cond_a
    add-int/lit8 v0, v4, -0x1

    add-int/lit8 v1, v1, -0x1

    move v4, v0

    goto :goto_9

    :cond_b
    iget v0, p1, Lcom/netease/nr/base/view/bz;->f:F

    iget v1, p1, Lcom/netease/nr/base/view/bz;->e:F

    add-float/2addr v0, v1

    add-float v2, v0, v5

    iget v0, p1, Lcom/netease/nr/base/view/bz;->b:I

    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v0, p2, 0x1

    move v4, v0

    :goto_b
    if-ge v4, v7, :cond_e

    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/bz;

    move v3, v2

    :goto_c
    iget v2, v0, Lcom/netease/nr/base/view/bz;->b:I

    if-ge v1, v2, :cond_c

    iget-object v8, p0, Lcom/netease/nr/base/view/VerticalViewPager;->g:Lcom/netease/nr/base/view/bu;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v8, v1}, Lcom/netease/nr/base/view/bu;->b(I)F

    move-result v1

    add-float/2addr v1, v5

    add-float/2addr v1, v3

    move v3, v1

    move v1, v2

    goto :goto_c

    :cond_c
    iget v2, v0, Lcom/netease/nr/base/view/bz;->b:I

    add-int/lit8 v8, v6, -0x1

    if-ne v2, v8, :cond_d

    iget v2, v0, Lcom/netease/nr/base/view/bz;->e:F

    add-float/2addr v2, v3

    sub-float/2addr v2, v9

    iput v2, p0, Lcom/netease/nr/base/view/VerticalViewPager;->r:F

    :cond_d
    iput v3, v0, Lcom/netease/nr/base/view/bz;->f:F

    iget v0, v0, Lcom/netease/nr/base/view/bz;->e:F

    add-float/2addr v0, v5

    add-float v2, v3, v0

    add-int/lit8 v0, v4, 0x1

    add-int/lit8 v1, v1, 0x1

    move v4, v0

    goto :goto_b

    :cond_e
    return-void
.end method

.method private a(Z)V
    .locals 7

    const/4 v4, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->ad:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    move v0, v4

    :goto_0
    if-eqz v0, :cond_1

    invoke-direct {p0, v2}, Lcom/netease/nr/base/view/VerticalViewPager;->c(Z)V

    iget-object v1, p0, Lcom/netease/nr/base/view/VerticalViewPager;->l:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-virtual {p0}, Lcom/netease/nr/base/view/VerticalViewPager;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/netease/nr/base/view/VerticalViewPager;->getScrollY()I

    move-result v3

    iget-object v5, p0, Lcom/netease/nr/base/view/VerticalViewPager;->l:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    iget-object v6, p0, Lcom/netease/nr/base/view/VerticalViewPager;->l:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    if-ne v1, v5, :cond_0

    if-eq v3, v6, :cond_1

    :cond_0
    invoke-virtual {p0, v5, v6}, Lcom/netease/nr/base/view/VerticalViewPager;->scrollTo(II)V

    :cond_1
    iput-boolean v2, p0, Lcom/netease/nr/base/view/VerticalViewPager;->v:Z

    move v1, v2

    move v3, v0

    :goto_1
    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/bz;

    iget-boolean v5, v0, Lcom/netease/nr/base/view/bz;->c:Z

    if-eqz v5, :cond_2

    iput-boolean v2, v0, Lcom/netease/nr/base/view/bz;->c:Z

    move v3, v4

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    if-eqz v3, :cond_5

    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->ac:Ljava/lang/Runnable;

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_5
    :goto_2
    return-void

    :cond_6
    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->ac:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_2
.end method

.method private a(FF)Z
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->A:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    cmpl-float v0, p2, v2

    if-gtz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/netease/nr/base/view/VerticalViewPager;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/netease/nr/base/view/VerticalViewPager;->A:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    cmpg-float v0, p2, v2

    if-gez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/netease/nr/base/view/VerticalViewPager;)I
    .locals 1

    iget v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->h:I

    return v0
.end method

.method private b(Z)V
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/netease/nr/base/view/VerticalViewPager;->getChildCount()I

    move-result v3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    :goto_1
    invoke-virtual {p0, v2}, Lcom/netease/nr/base/view/VerticalViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v0, v5}, Landroid/support/v4/view/ViewCompat;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private b(F)Z
    .locals 10

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->F:F

    sub-float/2addr v0, p1

    iput p1, p0, Lcom/netease/nr/base/view/VerticalViewPager;->F:F

    invoke-virtual {p0}, Lcom/netease/nr/base/view/VerticalViewPager;->getScrollY()I

    move-result v1

    int-to-float v1, v1

    add-float v5, v1, v0

    invoke-virtual {p0}, Lcom/netease/nr/base/view/VerticalViewPager;->getHeight()I

    move-result v7

    int-to-float v0, v7

    iget v1, p0, Lcom/netease/nr/base/view/VerticalViewPager;->q:F

    mul-float v4, v0, v1

    int-to-float v0, v7

    iget v1, p0, Lcom/netease/nr/base/view/VerticalViewPager;->r:F

    mul-float v6, v0, v1

    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/bz;

    iget-object v1, p0, Lcom/netease/nr/base/view/VerticalViewPager;->d:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/netease/nr/base/view/VerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/nr/base/view/bz;

    iget v8, v0, Lcom/netease/nr/base/view/bz;->b:I

    if-eqz v8, :cond_5

    iget v0, v0, Lcom/netease/nr/base/view/bz;->f:F

    int-to-float v4, v7

    mul-float/2addr v0, v4

    move v4, v0

    move v0, v2

    :goto_0
    iget v8, v1, Lcom/netease/nr/base/view/bz;->b:I

    iget-object v9, p0, Lcom/netease/nr/base/view/VerticalViewPager;->g:Lcom/netease/nr/base/view/bu;

    invoke-virtual {v9}, Lcom/netease/nr/base/view/bu;->a()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-eq v8, v9, :cond_4

    iget v1, v1, Lcom/netease/nr/base/view/bz;->f:F

    int-to-float v3, v7

    mul-float/2addr v1, v3

    move v3, v2

    :goto_1
    cmpg-float v6, v5, v4

    if-gez v6, :cond_1

    if-eqz v0, :cond_0

    sub-float v0, v4, v5

    iget-object v1, p0, Lcom/netease/nr/base/view/VerticalViewPager;->P:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float v2, v7

    div-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    move-result v2

    :cond_0
    :goto_2
    iget v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->F:F

    float-to-int v1, v4

    int-to-float v1, v1

    sub-float v1, v4, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->F:F

    invoke-virtual {p0}, Lcom/netease/nr/base/view/VerticalViewPager;->getScrollX()I

    move-result v0

    float-to-int v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/netease/nr/base/view/VerticalViewPager;->scrollTo(II)V

    float-to-int v0, v4

    invoke-direct {p0, v0}, Lcom/netease/nr/base/view/VerticalViewPager;->f(I)Z

    return v2

    :cond_1
    cmpl-float v0, v5, v1

    if-lez v0, :cond_3

    if-eqz v3, :cond_2

    sub-float v0, v5, v1

    iget-object v2, p0, Lcom/netease/nr/base/view/VerticalViewPager;->Q:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float v3, v7

    div-float/2addr v0, v3

    invoke-virtual {v2, v0}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    move-result v2

    :cond_2
    move v4, v1

    goto :goto_2

    :cond_3
    move v4, v5

    goto :goto_2

    :cond_4
    move v1, v6

    goto :goto_1

    :cond_5
    move v0, v3

    goto :goto_0
.end method

.method private c(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->u:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/netease/nr/base/view/VerticalViewPager;->u:Z

    :cond_0
    return-void
.end method

.method private e(I)V
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/netease/nr/base/view/VerticalViewPager;->ad:I

    if-ne v1, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/netease/nr/base/view/VerticalViewPager;->ad:I

    if-ne p1, v0, :cond_2

    const/4 v1, -0x1

    iput v1, p0, Lcom/netease/nr/base/view/VerticalViewPager;->N:I

    iput v1, p0, Lcom/netease/nr/base/view/VerticalViewPager;->M:I

    :cond_2
    iget-object v1, p0, Lcom/netease/nr/base/view/VerticalViewPager;->W:Lcom/netease/nr/base/view/cc;

    if-eqz v1, :cond_3

    if-eqz p1, :cond_4

    :goto_1
    invoke-direct {p0, v0}, Lcom/netease/nr/base/view/VerticalViewPager;->b(Z)V

    :cond_3
    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->U:Lcom/netease/nr/base/view/cb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->U:Lcom/netease/nr/base/view/cb;

    invoke-interface {v0, p1}, Lcom/netease/nr/base/view/cb;->b(I)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic e()[I
    .locals 1

    sget-object v0, Lcom/netease/nr/base/view/VerticalViewPager;->a:[I

    return-object v0
.end method

.method private f()Lcom/netease/nr/base/view/bz;
    .locals 13

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/netease/nr/base/view/VerticalViewPager;->getHeight()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {p0}, Lcom/netease/nr/base/view/VerticalViewPager;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    int-to-float v4, v1

    div-float/2addr v0, v4

    move v9, v0

    :goto_0
    if-lez v1, :cond_4

    iget v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->m:I

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    move v1, v0

    :goto_1
    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v0, 0x0

    move v6, v2

    move v7, v2

    move v8, v5

    move v2, v3

    move v5, v4

    move-object v4, v0

    :goto_2
    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/bz;

    if-nez v5, :cond_6

    iget v10, v0, Lcom/netease/nr/base/view/bz;->b:I

    add-int/lit8 v11, v8, 0x1

    if-eq v10, v11, :cond_6

    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->e:Lcom/netease/nr/base/view/bz;

    add-float/2addr v6, v7

    add-float/2addr v6, v1

    iput v6, v0, Lcom/netease/nr/base/view/bz;->f:F

    add-int/lit8 v6, v8, 0x1

    iput v6, v0, Lcom/netease/nr/base/view/bz;->b:I

    iget-object v6, p0, Lcom/netease/nr/base/view/VerticalViewPager;->g:Lcom/netease/nr/base/view/bu;

    iget v7, v0, Lcom/netease/nr/base/view/bz;->b:I

    invoke-virtual {v6, v7}, Lcom/netease/nr/base/view/bu;->a(I)F

    move-result v6

    iput v6, v0, Lcom/netease/nr/base/view/bz;->d:F

    add-int/lit8 v2, v2, -0x1

    move-object v12, v0

    move v0, v2

    move-object v2, v12

    :goto_3
    iget v6, v2, Lcom/netease/nr/base/view/bz;->f:F

    iget v7, v2, Lcom/netease/nr/base/view/bz;->e:F

    add-float/2addr v7, v6

    add-float/2addr v7, v1

    if-nez v5, :cond_0

    cmpl-float v5, v9, v6

    if-ltz v5, :cond_2

    :cond_0
    cmpg-float v4, v9, v7

    if-ltz v4, :cond_1

    iget-object v4, p0, Lcom/netease/nr/base/view/VerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v0, v4, :cond_5

    :cond_1
    move-object v4, v2

    :cond_2
    return-object v4

    :cond_3
    move v9, v2

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1

    :cond_5
    iget v5, v2, Lcom/netease/nr/base/view/bz;->b:I

    iget v4, v2, Lcom/netease/nr/base/view/bz;->e:F

    add-int/lit8 v0, v0, 0x1

    move v7, v6

    move v8, v5

    move v5, v3

    move v6, v4

    move-object v4, v2

    move v2, v0

    goto :goto_2

    :cond_6
    move-object v12, v0

    move v0, v2

    move-object v2, v12

    goto :goto_3
.end method

.method private f(I)Z
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/netease/nr/base/view/VerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    iput-boolean v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->S:Z

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v0}, Lcom/netease/nr/base/view/VerticalViewPager;->a(IFI)V

    iget-boolean v1, p0, Lcom/netease/nr/base/view/VerticalViewPager;->S:Z

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onPageScrolled did not call superclass implementation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/netease/nr/base/view/VerticalViewPager;->f()Lcom/netease/nr/base/view/bz;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netease/nr/base/view/VerticalViewPager;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/netease/nr/base/view/VerticalViewPager;->m:I

    add-int/2addr v3, v2

    iget v4, p0, Lcom/netease/nr/base/view/VerticalViewPager;->m:I

    int-to-float v4, v4

    int-to-float v5, v2

    div-float/2addr v4, v5

    iget v5, v1, Lcom/netease/nr/base/view/bz;->b:I

    int-to-float v6, p1

    int-to-float v2, v2

    div-float v2, v6, v2

    iget v6, v1, Lcom/netease/nr/base/view/bz;->f:F

    sub-float/2addr v2, v6

    iget v1, v1, Lcom/netease/nr/base/view/bz;->e:F

    add-float/2addr v1, v4

    div-float v1, v2, v1

    int-to-float v2, v3

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput-boolean v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->S:Z

    invoke-virtual {p0, v5, v1, v2}, Lcom/netease/nr/base/view/VerticalViewPager;->a(IFI)V

    iget-boolean v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->S:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onPageScrolled did not call superclass implementation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private g()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->x:Z

    iput-boolean v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->y:Z

    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->H:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->H:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->H:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method


# virtual methods
.method a(F)F
    .locals 4

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float v0, p1, v0

    float-to-double v0, v0

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float v0, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method a(II)Lcom/netease/nr/base/view/bz;
    .locals 2

    new-instance v0, Lcom/netease/nr/base/view/bz;

    invoke-direct {v0}, Lcom/netease/nr/base/view/bz;-><init>()V

    iput p1, v0, Lcom/netease/nr/base/view/bz;->b:I

    iget-object v1, p0, Lcom/netease/nr/base/view/VerticalViewPager;->g:Lcom/netease/nr/base/view/bu;

    invoke-virtual {v1, p0, p1}, Lcom/netease/nr/base/view/bu;->a(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/nr/base/view/bz;->a:Ljava/lang/Object;

    iget-object v1, p0, Lcom/netease/nr/base/view/VerticalViewPager;->g:Lcom/netease/nr/base/view/bu;

    invoke-virtual {v1, p1}, Lcom/netease/nr/base/view/bu;->a(I)F

    move-result v1

    iput v1, v0, Lcom/netease/nr/base/view/bz;->d:F

    iget-object v1, p0, Lcom/netease/nr/base/view/VerticalViewPager;->g:Lcom/netease/nr/base/view/bu;

    invoke-virtual {v1, p1}, Lcom/netease/nr/base/view/bu;->b(I)F

    move-result v1

    iput v1, v0, Lcom/netease/nr/base/view/bz;->e:F

    if-ltz p2, :cond_0

    iget-object v1, p0, Lcom/netease/nr/base/view/VerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p2, v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/netease/nr/base/view/VerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/netease/nr/base/view/VerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method a(Landroid/view/View;)Lcom/netease/nr/base/view/bz;
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/bz;

    iget-object v2, p0, Lcom/netease/nr/base/view/VerticalViewPager;->g:Lcom/netease/nr/base/view/bu;

    iget-object v3, v0, Lcom/netease/nr/base/view/bz;->a:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Lcom/netease/nr/base/view/bu;->a(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method a()V
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netease/nr/base/view/VerticalViewPager;->setWillNotDraw(Z)V

    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Lcom/netease/nr/base/view/VerticalViewPager;->setDescendantFocusability(I)V

    invoke-virtual {p0, v3}, Lcom/netease/nr/base/view/VerticalViewPager;->setFocusable(Z)V

    invoke-virtual {p0}, Lcom/netease/nr/base/view/VerticalViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/widget/Scroller;

    sget-object v2, Lcom/netease/nr/base/view/VerticalViewPager;->c:Landroid/view/animation/Interpolator;

    invoke-direct {v1, v0, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/netease/nr/base/view/VerticalViewPager;->l:Landroid/widget/Scroller;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v2

    iput v2, p0, Lcom/netease/nr/base/view/VerticalViewPager;->B:I

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/netease/nr/base/view/VerticalViewPager;->I:I

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/netease/nr/base/view/VerticalViewPager;->J:I

    new-instance v1, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v1, v0}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/netease/nr/base/view/VerticalViewPager;->P:Landroid/support/v4/widget/EdgeEffectCompat;

    new-instance v1, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v1, v0}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/netease/nr/base/view/VerticalViewPager;->Q:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41c80000    # 25.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/netease/nr/base/view/VerticalViewPager;->K:I

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/netease/nr/base/view/VerticalViewPager;->L:I

    const/high16 v1, 0x41800000    # 16.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->z:I

    new-instance v0, Lcom/netease/nr/base/view/ca;

    invoke-direct {v0, p0}, Lcom/netease/nr/base/view/ca;-><init>(Lcom/netease/nr/base/view/VerticalViewPager;)V

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, v3}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/netease/nr/base/view/VerticalViewPager;->v:Z

    iget-boolean v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->R:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/netease/nr/base/view/VerticalViewPager;->a(IZZ)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected a(IFI)V
    .locals 11

    const/4 v3, 0x0

    iget v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->T:I

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcom/netease/nr/base/view/VerticalViewPager;->getScrollY()I

    move-result v5

    invoke-virtual {p0}, Lcom/netease/nr/base/view/VerticalViewPager;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/netease/nr/base/view/VerticalViewPager;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0}, Lcom/netease/nr/base/view/VerticalViewPager;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Lcom/netease/nr/base/view/VerticalViewPager;->getChildCount()I

    move-result v7

    move v4, v3

    :goto_0
    if-ge v4, v7, :cond_2

    invoke-virtual {p0, v4}, Lcom/netease/nr/base/view/VerticalViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/VerticalViewPager$LayoutParams;

    iget-boolean v9, v0, Lcom/netease/nr/base/view/VerticalViewPager$LayoutParams;->a:Z

    if-nez v9, :cond_1

    move v10, v2

    move v2, v1

    move v1, v10

    :cond_0
    :goto_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v10, v1

    move v1, v2

    move v2, v10

    goto :goto_0

    :cond_1
    iget v0, v0, Lcom/netease/nr/base/view/VerticalViewPager$LayoutParams;->b:I

    and-int/lit8 v0, v0, 0x70

    sparse-switch v0, :sswitch_data_0

    move v0, v1

    move v10, v2

    move v2, v1

    move v1, v10

    :goto_2
    add-int/2addr v0, v5

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v9

    sub-int/2addr v0, v9

    if-eqz v0, :cond_0

    invoke-virtual {v8, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_1

    :sswitch_0
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v0, v1

    move v10, v1

    move v1, v2

    move v2, v0

    move v0, v10

    goto :goto_2

    :sswitch_1
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int v0, v6, v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v10, v2

    move v2, v1

    move v1, v10

    goto :goto_2

    :sswitch_2
    sub-int v0, v6, v2

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    sub-int/2addr v0, v9

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v2, v9

    move v10, v2

    move v2, v1

    move v1, v10

    goto :goto_2

    :cond_2
    iget v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->M:I

    if-ltz v0, :cond_3

    iget v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->M:I

    if-ge p1, v0, :cond_4

    :cond_3
    iput p1, p0, Lcom/netease/nr/base/view/VerticalViewPager;->M:I

    :cond_4
    iget v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->N:I

    if-ltz v0, :cond_5

    int-to-float v0, p1

    add-float/2addr v0, p2

    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    iget v1, p0, Lcom/netease/nr/base/view/VerticalViewPager;->N:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    :cond_5
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->N:I

    :cond_6
    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->U:Lcom/netease/nr/base/view/cb;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->U:Lcom/netease/nr/base/view/cb;

    invoke-interface {v0, p1, p2, p3}, Lcom/netease/nr/base/view/cb;->a(IFI)V

    :cond_7
    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->V:Lcom/netease/nr/base/view/cb;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->V:Lcom/netease/nr/base/view/cb;

    invoke-interface {v0, p1, p2, p3}, Lcom/netease/nr/base/view/cb;->a(IFI)V

    :cond_8
    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->W:Lcom/netease/nr/base/view/cc;

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/netease/nr/base/view/VerticalViewPager;->getScrollY()I

    move-result v2

    invoke-virtual {p0}, Lcom/netease/nr/base/view/VerticalViewPager;->getChildCount()I

    move-result v4

    move v1, v3

    :goto_3
    if-ge v1, v4, :cond_a

    invoke-virtual {p0, v1}, Lcom/netease/nr/base/view/VerticalViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/VerticalViewPager$LayoutParams;

    iget-boolean v0, v0, Lcom/netease/nr/base/view/VerticalViewPager$LayoutParams;->a:Z

    if-eqz v0, :cond_9

    :goto_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_9
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/netease/nr/base/view/VerticalViewPager;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v0, v5

    iget-object v5, p0, Lcom/netease/nr/base/view/VerticalViewPager;->W:Lcom/netease/nr/base/view/cc;

    invoke-interface {v5, v3, v0}, Lcom/netease/nr/base/view/cc;->a(Landroid/view/View;F)V

    goto :goto_4

    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->S:Z

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method a(III)V
    .locals 9

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/netease/nr/base/view/VerticalViewPager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, v5}, Lcom/netease/nr/base/view/VerticalViewPager;->c(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/netease/nr/base/view/VerticalViewPager;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/netease/nr/base/view/VerticalViewPager;->getScrollY()I

    move-result v2

    sub-int v3, p1, v1

    sub-int v4, p2, v2

    if-nez v3, :cond_1

    if-nez v4, :cond_1

    invoke-direct {p0, v5}, Lcom/netease/nr/base/view/VerticalViewPager;->a(Z)V

    invoke-virtual {p0}, Lcom/netease/nr/base/view/VerticalViewPager;->b()V

    invoke-direct {p0, v5}, Lcom/netease/nr/base/view/VerticalViewPager;->e(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/netease/nr/base/view/VerticalViewPager;->c(Z)V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/netease/nr/base/view/VerticalViewPager;->e(I)V

    invoke-virtual {p0}, Lcom/netease/nr/base/view/VerticalViewPager;->getHeight()I

    move-result v0

    div-int/lit8 v5, v0, 0x2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v8

    int-to-float v7, v0

    div-float/2addr v6, v7

    invoke-static {v8, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    int-to-float v7, v5

    int-to-float v5, v5

    invoke-virtual {p0, v6}, Lcom/netease/nr/base/view/VerticalViewPager;->a(F)F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v5, v7

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-lez v6, :cond_2

    const/high16 v0, 0x447a0000    # 1000.0f

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    :goto_1
    const/16 v5, 0x258

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->l:Landroid/widget/Scroller;

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    int-to-float v0, v0

    iget-object v5, p0, Lcom/netease/nr/base/view/VerticalViewPager;->g:Lcom/netease/nr/base/view/bu;

    iget v6, p0, Lcom/netease/nr/base/view/VerticalViewPager;->h:I

    invoke-virtual {v5, v6}, Lcom/netease/nr/base/view/bu;->b(I)F

    move-result v5

    mul-float/2addr v0, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/netease/nr/base/view/VerticalViewPager;->m:I

    int-to-float v6, v6

    add-float/2addr v0, v6

    div-float v0, v5, v0

    add-float/2addr v0, v8

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v0, v5

    float-to-int v0, v0

    goto :goto_1
.end method

.method public a(IZ)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->v:Z

    invoke-virtual {p0, p1, p2, v0}, Lcom/netease/nr/base/view/VerticalViewPager;->a(IZZ)V

    return-void
.end method

.method a(IZZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/netease/nr/base/view/VerticalViewPager;->a(IZZI)V

    return-void
.end method

.method a(IZZI)V
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->g:Lcom/netease/nr/base/view/bu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->g:Lcom/netease/nr/base/view/bu;

    invoke-virtual {v0}, Lcom/netease/nr/base/view/bu;->a()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    invoke-direct {p0, v1}, Lcom/netease/nr/base/view/VerticalViewPager;->c(Z)V

    :goto_0
    return-void

    :cond_1
    if-nez p3, :cond_2

    iget v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->h:I

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v1}, Lcom/netease/nr/base/view/VerticalViewPager;->c(Z)V

    goto :goto_0

    :cond_2
    if-gez p1, :cond_5

    move p1, v1

    :cond_3
    :goto_1
    iget v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->w:I

    iget v2, p0, Lcom/netease/nr/base/view/VerticalViewPager;->h:I

    add-int/2addr v2, v0

    if-gt p1, v2, :cond_4

    iget v2, p0, Lcom/netease/nr/base/view/VerticalViewPager;->h:I

    sub-int v0, v2, v0

    if-ge p1, v0, :cond_6

    :cond_4
    move v2, v1

    :goto_2
    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/bz;

    iput-boolean v3, v0, Lcom/netease/nr/base/view/bz;->c:Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->g:Lcom/netease/nr/base/view/bu;

    invoke-virtual {v0}, Lcom/netease/nr/base/view/bu;->a()I

    move-result v0

    if-lt p1, v0, :cond_3

    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->g:Lcom/netease/nr/base/view/bu;

    invoke-virtual {v0}, Lcom/netease/nr/base/view/bu;->a()I

    move-result v0

    add-int/lit8 p1, v0, -0x1

    goto :goto_1

    :cond_6
    iget v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->h:I

    if-eq v0, p1, :cond_7

    move v1, v3

    :cond_7
    invoke-virtual {p0, p1}, Lcom/netease/nr/base/view/VerticalViewPager;->b(I)V

    invoke-direct {p0, p1, p2, p4, v1}, Lcom/netease/nr/base/view/VerticalViewPager;->a(IZIZ)V

    goto :goto_0
.end method

.method public a(Landroid/view/KeyEvent;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    return v0

    :sswitch_0
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/netease/nr/base/view/VerticalViewPager;->d(I)Z

    move-result v0

    goto :goto_0

    :sswitch_1
    const/16 v0, 0x42

    invoke-virtual {p0, v0}, Lcom/netease/nr/base/view/VerticalViewPager;->d(I)Z

    move-result v0

    goto :goto_0

    :sswitch_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    invoke-static {p1}, Landroid/support/v4/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/netease/nr/base/view/VerticalViewPager;->d(I)Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-static {p1, v3}, Landroid/support/v4/view/KeyEventCompat;->hasModifiers(Landroid/view/KeyEvent;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v3}, Lcom/netease/nr/base/view/VerticalViewPager;->d(I)Z

    move-result v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3d -> :sswitch_2
    .end sparse-switch
.end method

.method protected a(Landroid/view/View;ZIII)Z
    .locals 10

    const/4 v2, 0x1

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    move-object v6, p1

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v8

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v9

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v7, v0

    :goto_0
    if-ltz v7, :cond_2

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    add-int v0, p4, v8

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt v0, v3, :cond_1

    add-int v0, p4, v8

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge v0, v3, :cond_1

    add-int v0, p5, v9

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt v0, v3, :cond_1

    add-int v0, p5, v9

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v3

    if-ge v0, v3, :cond_1

    add-int v0, p4, v8

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v4, v0, v3

    add-int v0, p5, v9

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v5, v0, v3

    move-object v0, p0

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/netease/nr/base/view/VerticalViewPager;->a(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_1
    return v2

    :cond_1
    add-int/lit8 v0, v7, -0x1

    move v7, v0

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    neg-int v0, p3

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0}, Lcom/netease/nr/base/view/VerticalViewPager;->getDescendantFocusability()I

    move-result v2

    const/high16 v0, 0x60000

    if-eq v2, v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/netease/nr/base/view/VerticalViewPager;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-virtual {p0, v0}, Lcom/netease/nr/base/view/VerticalViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0, v3}, Lcom/netease/nr/base/view/VerticalViewPager;->a(Landroid/view/View;)Lcom/netease/nr/base/view/bz;

    move-result-object v4

    if-eqz v4, :cond_0

    iget v4, v4, Lcom/netease/nr/base/view/bz;->b:I

    iget v5, p0, Lcom/netease/nr/base/view/VerticalViewPager;->h:I

    if-ne v4, v5, :cond_0

    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/high16 v0, 0x40000

    if-ne v2, v0, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v1, v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/netease/nr/base/view/VerticalViewPager;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    :goto_1
    return-void

    :cond_4
    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Lcom/netease/nr/base/view/VerticalViewPager;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/netease/nr/base/view/VerticalViewPager;->isFocusableInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_5
    if-eqz p1, :cond_3

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/netease/nr/base/view/VerticalViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/netease/nr/base/view/VerticalViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/netease/nr/base/view/VerticalViewPager;->a(Landroid/view/View;)Lcom/netease/nr/base/view/bz;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v2, v2, Lcom/netease/nr/base/view/bz;->b:I

    iget v3, p0, Lcom/netease/nr/base/view/VerticalViewPager;->h:I

    if-ne v2, v3, :cond_0

    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4

    invoke-virtual {p0, p3}, Lcom/netease/nr/base/view/VerticalViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p3}, Lcom/netease/nr/base/view/VerticalViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    :goto_0
    move-object v0, v1

    check-cast v0, Lcom/netease/nr/base/view/VerticalViewPager$LayoutParams;

    iget-boolean v2, v0, Lcom/netease/nr/base/view/VerticalViewPager$LayoutParams;->a:Z

    instance-of v3, p1, Lcom/netease/nr/base/view/by;

    or-int/2addr v2, v3

    iput-boolean v2, v0, Lcom/netease/nr/base/view/VerticalViewPager$LayoutParams;->a:Z

    iget-boolean v2, p0, Lcom/netease/nr/base/view/VerticalViewPager;->t:Z

    if-eqz v2, :cond_1

    if-eqz v0, :cond_0

    iget-boolean v2, v0, Lcom/netease/nr/base/view/VerticalViewPager$LayoutParams;->a:Z

    if-eqz v2, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot add pager decor view during layout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/netease/nr/base/view/VerticalViewPager$LayoutParams;->e:Z

    invoke-virtual {p0, p1, p2, v1}, Lcom/netease/nr/base/view/VerticalViewPager;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    :goto_1
    return-void

    :cond_1
    invoke-super {p0, p1, p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_2
    move-object v1, p3

    goto :goto_0
.end method

.method b(Landroid/view/View;)Lcom/netease/nr/base/view/bz;
    .locals 2

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_2

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_1
    check-cast v0, Landroid/view/View;

    move-object p1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/netease/nr/base/view/VerticalViewPager;->a(Landroid/view/View;)Lcom/netease/nr/base/view/bz;

    move-result-object v0

    goto :goto_1
.end method

.method b()V
    .locals 1

    iget v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->h:I

    invoke-virtual {p0, v0}, Lcom/netease/nr/base/view/VerticalViewPager;->b(I)V

    return-void
.end method

.method b(I)V
    .locals 14

    const/4 v0, 0x0

    iget v1, p0, Lcom/netease/nr/base/view/VerticalViewPager;->h:I

    if-eq v1, p1, :cond_23

    iget v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->h:I

    invoke-virtual {p0, v0}, Lcom/netease/nr/base/view/VerticalViewPager;->c(I)Lcom/netease/nr/base/view/bz;

    move-result-object v0

    iput p1, p0, Lcom/netease/nr/base/view/VerticalViewPager;->h:I

    move-object v1, v0

    :goto_0
    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->g:Lcom/netease/nr/base/view/bu;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->v:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/base/view/VerticalViewPager;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->g:Lcom/netease/nr/base/view/bu;

    invoke-virtual {v0, p0}, Lcom/netease/nr/base/view/bu;->a(Landroid/view/ViewGroup;)V

    iget v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->w:I

    const/4 v2, 0x0

    iget v3, p0, Lcom/netease/nr/base/view/VerticalViewPager;->h:I

    sub-int/2addr v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v7

    iget-object v2, p0, Lcom/netease/nr/base/view/VerticalViewPager;->g:Lcom/netease/nr/base/view/bu;

    invoke-virtual {v2}, Lcom/netease/nr/base/view/bu;->a()I

    move-result v8

    add-int/lit8 v2, v8, -0x1

    iget v3, p0, Lcom/netease/nr/base/view/VerticalViewPager;->h:I

    add-int/2addr v0, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v9

    const/4 v3, 0x0

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_22

    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/bz;

    iget v4, v0, Lcom/netease/nr/base/view/bz;->b:I

    iget v5, p0, Lcom/netease/nr/base/view/VerticalViewPager;->h:I

    if-lt v4, v5, :cond_8

    iget v4, v0, Lcom/netease/nr/base/view/bz;->b:I

    iget v5, p0, Lcom/netease/nr/base/view/VerticalViewPager;->h:I

    if-ne v4, v5, :cond_22

    :goto_2
    if-nez v0, :cond_21

    if-lez v8, :cond_21

    iget v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->h:I

    invoke-virtual {p0, v0, v2}, Lcom/netease/nr/base/view/VerticalViewPager;->a(II)Lcom/netease/nr/base/view/bz;

    move-result-object v0

    move-object v6, v0

    :goto_3
    if-eqz v6, :cond_4

    const/4 v5, 0x0

    add-int/lit8 v4, v2, -0x1

    if-ltz v4, :cond_9

    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/bz;

    :goto_4
    const/high16 v3, 0x40000000    # 2.0f

    iget v10, v6, Lcom/netease/nr/base/view/bz;->e:F

    sub-float v10, v3, v10

    iget v3, p0, Lcom/netease/nr/base/view/VerticalViewPager;->h:I

    add-int/lit8 v3, v3, -0x1

    move v12, v3

    move v3, v5

    move v5, v12

    move v13, v4

    move v4, v2

    move v2, v13

    :goto_5
    if-ltz v5, :cond_2

    cmpl-float v11, v3, v10

    if-ltz v11, :cond_d

    if-ge v5, v7, :cond_d

    if-nez v0, :cond_a

    :cond_2
    iget v3, v6, Lcom/netease/nr/base/view/bz;->e:F

    add-int/lit8 v5, v4, 0x1

    const/high16 v0, 0x40000000    # 2.0f

    cmpg-float v0, v3, v0

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_11

    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/bz;

    :goto_6
    iget v2, p0, Lcom/netease/nr/base/view/VerticalViewPager;->h:I

    add-int/lit8 v2, v2, 0x1

    move v12, v2

    move v2, v3

    move v3, v5

    move v5, v12

    :goto_7
    if-ge v5, v8, :cond_3

    const/high16 v7, 0x40000000    # 2.0f

    cmpl-float v7, v2, v7

    if-ltz v7, :cond_14

    if-le v5, v9, :cond_14

    if-nez v0, :cond_12

    :cond_3
    invoke-direct {p0, v6, v4, v1}, Lcom/netease/nr/base/view/VerticalViewPager;->a(Lcom/netease/nr/base/view/bz;ILcom/netease/nr/base/view/bz;)V

    :cond_4
    iget-object v1, p0, Lcom/netease/nr/base/view/VerticalViewPager;->g:Lcom/netease/nr/base/view/bu;

    iget v2, p0, Lcom/netease/nr/base/view/VerticalViewPager;->h:I

    if-eqz v6, :cond_18

    iget-object v0, v6, Lcom/netease/nr/base/view/bz;->a:Ljava/lang/Object;

    :goto_8
    invoke-virtual {v1, p0, v2, v0}, Lcom/netease/nr/base/view/bu;->b(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->g:Lcom/netease/nr/base/view/bu;

    invoke-virtual {v0, p0}, Lcom/netease/nr/base/view/bu;->b(Landroid/view/ViewGroup;)V

    iget v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->Z:I

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    move v2, v0

    :goto_9
    if-eqz v2, :cond_5

    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->aa:Ljava/util/ArrayList;

    if-nez v0, :cond_1a

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->aa:Ljava/util/ArrayList;

    :cond_5
    :goto_a
    invoke-virtual {p0}, Lcom/netease/nr/base/view/VerticalViewPager;->getChildCount()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_b
    if-ge v1, v3, :cond_1b

    invoke-virtual {p0, v1}, Lcom/netease/nr/base/view/VerticalViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/VerticalViewPager$LayoutParams;

    iput v1, v0, Lcom/netease/nr/base/view/VerticalViewPager$LayoutParams;->g:I

    iget-boolean v5, v0, Lcom/netease/nr/base/view/VerticalViewPager$LayoutParams;->a:Z

    if-nez v5, :cond_6

    iget v5, v0, Lcom/netease/nr/base/view/VerticalViewPager$LayoutParams;->d:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_6

    invoke-virtual {p0, v4}, Lcom/netease/nr/base/view/VerticalViewPager;->a(Landroid/view/View;)Lcom/netease/nr/base/view/bz;

    move-result-object v5

    if-eqz v5, :cond_6

    iget v6, v5, Lcom/netease/nr/base/view/bz;->e:F

    iput v6, v0, Lcom/netease/nr/base/view/VerticalViewPager$LayoutParams;->d:F

    iget v5, v5, Lcom/netease/nr/base/view/bz;->b:I

    iput v5, v0, Lcom/netease/nr/base/view/VerticalViewPager$LayoutParams;->f:I

    :cond_6
    if-eqz v2, :cond_7

    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->aa:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    :cond_8
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_1

    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_4

    :cond_a
    iget v11, v0, Lcom/netease/nr/base/view/bz;->b:I

    if-ne v5, v11, :cond_b

    iget-boolean v11, v0, Lcom/netease/nr/base/view/bz;->c:Z

    if-nez v11, :cond_b

    iget-object v11, p0, Lcom/netease/nr/base/view/VerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v11, p0, Lcom/netease/nr/base/view/VerticalViewPager;->g:Lcom/netease/nr/base/view/bu;

    iget-object v0, v0, Lcom/netease/nr/base/view/bz;->a:Ljava/lang/Object;

    invoke-virtual {v11, p0, v5, v0}, Lcom/netease/nr/base/view/bu;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v4, v4, -0x1

    if-ltz v2, :cond_c

    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/bz;

    :cond_b
    :goto_c
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_5

    :cond_c
    const/4 v0, 0x0

    goto :goto_c

    :cond_d
    if-eqz v0, :cond_f

    iget v11, v0, Lcom/netease/nr/base/view/bz;->b:I

    if-ne v5, v11, :cond_f

    iget v0, v0, Lcom/netease/nr/base/view/bz;->e:F

    add-float/2addr v3, v0

    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_e

    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/bz;

    goto :goto_c

    :cond_e
    const/4 v0, 0x0

    goto :goto_c

    :cond_f
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v5, v0}, Lcom/netease/nr/base/view/VerticalViewPager;->a(II)Lcom/netease/nr/base/view/bz;

    move-result-object v0

    iget v0, v0, Lcom/netease/nr/base/view/bz;->e:F

    add-float/2addr v3, v0

    add-int/lit8 v4, v4, 0x1

    if-ltz v2, :cond_10

    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/bz;

    goto :goto_c

    :cond_10
    const/4 v0, 0x0

    goto :goto_c

    :cond_11
    const/4 v0, 0x0

    goto/16 :goto_6

    :cond_12
    iget v7, v0, Lcom/netease/nr/base/view/bz;->b:I

    if-ne v5, v7, :cond_20

    iget-boolean v7, v0, Lcom/netease/nr/base/view/bz;->c:Z

    if-nez v7, :cond_20

    iget-object v7, p0, Lcom/netease/nr/base/view/VerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v7, p0, Lcom/netease/nr/base/view/VerticalViewPager;->g:Lcom/netease/nr/base/view/bu;

    iget-object v0, v0, Lcom/netease/nr/base/view/bz;->a:Ljava/lang/Object;

    invoke-virtual {v7, p0, v5, v0}, Lcom/netease/nr/base/view/bu;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_13

    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/bz;

    :goto_d
    move v12, v2

    move-object v2, v0

    move v0, v12

    :goto_e
    add-int/lit8 v5, v5, 0x1

    move v12, v0

    move-object v0, v2

    move v2, v12

    goto/16 :goto_7

    :cond_13
    const/4 v0, 0x0

    goto :goto_d

    :cond_14
    if-eqz v0, :cond_16

    iget v7, v0, Lcom/netease/nr/base/view/bz;->b:I

    if-ne v5, v7, :cond_16

    iget v0, v0, Lcom/netease/nr/base/view/bz;->e:F

    add-float/2addr v2, v0

    add-int/lit8 v3, v3, 0x1

    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_15

    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/bz;

    :goto_f
    move v12, v2

    move-object v2, v0

    move v0, v12

    goto :goto_e

    :cond_15
    const/4 v0, 0x0

    goto :goto_f

    :cond_16
    invoke-virtual {p0, v5, v3}, Lcom/netease/nr/base/view/VerticalViewPager;->a(II)Lcom/netease/nr/base/view/bz;

    move-result-object v0

    add-int/lit8 v3, v3, 0x1

    iget v0, v0, Lcom/netease/nr/base/view/bz;->e:F

    add-float/2addr v2, v0

    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_17

    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/bz;

    :goto_10
    move v12, v2

    move-object v2, v0

    move v0, v12

    goto :goto_e

    :cond_17
    const/4 v0, 0x0

    goto :goto_10

    :cond_18
    const/4 v0, 0x0

    goto/16 :goto_8

    :cond_19
    const/4 v0, 0x0

    move v2, v0

    goto/16 :goto_9

    :cond_1a
    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->aa:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_a

    :cond_1b
    if-eqz v2, :cond_1c

    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->aa:Ljava/util/ArrayList;

    sget-object v1, Lcom/netease/nr/base/view/VerticalViewPager;->ab:Lcom/netease/nr/base/view/ce;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_1c
    invoke-virtual {p0}, Lcom/netease/nr/base/view/VerticalViewPager;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/base/view/VerticalViewPager;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-virtual {p0, v0}, Lcom/netease/nr/base/view/VerticalViewPager;->b(Landroid/view/View;)Lcom/netease/nr/base/view/bz;

    move-result-object v0

    :goto_11
    if-eqz v0, :cond_1d

    iget v0, v0, Lcom/netease/nr/base/view/bz;->b:I

    iget v1, p0, Lcom/netease/nr/base/view/VerticalViewPager;->h:I

    if-eq v0, v1, :cond_0

    :cond_1d
    const/4 v0, 0x0

    :goto_12
    invoke-virtual {p0}, Lcom/netease/nr/base/view/VerticalViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/netease/nr/base/view/VerticalViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/netease/nr/base/view/VerticalViewPager;->a(Landroid/view/View;)Lcom/netease/nr/base/view/bz;

    move-result-object v2

    if-eqz v2, :cond_1e

    iget v2, v2, Lcom/netease/nr/base/view/bz;->b:I

    iget v3, p0, Lcom/netease/nr/base/view/VerticalViewPager;->h:I

    if-ne v2, v3, :cond_1e

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_1f
    const/4 v0, 0x0

    goto :goto_11

    :cond_20
    move v12, v2

    move-object v2, v0

    move v0, v12

    goto/16 :goto_e

    :cond_21
    move-object v6, v0

    goto/16 :goto_3

    :cond_22
    move-object v0, v3

    goto/16 :goto_2

    :cond_23
    move-object v1, v0

    goto/16 :goto_0
.end method

.method c(I)Lcom/netease/nr/base/view/bz;
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/bz;

    iget v2, v0, Lcom/netease/nr/base/view/bz;->b:I

    if-ne v2, p1, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method c()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/netease/nr/base/view/VerticalViewPager;->h:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/netease/nr/base/view/VerticalViewPager;->h:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/netease/nr/base/view/VerticalViewPager;->a(IZ)V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Lcom/netease/nr/base/view/VerticalViewPager$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 4

    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->l:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->l:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/netease/nr/base/view/VerticalViewPager;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/netease/nr/base/view/VerticalViewPager;->getScrollY()I

    move-result v1

    iget-object v2, p0, Lcom/netease/nr/base/view/VerticalViewPager;->l:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    iget-object v3, p0, Lcom/netease/nr/base/view/VerticalViewPager;->l:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/netease/nr/base/view/VerticalViewPager;->scrollTo(II)V

    invoke-direct {p0, v3}, Lcom/netease/nr/base/view/VerticalViewPager;->f(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->l:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/netease/nr/base/view/VerticalViewPager;->scrollTo(II)V

    :cond_1
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/netease/nr/base/view/VerticalViewPager;->a(Z)V

    goto :goto_0
.end method

.method d()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/netease/nr/base/view/VerticalViewPager;->g:Lcom/netease/nr/base/view/bu;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/netease/nr/base/view/VerticalViewPager;->h:I

    iget-object v2, p0, Lcom/netease/nr/base/view/VerticalViewPager;->g:Lcom/netease/nr/base/view/bu;

    invoke-virtual {v2}, Lcom/netease/nr/base/view/bu;->a()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    iget v1, p0, Lcom/netease/nr/base/view/VerticalViewPager;->h:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/netease/nr/base/view/VerticalViewPager;->a(IZ)V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(I)Z
    .locals 5

    const/16 v4, 0x42

    invoke-virtual {p0}, Lcom/netease/nr/base/view/VerticalViewPager;->findFocus()Landroid/view/View;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    :cond_0
    const/4 v1, 0x0

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    invoke-virtual {v2, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_5

    if-eq v2, v0, :cond_5

    const/16 v3, 0x21

    if-ne p1, v3, :cond_3

    iget-object v1, p0, Lcom/netease/nr/base/view/VerticalViewPager;->f:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v2}, Lcom/netease/nr/base/view/VerticalViewPager;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/netease/nr/base/view/VerticalViewPager;->f:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v0}, Lcom/netease/nr/base/view/VerticalViewPager;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-eqz v0, :cond_2

    if-lt v1, v3, :cond_2

    invoke-virtual {p0}, Lcom/netease/nr/base/view/VerticalViewPager;->c()Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/netease/nr/base/view/VerticalViewPager;->playSoundEffect(I)V

    :cond_1
    return v0

    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v0

    goto :goto_0

    :cond_3
    if-ne p1, v4, :cond_9

    iget-object v1, p0, Lcom/netease/nr/base/view/VerticalViewPager;->f:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v2}, Lcom/netease/nr/base/view/VerticalViewPager;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/netease/nr/base/view/VerticalViewPager;->f:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v0}, Lcom/netease/nr/base/view/VerticalViewPager;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-eqz v0, :cond_4

    if-gt v1, v3, :cond_4

    invoke-virtual {p0}, Lcom/netease/nr/base/view/VerticalViewPager;->d()Z

    move-result v0

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v0

    goto :goto_0

    :cond_5
    const/16 v0, 0x11

    if-eq p1, v0, :cond_6

    const/4 v0, 0x1

    if-ne p1, v0, :cond_7

    :cond_6
    invoke-virtual {p0}, Lcom/netease/nr/base/view/VerticalViewPager;->c()Z

    move-result v0

    goto :goto_0

    :cond_7
    if-eq p1, v4, :cond_8

    const/4 v0, 0x2

    if-ne p1, v0, :cond_9

    :cond_8
    invoke-virtual {p0}, Lcom/netease/nr/base/view/VerticalViewPager;->d()Z

    move-result v0

    goto :goto_0

    :cond_9
    move v0, v1

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/netease/nr/base/view/VerticalViewPager;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/netease/nr/base/view/VerticalViewPager;->getChildCount()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/netease/nr/base/view/VerticalViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0, v3}, Lcom/netease/nr/base/view/VerticalViewPager;->a(Landroid/view/View;)Lcom/netease/nr/base/view/bz;

    move-result-object v4

    if-eqz v4, :cond_1

    iget v4, v4, Lcom/netease/nr/base/view/bz;->b:I

    iget v5, p0, Lcom/netease/nr/base/view/VerticalViewPager;->h:I

    if-ne v4, v5, :cond_1

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v1

    if-eqz v1, :cond_0

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/netease/nr/base/view/VerticalViewPager;->g:Lcom/netease/nr/base/view/bu;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/netease/nr/base/view/VerticalViewPager;->g:Lcom/netease/nr/base/view/bu;

    invoke-virtual {v1}, Lcom/netease/nr/base/view/bu;->a()I

    move-result v1

    if-le v1, v2, :cond_4

    :cond_0
    iget-object v1, p0, Lcom/netease/nr/base/view/VerticalViewPager;->P:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/netease/nr/base/view/VerticalViewPager;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/netease/nr/base/view/VerticalViewPager;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/netease/nr/base/view/VerticalViewPager;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/netease/nr/base/view/VerticalViewPager;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/netease/nr/base/view/VerticalViewPager;->P:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v3, v2, v1}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    iget-object v1, p0, Lcom/netease/nr/base/view/VerticalViewPager;->P:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v1

    or-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/netease/nr/base/view/VerticalViewPager;->Q:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/netease/nr/base/view/VerticalViewPager;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/netease/nr/base/view/VerticalViewPager;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/netease/nr/base/view/VerticalViewPager;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/netease/nr/base/view/VerticalViewPager;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/netease/nr/base/view/VerticalViewPager;->Q:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v3, v2, v1}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    iget-object v1, p0, Lcom/netease/nr/base/view/VerticalViewPager;->Q:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v1

    or-int/2addr v0, v1

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_3
    return-void

    :cond_4
    iget-object v1, p0, Lcom/netease/nr/base/view/VerticalViewPager;->P:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->finish()V

    iget-object v1, p0, Lcom/netease/nr/base/view/VerticalViewPager;->Q:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->finish()V

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->n:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/base/view/VerticalViewPager;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Lcom/netease/nr/base/view/VerticalViewPager$LayoutParams;

    invoke-direct {v0}, Lcom/netease/nr/base/view/VerticalViewPager$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Lcom/netease/nr/base/view/VerticalViewPager$LayoutParams;

    invoke-virtual {p0}, Lcom/netease/nr/base/view/VerticalViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/netease/nr/base/view/VerticalViewPager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Lcom/netease/nr/base/view/VerticalViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 2

    iget v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->Z:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p1, -0x1

    sub-int p2, v0, p2

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->aa:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/VerticalViewPager$LayoutParams;

    iget v0, v0, Lcom/netease/nr/base/view/VerticalViewPager$LayoutParams;->g:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->R:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->ac:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/netease/nr/base/view/VerticalViewPager;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/netease/nr/base/view/VerticalViewPager;->m:I

    if-lez v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/netease/nr/base/view/VerticalViewPager;->n:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/netease/nr/base/view/VerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/netease/nr/base/view/VerticalViewPager;->g:Lcom/netease/nr/base/view/bu;

    if-eqz v1, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/netease/nr/base/view/VerticalViewPager;->getScrollY()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/netease/nr/base/view/VerticalViewPager;->getHeight()I

    move-result v7

    move-object/from16 v0, p0

    iget v1, v0, Lcom/netease/nr/base/view/VerticalViewPager;->m:I

    int-to-float v1, v1

    int-to-float v2, v7

    div-float v8, v1, v2

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/netease/nr/base/view/VerticalViewPager;->d:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/nr/base/view/bz;

    iget v4, v1, Lcom/netease/nr/base/view/bz;->f:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netease/nr/base/view/VerticalViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    iget v3, v1, Lcom/netease/nr/base/view/bz;->b:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netease/nr/base/view/VerticalViewPager;->d:Ljava/util/ArrayList;

    add-int/lit8 v10, v9, -0x1

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/nr/base/view/bz;

    iget v10, v2, Lcom/netease/nr/base/view/bz;->b:I

    move v2, v5

    move v5, v3

    :goto_0
    if-ge v5, v10, :cond_2

    :goto_1
    iget v3, v1, Lcom/netease/nr/base/view/bz;->b:I

    if-le v5, v3, :cond_0

    if-ge v2, v9, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/netease/nr/base/view/VerticalViewPager;->d:Ljava/util/ArrayList;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/nr/base/view/bz;

    goto :goto_1

    :cond_0
    iget v3, v1, Lcom/netease/nr/base/view/bz;->b:I

    if-ne v5, v3, :cond_3

    iget v3, v1, Lcom/netease/nr/base/view/bz;->f:F

    iget v4, v1, Lcom/netease/nr/base/view/bz;->e:F

    add-float/2addr v3, v4

    int-to-float v4, v7

    mul-float/2addr v3, v4

    iget v4, v1, Lcom/netease/nr/base/view/bz;->f:F

    iget v11, v1, Lcom/netease/nr/base/view/bz;->e:F

    add-float/2addr v4, v11

    add-float/2addr v4, v8

    :goto_2
    move-object/from16 v0, p0

    iget v11, v0, Lcom/netease/nr/base/view/VerticalViewPager;->m:I

    int-to-float v11, v11

    add-float/2addr v11, v3

    int-to-float v12, v6

    cmpl-float v11, v11, v12

    if-lez v11, :cond_1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/netease/nr/base/view/VerticalViewPager;->n:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/netease/nr/base/view/VerticalViewPager;->o:I

    float-to-int v13, v3

    move-object/from16 v0, p0

    iget v14, v0, Lcom/netease/nr/base/view/VerticalViewPager;->p:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/netease/nr/base/view/VerticalViewPager;->m:I

    int-to-float v15, v15

    add-float/2addr v15, v3

    const/high16 v16, 0x3f000000    # 0.5f

    add-float v15, v15, v16

    float-to-int v15, v15

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/netease/nr/base/view/VerticalViewPager;->n:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    add-int v11, v6, v7

    int-to-float v11, v11

    cmpl-float v3, v3, v11

    if-lez v3, :cond_4

    :cond_2
    return-void

    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netease/nr/base/view/VerticalViewPager;->g:Lcom/netease/nr/base/view/bu;

    invoke-virtual {v3, v5}, Lcom/netease/nr/base/view/bu;->b(I)F

    move-result v11

    add-float v3, v4, v11

    int-to-float v12, v7

    mul-float/2addr v3, v12

    add-float/2addr v11, v8

    add-float/2addr v4, v11

    goto :goto_2

    :cond_4
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    const/4 v3, -0x1

    const/4 v12, 0x0

    const/4 v6, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    if-ne v0, v6, :cond_2

    :cond_0
    iput-boolean v2, p0, Lcom/netease/nr/base/view/VerticalViewPager;->x:Z

    iput-boolean v2, p0, Lcom/netease/nr/base/view/VerticalViewPager;->y:Z

    iput v3, p0, Lcom/netease/nr/base/view/VerticalViewPager;->G:I

    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->H:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->H:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->H:Landroid/view/VelocityTracker;

    :cond_1
    :goto_0
    return v2

    :cond_2
    if-eqz v0, :cond_4

    iget-boolean v1, p0, Lcom/netease/nr/base/view/VerticalViewPager;->x:Z

    if-eqz v1, :cond_3

    move v2, v6

    goto :goto_0

    :cond_3
    iget-boolean v1, p0, Lcom/netease/nr/base/view/VerticalViewPager;->y:Z

    if-nez v1, :cond_1

    :cond_4
    sparse-switch v0, :sswitch_data_0

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->H:Landroid/view/VelocityTracker;

    if-nez v0, :cond_6

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->H:Landroid/view/VelocityTracker;

    :cond_6
    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->H:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-boolean v2, p0, Lcom/netease/nr/base/view/VerticalViewPager;->x:Z

    goto :goto_0

    :sswitch_0
    iget v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->G:I

    if-eq v0, v3, :cond_5

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v7

    iget v1, p0, Lcom/netease/nr/base/view/VerticalViewPager;->E:F

    sub-float v1, v7, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v9

    iget v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->F:F

    sub-float v10, v9, v0

    iget v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->F:F

    sub-float v0, v9, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v11

    cmpl-float v0, v10, v12

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->F:F

    invoke-direct {p0, v0, v10}, Lcom/netease/nr/base/view/VerticalViewPager;->a(FF)Z

    move-result v0

    if-nez v0, :cond_7

    float-to-int v3, v10

    float-to-int v4, v7

    float-to-int v5, v9

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/netease/nr/base/view/VerticalViewPager;->a(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_7

    iput v9, p0, Lcom/netease/nr/base/view/VerticalViewPager;->F:F

    iput v9, p0, Lcom/netease/nr/base/view/VerticalViewPager;->D:F

    iput v7, p0, Lcom/netease/nr/base/view/VerticalViewPager;->E:F

    iput-boolean v6, p0, Lcom/netease/nr/base/view/VerticalViewPager;->y:Z

    goto :goto_0

    :cond_7
    iget v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->B:I

    int-to-float v0, v0

    cmpl-float v0, v11, v0

    if-lez v0, :cond_a

    cmpl-float v0, v11, v8

    if-lez v0, :cond_a

    iput-boolean v6, p0, Lcom/netease/nr/base/view/VerticalViewPager;->x:Z

    invoke-direct {p0, v6}, Lcom/netease/nr/base/view/VerticalViewPager;->e(I)V

    cmpl-float v0, v10, v12

    if-lez v0, :cond_9

    iget v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->D:F

    iget v1, p0, Lcom/netease/nr/base/view/VerticalViewPager;->B:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    :goto_2
    iput v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->F:F

    invoke-direct {p0, v6}, Lcom/netease/nr/base/view/VerticalViewPager;->c(Z)V

    :cond_8
    :goto_3
    iget-boolean v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->x:Z

    if-eqz v0, :cond_5

    invoke-direct {p0, v9}, Lcom/netease/nr/base/view/VerticalViewPager;->b(F)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto/16 :goto_1

    :cond_9
    iget v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->D:F

    iget v1, p0, Lcom/netease/nr/base/view/VerticalViewPager;->B:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_2

    :cond_a
    iget v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->B:I

    int-to-float v0, v0

    cmpl-float v0, v8, v0

    if-lez v0, :cond_8

    iput-boolean v6, p0, Lcom/netease/nr/base/view/VerticalViewPager;->y:Z

    goto :goto_3

    :sswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->D:F

    iput v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->F:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->E:F

    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->G:I

    iput-boolean v2, p0, Lcom/netease/nr/base/view/VerticalViewPager;->y:Z

    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->l:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    iget v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->ad:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->l:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalY()I

    move-result v0

    iget-object v1, p0, Lcom/netease/nr/base/view/VerticalViewPager;->l:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/netease/nr/base/view/VerticalViewPager;->L:I

    if-le v0, v1, :cond_b

    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->l:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    iput-boolean v2, p0, Lcom/netease/nr/base/view/VerticalViewPager;->v:Z

    invoke-virtual {p0}, Lcom/netease/nr/base/view/VerticalViewPager;->b()V

    iput-boolean v6, p0, Lcom/netease/nr/base/view/VerticalViewPager;->x:Z

    invoke-direct {p0, v6}, Lcom/netease/nr/base/view/VerticalViewPager;->e(I)V

    goto/16 :goto_1

    :cond_b
    invoke-direct {p0, v2}, Lcom/netease/nr/base/view/VerticalViewPager;->a(Z)V

    iput-boolean v2, p0, Lcom/netease/nr/base/view/VerticalViewPager;->x:Z

    goto/16 :goto_1

    :sswitch_2
    invoke-direct {p0, p1}, Lcom/netease/nr/base/view/VerticalViewPager;->a(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_0
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 17

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/netease/nr/base/view/VerticalViewPager;->t:Z

    invoke-virtual/range {p0 .. p0}, Lcom/netease/nr/base/view/VerticalViewPager;->b()V

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/netease/nr/base/view/VerticalViewPager;->t:Z

    invoke-virtual/range {p0 .. p0}, Lcom/netease/nr/base/view/VerticalViewPager;->getChildCount()I

    move-result v9

    sub-int v10, p4, p2

    sub-int v11, p5, p3

    invoke-virtual/range {p0 .. p0}, Lcom/netease/nr/base/view/VerticalViewPager;->getPaddingLeft()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/netease/nr/base/view/VerticalViewPager;->getPaddingTop()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/netease/nr/base/view/VerticalViewPager;->getPaddingRight()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/netease/nr/base/view/VerticalViewPager;->getPaddingBottom()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/netease/nr/base/view/VerticalViewPager;->getScrollY()I

    move-result v12

    const/4 v4, 0x0

    const/4 v1, 0x0

    move v8, v1

    :goto_0
    if-ge v8, v9, :cond_0

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/netease/nr/base/view/VerticalViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v7, 0x8

    if-eq v1, v7, :cond_4

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/netease/nr/base/view/VerticalViewPager$LayoutParams;

    iget-boolean v7, v1, Lcom/netease/nr/base/view/VerticalViewPager$LayoutParams;->a:Z

    if-eqz v7, :cond_4

    iget v7, v1, Lcom/netease/nr/base/view/VerticalViewPager$LayoutParams;->b:I

    and-int/lit8 v7, v7, 0x7

    iget v1, v1, Lcom/netease/nr/base/view/VerticalViewPager$LayoutParams;->b:I

    and-int/lit8 v14, v1, 0x70

    packed-switch v7, :pswitch_data_0

    :pswitch_0
    move v7, v6

    :goto_1
    sparse-switch v14, :sswitch_data_0

    move v1, v2

    move/from16 v16, v3

    move v3, v2

    move/from16 v2, v16

    :goto_2
    add-int/2addr v1, v12

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v14, v7

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v15, v1

    invoke-virtual {v13, v7, v1, v14, v15}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v1, v4, 0x1

    move v4, v3

    move v3, v2

    move v2, v5

    move v5, v6

    :goto_3
    add-int/lit8 v6, v8, 0x1

    move v8, v6

    move v6, v5

    move v5, v2

    move v2, v4

    move v4, v1

    goto :goto_0

    :pswitch_1
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v6

    move v7, v6

    move v6, v1

    goto :goto_1

    :pswitch_2
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int v1, v10, v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v7, v1

    goto :goto_1

    :pswitch_3
    sub-int v1, v10, v5

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v1, v7

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v5, v7

    move v7, v1

    goto :goto_1

    :sswitch_0
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v2

    move/from16 v16, v2

    move v2, v3

    move v3, v1

    move/from16 v1, v16

    goto :goto_2

    :sswitch_1
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int v1, v11, v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    move/from16 v16, v3

    move v3, v2

    move/from16 v2, v16

    goto :goto_2

    :sswitch_2
    sub-int v1, v11, v3

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    sub-int/2addr v1, v14

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    add-int/2addr v3, v14

    move/from16 v16, v3

    move v3, v2

    move/from16 v2, v16

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    :goto_4
    if-ge v2, v9, :cond_3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/netease/nr/base/view/VerticalViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v8, 0x8

    if-eq v1, v8, :cond_2

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/netease/nr/base/view/VerticalViewPager$LayoutParams;

    iget-boolean v8, v1, Lcom/netease/nr/base/view/VerticalViewPager$LayoutParams;->a:Z

    if-nez v8, :cond_2

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/netease/nr/base/view/VerticalViewPager;->a(Landroid/view/View;)Lcom/netease/nr/base/view/bz;

    move-result-object v8

    if-eqz v8, :cond_2

    int-to-float v12, v11

    iget v8, v8, Lcom/netease/nr/base/view/bz;->f:F

    mul-float/2addr v8, v12

    float-to-int v8, v8

    iget-boolean v12, v1, Lcom/netease/nr/base/view/VerticalViewPager$LayoutParams;->e:Z

    if-eqz v12, :cond_1

    const/4 v12, 0x0

    iput-boolean v12, v1, Lcom/netease/nr/base/view/VerticalViewPager$LayoutParams;->e:Z

    sub-int v12, v10, v6

    sub-int/2addr v12, v5

    int-to-float v12, v12

    iget v1, v1, Lcom/netease/nr/base/view/VerticalViewPager$LayoutParams;->c:F

    mul-float/2addr v1, v12

    float-to-int v1, v1

    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v1, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    sub-int v12, v11, v8

    sub-int/2addr v12, v3

    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    invoke-virtual {v7, v1, v12}, Landroid/view/View;->measure(II)V

    :cond_1
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v6

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v8

    invoke-virtual {v7, v6, v8, v1, v12}, Landroid/view/View;->layout(IIII)V

    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_4

    :cond_3
    move-object/from16 v0, p0

    iput v6, v0, Lcom/netease/nr/base/view/VerticalViewPager;->o:I

    sub-int v1, v10, v5

    move-object/from16 v0, p0

    iput v1, v0, Lcom/netease/nr/base/view/VerticalViewPager;->p:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/netease/nr/base/view/VerticalViewPager;->T:I

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/netease/nr/base/view/VerticalViewPager;->R:Z

    return-void

    :cond_4
    move v1, v4

    move v4, v2

    move v2, v5

    move v5, v6

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 13

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/netease/nr/base/view/VerticalViewPager;->getDefaultSize(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, p2}, Lcom/netease/nr/base/view/VerticalViewPager;->getDefaultSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/netease/nr/base/view/VerticalViewPager;->setMeasuredDimension(II)V

    invoke-virtual {p0}, Lcom/netease/nr/base/view/VerticalViewPager;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/netease/nr/base/view/VerticalViewPager;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v2, v1, 0xa

    iget v3, p0, Lcom/netease/nr/base/view/VerticalViewPager;->z:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/netease/nr/base/view/VerticalViewPager;->A:I

    invoke-virtual {p0}, Lcom/netease/nr/base/view/VerticalViewPager;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/netease/nr/base/view/VerticalViewPager;->getPaddingRight()I

    move-result v2

    sub-int v3, v0, v2

    invoke-virtual {p0}, Lcom/netease/nr/base/view/VerticalViewPager;->getPaddingTop()I

    move-result v0

    sub-int v0, v1, v0

    invoke-virtual {p0}, Lcom/netease/nr/base/view/VerticalViewPager;->getPaddingBottom()I

    move-result v1

    sub-int v5, v0, v1

    invoke-virtual {p0}, Lcom/netease/nr/base/view/VerticalViewPager;->getChildCount()I

    move-result v9

    const/4 v0, 0x0

    move v8, v0

    :goto_0
    if-ge v8, v9, :cond_8

    invoke-virtual {p0, v8}, Lcom/netease/nr/base/view/VerticalViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/VerticalViewPager$LayoutParams;

    if-eqz v0, :cond_3

    iget-boolean v1, v0, Lcom/netease/nr/base/view/VerticalViewPager$LayoutParams;->a:Z

    if-eqz v1, :cond_3

    iget v1, v0, Lcom/netease/nr/base/view/VerticalViewPager$LayoutParams;->b:I

    and-int/lit8 v6, v1, 0x7

    iget v1, v0, Lcom/netease/nr/base/view/VerticalViewPager$LayoutParams;->b:I

    and-int/lit8 v4, v1, 0x70

    const/high16 v2, -0x80000000

    const/high16 v1, -0x80000000

    const/16 v7, 0x30

    if-eq v4, v7, :cond_0

    const/16 v7, 0x50

    if-ne v4, v7, :cond_4

    :cond_0
    const/4 v4, 0x1

    move v7, v4

    :goto_1
    const/4 v4, 0x3

    if-eq v6, v4, :cond_1

    const/4 v4, 0x5

    if-ne v6, v4, :cond_5

    :cond_1
    const/4 v4, 0x1

    move v6, v4

    :goto_2
    if-eqz v7, :cond_6

    const/high16 v2, 0x40000000    # 2.0f

    :cond_2
    :goto_3
    iget v4, v0, Lcom/netease/nr/base/view/VerticalViewPager$LayoutParams;->width:I

    const/4 v11, -0x2

    if-eq v4, v11, :cond_e

    const/high16 v4, 0x40000000    # 2.0f

    iget v2, v0, Lcom/netease/nr/base/view/VerticalViewPager$LayoutParams;->width:I

    const/4 v11, -0x1

    if-eq v2, v11, :cond_d

    iget v2, v0, Lcom/netease/nr/base/view/VerticalViewPager$LayoutParams;->width:I

    :goto_4
    iget v11, v0, Lcom/netease/nr/base/view/VerticalViewPager$LayoutParams;->height:I

    const/4 v12, -0x2

    if-eq v11, v12, :cond_c

    const/high16 v1, 0x40000000    # 2.0f

    iget v11, v0, Lcom/netease/nr/base/view/VerticalViewPager$LayoutParams;->height:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_c

    iget v0, v0, Lcom/netease/nr/base/view/VerticalViewPager$LayoutParams;->height:I

    :goto_5
    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v10, v2, v0}, Landroid/view/View;->measure(II)V

    if-eqz v7, :cond_7

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v5, v0

    :cond_3
    :goto_6
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    move v7, v4

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    move v6, v4

    goto :goto_2

    :cond_6
    if-eqz v6, :cond_2

    const/high16 v1, 0x40000000    # 2.0f

    goto :goto_3

    :cond_7
    if-eqz v6, :cond_3

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr v3, v0

    goto :goto_6

    :cond_8
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->s:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->t:Z

    invoke-virtual {p0}, Lcom/netease/nr/base/view/VerticalViewPager;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->t:Z

    invoke-virtual {p0}, Lcom/netease/nr/base/view/VerticalViewPager;->getChildCount()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_7
    if-ge v1, v2, :cond_b

    invoke-virtual {p0, v1}, Lcom/netease/nr/base/view/VerticalViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v4, 0x8

    if-eq v0, v4, :cond_a

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/VerticalViewPager$LayoutParams;

    if-eqz v0, :cond_9

    iget-boolean v4, v0, Lcom/netease/nr/base/view/VerticalViewPager$LayoutParams;->a:Z

    if-nez v4, :cond_a

    :cond_9
    int-to-float v4, v5

    iget v0, v0, Lcom/netease/nr/base/view/VerticalViewPager$LayoutParams;->d:F

    mul-float/2addr v0, v4

    float-to-int v0, v0

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget v4, p0, Lcom/netease/nr/base/view/VerticalViewPager;->s:I

    invoke-virtual {v3, v4, v0}, Landroid/view/View;->measure(II)V

    :cond_a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    :cond_b
    return-void

    :cond_c
    move v0, v5

    goto :goto_5

    :cond_d
    move v2, v3

    goto :goto_4

    :cond_e
    move v4, v2

    move v2, v3

    goto/16 :goto_4
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 8

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0}, Lcom/netease/nr/base/view/VerticalViewPager;->getChildCount()I

    move-result v0

    and-int/lit16 v3, p1, 0x82

    if-eqz v3, :cond_0

    move v1, v2

    move v3, v4

    :goto_0
    if-eq v3, v0, :cond_2

    invoke-virtual {p0, v3}, Lcom/netease/nr/base/view/VerticalViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {p0, v5}, Lcom/netease/nr/base/view/VerticalViewPager;->a(Landroid/view/View;)Lcom/netease/nr/base/view/bz;

    move-result-object v6

    if-eqz v6, :cond_1

    iget v6, v6, Lcom/netease/nr/base/view/bz;->b:I

    iget v7, p0, Lcom/netease/nr/base/view/VerticalViewPager;->h:I

    if-ne v6, v7, :cond_1

    invoke-virtual {v5, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_1

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v0, v0, -0x1

    move v3, v0

    move v0, v1

    goto :goto_0

    :cond_1
    add-int/2addr v3, v1

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    instance-of v0, p1, Lcom/netease/nr/base/view/VerticalViewPager$SavedState;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_0
    return-void

    :cond_0
    check-cast p1, Lcom/netease/nr/base/view/VerticalViewPager$SavedState;

    invoke-virtual {p1}, Lcom/netease/nr/base/view/VerticalViewPager$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->g:Lcom/netease/nr/base/view/bu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->g:Lcom/netease/nr/base/view/bu;

    iget-object v1, p1, Lcom/netease/nr/base/view/VerticalViewPager$SavedState;->b:Landroid/os/Parcelable;

    iget-object v2, p1, Lcom/netease/nr/base/view/VerticalViewPager$SavedState;->c:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1, v2}, Lcom/netease/nr/base/view/bu;->a(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    iget v0, p1, Lcom/netease/nr/base/view/VerticalViewPager$SavedState;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/netease/nr/base/view/VerticalViewPager;->a(IZZ)V

    goto :goto_0

    :cond_1
    iget v0, p1, Lcom/netease/nr/base/view/VerticalViewPager$SavedState;->a:I

    iput v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->i:I

    iget-object v0, p1, Lcom/netease/nr/base/view/VerticalViewPager$SavedState;->b:Landroid/os/Parcelable;

    iput-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->j:Landroid/os/Parcelable;

    iget-object v0, p1, Lcom/netease/nr/base/view/VerticalViewPager$SavedState;->c:Ljava/lang/ClassLoader;

    iput-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->k:Ljava/lang/ClassLoader;

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/netease/nr/base/view/VerticalViewPager$SavedState;

    invoke-direct {v1, v0}, Lcom/netease/nr/base/view/VerticalViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->h:I

    iput v0, v1, Lcom/netease/nr/base/view/VerticalViewPager$SavedState;->a:I

    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->g:Lcom/netease/nr/base/view/bu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->g:Lcom/netease/nr/base/view/bu;

    invoke-virtual {v0}, Lcom/netease/nr/base/view/bu;->b()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, v1, Lcom/netease/nr/base/view/VerticalViewPager$SavedState;->b:Landroid/os/Parcelable;

    :cond_0
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-eq p1, p3, :cond_0

    iget v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->m:I

    iget v1, p0, Lcom/netease/nr/base/view/VerticalViewPager;->m:I

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/netease/nr/base/view/VerticalViewPager;->a(IIII)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v6, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->O:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->g:Lcom/netease/nr/base/view/bu;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->g:Lcom/netease/nr/base/view/bu;

    invoke-virtual {v0}, Lcom/netease/nr/base/view/bu;->a()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->H:Landroid/view/VelocityTracker;

    if-nez v0, :cond_4

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->H:Landroid/view/VelocityTracker;

    :cond_4
    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->H:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    :cond_5
    :goto_1
    :pswitch_0
    if-eqz v2, :cond_6

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_6
    move v0, v1

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->l:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    iput-boolean v2, p0, Lcom/netease/nr/base/view/VerticalViewPager;->v:Z

    invoke-virtual {p0}, Lcom/netease/nr/base/view/VerticalViewPager;->b()V

    iput-boolean v1, p0, Lcom/netease/nr/base/view/VerticalViewPager;->x:Z

    invoke-direct {p0, v1}, Lcom/netease/nr/base/view/VerticalViewPager;->e(I)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->D:F

    iput v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->F:F

    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->G:I

    goto :goto_1

    :pswitch_2
    iget-boolean v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->x:Z

    if-nez v0, :cond_7

    iget v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->G:I

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v3

    iget v4, p0, Lcom/netease/nr/base/view/VerticalViewPager;->E:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v0

    iget v4, p0, Lcom/netease/nr/base/view/VerticalViewPager;->F:F

    sub-float v4, v0, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/netease/nr/base/view/VerticalViewPager;->B:I

    int-to-float v5, v5

    cmpl-float v5, v4, v5

    if-lez v5, :cond_7

    cmpl-float v3, v4, v3

    if-lez v3, :cond_7

    iput-boolean v1, p0, Lcom/netease/nr/base/view/VerticalViewPager;->x:Z

    iget v3, p0, Lcom/netease/nr/base/view/VerticalViewPager;->D:F

    sub-float/2addr v0, v3

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_8

    iget v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->D:F

    iget v3, p0, Lcom/netease/nr/base/view/VerticalViewPager;->B:I

    int-to-float v3, v3

    add-float/2addr v0, v3

    :goto_2
    iput v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->F:F

    invoke-direct {p0, v1}, Lcom/netease/nr/base/view/VerticalViewPager;->e(I)V

    invoke-direct {p0, v1}, Lcom/netease/nr/base/view/VerticalViewPager;->c(Z)V

    :cond_7
    iget-boolean v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->x:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->G:I

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/netease/nr/base/view/VerticalViewPager;->b(F)Z

    move-result v0

    or-int/2addr v2, v0

    goto :goto_1

    :cond_8
    iget v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->D:F

    iget v3, p0, Lcom/netease/nr/base/view/VerticalViewPager;->B:I

    int-to-float v3, v3

    sub-float/2addr v0, v3

    goto :goto_2

    :pswitch_3
    iget-boolean v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->x:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->H:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    iget v3, p0, Lcom/netease/nr/base/view/VerticalViewPager;->J:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget v2, p0, Lcom/netease/nr/base/view/VerticalViewPager;->G:I

    invoke-static {v0, v2}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v0

    float-to-int v0, v0

    iput-boolean v1, p0, Lcom/netease/nr/base/view/VerticalViewPager;->v:Z

    invoke-virtual {p0}, Lcom/netease/nr/base/view/VerticalViewPager;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/netease/nr/base/view/VerticalViewPager;->getScrollY()I

    move-result v3

    invoke-direct {p0}, Lcom/netease/nr/base/view/VerticalViewPager;->f()Lcom/netease/nr/base/view/bz;

    move-result-object v4

    iget v5, v4, Lcom/netease/nr/base/view/bz;->b:I

    int-to-float v3, v3

    int-to-float v2, v2

    div-float v2, v3, v2

    iget v3, v4, Lcom/netease/nr/base/view/bz;->f:F

    sub-float/2addr v2, v3

    iget v3, v4, Lcom/netease/nr/base/view/bz;->e:F

    div-float/2addr v2, v3

    iget v3, p0, Lcom/netease/nr/base/view/VerticalViewPager;->G:I

    invoke-static {p1, v3}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v3

    invoke-static {p1, v3}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v3

    iget v4, p0, Lcom/netease/nr/base/view/VerticalViewPager;->C:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {p0, v5, v2, v0, v3}, Lcom/netease/nr/base/view/VerticalViewPager;->a(IFII)I

    move-result v2

    invoke-virtual {p0, v2, v1, v1, v0}, Lcom/netease/nr/base/view/VerticalViewPager;->a(IZZI)V

    iput v6, p0, Lcom/netease/nr/base/view/VerticalViewPager;->G:I

    invoke-direct {p0}, Lcom/netease/nr/base/view/VerticalViewPager;->g()V

    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->P:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v0

    iget-object v2, p0, Lcom/netease/nr/base/view/VerticalViewPager;->Q:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v2

    or-int/2addr v2, v0

    goto/16 :goto_1

    :pswitch_4
    iget-boolean v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->x:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->h:I

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/netease/nr/base/view/VerticalViewPager;->a(IZIZ)V

    iput v6, p0, Lcom/netease/nr/base/view/VerticalViewPager;->G:I

    invoke-direct {p0}, Lcom/netease/nr/base/view/VerticalViewPager;->g()V

    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->P:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v0

    iget-object v2, p0, Lcom/netease/nr/base/view/VerticalViewPager;->Q:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v2

    or-int/2addr v2, v0

    goto/16 :goto_1

    :pswitch_5
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v3

    iput v3, p0, Lcom/netease/nr/base/view/VerticalViewPager;->F:F

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->G:I

    goto/16 :goto_1

    :pswitch_6
    invoke-direct {p0, p1}, Lcom/netease/nr/base/view/VerticalViewPager;->a(Landroid/view/MotionEvent;)V

    iget v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->G:I

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v0

    iput v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->F:F

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/VerticalViewPager;->n:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
