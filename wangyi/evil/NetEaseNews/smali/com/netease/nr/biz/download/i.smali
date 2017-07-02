.class public Lcom/netease/nr/biz/download/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Landroid/os/Bundle;

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;

.field final d:Ljava/lang/String;

.field final e:Ljava/lang/String;

.field final f:I

.field g:Lcom/netease/nr/biz/download/e;

.field final h:Lcom/netease/nr/biz/download/f;

.field private i:Landroid/content/Context;

.field private j:Lcom/netease/nr/biz/download/a;

.field private transient k:Z


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Landroid/content/Context;Lcom/netease/nr/biz/download/a;I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/download/i;->i:Landroid/content/Context;

    iput p4, p0, Lcom/netease/nr/biz/download/i;->f:I

    iput-object p1, p0, Lcom/netease/nr/biz/download/i;->a:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/netease/nr/biz/download/i;->j:Lcom/netease/nr/biz/download/a;

    iget-object v0, p0, Lcom/netease/nr/biz/download/i;->a:Landroid/os/Bundle;

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/download/i;->b:Ljava/lang/String;

    const-string v1, ""

    const-string v0, ""

    :try_start_0
    iget-object v0, p0, Lcom/netease/nr/biz/download/i;->a:Landroid/os/Bundle;

    const-string v2, "saveFile"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/netease/nr/biz/download/i;->b:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget-object v1, p0, Lcom/netease/nr/biz/download/i;->b:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/netease/nr/biz/download/i;->b:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    iput-object v1, p0, Lcom/netease/nr/biz/download/i;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/nr/biz/download/i;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/nr/biz/download/i;->a:Landroid/os/Bundle;

    const-string v1, "file_dealer"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/download/i;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/nr/biz/download/i;->a:Landroid/os/Bundle;

    const-string v1, "notification_dealer"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p2, v0}, Lcom/netease/nr/biz/download/a;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/nr/biz/download/f;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/download/i;->h:Lcom/netease/nr/biz/download/f;

    return-void

    :cond_1
    :try_start_1
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, ""

    const-string v0, ""

    goto :goto_0
.end method

.method private declared-synchronized a(ILjava/lang/Object;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/netease/nr/biz/download/i;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/download/i;->j:Lcom/netease/nr/biz/download/a;

    invoke-virtual {v0}, Lcom/netease/nr/biz/download/a;->a()Lcom/netease/nr/biz/download/h;

    move-result-object v0

    iget v1, p0, Lcom/netease/nr/biz/download/i;->f:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    new-instance v2, Lcom/netease/nr/biz/download/e;

    iget-object v3, p0, Lcom/netease/nr/biz/download/i;->j:Lcom/netease/nr/biz/download/a;

    invoke-direct {v2, v3}, Lcom/netease/nr/biz/download/e;-><init>(Lcom/netease/nr/biz/download/a;)V

    iput p1, v2, Lcom/netease/nr/biz/download/e;->d:I

    iput-object p0, v2, Lcom/netease/nr/biz/download/e;->b:Lcom/netease/nr/biz/download/i;

    iput-object p2, v2, Lcom/netease/nr/biz/download/e;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private e()Z
    .locals 26

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/netease/nr/biz/download/i;->b:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/netease/nr/biz/download/i;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netease/nr/biz/download/i;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netease/nr/biz/download/i;->d:Ljava/lang/String;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/netease/util/i/b;->c()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v3, 0x5

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/netease/nr/biz/download/i;->a(ILjava/lang/Object;)V

    const/4 v3, 0x0

    :cond_0
    :goto_0
    return v3

    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netease/nr/biz/download/i;->j:Lcom/netease/nr/biz/download/a;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netease/nr/biz/download/i;->i:Landroid/content/Context;

    invoke-virtual {v4, v5, v3}, Lcom/netease/nr/biz/download/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/nr/biz/download/d;

    move-result-object v17

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v9, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v9}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    const v10, 0xea60

    invoke-static {v9, v10}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    const v10, 0xea60

    invoke-static {v9, v10}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    const-string v10, "NTES Android"

    invoke-static {v9, v10}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    new-instance v10, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v10, v8}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    const-string v8, "Connection"

    const-string v11, "close"

    invoke-virtual {v10, v8, v11}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v11, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v11, v9}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netease/nr/biz/download/i;->i:Landroid/content/Context;

    invoke-static {v11, v3}, Lcom/netease/util/f/b;->a(Lorg/apache/http/client/HttpClient;Landroid/content/Context;)V

    invoke-virtual {v11, v10}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v18

    const-wide/16 v13, 0x0

    const-wide/16 v9, 0x0

    const/16 v3, 0xc8

    if-ne v8, v3, :cond_15

    const/16 v3, 0x2000

    new-array v0, v3, [B

    move-object/from16 v20, v0

    const/4 v3, 0x0

    invoke-interface {v12}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_15
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_10
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v12

    :try_start_2
    const-string v4, "/"

    invoke-virtual {v15, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netease/nr/biz/download/i;->i:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-static {v4, v6}, Lcom/netease/util/cache/d;->a(Landroid/content/Context;Lcom/netease/util/cache/n;)Lcom/netease/util/cache/d;

    move-result-object v6

    invoke-virtual {v6, v15}, Lcom/netease/util/cache/d;->b(Ljava/lang/String;)Lcom/netease/util/cache/a/e;
    :try_end_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_11
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v5

    :try_start_3
    new-instance v4, Ljava/io/BufferedOutputStream;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/netease/util/cache/a/e;->a(I)Ljava/io/OutputStream;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_16
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_11
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_1
    move-wide v7, v13

    :goto_2
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/netease/nr/biz/download/i;->d()Z

    move-result v13

    if-nez v13, :cond_d

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/io/InputStream;->read([B)I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_d

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_b

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_b

    invoke-static {}, Lcom/netease/util/i/b;->c()Z

    move-result v14

    if-nez v14, :cond_b

    const/4 v3, 0x5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v6}, Lcom/netease/nr/biz/download/i;->a(ILjava/lang/Object;)V
    :try_end_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_4 .. :try_end_4} :catch_17
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_12
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    const/4 v3, 0x0

    if-eqz v12, :cond_2

    :try_start_5
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :cond_2
    :goto_3
    if-eqz v4, :cond_3

    :try_start_6
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :cond_3
    :goto_4
    if-eqz v11, :cond_4

    :try_start_7
    invoke-virtual {v11}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1a

    :cond_4
    :goto_5
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/netease/util/cache/a/e;->c()V

    goto/16 :goto_0

    :cond_5
    :try_start_8
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_6
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_8
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_11
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_1

    :catch_0
    move-exception v3

    move-object v3, v11

    move-object v4, v7

    move-object v6, v5

    move-object v5, v12

    :goto_6
    const/4 v7, 0x4

    const/4 v8, 0x0

    :try_start_9
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8}, Lcom/netease/nr/biz/download/i;->a(ILjava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    if-eqz v5, :cond_7

    :try_start_a
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    :cond_7
    :goto_7
    if-eqz v4, :cond_8

    :try_start_b
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9

    :cond_8
    :goto_8
    if-eqz v3, :cond_9

    :try_start_c
    invoke-virtual {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_13

    :cond_9
    :goto_9
    if-eqz v6, :cond_a

    invoke-virtual {v6}, Lcom/netease/util/cache/a/e;->c()V

    :cond_a
    :goto_a
    const/4 v3, 0x3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/netease/nr/biz/download/i;->a(ILjava/lang/Object;)V

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_b
    const/4 v14, 0x0

    :try_start_d
    move-object/from16 v0, v20

    invoke-virtual {v4, v0, v14, v13}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v13, v13

    add-long/2addr v13, v7

    const-wide/16 v7, 0x0

    cmp-long v7, v18, v7

    if-lez v7, :cond_c

    long-to-double v7, v13

    move-wide/from16 v0, v18

    long-to-double v0, v0

    move-wide/from16 v21, v0

    div-double v7, v7, v21

    :goto_b
    cmp-long v21, v13, v18

    if-gez v21, :cond_21

    new-instance v21, Lcom/netease/nr/biz/download/g;

    invoke-direct/range {v21 .. v21}, Lcom/netease/nr/biz/download/g;-><init>()V

    move-wide/from16 v0, v18

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/netease/nr/biz/download/g;->a:J

    move-object/from16 v0, v21

    iput-wide v13, v0, Lcom/netease/nr/biz/download/g;->b:J

    sub-double v22, v7, v9

    const-wide v24, 0x3f847ae140000000L    # 0.009999999776482582

    cmpl-double v22, v22, v24

    if-ltz v22, :cond_21

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v9, v1}, Lcom/netease/nr/biz/download/i;->a(ILjava/lang/Object;)V

    :goto_c
    move-wide v9, v7

    move-wide v7, v13

    goto/16 :goto_2

    :cond_c
    const-wide/16 v7, 0x0

    goto :goto_b

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/netease/nr/biz/download/i;->d()Z

    move-result v7

    if-nez v7, :cond_e

    if-eqz v6, :cond_e

    if-eqz v5, :cond_e

    invoke-virtual {v6, v5}, Lcom/netease/util/cache/d;->a(Lcom/netease/util/cache/a/e;)V

    invoke-virtual {v6, v15}, Lcom/netease/util/cache/d;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/netease/nr/biz/download/i;->d()Z

    move-result v6

    if-nez v6, :cond_16

    if-eqz v17, :cond_f

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/netease/nr/biz/download/i;->i:Landroid/content/Context;

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v3}, Lcom/netease/nr/biz/download/d;->a(Landroid/content/Context;Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_16

    :cond_f
    const/4 v6, 0x1

    if-eqz v3, :cond_10

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_14

    :cond_10
    const/4 v3, 0x0

    :goto_d
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v3}, Lcom/netease/nr/biz/download/i;->a(ILjava/lang/Object;)V
    :try_end_d
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_d .. :try_end_d} :catch_17
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_12
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    const/4 v3, 0x1

    if-eqz v12, :cond_11

    :try_start_e
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4

    :cond_11
    :goto_e
    if-eqz v4, :cond_12

    :try_start_f
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_5

    :cond_12
    :goto_f
    if-eqz v11, :cond_13

    :try_start_10
    invoke-virtual {v11}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_19

    :cond_13
    :goto_10
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/netease/util/cache/a/e;->c()V

    goto/16 :goto_0

    :cond_14
    :try_start_11
    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;
    :try_end_11
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_11 .. :try_end_11} :catch_17
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_12
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    move-result-object v3

    goto :goto_d

    :cond_15
    move-object v12, v4

    move-object v4, v7

    :cond_16
    if-eqz v12, :cond_17

    :try_start_12
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_6

    :cond_17
    :goto_11
    if-eqz v4, :cond_18

    :try_start_13
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_7

    :cond_18
    :goto_12
    if-eqz v11, :cond_19

    :try_start_14
    invoke-virtual {v11}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_18

    :cond_19
    :goto_13
    if-eqz v5, :cond_a

    invoke-virtual {v5}, Lcom/netease/util/cache/a/e;->c()V

    goto/16 :goto_a

    :catch_1
    move-exception v6

    move-object v11, v3

    move-object v12, v4

    :goto_14
    const/4 v3, 0x4

    const/4 v4, 0x0

    :try_start_15
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/netease/nr/biz/download/i;->a(ILjava/lang/Object;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    if-eqz v12, :cond_1a

    :try_start_16
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_a

    :cond_1a
    :goto_15
    if-eqz v7, :cond_1b

    :try_start_17
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_b

    :cond_1b
    :goto_16
    if-eqz v11, :cond_1c

    :try_start_18
    invoke-virtual {v11}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_f

    :cond_1c
    :goto_17
    if-eqz v5, :cond_a

    invoke-virtual {v5}, Lcom/netease/util/cache/a/e;->c()V

    goto/16 :goto_a

    :catchall_0
    move-exception v6

    move-object v11, v3

    move-object v12, v4

    move-object v3, v6

    :goto_18
    if-eqz v12, :cond_1d

    :try_start_19
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_c

    :cond_1d
    :goto_19
    if-eqz v7, :cond_1e

    :try_start_1a
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_d

    :cond_1e
    :goto_1a
    if-eqz v11, :cond_1f

    :try_start_1b
    invoke-virtual {v11}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_e

    :cond_1f
    :goto_1b
    if-eqz v5, :cond_20

    invoke-virtual {v5}, Lcom/netease/util/cache/a/e;->c()V

    :cond_20
    throw v3

    :catch_2
    move-exception v6

    goto/16 :goto_3

    :catch_3
    move-exception v4

    goto/16 :goto_4

    :catch_4
    move-exception v6

    goto :goto_e

    :catch_5
    move-exception v4

    goto :goto_f

    :catch_6
    move-exception v3

    goto :goto_11

    :catch_7
    move-exception v3

    goto :goto_12

    :catch_8
    move-exception v5

    goto/16 :goto_7

    :catch_9
    move-exception v4

    goto/16 :goto_8

    :catch_a
    move-exception v3

    goto :goto_15

    :catch_b
    move-exception v3

    goto :goto_16

    :catch_c
    move-exception v4

    goto :goto_19

    :catch_d
    move-exception v4

    goto :goto_1a

    :catch_e
    move-exception v4

    goto :goto_1b

    :catchall_1
    move-exception v3

    move-object v12, v4

    goto :goto_18

    :catchall_2
    move-exception v3

    goto :goto_18

    :catchall_3
    move-exception v3

    move-object v7, v4

    goto :goto_18

    :catchall_4
    move-exception v7

    move-object v11, v3

    move-object v12, v5

    move-object v3, v7

    move-object v5, v6

    move-object v7, v4

    goto :goto_18

    :catch_f
    move-exception v3

    goto :goto_17

    :catch_10
    move-exception v3

    move-object v12, v4

    goto :goto_14

    :catch_11
    move-exception v3

    goto :goto_14

    :catch_12
    move-exception v3

    move-object v7, v4

    goto :goto_14

    :catch_13
    move-exception v3

    goto/16 :goto_9

    :catch_14
    move-exception v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v7

    goto/16 :goto_6

    :catch_15
    move-exception v3

    move-object v3, v11

    move-object v6, v5

    move-object v5, v4

    move-object v4, v7

    goto/16 :goto_6

    :catch_16
    move-exception v3

    move-object v3, v11

    move-object v4, v7

    move-object v6, v5

    move-object v5, v12

    goto/16 :goto_6

    :catch_17
    move-exception v3

    move-object v3, v11

    move-object v6, v5

    move-object v5, v12

    goto/16 :goto_6

    :catch_18
    move-exception v3

    goto/16 :goto_13

    :catch_19
    move-exception v4

    goto/16 :goto_10

    :catch_1a
    move-exception v4

    goto/16 :goto_5

    :cond_21
    move-wide v7, v9

    goto/16 :goto_c
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/netease/nr/biz/download/i;->k:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/nr/biz/download/g;

    invoke-direct {v0}, Lcom/netease/nr/biz/download/g;-><init>()V

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/netease/nr/biz/download/g;->a:J

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/netease/nr/biz/download/g;->b:J

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/netease/nr/biz/download/i;->a(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/netease/nr/biz/download/i;->k:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/netease/nr/biz/download/i;->k:Z

    if-nez v0, :cond_0

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/netease/nr/biz/download/i;->a(ILjava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/nr/biz/download/i;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/netease/nr/biz/download/i;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/netease/nr/biz/download/i;->e()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/netease/nr/biz/download/i;->k:Z

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/netease/nr/biz/download/i;->a(ILjava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
