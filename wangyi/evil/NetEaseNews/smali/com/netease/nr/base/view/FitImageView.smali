.class public Lcom/netease/nr/base/view/FitImageView;
.super Lcom/netease/nr/base/view/MyImageView;


# instance fields
.field private a:F

.field private b:F

.field private c:Lcom/netease/nr/base/view/u;

.field private d:Z

.field private e:Landroid/graphics/Rect;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/netease/nr/base/view/MyImageView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/base/view/FitImageView;->e:Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/netease/nr/base/view/FitImageView;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/netease/nr/base/view/MyImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/base/view/FitImageView;->e:Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/netease/nr/base/view/FitImageView;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/netease/nr/base/view/MyImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/base/view/FitImageView;->e:Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/netease/nr/base/view/FitImageView;->b()V

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/base/view/FitImageView;Lcom/netease/nr/base/view/u;)Lcom/netease/nr/base/view/u;
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/base/view/FitImageView;->c:Lcom/netease/nr/base/view/u;

    return-object p1
.end method

.method static synthetic a(Lcom/netease/nr/base/view/FitImageView;Lcom/netease/util/c/b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/netease/nr/base/view/FitImageView;->a(Lcom/netease/util/c/b;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/netease/util/c/b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/netease/nr/base/view/FitImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/netease/nr/base/view/FitImageView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/netease/nr/base/view/FitImageView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/netease/nr/base/view/FitImageView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/netease/nr/base/view/FitImageView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/netease/nr/base/view/FitImageView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/netease/util/c/b;->a(II)V

    new-instance v0, Lcom/netease/util/cache/i;

    invoke-direct {v0}, Lcom/netease/util/cache/i;-><init>()V

    iput-object p2, v0, Lcom/netease/util/cache/i;->a:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/netease/util/cache/i;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/util/cache/i;->d:Ljava/lang/String;

    :cond_0
    invoke-virtual {p1, v0, p0}, Lcom/netease/util/c/b;->b(Lcom/netease/util/cache/i;Landroid/widget/ImageView;)V

    return-void
.end method

.method private b()V
    .locals 1

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/netease/nr/base/view/FitImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method private b(F)V
    .locals 3

    invoke-virtual {p0}, Lcom/netease/nr/base/view/FitImageView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/netease/nr/base/view/FitImageView;->getMeasuredHeight()I

    move-result v1

    int-to-float v2, v0

    mul-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    if-eq v1, v2, :cond_0

    invoke-virtual {p0, v0, v2}, Lcom/netease/nr/base/view/FitImageView;->setMeasuredDimension(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/netease/nr/base/view/FitImageView;->a:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    iget v0, p0, Lcom/netease/nr/base/view/FitImageView;->a:F

    invoke-direct {p0, v0}, Lcom/netease/nr/base/view/FitImageView;->b(F)V

    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/netease/nr/base/view/MyImageView;->a()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/netease/nr/base/view/FitImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_2

    iget v0, p0, Lcom/netease/nr/base/view/FitImageView;->b:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    iget v0, p0, Lcom/netease/nr/base/view/FitImageView;->b:F

    invoke-direct {p0, v0}, Lcom/netease/nr/base/view/FitImageView;->b(F)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/netease/nr/base/view/FitImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v1, :cond_3

    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v1, v0

    invoke-direct {p0, v0}, Lcom/netease/nr/base/view/FitImageView;->b(F)V

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public a(F)V
    .locals 1

    iget v0, p0, Lcom/netease/nr/base/view/FitImageView;->a:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/netease/nr/base/view/FitImageView;->a:F

    invoke-virtual {p0}, Lcom/netease/nr/base/view/FitImageView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public a(Lcom/netease/util/c/b;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/netease/nr/base/view/FitImageView;->c:Lcom/netease/nr/base/view/u;

    invoke-virtual {p0}, Lcom/netease/nr/base/view/FitImageView;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/nr/base/view/u;

    invoke-direct {v0, p0, v1}, Lcom/netease/nr/base/view/u;-><init>(Lcom/netease/nr/base/view/FitImageView;Lcom/netease/nr/base/view/t;)V

    iput-object v0, p0, Lcom/netease/nr/base/view/FitImageView;->c:Lcom/netease/nr/base/view/u;

    iget-object v0, p0, Lcom/netease/nr/base/view/FitImageView;->c:Lcom/netease/nr/base/view/u;

    invoke-static {v0, p1}, Lcom/netease/nr/base/view/u;->a(Lcom/netease/nr/base/view/u;Lcom/netease/util/c/b;)Lcom/netease/util/c/b;

    iget-object v0, p0, Lcom/netease/nr/base/view/FitImageView;->c:Lcom/netease/nr/base/view/u;

    invoke-static {v0, p2}, Lcom/netease/nr/base/view/u;->a(Lcom/netease/nr/base/view/u;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/nr/base/view/FitImageView;->c:Lcom/netease/nr/base/view/u;

    iget-object v1, p0, Lcom/netease/nr/base/view/FitImageView;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/nr/base/view/u;->b(Lcom/netease/nr/base/view/u;Ljava/lang/String;)Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/base/view/FitImageView;->f:Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0}, Lcom/netease/nr/base/view/FitImageView;->a(Lcom/netease/util/c/b;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/base/view/FitImageView;->f:Ljava/lang/String;

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/netease/nr/base/view/FitImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netease/nr/base/view/FitImageView;->d:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/netease/nr/base/view/FitImageView;->a:F

    cmpl-float v1, v1, v5

    if-nez v1, :cond_1

    :cond_0
    invoke-super {p0, p1}, Lcom/netease/nr/base/view/MyImageView;->onDraw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v2, v1

    iget v2, p0, Lcom/netease/nr/base/view/FitImageView;->a:F

    cmpl-float v2, v1, v2

    if-nez v2, :cond_2

    invoke-super {p0, p1}, Lcom/netease/nr/base/view/MyImageView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/netease/nr/base/view/FitImageView;->e:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v2, p0, Lcom/netease/nr/base/view/FitImageView;->a:F

    cmpl-float v2, v1, v2

    if-lez v2, :cond_3

    invoke-virtual {p0}, Lcom/netease/nr/base/view/FitImageView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/netease/nr/base/view/FitImageView;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v4, v4, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p0}, Lcom/netease/nr/base/view/FitImageView;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v5, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v1, p0, Lcom/netease/nr/base/view/FitImageView;->e:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/netease/nr/base/view/FitImageView;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v2, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p0}, Lcom/netease/nr/base/view/FitImageView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p0}, Lcom/netease/nr/base/view/FitImageView;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v1, v5}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    invoke-super/range {p0 .. p5}, Lcom/netease/nr/base/view/MyImageView;->onLayout(ZIIII)V

    iget-object v0, p0, Lcom/netease/nr/base/view/FitImageView;->c:Lcom/netease/nr/base/view/u;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/FitImageView;->c:Lcom/netease/nr/base/view/u;

    invoke-virtual {v0}, Lcom/netease/nr/base/view/u;->run()V

    :cond_0
    return-void
.end method
