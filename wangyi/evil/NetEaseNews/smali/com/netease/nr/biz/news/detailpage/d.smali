.class public Lcom/netease/nr/biz/news/detailpage/d;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/news/detailpage/a;


# direct methods
.method public constructor <init>(Lcom/netease/nr/biz/news/detailpage/a;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/news/detailpage/d;->a:Lcom/netease/nr/biz/news/detailpage/a;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/netease/nr/biz/news/detailpage/b;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "video_bbs"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/netease/nr/biz/news/detailpage/b;->c:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/netease/nr/biz/news/detailpage/b;->d:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected varargs a([Lcom/netease/nr/biz/news/detailpage/b;)Lcom/netease/nr/biz/news/detailpage/f;
    .locals 5

    const/4 v1, 0x0

    const/4 v2, 0x0

    aget-object v0, p1, v2

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    aget-object v0, p1, v2

    const-string v2, "http://comment.api.163.com/api/json/post/load/%s/%s_%s"

    invoke-direct {p0, v2, v0}, Lcom/netease/nr/biz/news/detailpage/d;->a(Ljava/lang/String;Lcom/netease/nr/biz/news/detailpage/b;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    :try_start_0
    new-instance v0, Lcom/netease/nr/biz/news/detailpage/f;

    iget-object v3, p0, Lcom/netease/nr/biz/news/detailpage/d;->a:Lcom/netease/nr/biz/news/detailpage/a;

    invoke-direct {v0, v3}, Lcom/netease/nr/biz/news/detailpage/f;-><init>(Lcom/netease/nr/biz/news/detailpage/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, p0, Lcom/netease/nr/biz/news/detailpage/d;->a:Lcom/netease/nr/biz/news/detailpage/a;

    invoke-static {v3}, Lcom/netease/nr/biz/news/detailpage/a;->e(Lcom/netease/nr/biz/news/detailpage/a;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/netease/util/f/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/news/detailpage/f;->a(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    :goto_2
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v1

    goto :goto_2

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method protected a(Lcom/netease/nr/biz/news/detailpage/f;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Lcom/netease/nr/biz/news/detailpage/f;->f:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/netease/nr/biz/news/detailpage/f;->f:Ljava/lang/String;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/d;->a:Lcom/netease/nr/biz/news/detailpage/a;

    invoke-static {v0}, Lcom/netease/nr/biz/news/detailpage/a;->d(Lcom/netease/nr/biz/news/detailpage/a;)Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:getWholeCommentBuildingData(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/netease/nr/biz/news/detailpage/f;->a:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\',\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/netease/nr/biz/news/detailpage/f;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/nr/base/c/aa;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Lcom/netease/nr/biz/news/detailpage/b;

    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/news/detailpage/d;->a([Lcom/netease/nr/biz/news/detailpage/b;)Lcom/netease/nr/biz/news/detailpage/f;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/netease/nr/biz/news/detailpage/f;

    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/news/detailpage/d;->a(Lcom/netease/nr/biz/news/detailpage/f;)V

    return-void
.end method
