.class Lcom/netease/util/b/c;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/netease/util/b/a;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netease/util/b/a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/util/b/c;->a:Lcom/netease/util/b/a;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/netease/util/b/c;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/util/b/c;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/netease/util/b/a;->a(Lcom/netease/util/b/a;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/util/b/d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Lcom/netease/util/b/d;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/netease/util/b/c;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/util/b/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method private a()V
    .locals 2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/netease/util/b/c;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method private a(Z)V
    .locals 3

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/netease/util/b/c;->a()V

    :cond_0
    iget-object v0, p0, Lcom/netease/util/b/c;->a:Lcom/netease/util/b/a;

    invoke-static {v0}, Lcom/netease/util/b/a;->a(Lcom/netease/util/b/a;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/util/b/d;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/netease/util/b/c;->b:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Lcom/netease/util/b/d;->a(Ljava/lang/String;Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/netease/util/b/c;->a:Lcom/netease/util/b/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netease/util/b/a;->a(Lcom/netease/util/b/a;Lcom/netease/util/b/c;)Lcom/netease/util/b/c;

    iget-object v0, p0, Lcom/netease/util/b/c;->a:Lcom/netease/util/b/a;

    invoke-static {v0}, Lcom/netease/util/b/a;->d(Lcom/netease/util/b/a;)V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 12

    :try_start_0
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    const v0, 0xea60

    invoke-static {v1, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    const v0, 0xea60

    invoke-static {v1, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    const-string v0, "NTES Android"

    invoke-static {v1, v0}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/util/b/c;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/util/b/c;->b:Ljava/lang/String;

    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    const-string v0, "Connection"

    const-string v3, "close"

    invoke-virtual {v2, v0, v3}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    iget-object v1, p0, Lcom/netease/util/b/c;->a:Lcom/netease/util/b/a;

    invoke-static {v1}, Lcom/netease/util/b/a;->b(Lcom/netease/util/b/a;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/util/f/b;->a(Lorg/apache/http/client/HttpClient;Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v5

    const-wide/16 v0, 0x0

    const/16 v4, 0xc8

    if-ne v2, v4, :cond_3

    const/16 v2, 0x2000

    new-array v7, v2, [B

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v8

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/netease/util/b/c;->c:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    new-instance v9, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v9, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v8, v7}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    invoke-virtual {p0}, Lcom/netease/util/b/c;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x0

    invoke-virtual {v9, v7, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v3, v3

    add-long/2addr v3, v0

    const-wide/16 v0, 0x64

    mul-long/2addr v0, v3

    div-long/2addr v0, v5

    long-to-int v0, v0

    sub-int v1, v0, v2

    if-gtz v1, :cond_1

    const/16 v1, 0x64

    if-ne v0, v1, :cond_5

    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "downloadSize"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v1, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "totalSize"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v1, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "downloadUrl"

    iget-object v10, p0, Lcom/netease/util/b/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/netease/util/b/c;->a:Lcom/netease/util/b/a;

    invoke-static {v2}, Lcom/netease/util/b/a;->c(Lcom/netease/util/b/a;)Landroid/os/Handler;

    move-result-object v2

    const/4 v10, 0x2

    invoke-virtual {v2, v10}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/netease/util/b/c;->a:Lcom/netease/util/b/a;

    invoke-static {v2}, Lcom/netease/util/b/a;->c(Lcom/netease/util/b/a;)Landroid/os/Handler;

    move-result-object v2

    iget-object v10, p0, Lcom/netease/util/b/c;->a:Lcom/netease/util/b/a;

    invoke-static {v10}, Lcom/netease/util/b/a;->c(Lcom/netease/util/b/a;)Landroid/os/Handler;

    move-result-object v10

    const/4 v11, 0x2

    invoke-virtual {v10, v11, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move v2, v0

    move-wide v0, v3

    goto :goto_0

    :cond_2
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_4

    cmp-long v0, v0, v5

    if-nez v0, :cond_4

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    move-wide v0, v3

    goto :goto_0
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/netease/util/b/c;->a(Z)V

    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/netease/util/b/c;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 2

    iget-object v0, p0, Lcom/netease/util/b/c;->a:Lcom/netease/util/b/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netease/util/b/a;->a(Lcom/netease/util/b/a;Lcom/netease/util/b/c;)Lcom/netease/util/b/c;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netease/util/b/c;->a(Z)V

    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/netease/util/b/c;->a(Ljava/lang/Boolean;)V

    return-void
.end method
