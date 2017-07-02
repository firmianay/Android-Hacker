.class Lcom/netease/nr/biz/news/detailpage/c;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/news/detailpage/a;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/news/detailpage/a;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/news/detailpage/c;->a:Lcom/netease/nr/biz/news/detailpage/a;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Lcom/netease/nr/biz/news/detailpage/b;)Ljava/lang/Object;
    .locals 10

    const/4 v4, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    aget-object v0, p1, v1

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v4

    :goto_0
    return-object v0

    :cond_1
    aget-object v5, p1, v1

    iget-object v6, v5, Lcom/netease/nr/biz/news/detailpage/b;->a:Ljava/lang/String;

    iget-object v7, v5, Lcom/netease/nr/biz/news/detailpage/b;->b:Ljava/lang/String;

    iget-object v8, v5, Lcom/netease/nr/biz/news/detailpage/b;->e:Landroid/content/Context;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/c;->a:Lcom/netease/nr/biz/news/detailpage/a;

    invoke-static {v0}, Lcom/netease/nr/biz/news/detailpage/a;->a(Lcom/netease/nr/biz/news/detailpage/a;)Lcom/netease/nr/biz/news/detailpage/t;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/nr/biz/news/detailpage/t;->j:Ljava/util/HashMap;

    const-string v2, "replyCount"

    invoke-static {v0, v2}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/netease/nr/biz/news/detailpage/c;->a:Lcom/netease/nr/biz/news/detailpage/a;

    invoke-static {v2}, Lcom/netease/nr/biz/news/detailpage/a;->a(Lcom/netease/nr/biz/news/detailpage/a;)Lcom/netease/nr/biz/news/detailpage/t;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/nr/biz/news/detailpage/t;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    :goto_2
    iget-object v9, p0, Lcom/netease/nr/biz/news/detailpage/c;->a:Lcom/netease/nr/biz/news/detailpage/a;

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v9, v0}, Lcom/netease/nr/biz/news/detailpage/a;->a(Lcom/netease/nr/biz/news/detailpage/a;I)I

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/c;->a:Lcom/netease/nr/biz/news/detailpage/a;

    invoke-static {v0}, Lcom/netease/nr/biz/news/detailpage/a;->b(Lcom/netease/nr/biz/news/detailpage/a;)I

    move-result v0

    const/16 v2, 0x64

    if-lt v0, v2, :cond_3

    iget-boolean v0, v5, Lcom/netease/nr/biz/news/detailpage/b;->f:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x5

    invoke-static {v8, v6, v7, v1, v0}, Lcom/netease/nr/biz/i/a/a/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/util/e/c;->a(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v0}, Lcom/netease/util/e/c;->c(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    :goto_3
    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    const-string v1, "top"

    iget-object v2, p0, Lcom/netease/nr/biz/news/detailpage/c;->a:Lcom/netease/nr/biz/news/detailpage/a;

    invoke-static {v2, v0}, Lcom/netease/nr/biz/news/detailpage/a;->a(Lcom/netease/nr/biz/news/detailpage/a;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/util/e/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/netease/util/e/b;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    move-object v0, v3

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_1

    :catch_1
    move-exception v2

    move v2, v1

    goto :goto_2

    :cond_4
    move-object v0, v4

    goto :goto_3

    :cond_5
    move v2, v1

    goto :goto_2

    :cond_6
    move v0, v1

    goto :goto_1
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Lcom/netease/nr/biz/news/detailpage/b;

    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/news/detailpage/c;->a([Lcom/netease/nr/biz/news/detailpage/b;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/detailpage/c;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/c;->a:Lcom/netease/nr/biz/news/detailpage/a;

    invoke-static {v0}, Lcom/netease/nr/biz/news/detailpage/a;->c(Lcom/netease/nr/biz/news/detailpage/a;)Lcom/netease/nr/biz/news/detailpage/e;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/news/detailpage/e;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/c;->a:Lcom/netease/nr/biz/news/detailpage/a;

    invoke-static {v1}, Lcom/netease/nr/biz/news/detailpage/a;->c(Lcom/netease/nr/biz/news/detailpage/a;)Lcom/netease/nr/biz/news/detailpage/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netease/nr/biz/news/detailpage/e;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
