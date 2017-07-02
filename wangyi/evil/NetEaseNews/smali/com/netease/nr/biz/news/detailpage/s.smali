.class Lcom/netease/nr/biz/news/detailpage/s;
.super Landroid/os/AsyncTask;


# instance fields
.field a:Ljava/lang/ref/WeakReference;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    invoke-virtual {p1}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/news/detailpage/s;->b:Landroid/content/Context;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/netease/nr/biz/news/detailpage/s;->a:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/netease/nr/biz/news/detailpage/s;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/nr/biz/news/detailpage/s;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/util/Map;
    .locals 3

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/s;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/s;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/nr/biz/news/detailpage/s;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/nr/biz/i/a/a/a;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/util/Map;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/netease/util/e/c;->c(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/s;->a:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_0

    if-lez v1, :cond_0

    invoke-static {v0, v1}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;I)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/s;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    goto :goto_1
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/news/detailpage/s;->a([Ljava/lang/Void;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/news/detailpage/s;->a(Ljava/util/Map;)V

    return-void
.end method
