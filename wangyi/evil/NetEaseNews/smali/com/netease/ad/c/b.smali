.class public Lcom/netease/ad/c/b;
.super Lcom/netease/ad/c/a;


# instance fields
.field c:Lcom/netease/ad/a/a/f;

.field d:Ljava/lang/String;

.field e:Z

.field private f:Landroid/content/Context;

.field private g:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 7

    const/4 v2, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    invoke-direct/range {v0 .. v6}, Lcom/netease/ad/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    invoke-direct {p0}, Lcom/netease/ad/c/a;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/netease/ad/c/b;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/ad/c/b;->e:Z

    invoke-static {}, Lcom/netease/ad/f;->a()Lcom/netease/ad/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ad/f;->c()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ad/c/b;->f:Landroid/content/Context;

    new-instance v0, Lcom/netease/ad/a/a/f;

    invoke-direct {v0}, Lcom/netease/ad/a/a/f;-><init>()V

    iput-object v0, p0, Lcom/netease/ad/c/b;->c:Lcom/netease/ad/a/a/f;

    iget-object v0, p0, Lcom/netease/ad/c/b;->c:Lcom/netease/ad/a/a/f;

    invoke-virtual {v0, p1}, Lcom/netease/ad/a/a/f;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b()V
    .locals 8

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/netease/ad/c/b;->f:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/netease/ad/c/b;->g:Landroid/app/NotificationManager;

    const-string v0, "\u6b63\u5728\u4e0b\u8f7d"

    const-string v1, "\u7f51\u6613\u79fb\u52a8\u5e7f\u544a"

    const-string v2, "\u5df2\u4e0b\u8f7d"

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/netease/ad/c/b;->f:Landroid/content/Context;

    iget-object v5, p0, Lcom/netease/ad/c/b;->f:Landroid/content/Context;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v4, 0x20000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/netease/ad/c/b;->f:Landroid/content/Context;

    invoke-static {v4, v6, v3, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    new-instance v4, Landroid/app/Notification;

    const v5, 0x108000a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v4, v5, v0, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iget v0, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, v4, Landroid/app/Notification;->flags:I

    iget-object v0, p0, Lcom/netease/ad/c/b;->f:Landroid/content/Context;

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/netease/ad/c/b;->g:Landroid/app/NotificationManager;

    const/16 v1, 0x3e7

    invoke-virtual {v0, v1, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method


# virtual methods
.method a()Lcom/netease/ad/a/a/f;
    .locals 1

    iget-object v0, p0, Lcom/netease/ad/c/b;->c:Lcom/netease/ad/a/a/f;

    return-object v0
.end method

.method a(Ljava/io/InputStream;)Lcom/netease/ad/e/a;
    .locals 8

    const/4 v7, -0x1

    const/4 v6, 0x0

    new-instance v1, Lcom/netease/ad/e/b;

    invoke-direct {v1}, Lcom/netease/ad/e/b;-><init>()V

    iget-boolean v0, p0, Lcom/netease/ad/c/b;->e:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/netease/ad/c/b;->e:Z

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/netease/ad/b/i;->a(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "temp.apk"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v3, 0x400

    new-array v3, v3, [B

    :goto_0
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_2

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    iput v7, v1, Lcom/netease/ad/e/b;->c:I

    :cond_1
    :goto_1
    iput-boolean v6, p0, Lcom/netease/ad/c/b;->e:Z

    return-object v1

    :cond_2
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x0

    iput v0, v1, Lcom/netease/ad/e/b;->c:I

    iput-object v2, v1, Lcom/netease/ad/e/b;->d:Ljava/io/File;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    iput v7, v1, Lcom/netease/ad/e/b;->c:I

    goto :goto_1
.end method

.method protected varargs a([Lcom/netease/ad/a/a/f;)Lcom/netease/ad/e/a;
    .locals 5

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    aget-object v0, p1, v0

    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-virtual {v0}, Lcom/netease/ad/a/a/f;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    :try_start_1
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/netease/ad/c/b;->a(Ljava/io/InputStream;)Lcom/netease/ad/e/a;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    :goto_1
    return-object v1

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v0, v1

    :goto_3
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_4
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v0

    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_4

    :catch_2
    move-exception v2

    goto :goto_3

    :catch_3
    move-exception v2

    goto :goto_2

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method protected a(Lcom/netease/ad/e/a;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/netease/ad/c/a;->a(Lcom/netease/ad/e/a;)V

    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Lcom/netease/ad/a/a/f;

    invoke-virtual {p0, p1}, Lcom/netease/ad/c/b;->a([Lcom/netease/ad/a/a/f;)Lcom/netease/ad/e/a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/netease/ad/e/a;

    invoke-virtual {p0, p1}, Lcom/netease/ad/c/b;->a(Lcom/netease/ad/e/a;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    invoke-direct {p0}, Lcom/netease/ad/c/b;->b()V

    invoke-super {p0}, Lcom/netease/ad/c/a;->onPreExecute()V

    return-void
.end method
