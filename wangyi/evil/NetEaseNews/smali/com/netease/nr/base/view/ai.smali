.class Lcom/netease/nr/base/view/ai;
.super Landroid/view/View;


# instance fields
.field final synthetic a:Lcom/netease/nr/base/view/LineIndicator;

.field private b:Landroid/graphics/Rect;

.field private c:Landroid/graphics/Rect;

.field private d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/netease/nr/base/view/LineIndicator;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/netease/nr/base/view/ai;->a:Lcom/netease/nr/base/view/LineIndicator;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/base/view/ai;->b:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/base/view/ai;->c:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method a(I)V
    .locals 0

    return-void
.end method

.method a(II)V
    .locals 3

    if-lez p1, :cond_0

    if-ltz p2, :cond_0

    if-lt p2, p1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/base/view/ai;->b:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    invoke-virtual {p0}, Lcom/netease/nr/base/view/ai;->invalidate()V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/netease/nr/base/view/ai;->getWidth()I

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/netease/nr/base/view/aj;

    invoke-direct {v0, p0, p1, p2}, Lcom/netease/nr/base/view/aj;-><init>(Lcom/netease/nr/base/view/ai;II)V

    iput-object v0, p0, Lcom/netease/nr/base/view/ai;->d:Ljava/lang/Runnable;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/nr/base/view/ai;->d:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/netease/nr/base/view/ai;->getWidth()I

    move-result v0

    div-int/2addr v0, p1

    iget-object v1, p0, Lcom/netease/nr/base/view/ai;->b:Landroid/graphics/Rect;

    mul-int v2, p2, v0

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/netease/nr/base/view/ai;->b:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/netease/nr/base/view/ai;->b:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, p1, -0x1

    if-ne p2, v0, :cond_3

    iget-object v0, p0, Lcom/netease/nr/base/view/ai;->b:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/netease/nr/base/view/ai;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    :cond_3
    invoke-virtual {p0}, Lcom/netease/nr/base/view/ai;->invalidate()V

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/netease/nr/base/view/ai;->c:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/netease/nr/base/view/ai;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/netease/nr/base/view/ai;->c:Landroid/graphics/Rect;

    iput v3, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/netease/nr/base/view/ai;->c:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/netease/nr/base/view/ai;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/netease/nr/base/view/ai;->c:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/base/view/ai;->c:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/netease/nr/base/view/ai;->c:Landroid/graphics/Rect;

    iput v3, v0, Landroid/graphics/Rect;->left:I

    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/netease/nr/base/view/ai;->c:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Lcom/netease/nr/base/view/ai;->a:Lcom/netease/nr/base/view/LineIndicator;

    invoke-static {v0}, Lcom/netease/nr/base/view/LineIndicator;->a(Lcom/netease/nr/base/view/LineIndicator;)I

    move-result v0

    invoke-virtual {p0}, Lcom/netease/nr/base/view/ai;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/util/j/a;->a(Landroid/content/Context;)Lcom/netease/util/j/a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netease/nr/base/view/ai;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/netease/util/j/a;->a(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/netease/nr/base/view/ai;->a:Lcom/netease/nr/base/view/LineIndicator;

    invoke-static {v0}, Lcom/netease/nr/base/view/LineIndicator;->b(Lcom/netease/nr/base/view/LineIndicator;)I

    move-result v0

    :cond_2
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/netease/nr/base/view/ai;->c:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/netease/nr/base/view/ai;->getWidth()I

    move-result v1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/netease/nr/base/view/ai;->c:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/netease/nr/base/view/ai;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    iget-object v0, p0, Lcom/netease/nr/base/view/ai;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/ai;->d:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
