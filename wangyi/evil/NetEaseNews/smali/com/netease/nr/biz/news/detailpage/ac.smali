.class Lcom/netease/nr/biz/news/detailpage/ac;
.super Landroid/os/AsyncTask;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/ref/WeakReference;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/netease/nr/biz/news/detailpage/NewsPageFragment;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/news/detailpage/ac;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/netease/nr/biz/news/detailpage/ac;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/netease/nr/biz/news/detailpage/ac;->c:Ljava/lang/ref/WeakReference;

    iput-boolean p5, p0, Lcom/netease/nr/biz/news/detailpage/ac;->d:Z

    iput-object p2, p0, Lcom/netease/nr/biz/news/detailpage/ac;->e:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/nr/biz/news/detailpage/ac;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/util/Map;
    .locals 5

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/ac;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/util/f/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/ac;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/ac;->b:Ljava/lang/String;

    const-string v2, "full"

    invoke-static {v0, v1, v2}, Lcom/netease/nr/biz/news/detailpage/g;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netease/nr/biz/news/detailpage/ac;->d:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/ac;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/netease/nr/biz/news/detailpage/ac;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/nr/biz/news/detailpage/ac;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/nr/biz/news/detailpage/ac;->f:Ljava/lang/String;

    invoke-static {v1, v0, v2, v3, v4}, Lcom/netease/nr/biz/news/detailpage/af;->a(Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected a(Ljava/util/Map;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/ac;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/ac;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    :goto_0
    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->c(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;Ljava/util/Map;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/news/detailpage/ac;->a([Ljava/lang/Void;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/news/detailpage/ac;->a(Ljava/util/Map;)V

    return-void
.end method
