.class public Lcom/netease/b/b;
.super Ljava/lang/Object;


# static fields
.field private static b:Ljava/lang/Object;

.field private static d:Lcom/netease/b/b;


# instance fields
.field private a:Landroid/os/Handler;

.field private c:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/netease/b/b;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/netease/b/b;->c:Ljava/util/HashSet;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MUAS"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/netease/b/b;->a:Landroid/os/Handler;

    return-void
.end method

.method static a()Lcom/netease/b/b;
    .locals 2

    sget-object v1, Lcom/netease/b/b;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/netease/b/b;->d:Lcom/netease/b/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/b/b;

    invoke-direct {v0}, Lcom/netease/b/b;-><init>()V

    sput-object v0, Lcom/netease/b/b;->d:Lcom/netease/b/b;

    :cond_0
    sget-object v0, Lcom/netease/b/b;->d:Lcom/netease/b/b;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a(Lcom/netease/b/a;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/netease/b/b;->a(Lcom/netease/b/a;I)V

    return-void
.end method

.method public static a(Lcom/netease/b/a;I)V
    .locals 4

    sget-object v1, Lcom/netease/b/b;->b:Ljava/lang/Object;

    monitor-enter v1

    if-nez p0, :cond_0

    :try_start_0
    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/netease/b/b;->a()Lcom/netease/b/b;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/b/b;->a:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/netease/b/a;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0}, Lcom/netease/b/b;->b(Lcom/netease/b/a;)Z

    move-result v2

    if-nez v2, :cond_1

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    if-lez p1, :cond_2

    int-to-long v2, p1

    :try_start_1
    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    monitor-exit v1

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method static b(Lcom/netease/b/a;)Z
    .locals 5

    sget-object v1, Lcom/netease/b/b;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/netease/b/b;->a()Lcom/netease/b/b;

    move-result-object v0

    iget-object v2, v0, Lcom/netease/b/b;->c:Ljava/util/HashSet;

    invoke-virtual {v2, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v2

    sget-boolean v3, Lcom/netease/b/g;->a:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "addSingleAction "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/netease/b/b;->c:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/b/g;->a(Ljava/lang/String;)V

    :cond_0
    monitor-exit v1

    return v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static c(Lcom/netease/b/a;)Z
    .locals 5

    sget-object v1, Lcom/netease/b/b;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/netease/b/b;->a()Lcom/netease/b/b;

    move-result-object v0

    iget-object v2, v0, Lcom/netease/b/b;->c:Ljava/util/HashSet;

    invoke-virtual {v2, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v2

    sget-boolean v3, Lcom/netease/b/g;->a:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "removeSingleAction "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/netease/b/b;->c:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/b/g;->a(Ljava/lang/String;)V

    :cond_0
    monitor-exit v1

    return v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
