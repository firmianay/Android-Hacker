.class public Lcom/netease/util/cache/h;
.super Landroid/os/AsyncTask;

# interfaces
.implements Lcom/netease/util/cache/j;


# instance fields
.field final synthetic a:Lcom/netease/util/cache/f;

.field private final b:Ljava/lang/ref/WeakReference;

.field private c:Lorg/apache/http/client/methods/HttpGet;

.field private d:Lcom/netease/util/cache/i;


# direct methods
.method public constructor <init>(Lcom/netease/util/cache/f;Landroid/widget/ImageView;Lcom/netease/util/cache/i;)V
    .locals 1

    iput-object p1, p0, Lcom/netease/util/cache/h;->a:Lcom/netease/util/cache/f;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/netease/util/cache/h;->b:Ljava/lang/ref/WeakReference;

    new-instance v0, Lcom/netease/util/cache/i;

    invoke-direct {v0, p3}, Lcom/netease/util/cache/i;-><init>(Lcom/netease/util/cache/i;)V

    iput-object v0, p0, Lcom/netease/util/cache/h;->d:Lcom/netease/util/cache/i;

    return-void
.end method

.method private a()Landroid/widget/ImageView;
    .locals 2

    iget-object v0, p0, Lcom/netease/util/cache/h;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/netease/util/cache/f;->b(Landroid/widget/ImageView;)Lcom/netease/util/cache/h;

    move-result-object v1

    if-ne p0, v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/netease/util/cache/h;)Lcom/netease/util/cache/i;
    .locals 1

    iget-object v0, p0, Lcom/netease/util/cache/h;->d:Lcom/netease/util/cache/i;

    return-object v0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 4

    iget-object v0, p0, Lcom/netease/util/cache/h;->d:Lcom/netease/util/cache/i;

    iget-object v0, v0, Lcom/netease/util/cache/i;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/util/cache/h;->d:Lcom/netease/util/cache/i;

    iget-object v0, v0, Lcom/netease/util/cache/i;->a:Ljava/lang/String;

    :goto_0
    invoke-static {v0}, Lcom/netease/util/cache/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/netease/util/cache/h;->a:Lcom/netease/util/cache/f;

    invoke-static {v2}, Lcom/netease/util/cache/f;->a(Lcom/netease/util/cache/f;)Lcom/netease/util/cache/a;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/netease/util/cache/h;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/netease/util/cache/h;->a()Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/netease/util/cache/h;->a:Lcom/netease/util/cache/f;

    invoke-static {v2}, Lcom/netease/util/cache/f;->b(Lcom/netease/util/cache/f;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/netease/util/cache/h;->a:Lcom/netease/util/cache/f;

    invoke-static {v0}, Lcom/netease/util/cache/f;->a(Lcom/netease/util/cache/f;)Lcom/netease/util/cache/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/netease/util/cache/a;->c(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/util/cache/h;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/netease/util/cache/h;->a:Lcom/netease/util/cache/f;

    iget-object v3, p0, Lcom/netease/util/cache/h;->a:Lcom/netease/util/cache/f;

    invoke-static {v3}, Lcom/netease/util/cache/f;->a(Lcom/netease/util/cache/f;)Lcom/netease/util/cache/a;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v0}, Lcom/netease/util/cache/f;->a(Lcom/netease/util/cache/a;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/netease/util/cache/h;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/netease/util/cache/h;->a()Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/netease/util/cache/h;->a:Lcom/netease/util/cache/f;

    invoke-static {v2}, Lcom/netease/util/cache/f;->b(Lcom/netease/util/cache/f;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v0, p0, Lcom/netease/util/cache/h;->a:Lcom/netease/util/cache/f;

    iget-object v2, p0, Lcom/netease/util/cache/h;->d:Lcom/netease/util/cache/i;

    iget-object v2, v2, Lcom/netease/util/cache/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/netease/util/cache/f;->c(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/util/cache/h;->c:Lorg/apache/http/client/methods/HttpGet;

    iget-object v0, p0, Lcom/netease/util/cache/h;->a:Lcom/netease/util/cache/f;

    iget-object v2, p0, Lcom/netease/util/cache/h;->d:Lcom/netease/util/cache/i;

    iget-object v3, p0, Lcom/netease/util/cache/h;->c:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v0, p0, v2, v3}, Lcom/netease/util/cache/f;->a(Lcom/netease/util/cache/h;Lcom/netease/util/cache/i;Lorg/apache/http/client/methods/HttpGet;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/netease/util/cache/h;->a:Lcom/netease/util/cache/f;

    invoke-static {v2}, Lcom/netease/util/cache/f;->a(Lcom/netease/util/cache/f;)Lcom/netease/util/cache/a;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/netease/util/cache/h;->a:Lcom/netease/util/cache/f;

    iget-object v3, p0, Lcom/netease/util/cache/h;->a:Lcom/netease/util/cache/f;

    invoke-static {v3}, Lcom/netease/util/cache/f;->a(Lcom/netease/util/cache/f;)Lcom/netease/util/cache/a;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v0}, Lcom/netease/util/cache/f;->a(Lcom/netease/util/cache/a;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/netease/util/cache/h;->a:Lcom/netease/util/cache/f;

    iget-object v3, p0, Lcom/netease/util/cache/h;->a:Lcom/netease/util/cache/f;

    invoke-static {v3}, Lcom/netease/util/cache/f;->a(Lcom/netease/util/cache/f;)Lcom/netease/util/cache/a;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v0}, Lcom/netease/util/cache/f;->b(Lcom/netease/util/cache/a;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_1
    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/netease/util/cache/h;->d:Lcom/netease/util/cache/i;

    iget-object v0, v0, Lcom/netease/util/cache/i;->d:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public a(I)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/netease/util/cache/h;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method

.method protected a(Landroid/graphics/Bitmap;)V
    .locals 3

    invoke-virtual {p0}, Lcom/netease/util/cache/h;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/util/cache/h;->a:Lcom/netease/util/cache/f;

    invoke-static {v0}, Lcom/netease/util/cache/f;->b(Lcom/netease/util/cache/f;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    :cond_1
    iget-object v0, p0, Lcom/netease/util/cache/h;->a:Lcom/netease/util/cache/f;

    invoke-virtual {v0, p1}, Lcom/netease/util/cache/f;->b(Landroid/graphics/Bitmap;)V

    invoke-direct {p0}, Lcom/netease/util/cache/h;->a()Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/netease/util/cache/h;->a:Lcom/netease/util/cache/f;

    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/netease/util/cache/h;->a:Lcom/netease/util/cache/f;

    iget-object v0, v0, Lcom/netease/util/cache/f;->a:Landroid/graphics/Bitmap;

    :goto_0
    invoke-static {v2, v1, v0}, Lcom/netease/util/cache/f;->a(Lcom/netease/util/cache/f;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    :cond_2
    iget-object v2, p0, Lcom/netease/util/cache/h;->a:Lcom/netease/util/cache/f;

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v1, v0}, Lcom/netease/util/cache/f;->a(Landroid/widget/ImageView;Z)V

    return-void

    :cond_3
    move-object v0, p1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected varargs a([Ljava/lang/Integer;)V
    .locals 3

    iget-object v0, p0, Lcom/netease/util/cache/h;->a:Lcom/netease/util/cache/f;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0}, Lcom/netease/util/cache/h;->a()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netease/util/cache/f;->a(ILandroid/widget/ImageView;)V

    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/netease/util/cache/h;->a([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netease/util/cache/h;->c:Lorg/apache/http/client/methods/HttpGet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/util/cache/h;->c:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/util/cache/h;->c:Lorg/apache/http/client/methods/HttpGet;

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/netease/util/cache/h;->a:Lcom/netease/util/cache/f;

    invoke-virtual {v0}, Lcom/netease/util/cache/f;->b()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/netease/util/cache/h;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/netease/util/cache/h;->a([Ljava/lang/Integer;)V

    return-void
.end method
