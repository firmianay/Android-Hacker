.class public final Lcom/netease/util/cache/a/e;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/netease/util/cache/a/b;

.field private final b:Lcom/netease/util/cache/a/g;

.field private final c:[Z

.field private d:Z

.field private e:Z


# direct methods
.method private constructor <init>(Lcom/netease/util/cache/a/b;Lcom/netease/util/cache/a/g;)V
    .locals 1

    iput-object p1, p0, Lcom/netease/util/cache/a/e;->a:Lcom/netease/util/cache/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/netease/util/cache/a/e;->b:Lcom/netease/util/cache/a/g;

    invoke-static {p2}, Lcom/netease/util/cache/a/g;->d(Lcom/netease/util/cache/a/g;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/netease/util/cache/a/e;->c:[Z

    return-void

    :cond_0
    invoke-static {p1}, Lcom/netease/util/cache/a/b;->e(Lcom/netease/util/cache/a/b;)I

    move-result v0

    new-array v0, v0, [Z

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/netease/util/cache/a/b;Lcom/netease/util/cache/a/g;Lcom/netease/util/cache/a/c;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netease/util/cache/a/e;-><init>(Lcom/netease/util/cache/a/b;Lcom/netease/util/cache/a/g;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/util/cache/a/e;)Lcom/netease/util/cache/a/g;
    .locals 1

    iget-object v0, p0, Lcom/netease/util/cache/a/e;->b:Lcom/netease/util/cache/a/g;

    return-object v0
.end method

.method static synthetic a(Lcom/netease/util/cache/a/e;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/netease/util/cache/a/e;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/netease/util/cache/a/e;)[Z
    .locals 1

    iget-object v0, p0, Lcom/netease/util/cache/a/e;->c:[Z

    return-object v0
.end method


# virtual methods
.method public a(I)Ljava/io/OutputStream;
    .locals 4

    iget-object v2, p0, Lcom/netease/util/cache/a/e;->a:Lcom/netease/util/cache/a/b;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/netease/util/cache/a/e;->b:Lcom/netease/util/cache/a/g;

    invoke-static {v0}, Lcom/netease/util/cache/a/g;->a(Lcom/netease/util/cache/a/g;)Lcom/netease/util/cache/a/e;

    move-result-object v0

    if-eq v0, p0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/netease/util/cache/a/e;->b:Lcom/netease/util/cache/a/g;

    invoke-static {v0}, Lcom/netease/util/cache/a/g;->d(Lcom/netease/util/cache/a/g;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netease/util/cache/a/e;->c:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    :cond_1
    iget-object v0, p0, Lcom/netease/util/cache/a/e;->b:Lcom/netease/util/cache/a/g;

    invoke-virtual {v0, p1}, Lcom/netease/util/cache/a/g;->b(I)Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    :try_start_2
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v0

    :goto_0
    :try_start_3
    new-instance v0, Lcom/netease/util/cache/a/f;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v3}, Lcom/netease/util/cache/a/f;-><init>(Lcom/netease/util/cache/a/e;Ljava/io/OutputStream;Lcom/netease/util/cache/a/c;)V

    monitor-exit v2

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/netease/util/cache/a/e;->a:Lcom/netease/util/cache/a/b;

    invoke-static {v0}, Lcom/netease/util/cache/a/b;->f(Lcom/netease/util/cache/a/b;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v1, v0

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_5
    invoke-static {}, Lcom/netease/util/cache/a/b;->e()Ljava/io/OutputStream;

    move-result-object v0

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public a()V
    .locals 3

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/netease/util/cache/a/e;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/util/cache/a/e;->a:Lcom/netease/util/cache/a/b;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/netease/util/cache/a/b;->a(Lcom/netease/util/cache/a/b;Lcom/netease/util/cache/a/e;Z)V

    iget-object v0, p0, Lcom/netease/util/cache/a/e;->a:Lcom/netease/util/cache/a/b;

    iget-object v1, p0, Lcom/netease/util/cache/a/e;->b:Lcom/netease/util/cache/a/g;

    invoke-static {v1}, Lcom/netease/util/cache/a/g;->c(Lcom/netease/util/cache/a/g;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/util/cache/a/b;->c(Ljava/lang/String;)Z

    :goto_0
    iput-boolean v2, p0, Lcom/netease/util/cache/a/e;->e:Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/util/cache/a/e;->a:Lcom/netease/util/cache/a/b;

    invoke-static {v0, p0, v2}, Lcom/netease/util/cache/a/b;->a(Lcom/netease/util/cache/a/b;Lcom/netease/util/cache/a/e;Z)V

    goto :goto_0
.end method

.method public a(ILjava/lang/String;)V
    .locals 4

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-virtual {p0, p1}, Lcom/netease/util/cache/a/e;->a(I)Ljava/io/OutputStream;

    move-result-object v0

    sget-object v3, Lcom/netease/util/cache/a/a;->b:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v1}, Lcom/netease/util/cache/a/i;->a(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_0
    invoke-static {v1}, Lcom/netease/util/cache/a/i;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/netease/util/cache/a/e;->a:Lcom/netease/util/cache/a/b;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/netease/util/cache/a/b;->a(Lcom/netease/util/cache/a/b;Lcom/netease/util/cache/a/e;Z)V

    return-void
.end method

.method public c()V
    .locals 1

    iget-boolean v0, p0, Lcom/netease/util/cache/a/e;->e:Z

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/netease/util/cache/a/e;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
