.class public Lcom/netease/ad/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/ad/c/e;


# instance fields
.field protected a:Ljava/lang/Runnable;

.field b:Ljava/util/List;

.field protected c:Landroid/os/Handler;

.field protected d:Ljava/util/HashMap;

.field e:Lcom/netease/ad/d;

.field f:Lcom/netease/ad/c/c;

.field private g:Z

.field private final h:J

.field private i:J

.field private j:J

.field private k:Ljava/util/Random;


# direct methods
.method constructor <init>()V
    .locals 3

    const-wide/32 v1, 0x927c0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/netease/ad/b;

    invoke-direct {v0, p0}, Lcom/netease/ad/b;-><init>(Lcom/netease/ad/a;)V

    iput-object v0, p0, Lcom/netease/ad/a;->a:Ljava/lang/Runnable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/ad/a;->b:Ljava/util/List;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/netease/ad/a;->c:Landroid/os/Handler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/ad/a;->g:Z

    iput-wide v1, p0, Lcom/netease/ad/a;->h:J

    iput-wide v1, p0, Lcom/netease/ad/a;->i:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/netease/ad/a;->j:J

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/netease/ad/a;->k:Ljava/util/Random;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/ad/a;->d:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/ad/a;->f:Lcom/netease/ad/c/c;

    return-void
.end method


# virtual methods
.method public a()Lcom/netease/ad/e;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netease/ad/a;->a(Ljava/lang/String;)Lcom/netease/ad/e;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/netease/ad/e;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/netease/ad/a;->b(Ljava/lang/String;)Lcom/netease/ad/b/j;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/netease/ad/e;

    invoke-direct {v0, v1}, Lcom/netease/ad/e;-><init>(Lcom/netease/ad/b/j;)V

    goto :goto_0
.end method

.method public a(Lcom/netease/ad/d;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/ad/a;->e:Lcom/netease/ad/d;

    return-void
.end method

.method public a(Lcom/netease/ad/e/a;)V
    .locals 5

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/ad/a;->f:Lcom/netease/ad/c/c;

    if-eqz p1, :cond_3

    iget v0, p1, Lcom/netease/ad/e/a;->c:I

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/netease/ad/e/a;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netease/ad/a;->j:J

    move-object v0, p1

    check-cast v0, Lcom/netease/ad/e/c;

    invoke-virtual {v0}, Lcom/netease/ad/e/c;->c()I

    move-result v0

    if-lez v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/netease/ad/e/c;

    invoke-virtual {v0}, Lcom/netease/ad/e/c;->c()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/netease/ad/a;->i:J

    :goto_0
    check-cast p1, Lcom/netease/ad/e/c;

    invoke-virtual {p1}, Lcom/netease/ad/e/c;->b()[Lcom/netease/ad/b/j;

    move-result-object v1

    if-eqz v1, :cond_1

    array-length v0, v1

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/netease/ad/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    iget-object v4, p0, Lcom/netease/ad/a;->b:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    const-wide/32 v0, 0x927c0

    iput-wide v0, p0, Lcom/netease/ad/a;->i:J

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netease/ad/a;->e:Lcom/netease/ad/d;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/ad/a;->e:Lcom/netease/ad/d;

    invoke-interface {v0, p0}, Lcom/netease/ad/d;->a(Lcom/netease/ad/a;)V

    :cond_2
    :goto_2
    return-void

    :cond_3
    iget v0, p1, Lcom/netease/ad/e/a;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/netease/ad/a;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netease/ad/a;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lcom/netease/ad/a;->g:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/ad/a;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netease/ad/a;->a:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2
.end method

.method public a(Ljava/util/HashMap;)V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/netease/ad/a;->j:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/ad/a;->g:Z

    iget-object v0, p0, Lcom/netease/ad/a;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/netease/ad/a;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/netease/ad/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-string v0, "category"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "location"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0}, Lcom/netease/ad/f/f;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "params must contain \'category\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {v1}, Lcom/netease/ad/f/f;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "params must contain \'location\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/netease/ad/a;->c:Landroid/os/Handler;

    new-instance v1, Lcom/netease/ad/c;

    invoke-direct {v1, p0}, Lcom/netease/ad/c;-><init>(Lcom/netease/ad/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method b(Ljava/lang/String;)Lcom/netease/ad/b/j;
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/netease/ad/a;->f:Lcom/netease/ad/c/c;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/netease/ad/a;->i:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/netease/ad/a;->j:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/netease/ad/a;->j:J

    sub-long/2addr v0, v4

    iget-wide v4, p0, Lcom/netease/ad/a;->i:J

    cmp-long v0, v0, v4

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ad/a;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netease/ad/a;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lcom/netease/ad/a;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ad/a;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netease/ad/a;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p0, Lcom/netease/ad/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v3

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netease/ad/a;->b:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    iget-object v0, p0, Lcom/netease/ad/a;->k:Ljava/util/Random;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    const/4 v0, 0x0

    move v2, v1

    move v1, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ad/b/j;

    int-to-float v2, v2

    invoke-virtual {v0}, Lcom/netease/ad/b/j;->d()F

    move-result v5

    sub-float/2addr v2, v5

    float-to-int v2, v2

    if-lez v2, :cond_1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/netease/ad/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ad/b/j;

    invoke-virtual {v0}, Lcom/netease/ad/b/j;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    move-object v0, v3

    goto :goto_0
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/ad/a;->g:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/netease/ad/a;->j:J

    iget-object v0, p0, Lcom/netease/ad/a;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netease/ad/a;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/netease/ad/a;->f:Lcom/netease/ad/c/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ad/a;->f:Lcom/netease/ad/c/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/ad/c/c;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method protected c()V
    .locals 2

    iget-boolean v0, p0, Lcom/netease/ad/a;->g:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/ad/a;->f:Lcom/netease/ad/c/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/ad/a;->f:Lcom/netease/ad/c/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/ad/c/c;->cancel(Z)Z

    :cond_1
    new-instance v0, Lcom/netease/ad/c/c;

    iget-object v1, p0, Lcom/netease/ad/a;->d:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Lcom/netease/ad/c/c;-><init>(Ljava/util/HashMap;)V

    iput-object v0, p0, Lcom/netease/ad/a;->f:Lcom/netease/ad/c/c;

    iget-object v0, p0, Lcom/netease/ad/a;->f:Lcom/netease/ad/c/c;

    invoke-virtual {v0, p0}, Lcom/netease/ad/c/c;->a(Lcom/netease/ad/c/e;)V

    goto :goto_0
.end method
