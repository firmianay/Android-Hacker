.class Lcom/netease/nr/base/view/draggrid/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/netease/nr/base/view/draggrid/j;


# direct methods
.method constructor <init>(Lcom/netease/nr/base/view/draggrid/j;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/base/view/draggrid/k;->a:Lcom/netease/nr/base/view/draggrid/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v1, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v2, p0, Lcom/netease/nr/base/view/draggrid/k;->a:Lcom/netease/nr/base/view/draggrid/j;

    iget-wide v3, v2, Lcom/netease/nr/base/view/draggrid/j;->e:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    iget-object v2, p0, Lcom/netease/nr/base/view/draggrid/k;->a:Lcom/netease/nr/base/view/draggrid/j;

    iget v7, v2, Lcom/netease/nr/base/view/draggrid/j;->b:I

    long-to-float v2, v5

    int-to-float v8, v7

    div-float/2addr v2, v8

    iget-object v8, p0, Lcom/netease/nr/base/view/draggrid/k;->a:Lcom/netease/nr/base/view/draggrid/j;

    iget-boolean v8, v8, Lcom/netease/nr/base/view/draggrid/j;->f:Z

    if-nez v8, :cond_0

    sub-float v2, v0, v2

    :cond_0
    cmpl-float v8, v2, v0

    if-lez v8, :cond_3

    :goto_0
    iget-object v1, p0, Lcom/netease/nr/base/view/draggrid/k;->a:Lcom/netease/nr/base/view/draggrid/j;

    iget v1, v1, Lcom/netease/nr/base/view/draggrid/j;->g:F

    iget-object v2, p0, Lcom/netease/nr/base/view/draggrid/k;->a:Lcom/netease/nr/base/view/draggrid/j;

    iput v0, v2, Lcom/netease/nr/base/view/draggrid/j;->g:F

    iget-object v2, p0, Lcom/netease/nr/base/view/draggrid/k;->a:Lcom/netease/nr/base/view/draggrid/j;

    iget-object v2, v2, Lcom/netease/nr/base/view/draggrid/j;->c:Lcom/netease/nr/base/view/draggrid/l;

    invoke-interface {v2, v0, v1}, Lcom/netease/nr/base/view/draggrid/l;->a(FF)V

    const-wide/16 v0, 0x21

    div-long v0, v5, v0

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x21

    int-to-long v0, v0

    add-long/2addr v0, v3

    int-to-long v2, v7

    cmp-long v2, v5, v2

    if-gez v2, :cond_1

    iget-object v2, p0, Lcom/netease/nr/base/view/draggrid/k;->a:Lcom/netease/nr/base/view/draggrid/j;

    iget-object v2, v2, Lcom/netease/nr/base/view/draggrid/j;->a:Landroid/os/Handler;

    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    :cond_1
    int-to-long v0, v7

    cmp-long v0, v5, v0

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/netease/nr/base/view/draggrid/k;->a:Lcom/netease/nr/base/view/draggrid/j;

    iget-object v0, v0, Lcom/netease/nr/base/view/draggrid/j;->c:Lcom/netease/nr/base/view/draggrid/l;

    invoke-interface {v0}, Lcom/netease/nr/base/view/draggrid/l;->b()V

    iget-object v0, p0, Lcom/netease/nr/base/view/draggrid/k;->a:Lcom/netease/nr/base/view/draggrid/j;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/netease/nr/base/view/draggrid/j;->d:Z

    :cond_2
    return-void

    :cond_3
    cmpg-float v0, v2, v1

    if-gez v0, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_0
.end method
