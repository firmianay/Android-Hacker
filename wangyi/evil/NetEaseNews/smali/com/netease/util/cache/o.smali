.class public Lcom/netease/util/cache/o;
.super Ljava/lang/Object;


# direct methods
.method public static a()J
    .locals 4

    const-wide/16 v0, 0x0

    invoke-static {}, Lcom/netease/util/cache/p;->a()Lcom/netease/util/cache/p;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/netease/util/cache/p;->i()J

    move-result-wide v0

    :cond_0
    invoke-static {}, Lcom/netease/util/cache/q;->a()Lcom/netease/util/cache/q;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/netease/util/cache/q;->i()J

    move-result-wide v2

    add-long/2addr v0, v2

    :cond_1
    invoke-static {}, Lcom/netease/util/cache/a;->a()Lcom/netease/util/cache/a;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/netease/util/cache/a;->i()J

    move-result-wide v2

    add-long/2addr v0, v2

    :cond_2
    invoke-static {}, Lcom/netease/util/cache/d;->a()Lcom/netease/util/cache/d;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/netease/util/cache/d;->i()J

    move-result-wide v2

    add-long/2addr v0, v2

    :cond_3
    return-wide v0
.end method

.method public static a(Landroid/content/Context;Lcom/netease/util/cache/c;)Lcom/netease/util/cache/a;
    .locals 1

    invoke-static {p0, p1}, Lcom/netease/util/cache/a;->a(Landroid/content/Context;Lcom/netease/util/cache/c;)Lcom/netease/util/cache/a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/netease/util/cache/n;)Lcom/netease/util/cache/p;
    .locals 1

    invoke-static {p0, p1}, Lcom/netease/util/cache/p;->a(Landroid/content/Context;Lcom/netease/util/cache/n;)Lcom/netease/util/cache/p;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/netease/util/cache/p;->a()Lcom/netease/util/cache/p;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/netease/util/cache/p;->c(Landroid/content/Context;)V

    :cond_0
    invoke-static {}, Lcom/netease/util/cache/q;->a()Lcom/netease/util/cache/q;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/netease/util/cache/q;->c(Landroid/content/Context;)V

    :cond_1
    invoke-static {}, Lcom/netease/util/cache/a;->a()Lcom/netease/util/cache/a;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Lcom/netease/util/cache/a;->c(Landroid/content/Context;)V

    :cond_2
    invoke-static {}, Lcom/netease/util/cache/d;->a()Lcom/netease/util/cache/d;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, p0}, Lcom/netease/util/cache/d;->c(Landroid/content/Context;)V

    :cond_3
    return-void
.end method

.method public static b()V
    .locals 1

    invoke-static {}, Lcom/netease/util/cache/p;->a()Lcom/netease/util/cache/p;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netease/util/cache/p;->c()V

    :cond_0
    invoke-static {}, Lcom/netease/util/cache/q;->a()Lcom/netease/util/cache/q;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/netease/util/cache/q;->c()V

    :cond_1
    invoke-static {}, Lcom/netease/util/cache/a;->a()Lcom/netease/util/cache/a;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/netease/util/cache/a;->c()V

    :cond_2
    invoke-static {}, Lcom/netease/util/cache/d;->a()Lcom/netease/util/cache/d;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/netease/util/cache/d;->c()V

    :cond_3
    return-void
.end method

.method public static c()V
    .locals 1

    invoke-static {}, Lcom/netease/util/cache/p;->a()Lcom/netease/util/cache/p;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netease/util/cache/p;->g()V

    :cond_0
    invoke-static {}, Lcom/netease/util/cache/q;->a()Lcom/netease/util/cache/q;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/netease/util/cache/q;->g()V

    :cond_1
    invoke-static {}, Lcom/netease/util/cache/a;->a()Lcom/netease/util/cache/a;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/netease/util/cache/a;->g()V

    :cond_2
    invoke-static {}, Lcom/netease/util/cache/d;->a()Lcom/netease/util/cache/d;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/netease/util/cache/d;->g()V

    :cond_3
    return-void
.end method
