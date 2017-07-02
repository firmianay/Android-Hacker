.class public Lcom/netease/nr/base/view/draggrid/h;
.super Landroid/view/View;

# interfaces
.implements Lcom/netease/nr/base/view/draggrid/l;


# instance fields
.field a:Lcom/netease/nr/base/view/draggrid/j;

.field private b:Landroid/graphics/Bitmap;

.field private c:Landroid/graphics/Paint;

.field private d:I

.field private e:I

.field private f:F

.field private g:F

.field private h:Landroid/view/WindowManager$LayoutParams;

.field private i:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;IIIIII)V
    .locals 7

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/netease/nr/base/view/draggrid/h;->g:F

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/netease/nr/base/view/draggrid/h;->i:Landroid/view/WindowManager;

    new-instance v0, Lcom/netease/nr/base/view/draggrid/j;

    const/4 v1, 0x0

    const/16 v2, 0x6e

    invoke-direct {v0, v1, v2, p0}, Lcom/netease/nr/base/view/draggrid/j;-><init>(ZILcom/netease/nr/base/view/draggrid/l;)V

    iput-object v0, p0, Lcom/netease/nr/base/view/draggrid/h;->a:Lcom/netease/nr/base/view/draggrid/j;

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v0, p7

    const/high16 v1, 0x41a00000    # 20.0f

    add-float/2addr v1, v0

    div-float v0, v1, v0

    iput v0, p0, Lcom/netease/nr/base/view/draggrid/h;->f:F

    invoke-virtual {v5, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    const/4 v6, 0x1

    move-object v0, p2

    move v1, p5

    move v2, p6

    move v3, p7

    move v4, p8

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/base/view/draggrid/h;->b:Landroid/graphics/Bitmap;

    add-int/lit8 v0, p3, 0xa

    iput v0, p0, Lcom/netease/nr/base/view/draggrid/h;->d:I

    add-int/lit8 v0, p4, 0xa

    iput v0, p0, Lcom/netease/nr/base/view/draggrid/h;->e:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(FF)V
    .locals 2

    const/high16 v1, 0x3f800000    # 1.0f

    iget v0, p0, Lcom/netease/nr/base/view/draggrid/h;->f:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/netease/nr/base/view/draggrid/h;->f:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/netease/nr/base/view/draggrid/h;->g:F

    invoke-virtual {p0}, Lcom/netease/nr/base/view/draggrid/h;->invalidate()V

    return-void
.end method

.method public a(II)V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/base/view/draggrid/h;->h:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/netease/nr/base/view/draggrid/h;->d:I

    sub-int v1, p1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v1, p0, Lcom/netease/nr/base/view/draggrid/h;->e:I

    sub-int v1, p2, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v1, p0, Lcom/netease/nr/base/view/draggrid/h;->i:Landroid/view/WindowManager;

    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public a(Landroid/os/IBinder;II)V
    .locals 8

    const/4 v1, -0x2

    const/4 v7, -0x3

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/netease/nr/base/view/draggrid/h;->d:I

    sub-int v3, p2, v2

    iget v2, p0, Lcom/netease/nr/base/view/draggrid/h;->e:I

    sub-int v4, p3, v2

    const/16 v5, 0x3ea

    const/16 v6, 0x300

    move v2, v1

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const-string v1, "DragView"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/netease/nr/base/view/draggrid/h;->h:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/netease/nr/base/view/draggrid/h;->i:Landroid/view/WindowManager;

    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/netease/nr/base/view/draggrid/h;->f:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/netease/nr/base/view/draggrid/h;->g:F

    iget-object v0, p0, Lcom/netease/nr/base/view/draggrid/h;->a:Lcom/netease/nr/base/view/draggrid/j;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/draggrid/j;->a(Z)V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/view/draggrid/h;->i:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/netease/nr/base/view/draggrid/h;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lcom/netease/nr/base/view/draggrid/h;->g:F

    const v1, 0x3f7fbe77    # 0.999f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/netease/nr/base/view/draggrid/h;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v2, v1, v0

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/base/view/draggrid/h;->b:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/netease/nr/base/view/draggrid/h;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/base/view/draggrid/h;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/netease/nr/base/view/draggrid/h;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/netease/nr/base/view/draggrid/h;->setMeasuredDimension(II)V

    return-void
.end method
