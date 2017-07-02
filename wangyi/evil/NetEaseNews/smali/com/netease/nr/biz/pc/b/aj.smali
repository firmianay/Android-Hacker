.class final Lcom/netease/nr/biz/pc/b/aj;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/pc/b/ai;


# direct methods
.method public constructor <init>(Lcom/netease/nr/biz/pc/b/ai;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/pc/b/aj;->a:Lcom/netease/nr/biz/pc/b/ai;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const/16 v2, 0x64

    iget-object v0, p0, Lcom/netease/nr/biz/pc/b/aj;->a:Lcom/netease/nr/biz/pc/b/ai;

    invoke-static {v0}, Lcom/netease/nr/biz/pc/b/ai;->a(Lcom/netease/nr/biz/pc/b/ai;)V

    iget-object v0, p0, Lcom/netease/nr/biz/pc/b/aj;->a:Lcom/netease/nr/biz/pc/b/ai;

    invoke-static {v0}, Lcom/netease/nr/biz/pc/b/ai;->b(Lcom/netease/nr/biz/pc/b/ai;)Ljava/util/LinkedList;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/netease/nr/biz/pc/b/aj;->a:Lcom/netease/nr/biz/pc/b/ai;

    invoke-static {v0}, Lcom/netease/nr/biz/pc/b/ai;->b(Lcom/netease/nr/biz/pc/b/ai;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/pc/b/aj;->a:Lcom/netease/nr/biz/pc/b/ai;

    invoke-static {v0}, Lcom/netease/nr/biz/pc/b/ai;->c(Lcom/netease/nr/biz/pc/b/ai;)V

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    invoke-virtual {p0, v2}, Lcom/netease/nr/biz/pc/b/aj;->removeMessages(I)V

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, v2, v0, v1}, Lcom/netease/nr/biz/pc/b/aj;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
