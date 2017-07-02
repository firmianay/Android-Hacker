.class Lcom/netease/nr/biz/i/a/a/h;
.super Landroid/os/AsyncTask;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Ljava/lang/ref/WeakReference;

.field private final c:Lcom/netease/nr/biz/i/a/a/e;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/netease/nr/biz/i/a/a/d;Lcom/netease/nr/biz/i/a/a/e;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/i/a/a/h;->a:Landroid/content/Context;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/netease/nr/biz/i/a/a/h;->b:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/netease/nr/biz/i/a/a/h;->c:Lcom/netease/nr/biz/i/a/a/e;

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/biz/i/a/a/h;)Lcom/netease/nr/biz/i/a/a/e;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a/h;->c:Lcom/netease/nr/biz/i/a/a/e;

    return-object v0
.end method

.method static synthetic a(Lcom/netease/nr/biz/i/a/a/h;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/i/a/a/h;->b:Ljava/lang/ref/WeakReference;

    return-object p1
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/util/Map;
    .locals 6

    iget-object v5, p0, Lcom/netease/nr/biz/i/a/a/h;->c:Lcom/netease/nr/biz/i/a/a/e;

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a/h;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/netease/nr/biz/i/a/a/e;->e(Lcom/netease/nr/biz/i/a/a/e;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5}, Lcom/netease/nr/biz/i/a/a/e;->c(Lcom/netease/nr/biz/i/a/a/e;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5}, Lcom/netease/nr/biz/i/a/a/e;->b(Lcom/netease/nr/biz/i/a/a/e;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5}, Lcom/netease/nr/biz/i/a/a/e;->a(Lcom/netease/nr/biz/i/a/a/e;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5}, Lcom/netease/nr/biz/i/a/a/e;->f(Lcom/netease/nr/biz/i/a/a/e;)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/netease/nr/biz/i/a/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/util/Map;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/netease/util/e/c;->a(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/netease/util/k/a;->b()Lcom/netease/util/k/f;

    move-result-object v0

    new-instance v1, Lcom/netease/nr/biz/pc/e/f;

    iget-object v2, p0, Lcom/netease/nr/biz/i/a/a/h;->a:Landroid/content/Context;

    const-string v3, "score_post_key"

    invoke-direct {v1, v2, v3}, Lcom/netease/nr/biz/pc/e/f;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/netease/util/k/f;->a(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a/h;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a/h;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/i/a/a/d;

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {v0, p0, p1}, Lcom/netease/nr/biz/i/a/a/d;->a(Lcom/netease/nr/biz/i/a/a/d;Lcom/netease/nr/biz/i/a/a/h;Ljava/util/Map;)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/i/a/a/h;->a([Ljava/lang/Void;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a/h;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a/h;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/i/a/a/d;

    :goto_0
    if-eqz v0, :cond_0

    invoke-static {v0, p0, v1}, Lcom/netease/nr/biz/i/a/a/d;->a(Lcom/netease/nr/biz/i/a/a/d;Lcom/netease/nr/biz/i/a/a/h;Ljava/util/Map;)V

    :cond_0
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/i/a/a/h;->a(Ljava/util/Map;)V

    return-void
.end method
