.class public Lcom/netease/nr/base/view/MyImageView;
.super Landroid/widget/ImageView;


# instance fields
.field private a:I

.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/BitmapShader;

.field private final d:Landroid/graphics/Matrix;

.field private e:I

.field private f:Landroid/graphics/RectF;

.field private g:Landroid/graphics/RectF;

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/base/view/MyImageView;->d:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/base/view/MyImageView;->f:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/base/view/MyImageView;->g:Landroid/graphics/RectF;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/nr/base/view/MyImageView;->h:Z

    invoke-direct {p0}, Lcom/netease/nr/base/view/MyImageView;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/base/view/MyImageView;->d:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/base/view/MyImageView;->f:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/base/view/MyImageView;->g:Landroid/graphics/RectF;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/nr/base/view/MyImageView;->h:Z

    invoke-direct {p0}, Lcom/netease/nr/base/view/MyImageView;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/base/view/MyImageView;->d:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/base/view/MyImageView;->f:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/base/view/MyImageView;->g:Landroid/graphics/RectF;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/nr/base/view/MyImageView;->h:Z

    invoke-direct {p0}, Lcom/netease/nr/base/view/MyImageView;->b()V

    return-void
.end method

.method private b()V
    .locals 0

    return-void
.end method

.method private c()Z
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/netease/nr/base/view/MyImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected a()V
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/netease/nr/base/view/MyImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/netease/nr/base/view/MyImageView;->e:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/base/view/MyImageView;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/netease/nr/base/view/MyImageView;->e:I

    :cond_0
    iget v1, p0, Lcom/netease/nr/base/view/MyImageView;->e:I

    if-lez v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/netease/nr/base/view/MyImageView;->g:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1, v3, v3, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/netease/nr/base/view/MyImageView;->f:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/netease/nr/base/view/MyImageView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/netease/nr/base/view/MyImageView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/netease/nr/base/view/MyImageView;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/netease/nr/base/view/MyImageView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/netease/nr/base/view/MyImageView;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/netease/nr/base/view/MyImageView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/netease/nr/base/view/MyImageView;->d:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/netease/nr/base/view/MyImageView;->c:Landroid/graphics/BitmapShader;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/base/view/MyImageView;->d:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/netease/nr/base/view/MyImageView;->g:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/netease/nr/base/view/MyImageView;->f:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    iget-object v0, p0, Lcom/netease/nr/base/view/MyImageView;->c:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/netease/nr/base/view/MyImageView;->d:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    :cond_1
    return-void
.end method

.method public a(I)V
    .locals 2

    const v0, 0xffffff

    and-int/2addr v0, p1

    const/high16 v1, 0x7d000000

    or-int/2addr v0, v1

    iget v1, p0, Lcom/netease/nr/base/view/MyImageView;->a:I

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput v0, p0, Lcom/netease/nr/base/view/MyImageView;->a:I

    invoke-virtual {p0}, Lcom/netease/nr/base/view/MyImageView;->invalidate()V

    goto :goto_0
.end method

.method protected a(Landroid/graphics/Canvas;)V
    .locals 13

    const/4 v12, 0x0

    invoke-virtual {p0}, Lcom/netease/nr/base/view/MyImageView;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Lcom/netease/nr/base/view/MyImageView;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/netease/nr/base/view/MyImageView;->getRight()I

    move-result v1

    invoke-virtual {p0}, Lcom/netease/nr/base/view/MyImageView;->getTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/netease/nr/base/view/MyImageView;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Lcom/netease/nr/base/view/MyImageView;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/netease/nr/base/view/MyImageView;->getPaddingRight()I

    move-result v5

    invoke-virtual {p0}, Lcom/netease/nr/base/view/MyImageView;->getPaddingTop()I

    move-result v6

    invoke-virtual {p0}, Lcom/netease/nr/base/view/MyImageView;->getPaddingBottom()I

    move-result v7

    invoke-virtual {p0}, Lcom/netease/nr/base/view/MyImageView;->getScrollX()I

    move-result v8

    invoke-virtual {p0}, Lcom/netease/nr/base/view/MyImageView;->getScrollY()I

    move-result v9

    add-int v10, v8, v4

    add-int v11, v9, v6

    add-int/2addr v1, v8

    sub-int v0, v1, v0

    sub-int/2addr v0, v5

    add-int v1, v9, v3

    sub-int/2addr v1, v2

    sub-int/2addr v1, v7

    invoke-virtual {p1, v10, v11, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    int-to-float v0, v4

    int-to-float v1, v6

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget v0, p0, Lcom/netease/nr/base/view/MyImageView;->a:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/netease/nr/base/view/MyImageView;->a:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x7d

    invoke-virtual {p1, v0, v12, v12, v12}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/netease/nr/base/view/MyImageView;->h:Z

    return-void
.end method

.method public b(I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iput p1, p0, Lcom/netease/nr/base/view/MyImageView;->e:I

    :goto_0
    invoke-virtual {p0}, Lcom/netease/nr/base/view/MyImageView;->requestLayout()V

    return-void

    :cond_0
    int-to-float v0, p1

    invoke-virtual {p0}, Lcom/netease/nr/base/view/MyImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/netease/nr/base/view/MyImageView;->e:I

    goto :goto_0
.end method

.method protected j()Z
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/netease/nr/base/view/MyImageView;->h:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/base/view/MyImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/util/j/a;->a(Landroid/content/Context;)Lcom/netease/util/j/a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netease/nr/base/view/MyImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/netease/util/j/a;->a(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-virtual {p0}, Lcom/netease/nr/base/view/MyImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/netease/nr/base/view/MyImageView;->e:I

    if-lez v0, :cond_3

    invoke-direct {p0}, Lcom/netease/nr/base/view/MyImageView;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/MyImageView;->b:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-virtual {p0}, Lcom/netease/nr/base/view/MyImageView;->j()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/netease/nr/base/view/MyImageView;->f:Landroid/graphics/RectF;

    const/16 v2, 0x7d

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    :cond_2
    iget-object v1, p0, Lcom/netease/nr/base/view/MyImageView;->f:Landroid/graphics/RectF;

    iget v2, p0, Lcom/netease/nr/base/view/MyImageView;->e:I

    int-to-float v2, v2

    iget v3, p0, Lcom/netease/nr/base/view/MyImageView;->e:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/netease/nr/base/view/MyImageView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    :cond_3
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lcom/netease/nr/base/view/MyImageView;->a(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected final onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/netease/nr/base/view/MyImageView;->a()V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget v0, p0, Lcom/netease/nr/base/view/MyImageView;->e:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/netease/nr/base/view/MyImageView;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/base/view/MyImageView;->b:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/base/view/MyImageView;->b:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/netease/nr/base/view/MyImageView;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/netease/nr/base/view/MyImageView;->b:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    :cond_1
    iput-object v2, p0, Lcom/netease/nr/base/view/MyImageView;->c:Landroid/graphics/BitmapShader;

    invoke-direct {p0}, Lcom/netease/nr/base/view/MyImageView;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/netease/nr/base/view/MyImageView;->getMeasuredWidth()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/netease/nr/base/view/MyImageView;->d:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Lcom/netease/nr/base/view/MyImageView;->c:Landroid/graphics/BitmapShader;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/netease/nr/base/view/MyImageView;->d:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/netease/nr/base/view/MyImageView;->g:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/netease/nr/base/view/MyImageView;->f:Landroid/graphics/RectF;

    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    iget-object v1, p0, Lcom/netease/nr/base/view/MyImageView;->c:Landroid/graphics/BitmapShader;

    iget-object v2, p0, Lcom/netease/nr/base/view/MyImageView;->d:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    :cond_2
    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v0, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v1, p0, Lcom/netease/nr/base/view/MyImageView;->c:Landroid/graphics/BitmapShader;

    iget-object v0, p0, Lcom/netease/nr/base/view/MyImageView;->c:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/netease/nr/base/view/MyImageView;->d:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    :cond_3
    iget-object v0, p0, Lcom/netease/nr/base/view/MyImageView;->b:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/netease/nr/base/view/MyImageView;->c:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_4
    return-void
.end method
