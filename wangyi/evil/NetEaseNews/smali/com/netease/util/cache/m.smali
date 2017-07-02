.class public abstract Lcom/netease/util/cache/m;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lcom/netease/util/cache/a/b;

.field protected b:Lcom/netease/util/cache/n;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/netease/util/cache/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/netease/util/cache/m;->b:Lcom/netease/util/cache/n;

    invoke-virtual {p0, p1}, Lcom/netease/util/cache/m;->b(Landroid/content/Context;)V

    return-void
.end method

.method private static a(Ljava/io/File;)V
    .locals 5

    invoke-static {p0}, Lcom/netease/util/cache/m;->d(Ljava/io/File;)[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_2

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v3}, Lcom/netease/util/cache/m;->a(Ljava/io/File;)V

    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to delete file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private b(Ljava/io/File;)V
    .locals 13

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/netease/util/cache/m;->d(Ljava/io/File;)[Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    array-length v7, v4

    move v3, v2

    :goto_0
    if-ge v3, v7, :cond_4

    aget-object v8, v4, v3

    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v8}, Lcom/netease/util/cache/m;->b(Ljava/io/File;)V

    :cond_0
    invoke-virtual {v8}, Ljava/io/File;->lastModified()J

    move-result-wide v9

    iget-object v0, p0, Lcom/netease/util/cache/m;->b:Lcom/netease/util/cache/n;

    iget-wide v11, v0, Lcom/netease/util/cache/n;->f:J

    add-long/2addr v9, v11

    cmp-long v0, v9, v5

    if-gez v0, :cond_1

    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    const-string v0, "journal"

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    if-eqz v0, :cond_3

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to delete file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_4
    return-void
.end method

.method private c(Ljava/io/File;)J
    .locals 6

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    const/4 v2, 0x0

    :goto_1
    array-length v4, v3

    if-ge v2, v4, :cond_0

    aget-object v4, v3, v2

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_2

    aget-object v4, v3, v2

    invoke-virtual {v4}, Ljava/io/File;->length()J
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    add-long/2addr v0, v4

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method private static d(Ljava/io/File;)[Ljava/io/File;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected abstract a(Landroid/content/Context;)Ljava/io/File;
.end method

.method protected a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/netease/util/cache/r;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1, p2}, Lcom/netease/util/cache/r;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    :try_start_0
    invoke-static {p1, p2}, Lcom/netease/util/cache/r;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/util/cache/m;->a(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/netease/util/cache/m;->b:Lcom/netease/util/cache/n;

    iget-boolean v1, v1, Lcom/netease/util/cache/n;->h:Z

    if-eqz v1, :cond_0

    invoke-static {p1, p2}, Lcom/netease/util/cache/r;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Lcom/netease/util/cache/a/h;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/netease/util/cache/m;->a:Lcom/netease/util/cache/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/util/cache/m;->a:Lcom/netease/util/cache/a/b;

    invoke-virtual {v0}, Lcom/netease/util/cache/a/b;->b()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/netease/util/cache/m;->a:Lcom/netease/util/cache/a/b;

    invoke-virtual {v0}, Lcom/netease/util/cache/a/b;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/util/cache/m;->a:Lcom/netease/util/cache/a/b;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method protected b(Landroid/content/Context;)V
    .locals 7

    const-wide/16 v5, 0x3

    :try_start_0
    iget-object v0, p0, Lcom/netease/util/cache/m;->a:Lcom/netease/util/cache/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/util/cache/m;->a:Lcom/netease/util/cache/a/b;

    invoke-virtual {v0}, Lcom/netease/util/cache/a/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/netease/util/cache/m;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/util/cache/r;->a(Ljava/io/File;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/netease/util/cache/m;->b:Lcom/netease/util/cache/n;

    invoke-virtual {v3}, Lcom/netease/util/cache/n;->a()J

    move-result-wide v3

    mul-long/2addr v3, v5

    cmp-long v3, v3, v1

    if-lez v3, :cond_3

    iget-object v3, p0, Lcom/netease/util/cache/m;->b:Lcom/netease/util/cache/n;

    const-wide/16 v4, 0x3

    div-long/2addr v1, v4

    invoke-virtual {v3, v1, v2}, Lcom/netease/util/cache/n;->a(J)V

    :cond_3
    iget-object v1, p0, Lcom/netease/util/cache/m;->b:Lcom/netease/util/cache/n;

    iget-boolean v1, v1, Lcom/netease/util/cache/n;->e:Z

    if-eqz v1, :cond_4

    invoke-static {v0}, Lcom/netease/util/cache/m;->a(Ljava/io/File;)V

    :cond_4
    iget-object v1, p0, Lcom/netease/util/cache/m;->b:Lcom/netease/util/cache/n;

    iget-boolean v1, v1, Lcom/netease/util/cache/n;->g:Z

    if-eqz v1, :cond_5

    invoke-direct {p0, v0}, Lcom/netease/util/cache/m;->b(Ljava/io/File;)V

    :cond_5
    const v1, 0x311f5

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/netease/util/cache/m;->b:Lcom/netease/util/cache/n;

    invoke-virtual {v3}, Lcom/netease/util/cache/n;->a()J

    move-result-wide v3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/netease/util/cache/a/b;->a(Ljava/io/File;IIJ)Lcom/netease/util/cache/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/util/cache/m;->a:Lcom/netease/util/cache/a/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public c()V
    .locals 1

    invoke-virtual {p0}, Lcom/netease/util/cache/m;->e()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/util/cache/m;->b()V

    :try_start_0
    invoke-static {v0}, Lcom/netease/util/cache/m;->a(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public c(Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p0}, Lcom/netease/util/cache/m;->b()V

    invoke-virtual {p0, p1}, Lcom/netease/util/cache/m;->b(Landroid/content/Context;)V

    return-void
.end method

.method public d(Ljava/lang/String;)Ljava/io/File;
    .locals 4

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/netease/util/cache/m;->e()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/netease/util/cache/m;->a:Lcom/netease/util/cache/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/util/cache/m;->a:Lcom/netease/util/cache/a/b;

    invoke-virtual {v0}, Lcom/netease/util/cache/a/b;->a()Ljava/io/File;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized e(Ljava/lang/String;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netease/util/cache/m;->a:Lcom/netease/util/cache/a/b;

    invoke-virtual {v0, p1}, Lcom/netease/util/cache/a/b;->c(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/netease/util/cache/m;->a:Lcom/netease/util/cache/a/b;

    invoke-virtual {v0}, Lcom/netease/util/cache/a/b;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected f(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/netease/util/cache/m;->a:Lcom/netease/util/cache/a/b;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/netease/util/cache/m;->a:Lcom/netease/util/cache/a/b;

    invoke-virtual {v1, p1}, Lcom/netease/util/cache/a/b;->a(Ljava/lang/String;)Lcom/netease/util/cache/a/h;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_2

    :try_start_1
    invoke-virtual {p0, v2}, Lcom/netease/util/cache/m;->a(Lcom/netease/util/cache/a/h;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/netease/util/cache/a/h;->close()V

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/netease/util/cache/a/h;->close()V

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v2, v0

    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/netease/util/cache/a/h;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/netease/util/cache/a/h;->close()V

    :cond_3
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method protected f()V
    .locals 1

    invoke-virtual {p0}, Lcom/netease/util/cache/m;->e()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/netease/util/cache/m;->h()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/netease/util/cache/m;->b()V

    :cond_1
    return-void
.end method

.method public declared-synchronized g()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/netease/util/cache/m;->e()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/util/cache/m;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-direct {p0, v0}, Lcom/netease/util/cache/m;->b(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public h()Z
    .locals 1

    iget-object v0, p0, Lcom/netease/util/cache/m;->a:Lcom/netease/util/cache/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/util/cache/m;->a:Lcom/netease/util/cache/a/b;

    invoke-virtual {v0}, Lcom/netease/util/cache/a/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()J
    .locals 2

    invoke-virtual {p0}, Lcom/netease/util/cache/m;->e()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/util/cache/m;->c(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method
