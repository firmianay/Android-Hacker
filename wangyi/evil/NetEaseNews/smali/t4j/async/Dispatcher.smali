.class public final Lt4j/async/Dispatcher;
.super Ljava/lang/Object;


# instance fields
.field private active:Z

.field private q:Ljava/util/List;

.field private threads:[Lt4j/async/ExecuteThread;

.field ticket:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 5

    const/4 v4, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lt4j/async/Dispatcher;->q:Ljava/util/List;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lt4j/async/Dispatcher;->ticket:Ljava/lang/Object;

    iput-boolean v4, p0, Lt4j/async/Dispatcher;->active:Z

    new-array v0, p1, [Lt4j/async/ExecuteThread;

    iput-object v0, p0, Lt4j/async/Dispatcher;->threads:[Lt4j/async/ExecuteThread;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lt4j/async/Dispatcher;->threads:[Lt4j/async/ExecuteThread;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v1, Lt4j/async/Dispatcher$1;

    invoke-direct {v1, p0}, Lt4j/async/Dispatcher$1;-><init>(Lt4j/async/Dispatcher;)V

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    return-void

    :cond_0
    iget-object v1, p0, Lt4j/async/Dispatcher;->threads:[Lt4j/async/ExecuteThread;

    new-instance v2, Lt4j/async/ExecuteThread;

    const-string v3, "TBlog4J Async Dispatcher"

    invoke-direct {v2, v3, p0, v0}, Lt4j/async/ExecuteThread;-><init>(Ljava/lang/String;Lt4j/async/Dispatcher;I)V

    aput-object v2, v1, v0

    iget-object v1, p0, Lt4j/async/Dispatcher;->threads:[Lt4j/async/ExecuteThread;

    aget-object v1, v1, v0

    invoke-virtual {v1, v4}, Lt4j/async/ExecuteThread;->setDaemon(Z)V

    iget-object v1, p0, Lt4j/async/Dispatcher;->threads:[Lt4j/async/ExecuteThread;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lt4j/async/ExecuteThread;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic access$0(Lt4j/async/Dispatcher;)Z
    .locals 1

    iget-boolean v0, p0, Lt4j/async/Dispatcher;->active:Z

    return v0
.end method


# virtual methods
.method public declared-synchronized invokeLater(Ljava/lang/Runnable;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lt4j/async/Dispatcher;->q:Ljava/util/List;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lt4j/async/Dispatcher;->q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lt4j/async/Dispatcher;->ticket:Ljava/lang/Object;

    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v0, p0, Lt4j/async/Dispatcher;->ticket:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
.end method

.method public poll()Ljava/lang/Runnable;
    .locals 3

    :goto_0
    iget-boolean v0, p0, Lt4j/async/Dispatcher;->active:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    iget-object v1, p0, Lt4j/async/Dispatcher;->q:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lt4j/async/Dispatcher;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lt4j/async/Dispatcher;->q:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lt4j/async/Dispatcher;->ticket:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2
    iget-object v0, p0, Lt4j/async/Dispatcher;->ticket:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_2
    :try_start_3
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method public declared-synchronized shutdown()V
    .locals 4

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lt4j/async/Dispatcher;->active:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lt4j/async/Dispatcher;->active:Z

    iget-object v1, p0, Lt4j/async/Dispatcher;->threads:[Lt4j/async/ExecuteThread;

    array-length v2, v1

    :goto_0
    if-lt v0, v2, :cond_0

    iget-object v1, p0, Lt4j/async/Dispatcher;->ticket:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lt4j/async/Dispatcher;->ticket:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_2
    aget-object v3, v1, v0

    invoke-virtual {v3}, Lt4j/async/ExecuteThread;->shutdown()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already shutdown"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
.end method
