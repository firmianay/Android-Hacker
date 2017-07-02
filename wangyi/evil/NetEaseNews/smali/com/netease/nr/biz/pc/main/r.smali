.class public Lcom/netease/nr/biz/pc/main/r;
.super Landroid/os/AsyncTask;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/ref/WeakReference;

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/netease/nr/biz/pc/main/s;ZZ)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/nr/biz/pc/main/r;->e:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/pc/main/r;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/netease/nr/biz/pc/main/r;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/netease/nr/biz/pc/main/r;->c:Ljava/lang/ref/WeakReference;

    iput-boolean p4, p0, Lcom/netease/nr/biz/pc/main/r;->d:Z

    iput-boolean p5, p0, Lcom/netease/nr/biz/pc/main/r;->e:Z

    return-void
.end method

.method private a()Lcom/netease/nr/biz/pc/main/s;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/pc/main/r;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/pc/main/r;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/pc/main/s;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public varargs a([Ljava/lang/Void;)Ljava/util/Map;
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/biz/pc/main/r;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/netease/nr/biz/pc/main/r;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/nr/biz/pc/main/c;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/util/Map;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/netease/nr/biz/pc/main/r;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/pc/main/r;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/nr/biz/pc/main/c;->f(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nr/biz/pc/a/n;->a(Ljava/util/Map;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/netease/nr/biz/pc/main/r;->a()Lcom/netease/nr/biz/pc/main/s;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/netease/nr/biz/pc/main/s;->b(Ljava/util/Map;)V

    :cond_2
    iget-object v0, p0, Lcom/netease/nr/biz/pc/main/r;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/util/f/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/netease/util/k/a;->b()Lcom/netease/util/k/f;

    move-result-object v0

    new-instance v1, Lcom/netease/nr/biz/pc/e/f;

    iget-object v2, p0, Lcom/netease/nr/biz/pc/main/r;->a:Landroid/content/Context;

    const-string v3, "score_open_app_key"

    iget-boolean v4, p0, Lcom/netease/nr/biz/pc/main/r;->d:Z

    invoke-direct {v1, v2, v3, v4}, Lcom/netease/nr/biz/pc/e/f;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Lcom/netease/util/k/f;->a(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/pc/main/r;->a([Ljava/lang/Void;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/pc/main/r;->a(Ljava/util/Map;)V

    return-void
.end method
