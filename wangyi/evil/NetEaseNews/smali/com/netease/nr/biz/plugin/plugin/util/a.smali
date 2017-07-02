.class public abstract Lcom/netease/nr/biz/plugin/plugin/util/a;
.super Ljava/lang/Object;


# instance fields
.field a:Landroid/content/Context;

.field b:Ljava/lang/String;

.field c:I

.field d:I

.field e:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public n()I
    .locals 1

    iget v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/a;->c:I

    return v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public p()I
    .locals 1

    iget v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/a;->d:I

    return v0
.end method

.method public q()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/a;->e:Z

    return v0
.end method

.method public r()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final s()Z
    .locals 7

    const/4 v6, 0x1

    const/4 v0, 0x0

    iget v1, p0, Lcom/netease/nr/biz/plugin/plugin/util/a;->d:I

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/netease/nr/biz/plugin/plugin/util/a;->a:Landroid/content/Context;

    const-string v2, "plugin_conf"

    const-string v3, "plugin_%d_new"

    new-array v4, v6, [Ljava/lang/Object;

    iget v5, p0, Lcom/netease/nr/biz/plugin/plugin/util/a;->d:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0, v6}, Lcom/netease/util/g/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public final t()Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/plugin/util/a;->s()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/netease/nr/biz/plugin/plugin/util/a;->a:Landroid/content/Context;

    const-string v3, "plugin_conf"

    const-string v4, "plugin_%d_new"

    new-array v5, v0, [Ljava/lang/Object;

    iget v6, p0, Lcom/netease/nr/biz/plugin/plugin/util/a;->d:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v1}, Lcom/netease/util/g/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
