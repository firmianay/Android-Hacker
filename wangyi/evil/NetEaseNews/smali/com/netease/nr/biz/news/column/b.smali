.class Lcom/netease/nr/biz/news/column/b;
.super Landroid/database/ContentObserver;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/news/column/a;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/news/column/a;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/news/column/b;->a:Lcom/netease/nr/biz/news/column/a;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/netease/nr/biz/news/column/b;->a:Lcom/netease/nr/biz/news/column/a;

    invoke-static {v0, v2}, Lcom/netease/nr/biz/news/column/a;->a(Lcom/netease/nr/biz/news/column/a;Z)V

    invoke-static {}, Lcom/netease/nr/biz/news/column/a;->f()Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/netease/nr/biz/news/column/a;->f()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/column/b;->a:Lcom/netease/nr/biz/news/column/a;

    invoke-static {v0}, Lcom/netease/nr/biz/news/column/a;->c(Lcom/netease/nr/biz/news/column/a;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "top_column_changed"

    invoke-static {v0, v1, v2}, Lcom/netease/util/g/a;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
