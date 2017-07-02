.class Lcom/tencent/plus/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tencent/plus/ImageActivity;


# direct methods
.method constructor <init>(Lcom/tencent/plus/ImageActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/plus/j;->a:Lcom/tencent/plus/ImageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const-wide/16 v4, 0x0

    const/16 v1, 0x15

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tencent/plus/j;->a:Lcom/tencent/plus/ImageActivity;

    invoke-static {v0}, Lcom/tencent/plus/ImageActivity;->d(Lcom/tencent/plus/ImageActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/plus/j;->a:Lcom/tencent/plus/ImageActivity;

    invoke-static {v0}, Lcom/tencent/plus/ImageActivity;->e(Lcom/tencent/plus/ImageActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/tencent/plus/j;->a:Lcom/tencent/plus/ImageActivity;

    invoke-static {v0}, Lcom/tencent/plus/ImageActivity;->e(Lcom/tencent/plus/ImageActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/tencent/plus/j;->a:Lcom/tencent/plus/ImageActivity;

    invoke-static {v0}, Lcom/tencent/plus/ImageActivity;->f(Lcom/tencent/plus/ImageActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/tencent/plus/j;->a:Lcom/tencent/plus/ImageActivity;

    invoke-static {v0}, Lcom/tencent/plus/ImageActivity;->f(Lcom/tencent/plus/ImageActivity;)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x24

    const/16 v2, 0x5e

    const/16 v3, 0x86

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tencent/plus/l;

    invoke-direct {v1, p0}, Lcom/tencent/plus/l;-><init>(Lcom/tencent/plus/j;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/tencent/plus/j;->a:Lcom/tencent/plus/ImageActivity;

    invoke-static {v0}, Lcom/tencent/plus/ImageActivity;->h(Lcom/tencent/plus/ImageActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/plus/j;->a:Lcom/tencent/plus/ImageActivity;

    const-string v1, "10657"

    invoke-virtual {v0, v1, v4, v5}, Lcom/tencent/plus/ImageActivity;->a(Ljava/lang/String;J)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/tencent/plus/j;->a:Lcom/tencent/plus/ImageActivity;

    invoke-static {v2}, Lcom/tencent/plus/ImageActivity;->i(Lcom/tencent/plus/ImageActivity;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/tencent/plus/j;->a:Lcom/tencent/plus/ImageActivity;

    const-string v3, "10655"

    invoke-virtual {v2, v3, v0, v1}, Lcom/tencent/plus/ImageActivity;->a(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/tencent/plus/j;->a:Lcom/tencent/plus/ImageActivity;

    invoke-static {v0}, Lcom/tencent/plus/ImageActivity;->c(Lcom/tencent/plus/ImageActivity;)Lcom/tencent/plus/TouchView;

    move-result-object v0

    iget-boolean v0, v0, Lcom/tencent/plus/TouchView;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/plus/j;->a:Lcom/tencent/plus/ImageActivity;

    const-string v1, "10654"

    invoke-virtual {v0, v1, v4, v5}, Lcom/tencent/plus/ImageActivity;->a(Ljava/lang/String;J)V

    goto :goto_0
.end method
