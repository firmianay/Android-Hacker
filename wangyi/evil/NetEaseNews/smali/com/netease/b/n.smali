.class public Lcom/netease/b/n;
.super Lcom/netease/b/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/netease/b/a;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/os/Bundle;)V
    .locals 4

    invoke-virtual {p0}, Lcom/netease/b/n;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "muas_generalbody"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/netease/b/n;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {p0}, Lcom/netease/b/b;->c(Lcom/netease/b/a;)Z

    :goto_0
    return-void

    :cond_1
    new-instance v1, Lcom/netease/b/o;

    invoke-virtual {p0}, Lcom/netease/b/n;->b()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/netease/b/o;-><init>(Lcom/netease/b/n;Landroid/content/Context;Ljava/util/List;Lcom/netease/b/o;)V

    invoke-virtual {v1}, Lcom/netease/b/o;->start()V

    goto :goto_0
.end method

.method protected a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected g()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
