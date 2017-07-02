.class Lcom/netease/nr/biz/audio/f;
.super Landroid/os/AsyncTask;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/audio/d;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    invoke-virtual {p1}, Lcom/netease/nr/biz/audio/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/audio/f;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/netease/nr/biz/audio/f;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/nr/biz/audio/f;->c:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/netease/nr/biz/audio/f;->d:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/netease/nr/biz/audio/f;->e:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/util/Map;
    .locals 9

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/netease/nr/biz/audio/f;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/netease/nr/biz/audio/f;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/nr/biz/audio/f;->c:Ljava/lang/String;

    invoke-static {v0, v1, v4, p0}, Lcom/netease/nr/biz/audio/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/AsyncTask;)Ljava/util/Map;

    move-result-object v4

    const-string v0, "audio_tid"

    invoke-static {v4, v0}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-boolean v0, p0, Lcom/netease/nr/biz/audio/f;->d:Z

    if-eqz v0, :cond_3

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/netease/nr/biz/audio/f;->a:Landroid/content/Context;

    invoke-static {v0, v5}, Lcom/netease/nr/biz/audio/c;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v7, p0, Lcom/netease/nr/biz/audio/f;->b:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/netease/nr/biz/audio/f;->b:Ljava/lang/String;

    const-string v8, "audio_docid"

    invoke-static {v0, v8}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    move v0, v2

    :goto_0
    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netease/nr/biz/audio/f;->a:Landroid/content/Context;

    const/16 v1, 0x14

    invoke-static {v0, v5, v2, v1}, Lcom/netease/nr/biz/news/a/i;->b(Landroid/content/Context;Ljava/lang/String;II)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/util/e/c;->c(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/netease/nr/biz/audio/f;->a:Landroid/content/Context;

    invoke-static {v1, v5, v0, v3}, Lcom/netease/nr/biz/news/a/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Z)V

    iget-object v0, p0, Lcom/netease/nr/biz/audio/f;->a:Landroid/content/Context;

    invoke-static {v0, v5}, Lcom/netease/nr/biz/audio/c;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :cond_2
    :goto_1
    const-string v1, "audio_extra_list"

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v4

    :cond_4
    move-object v0, v1

    goto :goto_1

    :cond_5
    move v0, v3

    goto :goto_0
.end method

.method protected a(Ljava/util/Map;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/biz/audio/f;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/audio/f;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/audio/d;

    :goto_0
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/netease/nr/biz/audio/f;->d:Z

    invoke-static {v0, p1, v1}, Lcom/netease/nr/biz/audio/d;->a(Lcom/netease/nr/biz/audio/d;Ljava/util/Map;Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected varargs b([Ljava/lang/Void;)V
    .locals 3

    iget-object v0, p0, Lcom/netease/nr/biz/audio/f;->a:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/netease/nr/biz/audio/h;->a(Landroid/content/Context;ILandroid/os/Bundle;)V

    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/audio/f;->a([Ljava/lang/Void;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/audio/f;->a(Ljava/util/Map;)V

    return-void
.end method

.method protected synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/audio/f;->b([Ljava/lang/Void;)V

    return-void
.end method
