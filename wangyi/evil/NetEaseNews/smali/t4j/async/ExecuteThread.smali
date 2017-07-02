.class Lt4j/async/ExecuteThread;
.super Ljava/lang/Thread;


# instance fields
.field private alive:Z

.field q:Lt4j/async/Dispatcher;


# direct methods
.method constructor <init>(Ljava/lang/String;Lt4j/async/Dispatcher;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lt4j/async/ExecuteThread;->alive:Z

    iput-object p2, p0, Lt4j/async/ExecuteThread;->q:Lt4j/async/Dispatcher;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lt4j/async/ExecuteThread;->alive:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lt4j/async/ExecuteThread;->q:Lt4j/async/Dispatcher;

    invoke-virtual {v0}, Lt4j/async/Dispatcher;->poll()Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public shutdown()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lt4j/async/ExecuteThread;->alive:Z

    return-void
.end method
