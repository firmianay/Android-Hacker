.class public Lcom/tencent/open/t;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/tencent/open/m;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/tencent/open/t;->b(Lcom/tencent/open/m;)V

    invoke-static {p1}, Lcom/tencent/a/a/c;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static varargs a(Lcom/tencent/open/m;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lcom/tencent/open/t;->b(Lcom/tencent/open/m;)V

    invoke-virtual {p0}, Lcom/tencent/open/m;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/tencent/a/a/c;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static a(Lcom/tencent/open/m;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/tencent/open/m;->e()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/open/m;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/open/j;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/open/j;

    move-result-object v0

    const-string v1, "Common_ta_enable"

    invoke-virtual {v0, v1}, Lcom/tencent/open/j;->d(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static b(Lcom/tencent/open/m;)V
    .locals 1

    invoke-static {p0}, Lcom/tencent/open/t;->a(Lcom/tencent/open/m;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/tencent/a/a/a;->a(Z)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/a/a/a;->a(Z)V

    goto :goto_0
.end method

.method public static b(Lcom/tencent/open/m;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lcom/tencent/open/t;->b(Lcom/tencent/open/m;)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/tencent/open/m;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/tencent/a/a/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
