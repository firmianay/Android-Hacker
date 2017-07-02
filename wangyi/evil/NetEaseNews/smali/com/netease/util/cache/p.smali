.class public Lcom/netease/util/cache/p;
.super Lcom/netease/util/cache/m;


# static fields
.field private static c:Lcom/netease/util/cache/p;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/netease/util/cache/n;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netease/util/cache/m;-><init>(Landroid/content/Context;Lcom/netease/util/cache/n;)V

    return-void
.end method

.method public static declared-synchronized a()Lcom/netease/util/cache/p;
    .locals 2

    const-class v0, Lcom/netease/util/cache/p;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/netease/util/cache/p;->c:Lcom/netease/util/cache/p;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/netease/util/cache/n;)Lcom/netease/util/cache/p;
    .locals 2

    const-class v1, Lcom/netease/util/cache/p;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/netease/util/cache/p;->c:Lcom/netease/util/cache/p;

    if-nez v0, :cond_2

    if-nez p1, :cond_0

    new-instance p1, Lcom/netease/util/cache/n;

    invoke-direct {p1}, Lcom/netease/util/cache/n;-><init>()V

    :cond_0
    new-instance v0, Lcom/netease/util/cache/p;

    invoke-direct {v0, p0, p1}, Lcom/netease/util/cache/p;-><init>(Landroid/content/Context;Lcom/netease/util/cache/n;)V

    sput-object v0, Lcom/netease/util/cache/p;->c:Lcom/netease/util/cache/p;

    :cond_1
    :goto_0
    sget-object v0, Lcom/netease/util/cache/p;->c:Lcom/netease/util/cache/p;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_2
    :try_start_1
    sget-object v0, Lcom/netease/util/cache/p;->c:Lcom/netease/util/cache/p;

    invoke-virtual {v0}, Lcom/netease/util/cache/p;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/netease/util/cache/p;->c:Lcom/netease/util/cache/p;

    invoke-virtual {v0, p0}, Lcom/netease/util/cache/p;->b(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected a(Landroid/content/Context;)Ljava/io/File;
    .locals 1

    const-string v0, "object"

    invoke-virtual {p0, p1, v0}, Lcom/netease/util/cache/p;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/netease/util/cache/a/h;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1, v2}, Lcom/netease/util/cache/a/h;->a(I)Ljava/io/InputStream;

    move-result-object v3

    if-eqz v3, :cond_2

    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v1

    move-object v2, v0

    :goto_1
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v2, :cond_0

    :try_start_5
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_2
    if-eqz v2, :cond_3

    :try_start_6
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    :cond_3
    :goto_3
    throw v0

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/netease/util/cache/p;->f()V

    invoke-virtual {p0, p1}, Lcom/netease/util/cache/p;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5

    invoke-virtual {p0}, Lcom/netease/util/cache/p;->f()V

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/netease/util/cache/p;->a:Lcom/netease/util/cache/a/b;

    invoke-virtual {v0, p1}, Lcom/netease/util/cache/a/b;->b(Ljava/lang/String;)Lcom/netease/util/cache/a/e;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v0, Ljava/io/ObjectOutputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/netease/util/cache/a/e;->a(I)Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/netease/util/cache/a/e;->a()V

    iget-object v1, p0, Lcom/netease/util/cache/p;->a:Lcom/netease/util/cache/a/b;

    invoke-virtual {v1}, Lcom/netease/util/cache/a/b;->c()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v0, v1

    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_3
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :goto_4
    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method
