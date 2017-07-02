.class public Lcom/netease/nr/base/view/ImageViewTouch;
.super Lcom/netease/nr/base/view/MyImageView;


# instance fields
.field protected a:Landroid/graphics/Matrix;

.field protected b:Landroid/graphics/Matrix;

.field protected final c:Lcom/netease/nr/base/view/ae;

.field d:I

.field e:I

.field f:F

.field private final g:Landroid/graphics/Matrix;

.field private final h:[F

.field private i:Lcom/netease/nr/base/view/af;

.field private j:Landroid/support/v4/view/ViewPager;

.field private k:Z

.field private l:Landroid/graphics/RectF;

.field private m:Lcom/netease/nr/base/view/ad;

.field private n:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1}, Lcom/netease/nr/base/view/MyImageView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/base/view/ImageViewTouch;->a:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/base/view/ImageViewTouch;->b:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/base/view/ImageViewTouch;->g:Landroid/graphics/Matrix;

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/netease/nr/base/view/ImageViewTouch;->h:[F

    new-instance v0, Lcom/netease/nr/base/view/ae;

    invoke-direct {v0, v2}, Lcom/netease/nr/base/view/ae;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/netease/nr/base/view/ImageViewTouch;->c:Lcom/netease/nr/base/view/ae;

    iput v1, p0, Lcom/netease/nr/base/view/ImageViewTouch;->d:I

    iput v1, p0, Lcom/netease/nr/base/view/ImageViewTouch;->e:I

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/base/view/ImageViewTouch;->l:Landroid/graphics/RectF;

    iput-object v2, p0, Lcom/netease/nr/base/view/ImageViewTouch;->n:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/netease/nr/base/view/ImageViewTouch;->k()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2}, Lcom/netease/nr/base/view/MyImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/base/view/ImageViewTouch;->a:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/base/view/ImageViewTouch;->b:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/base/view/ImageViewTouch;->g:Landroid/graphics/Matrix;

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/netease/nr/base/view/ImageViewTouch;->h:[F

    new-instance v0, Lcom/netease/nr/base/view/ae;

    invoke-direct {v0, v2}, Lcom/netease/nr/base/view/ae;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/netease/nr/base/view/ImageViewTouch;->c:Lcom/netease/nr/base/view/ae;

    iput v1, p0, Lcom/netease/nr/base/view/ImageViewTouch;->d:I

    iput v1, p0, Lcom/netease/nr/base/view/ImageViewTouch;->e:I

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/base/view/ImageViewTouch;->l:Landroid/graphics/RectF;

    iput-object v2, p0, Lcom/netease/nr/base/view/ImageViewTouch;->n:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/netease/nr/base/view/ImageViewTouch;->k()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/netease/nr/base/view/MyImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/base/view/ImageViewTouch;->a:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/base/view/ImageViewTouch;->b:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/base/view/ImageViewTouch;->g:Landroid/graphics/Matrix;

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/netease/nr/base/view/ImageViewTouch;->h:[F

    new-instance v0, Lcom/netease/nr/base/view/ae;

    invoke-direct {v0, v2}, Lcom/netease/nr/base/view/ae;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/netease/nr/base/view/ImageViewTouch;->c:Lcom/netease/nr/base/view/ae;

    iput v1, p0, Lcom/netease/nr/base/view/ImageViewTouch;->d:I

    iput v1, p0, Lcom/netease/nr/base/view/ImageViewTouch;->e:I

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/base/view/ImageViewTouch;->l:Landroid/graphics/RectF;

    iput-object v2, p0, Lcom/netease/nr/base/view/ImageViewTouch;->n:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/netease/nr/base/view/ImageViewTouch;->k()V

    return-void
.end method

.method private a(Landroid/graphics/Bitmap;I)V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/netease/nr/base/view/ImageViewTouch;->k:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1, v1}, Lcom/netease/nr/base/view/ImageViewTouch;->a(Landroid/graphics/Bitmap;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-super {p0, p1}, Lcom/netease/nr/base/view/MyImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/netease/nr/base/view/ImageViewTouch;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    :cond_2
    iget-object v0, p0, Lcom/netease/nr/base/view/ImageViewTouch;->c:Lcom/netease/nr/base/view/ae;

    invoke-virtual {v0}, Lcom/netease/nr/base/view/ae;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/base/view/ImageViewTouch;->c:Lcom/netease/nr/base/view/ae;

    invoke-virtual {v1, p1}, Lcom/netease/nr/base/view/ae;->a(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/netease/nr/base/view/ImageViewTouch;->c:Lcom/netease/nr/base/view/ae;

    invoke-virtual {v1, p2}, Lcom/netease/nr/base/view/ae;->a(I)V

    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    iget-object v1, p0, Lcom/netease/nr/base/view/ImageViewTouch;->m:Lcom/netease/nr/base/view/ad;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netease/nr/base/view/ImageViewTouch;->m:Lcom/netease/nr/base/view/ad;

    invoke-interface {v1, v0}, Lcom/netease/nr/base/view/ad;->a(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private k()V
    .locals 2

    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/netease/nr/base/view/ImageViewTouch;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v0, Lcom/netease/nr/base/view/af;

    invoke-virtual {p0}, Lcom/netease/nr/base/view/ImageViewTouch;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netease/nr/base/view/af;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/nr/base/view/ImageViewTouch;->i:Lcom/netease/nr/base/view/af;

    return-void
.end method


# virtual methods
.method protected a(Landroid/graphics/Matrix;)F
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/netease/nr/base/view/ImageViewTouch;->a(Landroid/graphics/Matrix;I)F

    move-result v0

    return v0
.end method

.method protected a(Landroid/graphics/Matrix;I)F
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/view/ImageViewTouch;->h:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v0, p0, Lcom/netease/nr/base/view/ImageViewTouch;->h:[F

    aget v0, v0, p2

    return v0
.end method

.method protected a(ZZ)I
    .locals 8

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/netease/nr/base/view/ImageViewTouch;->c:Lcom/netease/nr/base/view/ae;

    invoke-virtual {v0}, Lcom/netease/nr/base/view/ae;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0xf

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/netease/nr/base/view/ImageViewTouch;->c()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v4

    const/4 v0, 0x0

    if-eqz p2, :cond_6

    invoke-virtual {p0}, Lcom/netease/nr/base/view/ImageViewTouch;->getHeight()I

    move-result v5

    int-to-float v6, v5

    cmpg-float v6, v2, v6

    if-gtz v6, :cond_2

    int-to-float v0, v5

    sub-float/2addr v0, v2

    div-float/2addr v0, v7

    iget v2, v3, Landroid/graphics/RectF;->top:F

    sub-float v2, v0, v2

    const/16 v0, 0xc

    :goto_1
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/netease/nr/base/view/ImageViewTouch;->getWidth()I

    move-result v5

    int-to-float v6, v5

    cmpg-float v6, v4, v6

    if-gtz v6, :cond_4

    int-to-float v1, v5

    sub-float/2addr v1, v4

    div-float/2addr v1, v7

    iget v3, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v3

    or-int/lit8 v0, v0, 0x3

    :cond_1
    :goto_2
    invoke-virtual {p0, v1, v2}, Lcom/netease/nr/base/view/ImageViewTouch;->a(FF)V

    invoke-virtual {p0}, Lcom/netease/nr/base/view/ImageViewTouch;->e()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/netease/nr/base/view/ImageViewTouch;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0

    :cond_2
    iget v2, v3, Landroid/graphics/RectF;->top:F

    cmpl-float v2, v2, v1

    if-ltz v2, :cond_3

    iget v0, v3, Landroid/graphics/RectF;->top:F

    neg-float v2, v0

    const/4 v0, 0x4

    goto :goto_1

    :cond_3
    iget v2, v3, Landroid/graphics/RectF;->bottom:F

    int-to-float v5, v5

    cmpg-float v2, v2, v5

    if-gtz v2, :cond_6

    invoke-virtual {p0}, Lcom/netease/nr/base/view/ImageViewTouch;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v2, v3, Landroid/graphics/RectF;->bottom:F

    sub-float v2, v0, v2

    const/16 v0, 0x8

    goto :goto_1

    :cond_4
    iget v4, v3, Landroid/graphics/RectF;->left:F

    cmpl-float v4, v4, v1

    if-ltz v4, :cond_5

    iget v1, v3, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    or-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    iget v4, v3, Landroid/graphics/RectF;->right:F

    int-to-float v6, v5

    cmpg-float v4, v4, v6

    if-gtz v4, :cond_1

    int-to-float v1, v5

    iget v3, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v3

    or-int/lit8 v0, v0, 0x2

    goto :goto_2

    :cond_6
    move v2, v1

    goto :goto_1
.end method

.method protected a(FF)V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/view/ImageViewTouch;->b:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method protected a(FFF)V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/netease/nr/base/view/ImageViewTouch;->d()F

    move-result v0

    div-float v0, p1, v0

    iget-object v1, p0, Lcom/netease/nr/base/view/ImageViewTouch;->b:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v0, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    invoke-virtual {p0}, Lcom/netease/nr/base/view/ImageViewTouch;->e()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/nr/base/view/ImageViewTouch;->setImageMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {p0, v2, v2}, Lcom/netease/nr/base/view/ImageViewTouch;->a(ZZ)I

    return-void
.end method

.method protected a(FFFF)V
    .locals 9

    invoke-virtual {p0}, Lcom/netease/nr/base/view/ImageViewTouch;->d()F

    move-result v0

    sub-float v0, p1, v0

    div-float v6, v0, p4

    invoke-virtual {p0}, Lcom/netease/nr/base/view/ImageViewTouch;->d()F

    move-result v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    new-instance v0, Lcom/netease/nr/base/view/ac;

    move-object v1, p0

    move v2, p4

    move v7, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/netease/nr/base/view/ac;-><init>(Lcom/netease/nr/base/view/ImageViewTouch;FJFFFF)V

    invoke-virtual {p0, v0}, Lcom/netease/nr/base/view/ImageViewTouch;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Landroid/graphics/Bitmap;Z)V
    .locals 1

    new-instance v0, Lcom/netease/nr/base/view/ae;

    invoke-direct {v0, p1}, Lcom/netease/nr/base/view/ae;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0, p2}, Lcom/netease/nr/base/view/ImageViewTouch;->a(Lcom/netease/nr/base/view/ae;Z)V

    return-void
.end method

.method public a(Landroid/support/v4/view/ViewPager;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/base/view/ImageViewTouch;->j:Landroid/support/v4/view/ViewPager;

    return-void
.end method

.method protected a(Lcom/netease/nr/base/view/ae;Landroid/graphics/Matrix;)V
    .locals 8

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/netease/nr/base/view/ImageViewTouch;->getWidth()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/netease/nr/base/view/ImageViewTouch;->getHeight()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p1}, Lcom/netease/nr/base/view/ae;->f()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p1}, Lcom/netease/nr/base/view/ae;->e()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    cmpl-float v0, v4, v1

    if-eqz v0, :cond_0

    cmpl-float v0, v5, v1

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p1}, Lcom/netease/nr/base/view/ae;->c()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    invoke-virtual {p2, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    mul-float/2addr v4, v0

    sub-float/2addr v2, v4

    div-float/2addr v2, v7

    mul-float/2addr v0, v5

    sub-float v0, v3, v0

    div-float/2addr v0, v7

    cmpg-float v3, v0, v1

    if-gez v3, :cond_2

    :goto_1
    invoke-virtual {p2, v2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void

    :cond_1
    div-float v0, v2, v4

    div-float v6, v3, v5

    invoke-static {v0, v6}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_1
.end method

.method public a(Lcom/netease/nr/base/view/ae;Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/netease/nr/base/view/ImageViewTouch;->getWidth()I

    move-result v0

    if-gtz v0, :cond_0

    new-instance v0, Lcom/netease/nr/base/view/aa;

    invoke-direct {v0, p0, p1, p2}, Lcom/netease/nr/base/view/aa;-><init>(Lcom/netease/nr/base/view/ImageViewTouch;Lcom/netease/nr/base/view/ae;Z)V

    iput-object v0, p0, Lcom/netease/nr/base/view/ImageViewTouch;->n:Ljava/lang/Runnable;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/nr/base/view/ImageViewTouch;->k:Z

    invoke-virtual {p1}, Lcom/netease/nr/base/view/ae;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/nr/base/view/ImageViewTouch;->a:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1, v0}, Lcom/netease/nr/base/view/ImageViewTouch;->a(Lcom/netease/nr/base/view/ae;Landroid/graphics/Matrix;)V

    invoke-virtual {p1}, Lcom/netease/nr/base/view/ae;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netease/nr/base/view/ae;->a()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/netease/nr/base/view/ImageViewTouch;->a(Landroid/graphics/Bitmap;I)V

    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/nr/base/view/ImageViewTouch;->k:Z

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/netease/nr/base/view/ImageViewTouch;->b:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    :cond_1
    invoke-virtual {p0}, Lcom/netease/nr/base/view/ImageViewTouch;->e()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/nr/base/view/ImageViewTouch;->setImageMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {p0}, Lcom/netease/nr/base/view/ImageViewTouch;->f()F

    move-result v0

    iput v0, p0, Lcom/netease/nr/base/view/ImageViewTouch;->f:F

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/netease/nr/base/view/ImageViewTouch;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netease/nr/base/view/ImageViewTouch;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method protected a(ZZF)V
    .locals 9

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/netease/nr/base/view/ImageViewTouch;->c:Lcom/netease/nr/base/view/ae;

    invoke-virtual {v1}, Lcom/netease/nr/base/view/ae;->b()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/netease/nr/base/view/ImageViewTouch;->e()Landroid/graphics/Matrix;

    move-result-object v1

    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/netease/nr/base/view/ImageViewTouch;->c:Lcom/netease/nr/base/view/ae;

    invoke-virtual {v3}, Lcom/netease/nr/base/view/ae;->b()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/netease/nr/base/view/ImageViewTouch;->c:Lcom/netease/nr/base/view/ae;

    invoke-virtual {v4}, Lcom/netease/nr/base/view/ae;->b()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v2, v0, v0, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v3

    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5}, Landroid/graphics/PointF;-><init>()V

    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7}, Landroid/graphics/PointF;-><init>()V

    if-eqz p2, :cond_6

    invoke-virtual {p0}, Lcom/netease/nr/base/view/ImageViewTouch;->getHeight()I

    move-result v4

    int-to-float v6, v4

    cmpg-float v6, v1, v6

    if-gez v6, :cond_2

    int-to-float v4, v4

    sub-float v1, v4, v1

    div-float/2addr v1, v8

    iget v4, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v4

    iget v4, v2, Landroid/graphics/RectF;->top:F

    iput v4, v5, Landroid/graphics/PointF;->y:F

    :goto_1
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/netease/nr/base/view/ImageViewTouch;->getWidth()I

    move-result v4

    int-to-float v6, v4

    cmpg-float v6, v3, v6

    if-gez v6, :cond_4

    int-to-float v0, v4

    sub-float/2addr v0, v3

    div-float/2addr v0, v8

    iget v3, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v3

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iput v2, v5, Landroid/graphics/PointF;->x:F

    :cond_1
    :goto_2
    invoke-virtual {v7, v5}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    div-float v6, v0, p3

    div-float v8, v1, p3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    new-instance v0, Lcom/netease/nr/base/view/ab;

    move-object v1, p0

    move v2, p3

    invoke-direct/range {v0 .. v8}, Lcom/netease/nr/base/view/ab;-><init>(Lcom/netease/nr/base/view/ImageViewTouch;FJLandroid/graphics/PointF;FLandroid/graphics/PointF;F)V

    invoke-virtual {p0, v0}, Lcom/netease/nr/base/view/ImageViewTouch;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    iget v1, v2, Landroid/graphics/RectF;->top:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_3

    iget v1, v2, Landroid/graphics/RectF;->top:F

    neg-float v1, v1

    iget v4, v2, Landroid/graphics/RectF;->top:F

    iput v4, v5, Landroid/graphics/PointF;->y:F

    goto :goto_1

    :cond_3
    iget v1, v2, Landroid/graphics/RectF;->bottom:F

    int-to-float v4, v4

    cmpg-float v1, v1, v4

    if-gez v1, :cond_6

    invoke-virtual {p0}, Lcom/netease/nr/base/view/ImageViewTouch;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v4

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iput v4, v5, Landroid/graphics/PointF;->y:F

    goto :goto_1

    :cond_4
    iget v3, v2, Landroid/graphics/RectF;->left:F

    cmpl-float v3, v3, v0

    if-lez v3, :cond_5

    iget v0, v2, Landroid/graphics/RectF;->left:F

    neg-float v0, v0

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iput v2, v5, Landroid/graphics/PointF;->x:F

    goto :goto_2

    :cond_5
    iget v3, v2, Landroid/graphics/RectF;->right:F

    int-to-float v6, v4

    cmpg-float v3, v3, v6

    if-gez v3, :cond_1

    int-to-float v0, v4

    iget v3, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v3

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iput v2, v5, Landroid/graphics/PointF;->x:F

    goto :goto_2

    :cond_6
    move v1, v0

    goto :goto_1
.end method

.method protected b(FF)I
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/netease/nr/base/view/ImageViewTouch;->a(FF)V

    invoke-virtual {p0, v0, v0}, Lcom/netease/nr/base/view/ImageViewTouch;->a(ZZ)I

    move-result v0

    return v0
.end method

.method public b()Landroid/support/v4/view/ViewPager;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/view/ImageViewTouch;->j:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method protected c()Landroid/graphics/RectF;
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/netease/nr/base/view/ImageViewTouch;->l:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    iget-object v0, p0, Lcom/netease/nr/base/view/ImageViewTouch;->c:Lcom/netease/nr/base/view/ae;

    invoke-virtual {v0}, Lcom/netease/nr/base/view/ae;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/ImageViewTouch;->l:Landroid/graphics/RectF;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/netease/nr/base/view/ImageViewTouch;->e()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/base/view/ImageViewTouch;->l:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/netease/nr/base/view/ImageViewTouch;->c:Lcom/netease/nr/base/view/ae;

    invoke-virtual {v2}, Lcom/netease/nr/base/view/ae;->b()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/netease/nr/base/view/ImageViewTouch;->c:Lcom/netease/nr/base/view/ae;

    invoke-virtual {v3}, Lcom/netease/nr/base/view/ae;->b()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lcom/netease/nr/base/view/ImageViewTouch;->l:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v0, p0, Lcom/netease/nr/base/view/ImageViewTouch;->l:Landroid/graphics/RectF;

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 1

    invoke-super {p0}, Lcom/netease/nr/base/view/MyImageView;->computeScroll()V

    iget-object v0, p0, Lcom/netease/nr/base/view/ImageViewTouch;->i:Lcom/netease/nr/base/view/af;

    invoke-virtual {v0, p0}, Lcom/netease/nr/base/view/af;->a(Lcom/netease/nr/base/view/ImageViewTouch;)V

    return-void
.end method

.method protected d()F
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/view/ImageViewTouch;->b:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/netease/nr/base/view/ImageViewTouch;->a(Landroid/graphics/Matrix;)F

    move-result v0

    return v0
.end method

.method protected e()Landroid/graphics/Matrix;
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/base/view/ImageViewTouch;->g:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/netease/nr/base/view/ImageViewTouch;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/netease/nr/base/view/ImageViewTouch;->g:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/netease/nr/base/view/ImageViewTouch;->b:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    iget-object v0, p0, Lcom/netease/nr/base/view/ImageViewTouch;->g:Landroid/graphics/Matrix;

    return-object v0
.end method

.method protected f()F
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v1, p0, Lcom/netease/nr/base/view/ImageViewTouch;->c:Lcom/netease/nr/base/view/ae;

    invoke-virtual {v1}, Lcom/netease/nr/base/view/ae;->b()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/netease/nr/base/view/ImageViewTouch;->c:Lcom/netease/nr/base/view/ae;

    invoke-virtual {v1}, Lcom/netease/nr/base/view/ae;->f()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/netease/nr/base/view/ImageViewTouch;->d:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/netease/nr/base/view/ImageViewTouch;->c:Lcom/netease/nr/base/view/ae;

    invoke-virtual {v2}, Lcom/netease/nr/base/view/ae;->e()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/netease/nr/base/view/ImageViewTouch;->e:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v1, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_0
.end method

.method protected g()F
    .locals 1

    iget v0, p0, Lcom/netease/nr/base/view/ImageViewTouch;->f:F

    return v0
.end method

.method protected h()Z
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/view/ImageViewTouch;->c:Lcom/netease/nr/base/view/ae;

    invoke-virtual {v0}, Lcom/netease/nr/base/view/ae;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/view/ImageViewTouch;->c:Lcom/netease/nr/base/view/ae;

    invoke-virtual {v0}, Lcom/netease/nr/base/view/ae;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    invoke-super/range {p0 .. p5}, Lcom/netease/nr/base/view/MyImageView;->onLayout(ZIIII)V

    sub-int v0, p4, p2

    iput v0, p0, Lcom/netease/nr/base/view/ImageViewTouch;->d:I

    sub-int v0, p5, p3

    iput v0, p0, Lcom/netease/nr/base/view/ImageViewTouch;->e:I

    iget-object v0, p0, Lcom/netease/nr/base/view/ImageViewTouch;->n:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/netease/nr/base/view/ImageViewTouch;->n:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/base/view/ImageViewTouch;->c:Lcom/netease/nr/base/view/ae;

    invoke-virtual {v0}, Lcom/netease/nr/base/view/ae;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/base/view/ImageViewTouch;->c:Lcom/netease/nr/base/view/ae;

    iget-object v1, p0, Lcom/netease/nr/base/view/ImageViewTouch;->a:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0, v1}, Lcom/netease/nr/base/view/ImageViewTouch;->a(Lcom/netease/nr/base/view/ae;Landroid/graphics/Matrix;)V

    invoke-virtual {p0}, Lcom/netease/nr/base/view/ImageViewTouch;->e()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/nr/base/view/ImageViewTouch;->setImageMatrix(Landroid/graphics/Matrix;)V

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/base/view/ImageViewTouch;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/base/view/ImageViewTouch;->i:Lcom/netease/nr/base/view/af;

    invoke-virtual {v0, p0, p1}, Lcom/netease/nr/base/view/af;->a(Lcom/netease/nr/base/view/ImageViewTouch;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/netease/nr/base/view/ImageViewTouch;->a(Landroid/graphics/Bitmap;I)V

    return-void
.end method
