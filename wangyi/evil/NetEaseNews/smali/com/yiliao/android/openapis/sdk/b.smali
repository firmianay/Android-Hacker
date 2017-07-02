.class public final Lcom/yiliao/android/openapis/sdk/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/yiliao/android/openapis/sdk/e;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:J


# direct methods
.method public constructor <init>(Lcom/yiliao/android/openapis/sdk/e;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DownloadThread"

    iput-object v0, p0, Lcom/yiliao/android/openapis/sdk/b;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yiliao/android/openapis/sdk/b;->c:Z

    const-wide/32 v0, 0xa00000

    iput-wide v0, p0, Lcom/yiliao/android/openapis/sdk/b;->d:J

    iput-object p1, p0, Lcom/yiliao/android/openapis/sdk/b;->a:Lcom/yiliao/android/openapis/sdk/e;

    return-void
.end method

.method static synthetic a(Lcom/yiliao/android/openapis/sdk/b;Landroid/content/Context;Ljava/lang/String;)V
    .locals 22

    const-string v15, "/sdcard/ECP_android.apk"

    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    const/4 v5, 0x0

    const/4 v3, 0x0

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-wide/16 v6, 0x0

    :try_start_0
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static/range {p1 .. p1}, Lcom/yiliao/android/openapis/sdk/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_5

    new-instance v5, Lorg/apache/http/HttpHost;

    invoke-static {}, Lcom/yiliao/android/openapis/sdk/d;->a()I

    move-result v9

    invoke-direct {v5, v2, v9}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const-string v9, "http.route.default-proxy"

    invoke-interface {v2, v9, v5}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yiliao/android/openapis/sdk/b;->b:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v9, "\u4e0b\u8f7d\u5730\u5740:"

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v5, 0xc8

    if-eq v2, v5, :cond_0

    const/16 v5, 0xce

    if-ne v2, v5, :cond_11

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yiliao/android/openapis/sdk/b;->b:Ljava/lang/String;

    const-string v5, "\u7248\u672c\u5347\u7ea7\u4e0b\u8f7d\u8fd4\u56de\u5934\u90e8\u4fe1\u606f:"

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v5

    array-length v9, v5

    const/4 v2, 0x0

    :goto_1
    if-lt v2, v9, :cond_7

    const-string v2, "Content-Length"

    invoke-interface {v11, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v5, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yiliao/android/openapis/sdk/b;->a:Lcom/yiliao/android/openapis/sdk/e;

    invoke-interface {v2, v5, v6}, Lcom/yiliao/android/openapis/sdk/e;->a(J)V

    move-wide v13, v5

    :goto_2
    const-wide/16 v9, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yiliao/android/openapis/sdk/b;->b:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "total bytes:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    :cond_1
    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z

    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_d

    new-instance v16, Ljava/io/RandomAccessFile;

    const-string v5, "rw"

    move-object/from16 v0, v16

    invoke-direct {v0, v8, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    const/16 v5, 0x1400

    new-array v0, v5, [B

    move-object/from16 v17, v0

    const-wide/16 v7, 0x0

    const-wide/16 v5, 0x0

    :goto_3
    const/4 v11, 0x0

    const/16 v12, 0x1400

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v11, v12}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_c

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/yiliao/android/openapis/sdk/b;->c:Z

    if-nez v12, :cond_c

    int-to-long v0, v11

    move-wide/from16 v18, v0

    add-long v9, v9, v18

    const/4 v12, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v12, v11}, Ljava/io/RandomAccessFile;->write([BII)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long v18, v9, v7

    const-wide/16 v20, 0x1400

    cmp-long v18, v18, v20

    if-lez v18, :cond_2

    sub-long v18, v11, v5

    const-wide/16 v20, 0x5dc

    cmp-long v18, v18, v20

    if-lez v18, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/yiliao/android/openapis/sdk/b;->a:Lcom/yiliao/android/openapis/sdk/e;

    long-to-int v6, v9

    int-to-long v6, v6

    invoke-interface {v5, v6, v7}, Lcom/yiliao/android/openapis/sdk/e;->b(J)V

    move-wide v5, v11

    move-wide v7, v9

    :cond_2
    const-wide/16 v11, 0x0

    cmp-long v11, v13, v11

    if-lez v11, :cond_9

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/yiliao/android/openapis/sdk/b;->b:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v18, "current bytes "

    move-object/from16 v0, v18

    invoke-direct {v12, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v18, " total bytes "

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v18, " : "

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-wide/16 v18, 0x64

    mul-long v18, v18, v9

    div-long v18, v18, v13

    move-wide/from16 v0, v18

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v18, "/100"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    :catch_0
    move-exception v2

    :goto_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/yiliao/android/openapis/sdk/b;->b:Ljava/lang/String;

    const-string v6, "download err "

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yiliao/android/openapis/sdk/b;->a:Lcom/yiliao/android/openapis/sdk/e;

    invoke-interface {v2}, Lcom/yiliao/android/openapis/sdk/e;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_3

    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_3
    :goto_5
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_4
    :goto_6
    return-void

    :cond_5
    :try_start_4
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v2

    const-string v5, "proxySet"

    invoke-virtual {v2, v5}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v2

    const-string v5, "http.proxyHost"

    invoke-virtual {v2, v5}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v2

    const-string v5, "http.proxyPort"

    invoke-virtual {v2, v5}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :catch_1
    move-exception v2

    :goto_7
    :try_start_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/yiliao/android/openapis/sdk/b;->b:Ljava/lang/String;

    const-string v6, "download err "

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yiliao/android/openapis/sdk/b;->a:Lcom/yiliao/android/openapis/sdk/e;

    invoke-interface {v2}, Lcom/yiliao/android/openapis/sdk/e;->b()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v3, :cond_6

    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_6
    :goto_8
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_6

    :cond_7
    :try_start_7
    aget-object v10, v5, v2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/yiliao/android/openapis/sdk/b;->b:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-interface {v10}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, " :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface {v10}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yiliao/android/openapis/sdk/b;->a:Lcom/yiliao/android/openapis/sdk/e;

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/yiliao/android/openapis/sdk/b;->d:J

    invoke-interface {v2, v9, v10}, Lcom/yiliao/android/openapis/sdk/e;->a(J)V

    move-wide v13, v6

    goto/16 :goto_2

    :cond_9
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/yiliao/android/openapis/sdk/b;->b:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v18, "current bytes "

    move-object/from16 v0, v18

    invoke-direct {v12, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v18, " total bytes "

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception v2

    :goto_9
    if-eqz v3, :cond_a

    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    :cond_a
    :goto_a
    if-eqz v4, :cond_b

    invoke-virtual {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_b
    throw v2

    :cond_c
    cmp-long v2, v9, v13

    if-nez v2, :cond_f

    :try_start_9
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "chmod 666 "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "file://"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "application/vnd.android.package-archive"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v5, 0x10000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yiliao/android/openapis/sdk/b;->a:Lcom/yiliao/android/openapis/sdk/e;

    invoke-interface {v2}, Lcom/yiliao/android/openapis/sdk/e;->a()V

    :goto_b
    invoke-virtual/range {v16 .. v16}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_d
    :goto_c
    if-eqz v3, :cond_e

    :try_start_a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    :cond_e
    :goto_d
    invoke-virtual {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto/16 :goto_6

    :cond_f
    const-wide/16 v5, 0x0

    cmp-long v2, v9, v5

    if-lez v2, :cond_10

    const-wide/16 v5, 0x0

    cmp-long v2, v13, v5

    if-nez v2, :cond_10

    :try_start_b
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "chmod 666 "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "file://"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "application/vnd.android.package-archive"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v5, 0x10000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yiliao/android/openapis/sdk/b;->a:Lcom/yiliao/android/openapis/sdk/e;

    invoke-interface {v2}, Lcom/yiliao/android/openapis/sdk/e;->a()V

    goto :goto_b

    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yiliao/android/openapis/sdk/b;->a:Lcom/yiliao/android/openapis/sdk/e;

    invoke-interface {v2}, Lcom/yiliao/android/openapis/sdk/e;->b()V

    goto :goto_b

    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yiliao/android/openapis/sdk/b;->a:Lcom/yiliao/android/openapis/sdk/e;

    invoke-interface {v2}, Lcom/yiliao/android/openapis/sdk/e;->b()V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_c

    :catch_2
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yiliao/android/openapis/sdk/b;->b:Ljava/lang/String;

    const-string v5, "InputStream close is err"

    invoke-static {v3, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    :catch_3
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yiliao/android/openapis/sdk/b;->b:Ljava/lang/String;

    const-string v5, "InputStream close is err"

    invoke-static {v3, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_8

    :catch_4
    move-exception v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/yiliao/android/openapis/sdk/b;->b:Ljava/lang/String;

    const-string v6, "InputStream close is err"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_a

    :catch_5
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yiliao/android/openapis/sdk/b;->b:Ljava/lang/String;

    const-string v5, "InputStream close is err"

    invoke-static {v3, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_d

    :catchall_1
    move-exception v2

    move-object v4, v5

    goto/16 :goto_9

    :catch_6
    move-exception v2

    move-object v4, v5

    goto/16 :goto_7

    :catch_7
    move-exception v2

    move-object v4, v5

    goto/16 :goto_4
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yiliao/android/openapis/sdk/b;->c:Z

    return-void
.end method
