.class Lcom/netease/nr/base/view/ag;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/netease/nr/base/view/ImageViewTouch;

.field final synthetic b:Lcom/netease/nr/base/view/af;


# direct methods
.method constructor <init>(Lcom/netease/nr/base/view/af;Lcom/netease/nr/base/view/ImageViewTouch;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/base/view/ag;->b:Lcom/netease/nr/base/view/af;

    iput-object p2, p0, Lcom/netease/nr/base/view/ag;->a:Lcom/netease/nr/base/view/ImageViewTouch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/netease/nr/base/view/ag;->b:Lcom/netease/nr/base/view/af;

    invoke-static {v0}, Lcom/netease/nr/base/view/af;->a(Lcom/netease/nr/base/view/af;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/ag;->b:Lcom/netease/nr/base/view/af;

    invoke-static {v0}, Lcom/netease/nr/base/view/af;->a(Lcom/netease/nr/base/view/af;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/netease/nr/base/view/ag;->b:Lcom/netease/nr/base/view/af;

    invoke-static {v1}, Lcom/netease/nr/base/view/af;->b(Lcom/netease/nr/base/view/af;)Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/netease/nr/base/view/ag;->b:Lcom/netease/nr/base/view/af;

    invoke-static {v1}, Lcom/netease/nr/base/view/af;->a(Lcom/netease/nr/base/view/af;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/netease/nr/base/view/ag;->b:Lcom/netease/nr/base/view/af;

    invoke-static {v2}, Lcom/netease/nr/base/view/af;->b(Lcom/netease/nr/base/view/af;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/netease/nr/base/view/ag;->b:Lcom/netease/nr/base/view/af;

    invoke-static {v2}, Lcom/netease/nr/base/view/af;->b(Lcom/netease/nr/base/view/af;)Landroid/graphics/PointF;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/nr/base/view/ag;->b:Lcom/netease/nr/base/view/af;

    invoke-static {v3}, Lcom/netease/nr/base/view/af;->a(Lcom/netease/nr/base/view/af;)Landroid/widget/Scroller;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/netease/nr/base/view/ag;->b:Lcom/netease/nr/base/view/af;

    invoke-static {v4}, Lcom/netease/nr/base/view/af;->a(Lcom/netease/nr/base/view/af;)Landroid/widget/Scroller;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrY()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    iget-object v2, p0, Lcom/netease/nr/base/view/ag;->a:Lcom/netease/nr/base/view/ImageViewTouch;

    neg-float v0, v0

    neg-float v1, v1

    invoke-virtual {v2, v0, v1}, Lcom/netease/nr/base/view/ImageViewTouch;->b(FF)I

    iget-object v0, p0, Lcom/netease/nr/base/view/ag;->a:Lcom/netease/nr/base/view/ImageViewTouch;

    invoke-virtual {v0, p0}, Lcom/netease/nr/base/view/ImageViewTouch;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/base/view/ag;->b:Lcom/netease/nr/base/view/af;

    iget-object v1, p0, Lcom/netease/nr/base/view/ag;->a:Lcom/netease/nr/base/view/ImageViewTouch;

    invoke-static {v0, v1}, Lcom/netease/nr/base/view/af;->a(Lcom/netease/nr/base/view/af;Lcom/netease/nr/base/view/ImageViewTouch;)V

    goto :goto_0
.end method
