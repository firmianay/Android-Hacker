.class public Lcom/netease/util/cache/a;
.super Lcom/netease/util/cache/m;


# static fields
.field private static final c:Landroid/graphics/Bitmap$CompressFormat;

.field private static d:Lcom/netease/util/cache/a;


# instance fields
.field private e:Lcom/netease/util/cache/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    sput-object v0, Lcom/netease/util/cache/a;->c:Landroid/graphics/Bitmap$CompressFormat;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/netease/util/cache/c;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/netease/util/cache/m;-><init>(Landroid/content/Context;Lcom/netease/util/cache/n;)V

    iget v0, p2, Lcom/netease/util/cache/c;->a:I

    if-gez v0, :cond_0

    invoke-static {p1}, Lcom/netease/util/cache/r;->b(Landroid/content/Context;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    mul-int/lit16 v0, v0, 0x400

    div-int/lit8 v0, v0, 0x8

    iput v0, p2, Lcom/netease/util/cache/c;->a:I

    :cond_0
    iget-boolean v0, p2, Lcom/netease/util/cache/c;->d:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/netease/util/cache/b;

    iget v1, p2, Lcom/netease/util/cache/c;->a:I

    invoke-direct {v0, p0, p1, v1}, Lcom/netease/util/cache/b;-><init>(Lcom/netease/util/cache/a;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/netease/util/cache/a;->e:Lcom/netease/util/cache/k;

    :cond_1
    return-void
.end method

.method public static declared-synchronized a()Lcom/netease/util/cache/a;
    .locals 2

    const-class v0, Lcom/netease/util/cache/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/netease/util/cache/a;->d:Lcom/netease/util/cache/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/netease/util/cache/c;)Lcom/netease/util/cache/a;
    .locals 2

    const-class v1, Lcom/netease/util/cache/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/netease/util/cache/a;->d:Lcom/netease/util/cache/a;

    if-nez v0, :cond_1

    new-instance v0, Lcom/netease/util/cache/a;

    invoke-direct {v0, p0, p1}, Lcom/netease/util/cache/a;-><init>(Landroid/content/Context;Lcom/netease/util/cache/c;)V

    sput-object v0, Lcom/netease/util/cache/a;->d:Lcom/netease/util/cache/a;

    :cond_0
    :goto_0
    sget-object v0, Lcom/netease/util/cache/a;->d:Lcom/netease/util/cache/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_1
    :try_start_1
    sget-object v0, Lcom/netease/util/cache/a;->d:Lcom/netease/util/cache/a;

    invoke-virtual {v0}, Lcom/netease/util/cache/a;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netease/util/cache/a;->d:Lcom/netease/util/cache/a;

    invoke-virtual {v0, p0}, Lcom/netease/util/cache/a;->b(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic d()Landroid/graphics/Bitmap$CompressFormat;
    .locals 1

    sget-object v0, Lcom/netease/util/cache/a;->c:Landroid/graphics/Bitmap$CompressFormat;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-virtual {p0}, Lcom/netease/util/cache/a;->f()V

    invoke-virtual {p0, p1}, Lcom/netease/util/cache/a;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/netease/util/cache/a;->c(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Landroid/content/Context;)Ljava/io/File;
    .locals 1

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lcom/netease/util/cache/r;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/netease/util/cache/a/h;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/netease/util/cache/a/h;->a(I)Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public a(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/netease/util/cache/a;->e:Lcom/netease/util/cache/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/util/cache/a;->e:Lcom/netease/util/cache/k;

    invoke-virtual {v0}, Lcom/netease/util/cache/k;->a()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/netease/util/cache/a;->c()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 6

    invoke-virtual {p0}, Lcom/netease/util/cache/a;->f()V

    iget-object v0, p0, Lcom/netease/util/cache/a;->a:Lcom/netease/util/cache/a/b;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/netease/util/cache/a;->a:Lcom/netease/util/cache/a/b;

    invoke-virtual {v0, p1}, Lcom/netease/util/cache/a/b;->b(Ljava/lang/String;)Lcom/netease/util/cache/a/e;

    move-result-object v4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    move-object v3, v0

    :goto_1
    if-eqz v4, :cond_4

    new-instance v2, Ljava/io/BufferedOutputStream;

    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Lcom/netease/util/cache/a/e;->a(I)Ljava/io/OutputStream;

    move-result-object v0

    const/16 v5, 0x2000

    invoke-direct {v2, v0, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/netease/util/cache/a;->b:Lcom/netease/util/cache/n;

    check-cast v0, Lcom/netease/util/cache/c;

    iget v0, v0, Lcom/netease/util/cache/c;->c:I

    invoke-virtual {p2, v3, v0, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v4}, Lcom/netease/util/cache/a/e;->a()V

    iget-object v0, p0, Lcom/netease/util/cache/a;->a:Lcom/netease/util/cache/a/b;

    invoke-virtual {v0}, Lcom/netease/util/cache/a/b;->c()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_2
    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_3
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v3, v0

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_3
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_0

    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v1, :cond_3

    :try_start_6
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_3
    :goto_5
    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_4

    :catch_4
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :cond_4
    move-object v2, v1

    goto :goto_2
.end method

.method public b(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/netease/util/cache/a;->e:Lcom/netease/util/cache/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/util/cache/a;->e:Lcom/netease/util/cache/k;

    invoke-virtual {v0, p1}, Lcom/netease/util/cache/k;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netease/util/cache/a;->a(I)V

    invoke-super {p0}, Lcom/netease/util/cache/m;->b()V

    return-void
.end method

.method public b(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/util/cache/a;->e:Lcom/netease/util/cache/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/util/cache/a;->e:Lcom/netease/util/cache/k;

    invoke-virtual {v0, p1, p2}, Lcom/netease/util/cache/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/netease/util/cache/a;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/graphics/Bitmap;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 1

    invoke-super {p0}, Lcom/netease/util/cache/m;->c()V

    iget-object v0, p0, Lcom/netease/util/cache/a;->e:Lcom/netease/util/cache/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/util/cache/a;->e:Lcom/netease/util/cache/k;

    invoke-virtual {v0}, Lcom/netease/util/cache/k;->a()V

    :cond_0
    return-void
.end method
