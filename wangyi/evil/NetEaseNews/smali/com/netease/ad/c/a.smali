.class public abstract Lcom/netease/ad/c/a;
.super Landroid/os/AsyncTask;


# instance fields
.field a:Lcom/netease/ad/c/e;

.field protected b:Lcom/netease/ad/a/a/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object v0, p0, Lcom/netease/ad/c/a;->a:Lcom/netease/ad/c/e;

    iput-object v0, p0, Lcom/netease/ad/c/a;->b:Lcom/netease/ad/a/a/b;

    return-void
.end method


# virtual methods
.method abstract a()Lcom/netease/ad/a/a/f;
.end method

.method abstract a(Ljava/io/InputStream;)Lcom/netease/ad/e/a;
.end method

.method protected varargs a([Lcom/netease/ad/a/a/f;)Lcom/netease/ad/e/a;
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/netease/ad/a/a/b;->b()Lcom/netease/ad/a/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ad/c/a;->b:Lcom/netease/ad/a/a/b;

    iget-object v0, p0, Lcom/netease/ad/c/a;->b:Lcom/netease/ad/a/a/b;

    aget-object v1, p1, v1

    invoke-virtual {v1}, Lcom/netease/ad/a/a/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/ad/a/a/b;->a(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/netease/ad/c/a;->b:Lcom/netease/ad/a/a/b;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/netease/ad/a/a/b;->a(Lcom/netease/ad/a/a/f;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/ad/c/a;->a(Ljava/io/InputStream;)Lcom/netease/ad/e/a;
    :try_end_0
    .catch Lcom/netease/ad/a/a/h; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/netease/ad/a/a/g; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/netease/ad/a/a/j; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v1, v0

    new-instance v0, Lcom/netease/ad/e/a;

    invoke-direct {v0, v1}, Lcom/netease/ad/e/a;-><init>(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v1, v0

    new-instance v0, Lcom/netease/ad/e/a;

    invoke-direct {v0, v1}, Lcom/netease/ad/e/a;-><init>(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v1, v0

    new-instance v0, Lcom/netease/ad/e/a;

    invoke-direct {v0, v1}, Lcom/netease/ad/e/a;-><init>(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public a(Lcom/netease/ad/c/e;)V
    .locals 3

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/netease/ad/c/a;->a:Lcom/netease/ad/c/e;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/netease/ad/a/a/f;

    invoke-virtual {p0}, Lcom/netease/ad/c/a;->a()Lcom/netease/ad/a/a/f;

    move-result-object v1

    aput-object v1, v0, v2

    aget-object v1, v0, v2

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/netease/ad/c/a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method protected a(Lcom/netease/ad/e/a;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/netease/ad/c/a;->a:Lcom/netease/ad/c/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ad/c/a;->a:Lcom/netease/ad/c/e;

    invoke-interface {v0, p1}, Lcom/netease/ad/c/e;->a(Lcom/netease/ad/e/a;)V

    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Lcom/netease/ad/a/a/f;

    invoke-virtual {p0, p1}, Lcom/netease/ad/c/a;->a([Lcom/netease/ad/a/a/f;)Lcom/netease/ad/e/a;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/ad/c/a;->a:Lcom/netease/ad/c/e;

    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/netease/ad/e/a;

    invoke-virtual {p0, p1}, Lcom/netease/ad/c/a;->a(Lcom/netease/ad/e/a;)V

    return-void
.end method
