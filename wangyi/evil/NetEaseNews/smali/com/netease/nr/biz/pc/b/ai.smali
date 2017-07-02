.class public Lcom/netease/nr/biz/pc/b/ai;
.super Ljava/lang/Object;


# static fields
.field private static e:Lcom/netease/nr/biz/pc/b/ai;


# instance fields
.field private volatile a:I

.field private volatile b:Landroid/os/Looper;

.field private volatile c:Lcom/netease/nr/biz/pc/b/aj;

.field private final d:Ljava/util/LinkedList;

.field private f:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/biz/pc/b/ai;->d:Ljava/util/LinkedList;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/pc/b/ai;->f:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/netease/nr/biz/pc/b/ai;
    .locals 2

    const-class v1, Lcom/netease/nr/biz/pc/b/ai;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/netease/nr/biz/pc/b/ai;->e:Lcom/netease/nr/biz/pc/b/ai;

    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/nr/biz/pc/b/ai;

    invoke-direct {v0, p0}, Lcom/netease/nr/biz/pc/b/ai;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/netease/nr/biz/pc/b/ai;->e:Lcom/netease/nr/biz/pc/b/ai;

    :cond_0
    sget-object v0, Lcom/netease/nr/biz/pc/b/ai;->e:Lcom/netease/nr/biz/pc/b/ai;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a()V
    .locals 2

    invoke-direct {p0}, Lcom/netease/nr/biz/pc/b/ai;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-class v1, Lcom/netease/nr/biz/pc/b/ai;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-direct {p0}, Lcom/netease/nr/biz/pc/b/ai;->e()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/pc/b/ai;->b:Landroid/os/Looper;

    new-instance v0, Lcom/netease/nr/biz/pc/b/aj;

    iget-object v1, p0, Lcom/netease/nr/biz/pc/b/ai;->b:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/netease/nr/biz/pc/b/aj;-><init>(Lcom/netease/nr/biz/pc/b/ai;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/netease/nr/biz/pc/b/ai;->c:Lcom/netease/nr/biz/pc/b/aj;

    goto :goto_0
.end method

.method static synthetic a(Lcom/netease/nr/biz/pc/b/ai;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/nr/biz/pc/b/ai;->g()V

    return-void
.end method

.method static synthetic b(Lcom/netease/nr/biz/pc/b/ai;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/pc/b/ai;->d:Ljava/util/LinkedList;

    return-object v0
.end method

.method private b()V
    .locals 1

    invoke-direct {p0}, Lcom/netease/nr/biz/pc/b/ai;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/pc/b/ai;->b:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    invoke-direct {p0}, Lcom/netease/nr/biz/pc/b/ai;->f()V

    :cond_0
    return-void
.end method

.method private c()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/pc/b/ai;->f:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/netease/nr/biz/pc/b/ai;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/nr/biz/pc/b/ai;->b()V

    return-void
.end method

.method private d()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/netease/nr/biz/pc/b/ai;->a:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()V
    .locals 1

    iget v0, p0, Lcom/netease/nr/biz/pc/b/ai;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/netease/nr/biz/pc/b/ai;->a:I

    return-void
.end method

.method private f()V
    .locals 1

    iget v0, p0, Lcom/netease/nr/biz/pc/b/ai;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/netease/nr/biz/pc/b/ai;->a:I

    return-void
.end method

.method private g()V
    .locals 5

    const-string v0, "FavoriteSyncManager"

    const-string v1, "processPendingSyncRequsets()"

    invoke-static {v0, v1}, Lcom/netease/util/d/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/netease/nr/biz/pc/b/ai;->d:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/netease/nr/biz/pc/b/ai;->d:Ljava/util/LinkedList;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/netease/nr/biz/pc/b/ai;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-direct {p0}, Lcom/netease/nr/biz/pc/b/ai;->c()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/netease/nr/biz/pc/b/y;->b(Landroid/content/Context;Landroid/os/Bundle;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 6

    const/16 v3, 0x64

    invoke-direct {p0}, Lcom/netease/nr/biz/pc/b/ai;->a()V

    iget-object v0, p0, Lcom/netease/nr/biz/pc/b/ai;->c:Lcom/netease/nr/biz/pc/b/aj;

    invoke-virtual {v0, v3}, Lcom/netease/nr/biz/pc/b/aj;->removeMessages(I)V

    iget-object v0, p0, Lcom/netease/nr/biz/pc/b/ai;->c:Lcom/netease/nr/biz/pc/b/aj;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v3, v1, v2}, Lcom/netease/nr/biz/pc/b/aj;->sendEmptyMessageDelayed(IJ)Z

    const-string v0, "com.netease.newsreader.nr.SYNC_ID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "com.netease.newsreader.nr.SYNC_OP"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/netease/nr/biz/pc/b/ai;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string v5, "com.netease.newsreader.nr.SYNC_ID"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    const-string v5, "com.netease.newsreader.nr.SYNC_OP"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v1, 0x1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/netease/nr/biz/pc/b/ai;->d:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/netease/nr/biz/pc/b/ai;->d:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    move v0, v1

    goto :goto_1
.end method
