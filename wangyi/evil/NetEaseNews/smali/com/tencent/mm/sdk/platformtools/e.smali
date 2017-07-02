.class public Lcom/tencent/mm/sdk/platformtools/e;
.super Landroid/os/Handler;


# instance fields
.field private final a:I

.field private final b:Z

.field private c:J

.field private final d:Lcom/tencent/mm/sdk/platformtools/f;


# virtual methods
.method public a()V
    .locals 1

    iget v0, p0, Lcom/tencent/mm/sdk/platformtools/e;->a:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/sdk/platformtools/e;->removeMessages(I)V

    return-void
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/tencent/mm/sdk/platformtools/e;->a()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    iget v1, p0, Lcom/tencent/mm/sdk/platformtools/e;->a:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/sdk/platformtools/e;->d:Lcom/tencent/mm/sdk/platformtools/f;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/sdk/platformtools/e;->d:Lcom/tencent/mm/sdk/platformtools/f;

    invoke-interface {v0}, Lcom/tencent/mm/sdk/platformtools/f;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/mm/sdk/platformtools/e;->b:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tencent/mm/sdk/platformtools/e;->a:I

    iget-wide v1, p0, Lcom/tencent/mm/sdk/platformtools/e;->c:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/e;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
