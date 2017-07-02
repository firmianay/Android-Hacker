.class public Lcom/netease/util/cache/d;
.super Lcom/netease/util/cache/m;


# static fields
.field private static c:Lcom/netease/util/cache/d;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/netease/util/cache/n;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netease/util/cache/m;-><init>(Landroid/content/Context;Lcom/netease/util/cache/n;)V

    return-void
.end method

.method public static declared-synchronized a()Lcom/netease/util/cache/d;
    .locals 2

    const-class v0, Lcom/netease/util/cache/d;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/netease/util/cache/d;->c:Lcom/netease/util/cache/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/netease/util/cache/n;)Lcom/netease/util/cache/d;
    .locals 2

    const-class v1, Lcom/netease/util/cache/d;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/netease/util/cache/d;->c:Lcom/netease/util/cache/d;

    if-nez v0, :cond_2

    if-nez p1, :cond_0

    new-instance p1, Lcom/netease/util/cache/e;

    invoke-direct {p1}, Lcom/netease/util/cache/e;-><init>()V

    :cond_0
    new-instance v0, Lcom/netease/util/cache/d;

    invoke-direct {v0, p0, p1}, Lcom/netease/util/cache/d;-><init>(Landroid/content/Context;Lcom/netease/util/cache/n;)V

    sput-object v0, Lcom/netease/util/cache/d;->c:Lcom/netease/util/cache/d;

    :cond_1
    :goto_0
    sget-object v0, Lcom/netease/util/cache/d;->c:Lcom/netease/util/cache/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_2
    :try_start_1
    sget-object v0, Lcom/netease/util/cache/d;->c:Lcom/netease/util/cache/d;

    invoke-virtual {v0}, Lcom/netease/util/cache/d;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/netease/util/cache/d;->c:Lcom/netease/util/cache/d;

    invoke-virtual {v0, p0}, Lcom/netease/util/cache/d;->b(Landroid/content/Context;)V
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

    const-string v0, "file"

    invoke-virtual {p0, p1, v0}, Lcom/netease/util/cache/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    invoke-virtual {p0}, Lcom/netease/util/cache/d;->f()V

    invoke-virtual {p0, p1}, Lcom/netease/util/cache/d;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    return-object v0
.end method

.method protected synthetic a(Lcom/netease/util/cache/a/h;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/netease/util/cache/d;->b(Lcom/netease/util/cache/a/h;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/netease/util/cache/a/e;)V
    .locals 1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/netease/util/cache/a/e;->a()V

    iget-object v0, p0, Lcom/netease/util/cache/d;->a:Lcom/netease/util/cache/a/b;

    invoke-virtual {v0}, Lcom/netease/util/cache/a/b;->c()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Lcom/netease/util/cache/a/e;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/netease/util/cache/d;->a:Lcom/netease/util/cache/a/b;

    invoke-virtual {v0, p1}, Lcom/netease/util/cache/a/b;->b(Ljava/lang/String;)Lcom/netease/util/cache/a/e;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b(Lcom/netease/util/cache/a/h;)Ljava/io/File;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1, v1}, Lcom/netease/util/cache/a/h;->b(I)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    throw v0
.end method
