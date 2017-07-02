.class Lcom/netease/nr/base/view/ab;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:F

.field final synthetic b:J

.field final synthetic c:Landroid/graphics/PointF;

.field final synthetic d:F

.field final synthetic e:Landroid/graphics/PointF;

.field final synthetic f:F

.field final synthetic g:Lcom/netease/nr/base/view/ImageViewTouch;


# direct methods
.method constructor <init>(Lcom/netease/nr/base/view/ImageViewTouch;FJLandroid/graphics/PointF;FLandroid/graphics/PointF;F)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/base/view/ab;->g:Lcom/netease/nr/base/view/ImageViewTouch;

    iput p2, p0, Lcom/netease/nr/base/view/ab;->a:F

    iput-wide p3, p0, Lcom/netease/nr/base/view/ab;->b:J

    iput-object p5, p0, Lcom/netease/nr/base/view/ab;->c:Landroid/graphics/PointF;

    iput p6, p0, Lcom/netease/nr/base/view/ab;->d:F

    iput-object p7, p0, Lcom/netease/nr/base/view/ab;->e:Landroid/graphics/PointF;

    iput p8, p0, Lcom/netease/nr/base/view/ab;->f:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/netease/nr/base/view/ab;->a:F

    iget-wide v3, p0, Lcom/netease/nr/base/view/ab;->b:J

    sub-long/2addr v0, v3

    long-to-float v0, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v1, p0, Lcom/netease/nr/base/view/ab;->c:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcom/netease/nr/base/view/ab;->d:F

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/netease/nr/base/view/ab;->e:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/netease/nr/base/view/ab;->c:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/netease/nr/base/view/ab;->f:F

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/netease/nr/base/view/ab;->e:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/netease/nr/base/view/ab;->g:Lcom/netease/nr/base/view/ImageViewTouch;

    invoke-virtual {v3, v1, v2}, Lcom/netease/nr/base/view/ImageViewTouch;->a(FF)V

    iget-object v3, p0, Lcom/netease/nr/base/view/ab;->g:Lcom/netease/nr/base/view/ImageViewTouch;

    iget-object v4, p0, Lcom/netease/nr/base/view/ab;->g:Lcom/netease/nr/base/view/ImageViewTouch;

    invoke-virtual {v4}, Lcom/netease/nr/base/view/ImageViewTouch;->e()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/netease/nr/base/view/ImageViewTouch;->setImageMatrix(Landroid/graphics/Matrix;)V

    iget-object v3, p0, Lcom/netease/nr/base/view/ab;->e:Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v4

    iput v1, v3, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/netease/nr/base/view/ab;->e:Landroid/graphics/PointF;

    iget v3, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/PointF;->y:F

    iget v1, p0, Lcom/netease/nr/base/view/ab;->a:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/ab;->g:Lcom/netease/nr/base/view/ImageViewTouch;

    invoke-virtual {v0, p0}, Lcom/netease/nr/base/view/ImageViewTouch;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
