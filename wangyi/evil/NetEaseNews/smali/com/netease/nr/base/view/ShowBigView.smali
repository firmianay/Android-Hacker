.class public Lcom/netease/nr/base/view/ShowBigView;
.super Lcom/netease/nr/base/view/MyImageView;


# static fields
.field private static final M:I


# instance fields
.field private A:I

.field private B:I

.field private C:Ljava/lang/Runnable;

.field private D:Landroid/content/Context;

.field private E:F

.field private F:Z

.field private G:Landroid/graphics/PointF;

.field private H:Z

.field private I:I

.field private J:Landroid/view/MotionEvent;

.field private K:Landroid/view/MotionEvent;

.field private L:Lcom/netease/nr/base/view/bo;

.field private N:Z

.field private O:Lcom/netease/nr/base/view/bp;

.field private final P:I

.field protected a:Landroid/graphics/Matrix;

.field protected b:Landroid/graphics/Matrix;

.field c:I

.field d:I

.field e:F

.field f:F

.field protected g:Landroid/os/Handler;

.field h:F

.field i:F

.field j:F

.field k:F

.field l:F

.field m:F

.field n:F

.field o:F

.field p:F

.field q:F

.field r:F

.field private final s:Landroid/graphics/Matrix;

.field private final t:[F

.field private u:Landroid/graphics/Bitmap;

.field private v:Z

.field private w:I

.field private x:I

.field private y:F

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    sput v0, Lcom/netease/nr/base/view/ShowBigView;->M:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/netease/nr/base/view/MyImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/base/view/ShowBigView;->a:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/base/view/ShowBigView;->b:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/base/view/ShowBigView;->s:Landroid/graphics/Matrix;

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/netease/nr/base/view/ShowBigView;->t:[F

    iput-object v1, p0, Lcom/netease/nr/base/view/ShowBigView;->u:Landroid/graphics/Bitmap;

    iput v3, p0, Lcom/netease/nr/base/view/ShowBigView;->c:I

    iput v3, p0, Lcom/netease/nr/base/view/ShowBigView;->d:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/nr/base/view/ShowBigView;->v:Z

    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lcom/netease/nr/base/view/ShowBigView;->e:F

    iput v4, p0, Lcom/netease/nr/base/view/ShowBigView;->z:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/base/view/ShowBigView;->g:Landroid/os/Handler;

    iput v2, p0, Lcom/netease/nr/base/view/ShowBigView;->h:F

    iput v2, p0, Lcom/netease/nr/base/view/ShowBigView;->m:F

    iput v2, p0, Lcom/netease/nr/base/view/ShowBigView;->o:F

    iput-boolean v4, p0, Lcom/netease/nr/base/view/ShowBigView;->H:Z

    iput v3, p0, Lcom/netease/nr/base/view/ShowBigView;->I:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/netease/nr/base/view/ShowBigView;->q:F

    iput-object v1, p0, Lcom/netease/nr/base/view/ShowBigView;->J:Landroid/view/MotionEvent;

    iput-object v1, p0, Lcom/netease/nr/base/view/ShowBigView;->K:Landroid/view/MotionEvent;

    new-instance v0, Lcom/netease/nr/base/view/bo;

    invoke-direct {v0, p0, v1}, Lcom/netease/nr/base/view/bo;-><init>(Lcom/netease/nr/base/view/ShowBigView;Lcom/netease/nr/base/view/bm;)V

    iput-object v0, p0, Lcom/netease/nr/base/view/ShowBigView;->L:Lcom/netease/nr/base/view/bo;

    const/16 v0, 0x64

    iput v0, p0, Lcom/netease/nr/base/view/ShowBigView;->P:I

    invoke-direct {p0, p1}, Lcom/netease/nr/base/view/ShowBigView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/netease/nr/base/view/MyImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/base/view/ShowBigView;->a:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/base/view/ShowBigView;->b:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/base/view/ShowBigView;->s:Landroid/graphics/Matrix;

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/netease/nr/base/view/ShowBigView;->t:[F

    iput-object v1, p0, Lcom/netease/nr/base/view/ShowBigView;->u:Landroid/graphics/Bitmap;

    iput v3, p0, Lcom/netease/nr/base/view/ShowBigView;->c:I

    iput v3, p0, Lcom/netease/nr/base/view/ShowBigView;->d:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/nr/base/view/ShowBigView;->v:Z

    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lcom/netease/nr/base/view/ShowBigView;->e:F

    iput v4, p0, Lcom/netease/nr/base/view/ShowBigView;->z:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/base/view/ShowBigView;->g:Landroid/os/Handler;

    iput v2, p0, Lcom/netease/nr/base/view/ShowBigView;->h:F

    iput v2, p0, Lcom/netease/nr/base/view/ShowBigView;->m:F

    iput v2, p0, Lcom/netease/nr/base/view/ShowBigView;->o:F

    iput-boolean v4, p0, Lcom/netease/nr/base/view/ShowBigView;->H:Z

    iput v3, p0, Lcom/netease/nr/base/view/ShowBigView;->I:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/netease/nr/base/view/ShowBigView;->q:F

    iput-object v1, p0, Lcom/netease/nr/base/view/ShowBigView;->J:Landroid/view/MotionEvent;

    iput-object v1, p0, Lcom/netease/nr/base/view/ShowBigView;->K:Landroid/view/MotionEvent;

    new-instance v0, Lcom/netease/nr/base/view/bo;

    invoke-direct {v0, p0, v1}, Lcom/netease/nr/base/view/bo;-><init>(Lcom/netease/nr/base/view/ShowBigView;Lcom/netease/nr/base/view/bm;)V

    iput-object v0, p0, Lcom/netease/nr/base/view/ShowBigView;->L:Lcom/netease/nr/base/view/bo;

    const/16 v0, 0x64

    iput v0, p0, Lcom/netease/nr/base/view/ShowBigView;->P:I

    invoke-direct {p0, p1}, Lcom/netease/nr/base/view/ShowBigView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x1

    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/netease/nr/base/view/ShowBigView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p0, v1, v1}, Lcom/netease/nr/base/view/ShowBigView;->a(ZZ)V

    iput-object p1, p0, Lcom/netease/nr/base/view/ShowBigView;->D:Landroid/content/Context;

    iget-object v0, p0, Lcom/netease/nr/base/view/ShowBigView;->D:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/netease/nr/base/view/ShowBigView;->E:F

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/base/view/ShowBigView;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/nr/base/view/ShowBigView;->h()V

    return-void
.end method

.method private a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    iget v1, p0, Lcom/netease/nr/base/view/ShowBigView;->E:F

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    mul-int/2addr v1, v1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sget v4, Lcom/netease/nr/base/view/ShowBigView;->M:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    mul-int/2addr v2, v2

    mul-int/2addr v3, v3

    add-int/2addr v2, v3

    if-ge v2, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static b(Landroid/view/MotionEvent;)Landroid/graphics/PointF;
    .locals 5

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {p0, v2}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v0

    invoke-static {p0, v4}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v1

    add-float/2addr v0, v1

    invoke-static {p0, v2}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v1

    invoke-static {p0, v4}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v2

    add-float/2addr v1, v2

    new-instance v2, Landroid/graphics/PointF;

    div-float/2addr v0, v3

    div-float/2addr v1, v3

    invoke-direct {v2, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v2
.end method

.method static synthetic b(Lcom/netease/nr/base/view/ShowBigView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/netease/nr/base/view/ShowBigView;->N:Z

    return v0
.end method

.method public static c(Landroid/view/MotionEvent;)F
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v2}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v0

    invoke-static {p0, v3}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {p0, v2}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v1

    invoke-static {p0, v3}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v2

    sub-float/2addr v1, v2

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/netease/nr/base/view/ShowBigView;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/nr/base/view/ShowBigView;->g()V

    return-void
.end method

.method private f()V
    .locals 3

    iget v0, p0, Lcom/netease/nr/base/view/ShowBigView;->A:I

    int-to-float v0, v0

    iget v1, p0, Lcom/netease/nr/base/view/ShowBigView;->w:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/netease/nr/base/view/ShowBigView;->B:I

    int-to-float v1, v1

    iget v2, p0, Lcom/netease/nr/base/view/ShowBigView;->x:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/netease/nr/base/view/ShowBigView;->y:F

    return-void
.end method

.method private g()V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/view/ShowBigView;->O:Lcom/netease/nr/base/view/bp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/ShowBigView;->O:Lcom/netease/nr/base/view/bp;

    invoke-interface {v0}, Lcom/netease/nr/base/view/bp;->a()V

    :cond_0
    return-void
.end method

.method private h()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/nr/base/view/ShowBigView;->N:Z

    iput-object v3, p0, Lcom/netease/nr/base/view/ShowBigView;->K:Landroid/view/MotionEvent;

    iput-object v3, p0, Lcom/netease/nr/base/view/ShowBigView;->J:Landroid/view/MotionEvent;

    iget-object v0, p0, Lcom/netease/nr/base/view/ShowBigView;->L:Lcom/netease/nr/base/view/bo;

    invoke-virtual {v0, v2}, Lcom/netease/nr/base/view/bo;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/ShowBigView;->L:Lcom/netease/nr/base/view/bo;

    invoke-virtual {v0, v2}, Lcom/netease/nr/base/view/bo;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/base/view/ShowBigView;->L:Lcom/netease/nr/base/view/bo;

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/bo;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/base/view/ShowBigView;->L:Lcom/netease/nr/base/view/bo;

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/bo;->removeMessages(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected a(Landroid/graphics/Matrix;)F
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/netease/nr/base/view/ShowBigView;->a(Landroid/graphics/Matrix;I)F

    move-result v0

    return v0
.end method

.method protected a(Landroid/graphics/Matrix;I)F
    .locals 3

    const/high16 v2, 0x3f000000    # 0.5f

    iget-object v0, p0, Lcom/netease/nr/base/view/ShowBigView;->t:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    iget v0, p0, Lcom/netease/nr/base/view/ShowBigView;->A:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v1, p0, Lcom/netease/nr/base/view/ShowBigView;->w:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/netease/nr/base/view/ShowBigView;->f:F

    iget v0, p0, Lcom/netease/nr/base/view/ShowBigView;->f:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    iput v2, p0, Lcom/netease/nr/base/view/ShowBigView;->f:F

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/base/view/ShowBigView;->t:[F

    aget v0, v0, p2

    return v0
.end method

.method protected a(F)V
    .locals 3

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/netease/nr/base/view/ShowBigView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/netease/nr/base/view/ShowBigView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {p0, p1, v0, v1}, Lcom/netease/nr/base/view/ShowBigView;->a(FFF)V

    return-void
.end method

.method public a(FF)V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/view/ShowBigView;->b:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {p0}, Lcom/netease/nr/base/view/ShowBigView;->e()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/nr/base/view/ShowBigView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method protected a(FFF)V
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, Lcom/netease/nr/base/view/ShowBigView;->e:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    iget p1, p0, Lcom/netease/nr/base/view/ShowBigView;->e:F

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/netease/nr/base/view/ShowBigView;->d()F

    move-result v0

    div-float v0, p1, v0

    iget-object v1, p0, Lcom/netease/nr/base/view/ShowBigView;->b:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v0, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    invoke-virtual {p0, v2, v2}, Lcom/netease/nr/base/view/ShowBigView;->a(ZZ)V

    return-void

    :cond_1
    iget v0, p0, Lcom/netease/nr/base/view/ShowBigView;->f:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget p1, p0, Lcom/netease/nr/base/view/ShowBigView;->f:F

    goto :goto_0
.end method

.method public a(Landroid/view/MotionEvent;)V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/netease/nr/base/view/ShowBigView;->u:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/netease/nr/base/view/ShowBigView;->n:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/netease/nr/base/view/ShowBigView;->p:F

    iget v0, p0, Lcom/netease/nr/base/view/ShowBigView;->n:F

    iget v1, p0, Lcom/netease/nr/base/view/ShowBigView;->m:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/netease/nr/base/view/ShowBigView;->k:F

    iget v0, p0, Lcom/netease/nr/base/view/ShowBigView;->p:F

    iget v1, p0, Lcom/netease/nr/base/view/ShowBigView;->o:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/netease/nr/base/view/ShowBigView;->l:F

    iget v0, p0, Lcom/netease/nr/base/view/ShowBigView;->n:F

    iput v0, p0, Lcom/netease/nr/base/view/ShowBigView;->m:F

    iget v0, p0, Lcom/netease/nr/base/view/ShowBigView;->p:F

    iput v0, p0, Lcom/netease/nr/base/view/ShowBigView;->o:F

    const/16 v0, 0x9

    new-array v0, v0, [F

    invoke-virtual {p0}, Lcom/netease/nr/base/view/ShowBigView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    invoke-virtual {p0}, Lcom/netease/nr/base/view/ShowBigView;->d()F

    move-result v1

    iget-object v2, p0, Lcom/netease/nr/base/view/ShowBigView;->u:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/netease/nr/base/view/ShowBigView;->d()F

    move-result v2

    iget-object v3, p0, Lcom/netease/nr/base/view/ShowBigView;->u:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    const/4 v3, 0x2

    aget v3, v0, v3

    const/4 v4, 0x5

    aget v0, v0, v4

    add-float v4, v3, v1

    add-float v5, v0, v2

    iget v6, p0, Lcom/netease/nr/base/view/ShowBigView;->k:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/netease/nr/base/view/ShowBigView;->l:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v8

    mul-float/2addr v6, v6

    mul-float/2addr v7, v7

    add-float/2addr v6, v7

    mul-int v7, v8, v8

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    iput-boolean v10, p0, Lcom/netease/nr/base/view/ShowBigView;->H:Z

    iget-object v6, p0, Lcom/netease/nr/base/view/ShowBigView;->L:Lcom/netease/nr/base/view/bo;

    invoke-virtual {v6, v10}, Lcom/netease/nr/base/view/bo;->hasMessages(I)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/netease/nr/base/view/ShowBigView;->L:Lcom/netease/nr/base/view/bo;

    invoke-virtual {v6, v10}, Lcom/netease/nr/base/view/bo;->removeMessages(I)V

    :cond_2
    invoke-direct {p0}, Lcom/netease/nr/base/view/ShowBigView;->h()V

    float-to-int v1, v1

    iget v6, p0, Lcom/netease/nr/base/view/ShowBigView;->A:I

    if-gt v1, v6, :cond_3

    float-to-int v1, v2

    iget v2, p0, Lcom/netease/nr/base/view/ShowBigView;->B:I

    if-le v1, v2, :cond_0

    :cond_3
    sub-float v1, v4, v3

    invoke-virtual {p0}, Lcom/netease/nr/base/view/ShowBigView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_6

    iput v9, p0, Lcom/netease/nr/base/view/ShowBigView;->k:F

    :cond_4
    :goto_1
    sub-float v1, v5, v0

    invoke-virtual {p0}, Lcom/netease/nr/base/view/ShowBigView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_8

    iput v9, p0, Lcom/netease/nr/base/view/ShowBigView;->l:F

    :cond_5
    :goto_2
    iget v0, p0, Lcom/netease/nr/base/view/ShowBigView;->k:F

    iget v1, p0, Lcom/netease/nr/base/view/ShowBigView;->l:F

    invoke-virtual {p0, v0, v1}, Lcom/netease/nr/base/view/ShowBigView;->a(FF)V

    goto/16 :goto_0

    :cond_6
    iget v1, p0, Lcom/netease/nr/base/view/ShowBigView;->k:F

    add-float/2addr v1, v3

    cmpl-float v1, v1, v9

    if-lez v1, :cond_7

    iget v1, p0, Lcom/netease/nr/base/view/ShowBigView;->k:F

    cmpl-float v1, v1, v9

    if-lez v1, :cond_7

    neg-float v1, v3

    iput v1, p0, Lcom/netease/nr/base/view/ShowBigView;->k:F

    goto :goto_1

    :cond_7
    iget v1, p0, Lcom/netease/nr/base/view/ShowBigView;->k:F

    add-float/2addr v1, v4

    invoke-virtual {p0}, Lcom/netease/nr/base/view/ShowBigView;->getRight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    iget v1, p0, Lcom/netease/nr/base/view/ShowBigView;->k:F

    cmpg-float v1, v1, v9

    if-gez v1, :cond_4

    invoke-virtual {p0}, Lcom/netease/nr/base/view/ShowBigView;->getRight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v4

    iput v1, p0, Lcom/netease/nr/base/view/ShowBigView;->k:F

    goto :goto_1

    :cond_8
    iget v1, p0, Lcom/netease/nr/base/view/ShowBigView;->l:F

    add-float/2addr v1, v0

    cmpl-float v1, v1, v9

    if-lez v1, :cond_9

    iget v1, p0, Lcom/netease/nr/base/view/ShowBigView;->l:F

    cmpl-float v1, v1, v9

    if-lez v1, :cond_9

    neg-float v0, v0

    iput v0, p0, Lcom/netease/nr/base/view/ShowBigView;->l:F

    goto :goto_2

    :cond_9
    iget v0, p0, Lcom/netease/nr/base/view/ShowBigView;->l:F

    add-float/2addr v0, v5

    invoke-virtual {p0}, Lcom/netease/nr/base/view/ShowBigView;->getBottom()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    iget v0, p0, Lcom/netease/nr/base/view/ShowBigView;->l:F

    cmpg-float v0, v0, v9

    if-gez v0, :cond_5

    invoke-virtual {p0}, Lcom/netease/nr/base/view/ShowBigView;->getBottom()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v5

    iget v1, p0, Lcom/netease/nr/base/view/ShowBigView;->z:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/netease/nr/base/view/ShowBigView;->l:F

    goto :goto_2
.end method

.method protected a(ZZ)V
    .locals 7

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/netease/nr/base/view/ShowBigView;->u:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/netease/nr/base/view/ShowBigView;->e()Landroid/graphics/Matrix;

    move-result-object v1

    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/netease/nr/base/view/ShowBigView;->u:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/netease/nr/base/view/ShowBigView;->u:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v2, v0, v0, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v3

    if-eqz p2, :cond_6

    invoke-virtual {p0}, Lcom/netease/nr/base/view/ShowBigView;->getHeight()I

    move-result v4

    int-to-float v5, v4

    cmpg-float v5, v1, v5

    if-gez v5, :cond_2

    int-to-float v4, v4

    sub-float v1, v4, v1

    div-float/2addr v1, v6

    iget v4, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v4

    :goto_1
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/netease/nr/base/view/ShowBigView;->getWidth()I

    move-result v4

    int-to-float v5, v4

    cmpg-float v5, v3, v5

    if-gez v5, :cond_4

    int-to-float v0, v4

    sub-float/2addr v0, v3

    div-float/2addr v0, v6

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v2

    :cond_1
    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/netease/nr/base/view/ShowBigView;->a(FF)V

    invoke-virtual {p0}, Lcom/netease/nr/base/view/ShowBigView;->e()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/nr/base/view/ShowBigView;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0

    :cond_2
    iget v1, v2, Landroid/graphics/RectF;->top:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_3

    iget v1, v2, Landroid/graphics/RectF;->top:F

    neg-float v1, v1

    goto :goto_1

    :cond_3
    iget v1, v2, Landroid/graphics/RectF;->bottom:F

    int-to-float v4, v4

    cmpg-float v1, v1, v4

    if-gez v1, :cond_6

    invoke-virtual {p0}, Lcom/netease/nr/base/view/ShowBigView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v4

    goto :goto_1

    :cond_4
    iget v3, v2, Landroid/graphics/RectF;->left:F

    cmpl-float v3, v3, v0

    if-lez v3, :cond_5

    iget v0, v2, Landroid/graphics/RectF;->left:F

    neg-float v0, v0

    goto :goto_2

    :cond_5
    iget v3, v2, Landroid/graphics/RectF;->right:F

    int-to-float v5, v4

    cmpg-float v3, v3, v5

    if-gez v3, :cond_1

    int-to-float v0, v4

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v2

    goto :goto_2

    :cond_6
    move v1, v0

    goto :goto_1
.end method

.method public b()F
    .locals 1

    iget v0, p0, Lcom/netease/nr/base/view/ShowBigView;->y:F

    return v0
.end method

.method public c()V
    .locals 2

    invoke-virtual {p0}, Lcom/netease/nr/base/view/ShowBigView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/netease/nr/base/view/ShowBigView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/netease/nr/base/view/ShowBigView;->u:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/ShowBigView;->u:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/netease/nr/base/view/ShowBigView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method protected d()F
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/view/ShowBigView;->b:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/netease/nr/base/view/ShowBigView;->a(Landroid/graphics/Matrix;)F

    move-result v0

    return v0
.end method

.method protected e()Landroid/graphics/Matrix;
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/base/view/ShowBigView;->s:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/netease/nr/base/view/ShowBigView;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/netease/nr/base/view/ShowBigView;->s:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/netease/nr/base/view/ShowBigView;->b:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    iget-object v0, p0, Lcom/netease/nr/base/view/ShowBigView;->s:Landroid/graphics/Matrix;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-virtual {p0}, Lcom/netease/nr/base/view/ShowBigView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Lcom/netease/nr/base/view/MyImageView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/view/MyImageView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/base/view/ShowBigView;->d()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/netease/nr/base/view/ShowBigView;->a(F)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/view/MyImageView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    invoke-super/range {p0 .. p5}, Lcom/netease/nr/base/view/MyImageView;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/ShowBigView;->C:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/nr/base/view/bn;

    invoke-direct {v0, p0}, Lcom/netease/nr/base/view/bn;-><init>(Lcom/netease/nr/base/view/ShowBigView;)V

    iput-object v0, p0, Lcom/netease/nr/base/view/ShowBigView;->C:Ljava/lang/Runnable;

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/base/view/ShowBigView;->C:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/netease/nr/base/view/ShowBigView;->C:Ljava/lang/Runnable;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/netease/nr/base/view/ShowBigView;->F:Z

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/nr/base/view/ShowBigView;->F:Z

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v3, 0x2

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v1

    and-int/2addr v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return v4

    :pswitch_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/nr/base/view/ShowBigView;->i:F

    invoke-virtual {p0}, Lcom/netease/nr/base/view/ShowBigView;->d()F

    move-result v0

    iput v0, p0, Lcom/netease/nr/base/view/ShowBigView;->j:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/netease/nr/base/view/ShowBigView;->m:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/netease/nr/base/view/ShowBigView;->o:F

    const/4 v0, 0x2

    iput v0, p0, Lcom/netease/nr/base/view/ShowBigView;->I:I

    iget-object v0, p0, Lcom/netease/nr/base/view/ShowBigView;->L:Lcom/netease/nr/base/view/bo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/bo;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/base/view/ShowBigView;->L:Lcom/netease/nr/base/view/bo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/bo;->removeMessages(I)V

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/base/view/ShowBigView;->K:Landroid/view/MotionEvent;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/nr/base/view/ShowBigView;->J:Landroid/view/MotionEvent;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/nr/base/view/ShowBigView;->K:Landroid/view/MotionEvent;

    iget-object v1, p0, Lcom/netease/nr/base/view/ShowBigView;->J:Landroid/view/MotionEvent;

    invoke-direct {p0, v0, v1, p1}, Lcom/netease/nr/base/view/ShowBigView;->a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/nr/base/view/ShowBigView;->L:Lcom/netease/nr/base/view/bo;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/bo;->sendEmptyMessage(I)Z

    :goto_1
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/base/view/ShowBigView;->K:Landroid/view/MotionEvent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/nr/base/view/ShowBigView;->N:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/netease/nr/base/view/ShowBigView;->L:Lcom/netease/nr/base/view/bo;

    const/4 v1, 0x1

    sget v2, Lcom/netease/nr/base/view/ShowBigView;->M:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/nr/base/view/bo;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :pswitch_2
    const/4 v0, 0x1

    iput v0, p0, Lcom/netease/nr/base/view/ShowBigView;->I:I

    invoke-static {p1}, Lcom/netease/nr/base/view/ShowBigView;->b(Landroid/view/MotionEvent;)Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/base/view/ShowBigView;->G:Landroid/graphics/PointF;

    goto :goto_0

    :pswitch_3
    iget v0, p0, Lcom/netease/nr/base/view/ShowBigView;->I:I

    if-ne v0, v3, :cond_3

    invoke-virtual {p0, p1}, Lcom/netease/nr/base/view/ShowBigView;->a(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/netease/nr/base/view/ShowBigView;->I:I

    if-ne v0, v4, :cond_0

    invoke-static {}, Lcom/netease/util/k/a;->a()Lcom/netease/util/k/i;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/util/k/i;->a(Landroid/view/MotionEvent;)F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {p1}, Lcom/netease/nr/base/view/ShowBigView;->c(Landroid/view/MotionEvent;)F

    move-result v0

    iget v1, p0, Lcom/netease/nr/base/view/ShowBigView;->i:F

    cmpl-float v1, v1, v5

    if-nez v1, :cond_5

    iput v0, p0, Lcom/netease/nr/base/view/ShowBigView;->i:F

    :goto_2
    iget v1, p0, Lcom/netease/nr/base/view/ShowBigView;->i:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/ShowBigView;->L:Lcom/netease/nr/base/view/bo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/bo;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netease/nr/base/view/ShowBigView;->L:Lcom/netease/nr/base/view/bo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/bo;->removeMessages(I)V

    :cond_4
    iget v0, p0, Lcom/netease/nr/base/view/ShowBigView;->j:F

    iget v1, p0, Lcom/netease/nr/base/view/ShowBigView;->r:F

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/netease/nr/base/view/ShowBigView;->G:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/netease/nr/base/view/ShowBigView;->G:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v0, v1, v2}, Lcom/netease/nr/base/view/ShowBigView;->a(FFF)V

    goto/16 :goto_0

    :cond_5
    iget v1, p0, Lcom/netease/nr/base/view/ShowBigView;->i:F

    div-float v1, v0, v1

    iput v1, p0, Lcom/netease/nr/base/view/ShowBigView;->r:F

    goto :goto_2

    :pswitch_4
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/netease/nr/base/view/ShowBigView;->N:Z

    iget v1, p0, Lcom/netease/nr/base/view/ShowBigView;->I:I

    if-ne v1, v4, :cond_7

    invoke-virtual {p0}, Lcom/netease/nr/base/view/ShowBigView;->d()F

    move-result v1

    cmpg-float v1, v1, v2

    if-gez v1, :cond_6

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v2, p0, Lcom/netease/nr/base/view/ShowBigView;->G:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/netease/nr/base/view/ShowBigView;->G:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v1, v2, v3}, Lcom/netease/nr/base/view/ShowBigView;->a(FFF)V

    :cond_6
    const/4 v1, -0x1

    iput v1, p0, Lcom/netease/nr/base/view/ShowBigView;->I:I

    :cond_7
    iget-object v1, p0, Lcom/netease/nr/base/view/ShowBigView;->J:Landroid/view/MotionEvent;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/netease/nr/base/view/ShowBigView;->J:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/netease/nr/base/view/ShowBigView;->J:Landroid/view/MotionEvent;

    :cond_8
    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/netease/nr/base/view/ShowBigView;->J:Landroid/view/MotionEvent;

    goto/16 :goto_0

    :pswitch_5
    invoke-direct {p0}, Lcom/netease/nr/base/view/ShowBigView;->h()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 4

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/netease/nr/base/view/ShowBigView;->u:Landroid/graphics/Bitmap;

    :cond_0
    invoke-virtual {p0}, Lcom/netease/nr/base/view/ShowBigView;->getHeight()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/netease/nr/base/view/ShowBigView;->getHeight()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcom/netease/nr/base/view/ShowBigView;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/netease/nr/base/view/ShowBigView;->F:Z

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Lcom/netease/nr/base/view/bm;

    invoke-direct {v0, p0, p1}, Lcom/netease/nr/base/view/bm;-><init>(Lcom/netease/nr/base/view/ShowBigView;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/netease/nr/base/view/ShowBigView;->C:Ljava/lang/Runnable;

    :goto_0
    return-void

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/netease/nr/base/view/ShowBigView;->w:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/netease/nr/base/view/ShowBigView;->x:I

    invoke-direct {p0}, Lcom/netease/nr/base/view/ShowBigView;->f()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p0}, Lcom/netease/nr/base/view/ShowBigView;->b()F

    move-result v1

    invoke-virtual {p0}, Lcom/netease/nr/base/view/ShowBigView;->b()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-super {p0, p1}, Lcom/netease/nr/base/view/MyImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v3, v3}, Lcom/netease/nr/base/view/ShowBigView;->a(ZZ)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/netease/nr/base/view/MyImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
