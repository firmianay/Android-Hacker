.class public Lcom/netease/b/e;
.super Lcom/netease/b/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/netease/b/a;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/netease/b/e;->c()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "fileName"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "lineCount"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Landroid/os/Bundle;)V
    .locals 3

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "fileName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "lineCount"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0}, Lcom/netease/b/e;->b()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/netease/b/e;->b(Landroid/content/Context;Ljava/lang/String;I)Z

    sget-boolean v1, Lcom/netease/b/g;->a:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/netease/b/e;->b()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/netease/b/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
