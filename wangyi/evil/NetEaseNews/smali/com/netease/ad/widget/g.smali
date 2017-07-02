.class public Lcom/netease/ad/widget/g;
.super Landroid/widget/ImageView;


# instance fields
.field a:J

.field b:Z

.field c:Z

.field d:Lcom/netease/ad/d/a/a;

.field e:Lcom/netease/ad/d/a/a;

.field f:Z

.field private g:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/netease/ad/widget/g;->a:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/ad/widget/g;->b:Z

    iput-boolean v2, p0, Lcom/netease/ad/widget/g;->c:Z

    iput-object v3, p0, Lcom/netease/ad/widget/g;->d:Lcom/netease/ad/d/a/a;

    iput-object v3, p0, Lcom/netease/ad/widget/g;->e:Lcom/netease/ad/d/a/a;

    iput-boolean v2, p0, Lcom/netease/ad/widget/g;->f:Z

    new-instance v0, Lcom/netease/ad/widget/i;

    invoke-direct {v0, p0}, Lcom/netease/ad/widget/i;-><init>(Lcom/netease/ad/widget/g;)V

    iput-object v0, p0, Lcom/netease/ad/widget/g;->g:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public a(Lcom/netease/ad/d/a/a;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/netease/ad/widget/g;->d:Lcom/netease/ad/d/a/a;

    iget-object v0, p0, Lcom/netease/ad/widget/g;->d:Lcom/netease/ad/d/a/a;

    iput-object v0, p0, Lcom/netease/ad/widget/g;->e:Lcom/netease/ad/d/a/a;

    if-nez p1, :cond_0

    iput-boolean v1, p0, Lcom/netease/ad/widget/g;->f:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netease/ad/widget/g;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/netease/ad/d/a/a;->c:Lcom/netease/ad/d/a/a;

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lcom/netease/ad/widget/g;->f:Z

    iget-object v0, p0, Lcom/netease/ad/widget/g;->e:Lcom/netease/ad/d/a/a;

    iget-object v0, v0, Lcom/netease/ad/d/a/a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/netease/ad/widget/g;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_1
    iput-boolean v2, p0, Lcom/netease/ad/widget/g;->f:Z

    iput-boolean v2, p0, Lcom/netease/ad/widget/g;->c:Z

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/netease/ad/widget/g;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/ad/widget/g;->c:Z

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/ad/widget/g;->c:Z

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/netease/ad/widget/g;->c:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/netease/ad/widget/g;->f:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/netease/ad/widget/g;->b:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/ad/widget/g;->b:Z

    iget-object v0, p0, Lcom/netease/ad/widget/g;->e:Lcom/netease/ad/d/a/a;

    iget-object v0, v0, Lcom/netease/ad/d/a/a;->c:Lcom/netease/ad/d/a/a;

    iput-object v0, p0, Lcom/netease/ad/widget/g;->e:Lcom/netease/ad/d/a/a;

    iget-object v0, p0, Lcom/netease/ad/widget/g;->e:Lcom/netease/ad/d/a/a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/ad/widget/g;->d:Lcom/netease/ad/d/a/a;

    iput-object v0, p0, Lcom/netease/ad/widget/g;->e:Lcom/netease/ad/d/a/a;

    :cond_0
    new-instance v0, Lcom/netease/ad/widget/h;

    invoke-direct {v0, p0}, Lcom/netease/ad/widget/h;-><init>(Lcom/netease/ad/widget/g;)V

    iget-object v1, p0, Lcom/netease/ad/widget/g;->e:Lcom/netease/ad/d/a/a;

    iget v1, v1, Lcom/netease/ad/d/a/a;->b:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/netease/ad/widget/g;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method
