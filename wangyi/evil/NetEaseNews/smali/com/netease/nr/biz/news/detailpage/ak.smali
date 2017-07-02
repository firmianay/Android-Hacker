.class Lcom/netease/nr/biz/news/detailpage/ak;
.super Landroid/os/AsyncTask;

# interfaces
.implements Lcom/netease/util/cache/j;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/news/detailpage/ag;

.field private b:Landroid/content/Context;

.field private c:Lcom/netease/nr/biz/news/detailpage/ai;

.field private d:I

.field private e:Z


# direct methods
.method private constructor <init>(Lcom/netease/nr/biz/news/detailpage/ag;Landroid/content/Context;Lcom/netease/nr/biz/news/detailpage/ai;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/nr/biz/news/detailpage/ak;->a:Lcom/netease/nr/biz/news/detailpage/ag;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/netease/nr/biz/news/detailpage/ak;->d:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/nr/biz/news/detailpage/ak;->e:Z

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/news/detailpage/ak;->b:Landroid/content/Context;

    new-instance v0, Lcom/netease/nr/biz/news/detailpage/ai;

    const/4 v1, 0x0

    invoke-direct {v0, p3, v1}, Lcom/netease/nr/biz/news/detailpage/ai;-><init>(Lcom/netease/nr/biz/news/detailpage/ai;Lcom/netease/nr/biz/news/detailpage/ah;)V

    iput-object v0, p0, Lcom/netease/nr/biz/news/detailpage/ak;->c:Lcom/netease/nr/biz/news/detailpage/ai;

    invoke-static {p2}, Lcom/netease/util/i/b;->b(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/nr/biz/news/detailpage/ak;->e:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/nr/biz/news/detailpage/ag;Landroid/content/Context;Lcom/netease/nr/biz/news/detailpage/ai;Lcom/netease/nr/biz/news/detailpage/ah;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/netease/nr/biz/news/detailpage/ak;-><init>(Lcom/netease/nr/biz/news/detailpage/ag;Landroid/content/Context;Lcom/netease/nr/biz/news/detailpage/ai;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/ak;->c:Lcom/netease/nr/biz/news/detailpage/ai;

    invoke-static {v0}, Lcom/netease/nr/biz/news/detailpage/ai;->c(Lcom/netease/nr/biz/news/detailpage/ai;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/ak;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/netease/util/c/e;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_1

    :goto_1
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/ak;->b:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/netease/nr/base/c/a/d;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/netease/nr/base/c/a/d;

    move-result-object v1

    new-instance v2, Lcom/netease/util/cache/i;

    invoke-direct {v2}, Lcom/netease/util/cache/i;-><init>()V

    iget-object v3, p0, Lcom/netease/nr/biz/news/detailpage/ak;->c:Lcom/netease/nr/biz/news/detailpage/ai;

    invoke-static {v3}, Lcom/netease/nr/biz/news/detailpage/ai;->c(Lcom/netease/nr/biz/news/detailpage/ai;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/netease/util/cache/i;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/nr/biz/news/detailpage/ak;->c:Lcom/netease/nr/biz/news/detailpage/ai;

    invoke-static {v3}, Lcom/netease/nr/biz/news/detailpage/ai;->e(Lcom/netease/nr/biz/news/detailpage/ai;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/netease/util/cache/i;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/nr/biz/news/detailpage/ak;->c:Lcom/netease/nr/biz/news/detailpage/ai;

    invoke-static {v3}, Lcom/netease/nr/biz/news/detailpage/ai;->f(Lcom/netease/nr/biz/news/detailpage/ai;)Z

    move-result v3

    iput-boolean v3, v2, Lcom/netease/util/cache/i;->b:Z

    iget-object v3, p0, Lcom/netease/nr/biz/news/detailpage/ak;->b:Landroid/content/Context;

    iget-object v4, p0, Lcom/netease/nr/biz/news/detailpage/ak;->c:Lcom/netease/nr/biz/news/detailpage/ai;

    invoke-static {v4}, Lcom/netease/nr/biz/news/detailpage/ai;->d(Lcom/netease/nr/biz/news/detailpage/ai;)Z

    move-result v4

    invoke-virtual {v1, v3, p0, v2, v4}, Lcom/netease/nr/base/c/a/d;->a(Landroid/content/Context;Lcom/netease/util/cache/j;Lcom/netease/util/cache/i;Z)Z

    move-result v1

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

.method public a()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/news/detailpage/ak;->a([Ljava/lang/Integer;)V

    return-void
.end method

.method public a(I)V
    .locals 3

    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/news/detailpage/ak;->publishProgress([Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/ak;->a:Lcom/netease/nr/biz/news/detailpage/ag;

    invoke-virtual {v0}, Lcom/netease/nr/biz/news/detailpage/ag;->c()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/ak;->a:Lcom/netease/nr/biz/news/detailpage/ag;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/news/detailpage/ag;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Lcom/netease/nr/biz/news/detailpage/aj;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/netease/nr/biz/news/detailpage/aj;-><init>(Lcom/netease/nr/biz/news/detailpage/ah;)V

    iget-object v2, p0, Lcom/netease/nr/biz/news/detailpage/ak;->c:Lcom/netease/nr/biz/news/detailpage/ai;

    invoke-static {v2}, Lcom/netease/nr/biz/news/detailpage/ai;->c(Lcom/netease/nr/biz/news/detailpage/ai;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/nr/biz/news/detailpage/aj;->a(Lcom/netease/nr/biz/news/detailpage/aj;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/netease/nr/biz/news/detailpage/aj;->b(Lcom/netease/nr/biz/news/detailpage/aj;Ljava/lang/String;)Ljava/lang/String;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/ak;->a:Lcom/netease/nr/biz/news/detailpage/ag;

    invoke-virtual {v1, v0}, Lcom/netease/nr/biz/news/detailpage/ag;->handleMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method protected varargs a([Ljava/lang/Integer;)V
    .locals 5

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/netease/nr/biz/news/detailpage/ak;->d:I

    iput v0, p0, Lcom/netease/nr/biz/news/detailpage/ak;->d:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    div-int/lit8 v1, v1, 0xa

    div-int/lit8 v2, v0, 0xa

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/ak;->a:Lcom/netease/nr/biz/news/detailpage/ag;

    invoke-virtual {v1}, Lcom/netease/nr/biz/news/detailpage/ag;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/ak;->a:Lcom/netease/nr/biz/news/detailpage/ag;

    invoke-static {v1}, Lcom/netease/nr/biz/news/detailpage/ag;->a(Lcom/netease/nr/biz/news/detailpage/ag;)Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->e()Lcom/netease/nr/biz/news/detailpage/NeteaseWebView;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:updateProgress(\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/nr/biz/news/detailpage/ak;->c:Lcom/netease/nr/biz/news/detailpage/ai;

    invoke-static {v3}, Lcom/netease/nr/biz/news/detailpage/ai;->b(Lcom/netease/nr/biz/news/detailpage/ai;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\', "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/netease/nr/biz/news/detailpage/ak;->a:Lcom/netease/nr/biz/news/detailpage/ag;

    iget-object v3, p0, Lcom/netease/nr/biz/news/detailpage/ak;->c:Lcom/netease/nr/biz/news/detailpage/ai;

    invoke-static {v3}, Lcom/netease/nr/biz/news/detailpage/ai;->d(Lcom/netease/nr/biz/news/detailpage/ai;)Z

    move-result v3

    iget-object v4, p0, Lcom/netease/nr/biz/news/detailpage/ak;->c:Lcom/netease/nr/biz/news/detailpage/ai;

    invoke-static {v4}, Lcom/netease/nr/biz/news/detailpage/ai;->b(Lcom/netease/nr/biz/news/detailpage/ai;)I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/netease/nr/biz/news/detailpage/ag;->a(Lcom/netease/nr/biz/news/detailpage/ag;ZI)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/netease/nr/biz/news/detailpage/ak;->e:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ");"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/nr/base/c/aa;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/news/detailpage/ak;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/news/detailpage/ak;->a([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/news/detailpage/ak;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/news/detailpage/ak;->a([Ljava/lang/Integer;)V

    return-void
.end method
