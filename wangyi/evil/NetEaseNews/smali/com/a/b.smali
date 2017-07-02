.class Lcom/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic a:Lcom/a/a;


# direct methods
.method constructor <init>(Lcom/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/a/b;->a:Lcom/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/a/b;->a:Lcom/a/a;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/a/b;->a:Lcom/a/a;

    invoke-static {v0}, Lcom/a/a;->a(Lcom/a/a;)Ljava/io/Writer;

    move-result-object v0

    if-nez v0, :cond_0

    monitor-exit v1

    :goto_0
    return-object v3

    :cond_0
    iget-object v0, p0, Lcom/a/b;->a:Lcom/a/a;

    invoke-static {v0}, Lcom/a/a;->b(Lcom/a/a;)V

    iget-object v0, p0, Lcom/a/b;->a:Lcom/a/a;

    invoke-static {v0}, Lcom/a/a;->c(Lcom/a/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/a/b;->a:Lcom/a/a;

    invoke-static {v0}, Lcom/a/a;->d(Lcom/a/a;)V

    iget-object v0, p0, Lcom/a/b;->a:Lcom/a/a;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/a/a;->a(Lcom/a/a;I)I

    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/a/b;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
