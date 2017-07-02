.class public Lcom/netease/nr/biz/news/detailpage/ag;
.super Landroid/os/Handler;


# instance fields
.field private a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

.field private b:Landroid/content/Context;

.field private c:Ljava/util/List;

.field private d:Ljava/util/List;

.field private e:Ljava/lang/Object;

.field private f:Z

.field private g:Z

.field private h:Ljava/util/List;

.field private i:[Lcom/netease/nr/biz/news/detailpage/al;


# direct methods
.method public constructor <init>(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/biz/news/detailpage/ag;->c:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/biz/news/detailpage/ag;->d:Ljava/util/List;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/biz/news/detailpage/ag;->e:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/nr/biz/news/detailpage/ag;->g:Z

    iput-object p1, p0, Lcom/netease/nr/biz/news/detailpage/ag;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-virtual {p1}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/news/detailpage/ag;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/biz/news/detailpage/ag;)Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/ag;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    return-object v0
.end method

.method static synthetic a(Lcom/netease/nr/biz/news/detailpage/ag;ZI)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/netease/nr/biz/news/detailpage/ag;->a(ZI)Z

    move-result v0

    return v0
.end method

.method private a(ZI)Z
    .locals 1

    if-nez p2, :cond_0

    iget-boolean v0, p0, Lcom/netease/nr/biz/news/detailpage/ag;->g:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return p1
.end method

.method private b(II)V
    .locals 6

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/netease/nr/biz/news/detailpage/ag;->e:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-virtual {p0}, Lcom/netease/nr/biz/news/detailpage/ag;->c()Z

    move-result v0

    if-nez v0, :cond_0

    monitor-exit v3

    :goto_0
    return-void

    :cond_0
    :goto_1
    if-gt p1, p2, :cond_6

    invoke-direct {p0, p1}, Lcom/netease/nr/biz/news/detailpage/ag;->e(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/netease/nr/biz/news/detailpage/ag;->f(I)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/ag;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/news/detailpage/ai;

    invoke-static {v0}, Lcom/netease/nr/biz/news/detailpage/ai;->b(Lcom/netease/nr/biz/news/detailpage/ai;)I

    move-result v0

    if-ne v0, p1, :cond_3

    move v2, v1

    :cond_4
    if-nez v2, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/ag;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/news/detailpage/ai;

    invoke-static {v0}, Lcom/netease/nr/biz/news/detailpage/ai;->b(Lcom/netease/nr/biz/news/detailpage/ai;)I

    move-result v0

    if-ne v0, p1, :cond_5

    move v0, v1

    :goto_3
    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/netease/nr/biz/news/detailpage/ag;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Lcom/netease/nr/biz/news/detailpage/ai;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lcom/netease/nr/biz/news/detailpage/ai;-><init>(Lcom/netease/nr/biz/news/detailpage/ah;)V

    invoke-static {v2, v0}, Lcom/netease/nr/biz/news/detailpage/ai;->b(Lcom/netease/nr/biz/news/detailpage/ai;Ljava/lang/String;)Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/netease/nr/biz/news/detailpage/ag;->d(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netease/nr/biz/news/detailpage/ai;->a(Lcom/netease/nr/biz/news/detailpage/ai;Ljava/lang/String;)Ljava/lang/String;

    iget-boolean v0, p0, Lcom/netease/nr/biz/news/detailpage/ag;->f:Z

    invoke-static {v2, v0}, Lcom/netease/nr/biz/news/detailpage/ai;->a(Lcom/netease/nr/biz/news/detailpage/ai;Z)Z

    invoke-static {v2, p1}, Lcom/netease/nr/biz/news/detailpage/ai;->a(Lcom/netease/nr/biz/news/detailpage/ai;I)I

    new-instance v0, Lcom/netease/nr/biz/news/detailpage/ak;

    iget-object v4, p0, Lcom/netease/nr/biz/news/detailpage/ag;->b:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-direct {v0, p0, v4, v2, v5}, Lcom/netease/nr/biz/news/detailpage/ak;-><init>(Lcom/netease/nr/biz/news/detailpage/ag;Landroid/content/Context;Lcom/netease/nr/biz/news/detailpage/ai;Lcom/netease/nr/biz/news/detailpage/ah;)V

    invoke-static {v2, v0}, Lcom/netease/nr/biz/news/detailpage/ai;->a(Lcom/netease/nr/biz/news/detailpage/ai;Lcom/netease/nr/biz/news/detailpage/ak;)Lcom/netease/nr/biz/news/detailpage/ak;

    invoke-static {v2}, Lcom/netease/nr/biz/news/detailpage/ai;->a(Lcom/netease/nr/biz/news/detailpage/ai;)Lcom/netease/nr/biz/news/detailpage/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/biz/news/detailpage/ak;->a()V

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/ag;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_6
    :try_start_1
    invoke-direct {p0}, Lcom/netease/nr/biz/news/detailpage/ag;->e()V

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :cond_7
    move v0, v2

    goto :goto_3
.end method

.method private b(IZ)V
    .locals 5

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/ag;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/netease/nr/biz/news/detailpage/ag;->c()Z

    move-result v0

    if-nez v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/ag;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/news/detailpage/ai;

    invoke-static {v0}, Lcom/netease/nr/biz/news/detailpage/ai;->b(Lcom/netease/nr/biz/news/detailpage/ai;)I

    move-result v0

    if-ne v0, p1, :cond_1

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/ag;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/news/detailpage/ai;

    invoke-static {v0}, Lcom/netease/nr/biz/news/detailpage/ai;->b(Lcom/netease/nr/biz/news/detailpage/ai;)I

    move-result v0

    if-ne v0, p1, :cond_3

    monitor-exit v1

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1}, Lcom/netease/nr/biz/news/detailpage/ag;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    monitor-exit v1

    goto :goto_0

    :cond_5
    new-instance v2, Lcom/netease/nr/biz/news/detailpage/ai;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/netease/nr/biz/news/detailpage/ai;-><init>(Lcom/netease/nr/biz/news/detailpage/ah;)V

    invoke-direct {p0, p1}, Lcom/netease/nr/biz/news/detailpage/ag;->d(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/nr/biz/news/detailpage/ai;->a(Lcom/netease/nr/biz/news/detailpage/ai;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/netease/nr/biz/news/detailpage/ai;->b(Lcom/netease/nr/biz/news/detailpage/ai;Ljava/lang/String;)Ljava/lang/String;

    iget-boolean v0, p0, Lcom/netease/nr/biz/news/detailpage/ag;->f:Z

    invoke-static {v2, v0}, Lcom/netease/nr/biz/news/detailpage/ai;->a(Lcom/netease/nr/biz/news/detailpage/ai;Z)Z

    invoke-static {v2, p2}, Lcom/netease/nr/biz/news/detailpage/ai;->b(Lcom/netease/nr/biz/news/detailpage/ai;Z)Z

    invoke-static {v2, p1}, Lcom/netease/nr/biz/news/detailpage/ai;->a(Lcom/netease/nr/biz/news/detailpage/ai;I)I

    new-instance v0, Lcom/netease/nr/biz/news/detailpage/ak;

    iget-object v3, p0, Lcom/netease/nr/biz/news/detailpage/ag;->b:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v3, v2, v4}, Lcom/netease/nr/biz/news/detailpage/ak;-><init>(Lcom/netease/nr/biz/news/detailpage/ag;Landroid/content/Context;Lcom/netease/nr/biz/news/detailpage/ai;Lcom/netease/nr/biz/news/detailpage/ah;)V

    invoke-static {v2, v0}, Lcom/netease/nr/biz/news/detailpage/ai;->a(Lcom/netease/nr/biz/news/detailpage/ai;Lcom/netease/nr/biz/news/detailpage/ak;)Lcom/netease/nr/biz/news/detailpage/ak;

    invoke-static {v2}, Lcom/netease/nr/biz/news/detailpage/ai;->a(Lcom/netease/nr/biz/news/detailpage/ai;)Lcom/netease/nr/biz/news/detailpage/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/biz/news/detailpage/ak;->a()V

    if-eqz p2, :cond_6

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/ag;->c:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_1
    invoke-direct {p0}, Lcom/netease/nr/biz/news/detailpage/ag;->e()V

    monitor-exit v1

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/ag;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private c(I)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/ag;->h:Ljava/util/List;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/ag;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/ag;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "media_type"

    invoke-static {v0, v1}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "media_video"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "cover"

    invoke-static {v0, v1}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v1, "src"

    invoke-static {v0, v1}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private d(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/ag;->h:Ljava/util/List;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/ag;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/ag;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "pixel"

    invoke-static {v0, v1}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private e()V
    .locals 4

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/ag;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/netease/nr/biz/news/detailpage/ag;->c()Z

    move-result v0

    if-nez v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/ag;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/ag;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/ag;->c:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/news/detailpage/ai;

    invoke-static {}, Lcom/netease/util/k/a;->b()Lcom/netease/util/k/f;

    move-result-object v2

    invoke-static {v0}, Lcom/netease/nr/biz/news/detailpage/ai;->a(Lcom/netease/nr/biz/news/detailpage/ai;)Lcom/netease/nr/biz/news/detailpage/ak;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/netease/util/k/f;->a(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    iget-object v2, p0, Lcom/netease/nr/biz/news/detailpage/ag;->d:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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

    goto :goto_0
.end method

.method private e(I)Z
    .locals 2

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/ag;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/ag;->i:[Lcom/netease/nr/biz/news/detailpage/al;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/ag;->i:[Lcom/netease/nr/biz/news/detailpage/al;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/ag;->i:[Lcom/netease/nr/biz/news/detailpage/al;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/netease/nr/biz/news/detailpage/al;->a(Lcom/netease/nr/biz/news/detailpage/al;)Z

    move-result v0

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private f(I)Z
    .locals 2

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/ag;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/ag;->i:[Lcom/netease/nr/biz/news/detailpage/al;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/ag;->i:[Lcom/netease/nr/biz/news/detailpage/al;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/ag;->i:[Lcom/netease/nr/biz/news/detailpage/al;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/netease/nr/biz/news/detailpage/al;->b(Lcom/netease/nr/biz/news/detailpage/al;)Z

    move-result v0

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/ag;->e:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/netease/nr/biz/news/detailpage/ag;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/detailpage/ag;->b()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(I)V
    .locals 3

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/ag;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/ag;->i:[Lcom/netease/nr/biz/news/detailpage/al;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/ag;->i:[Lcom/netease/nr/biz/news/detailpage/al;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/ag;->i:[Lcom/netease/nr/biz/news/detailpage/al;

    aget-object v0, v0, p1

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/netease/nr/biz/news/detailpage/al;->a(Lcom/netease/nr/biz/news/detailpage/al;Z)Z

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/ag;->i:[Lcom/netease/nr/biz/news/detailpage/al;

    aget-object v0, v0, p1

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/netease/nr/biz/news/detailpage/al;->b(Lcom/netease/nr/biz/news/detailpage/al;Z)Z

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(II)V
    .locals 2

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/ag;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/ag;->h:Ljava/util/List;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/ag;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-ltz p2, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/ag;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    if-le p1, p2, :cond_1

    :cond_0
    monitor-exit v1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/ag;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/util/f/b;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x0

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/ag;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 p2, v0, -0x1

    :cond_2
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/news/detailpage/ag;->removeMessages(I)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/news/detailpage/ag;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput p2, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/news/detailpage/ag;->sendMessage(Landroid/os/Message;)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(IZ)V
    .locals 2

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/detailpage/ag;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/netease/nr/biz/news/detailpage/ag;->e(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/ag;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/util/f/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/ag;->b:Landroid/content/Context;

    const v1, 0x7f0b0010

    invoke-static {v0, v1}, Lcom/netease/nr/base/view/az;->a(Landroid/content/Context;I)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    const/4 v0, 0x2

    :goto_1
    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/news/detailpage/ag;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/news/detailpage/ag;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public a(Ljava/util/List;)V
    .locals 5

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/ag;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/netease/nr/biz/news/detailpage/ag;->h:Ljava/util/List;

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/ag;->h:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/biz/news/detailpage/ag;->h:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/ag;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/netease/nr/biz/news/detailpage/al;

    iput-object v0, p0, Lcom/netease/nr/biz/news/detailpage/ag;->i:[Lcom/netease/nr/biz/news/detailpage/al;

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/netease/nr/biz/news/detailpage/ag;->i:[Lcom/netease/nr/biz/news/detailpage/al;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/netease/nr/biz/news/detailpage/ag;->i:[Lcom/netease/nr/biz/news/detailpage/al;

    new-instance v3, Lcom/netease/nr/biz/news/detailpage/al;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/netease/nr/biz/news/detailpage/al;-><init>(Lcom/netease/nr/biz/news/detailpage/ah;)V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Z)V
    .locals 2

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/ag;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-boolean p1, p0, Lcom/netease/nr/biz/news/detailpage/ag;->f:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()V
    .locals 4

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/ag;->e:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/news/detailpage/ag;->removeMessages(I)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/news/detailpage/ag;->removeMessages(I)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/news/detailpage/ag;->removeMessages(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/news/detailpage/ag;->removeMessages(I)V

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/ag;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/news/detailpage/ai;

    invoke-static {v0}, Lcom/netease/nr/biz/news/detailpage/ai;->a(Lcom/netease/nr/biz/news/detailpage/ai;)Lcom/netease/nr/biz/news/detailpage/ak;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v0}, Lcom/netease/nr/biz/news/detailpage/ai;->a(Lcom/netease/nr/biz/news/detailpage/ai;)Lcom/netease/nr/biz/news/detailpage/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/biz/news/detailpage/ak;->b()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/ag;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/ag;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/news/detailpage/ai;

    invoke-static {v0}, Lcom/netease/nr/biz/news/detailpage/ai;->a(Lcom/netease/nr/biz/news/detailpage/ai;)Lcom/netease/nr/biz/news/detailpage/ak;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {v0}, Lcom/netease/nr/biz/news/detailpage/ai;->a(Lcom/netease/nr/biz/news/detailpage/ai;)Lcom/netease/nr/biz/news/detailpage/ak;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/netease/nr/biz/news/detailpage/ak;->cancel(Z)Z

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/ag;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public b(I)V
    .locals 3

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/ag;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/ag;->i:[Lcom/netease/nr/biz/news/detailpage/al;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/ag;->i:[Lcom/netease/nr/biz/news/detailpage/al;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/ag;->i:[Lcom/netease/nr/biz/news/detailpage/al;

    aget-object v0, v0, p1

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/netease/nr/biz/news/detailpage/al;->a(Lcom/netease/nr/biz/news/detailpage/al;Z)Z

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/ag;->i:[Lcom/netease/nr/biz/news/detailpage/al;

    aget-object v0, v0, p1

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/netease/nr/biz/news/detailpage/al;->b(Lcom/netease/nr/biz/news/detailpage/al;Z)Z

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Z)V
    .locals 2

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/ag;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-boolean p1, p0, Lcom/netease/nr/biz/news/detailpage/ag;->g:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c()Z
    .locals 2

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/ag;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/ag;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/ag;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/netease/nr/biz/news/detailpage/ag;->h:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/netease/nr/biz/news/detailpage/ag;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    monitor-exit v1

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/netease/nr/biz/news/detailpage/ag;->i:[Lcom/netease/nr/biz/news/detailpage/al;

    if-eqz v2, :cond_2

    :goto_1
    iget-object v2, p0, Lcom/netease/nr/biz/news/detailpage/ag;->i:[Lcom/netease/nr/biz/news/detailpage/al;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/netease/nr/biz/news/detailpage/ag;->i:[Lcom/netease/nr/biz/news/detailpage/al;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/netease/nr/biz/news/detailpage/al;->b(Lcom/netease/nr/biz/news/detailpage/al;Z)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/netease/nr/biz/news/detailpage/ag;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v0, v2}, Lcom/netease/nr/biz/news/detailpage/ag;->a(II)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/netease/nr/biz/news/detailpage/ag;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/ag;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-virtual {v0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->e()Lcom/netease/nr/biz/news/detailpage/NeteaseWebView;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/netease/nr/biz/news/detailpage/aj;

    if-eqz v0, :cond_4

    invoke-static {v0}, Lcom/netease/nr/biz/news/detailpage/aj;->a(Lcom/netease/nr/biz/news/detailpage/aj;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/netease/nr/biz/news/detailpage/aj;->b(Lcom/netease/nr/biz/news/detailpage/aj;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/netease/nr/biz/news/detailpage/ag;->e:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/ag;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/news/detailpage/ai;

    invoke-static {v0}, Lcom/netease/nr/biz/news/detailpage/ai;->c(Lcom/netease/nr/biz/news/detailpage/ai;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v2, v0

    :goto_1
    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/ag;->i:[Lcom/netease/nr/biz/news/detailpage/al;

    if-eqz v0, :cond_7

    invoke-static {v2}, Lcom/netease/nr/biz/news/detailpage/ai;->b(Lcom/netease/nr/biz/news/detailpage/ai;)I

    move-result v0

    if-ltz v0, :cond_7

    invoke-static {v2}, Lcom/netease/nr/biz/news/detailpage/ai;->b(Lcom/netease/nr/biz/news/detailpage/ai;)I

    move-result v0

    iget-object v6, p0, Lcom/netease/nr/biz/news/detailpage/ag;->i:[Lcom/netease/nr/biz/news/detailpage/al;

    array-length v6, v6

    if-ge v0, v6, :cond_7

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/ag;->i:[Lcom/netease/nr/biz/news/detailpage/al;

    invoke-static {v2}, Lcom/netease/nr/biz/news/detailpage/ai;->b(Lcom/netease/nr/biz/news/detailpage/ai;)I

    move-result v1

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netease/nr/biz/news/detailpage/al;->b(Lcom/netease/nr/biz/news/detailpage/al;Z)Z

    :goto_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netease/nr/biz/news/detailpage/al;->a(Lcom/netease/nr/biz/news/detailpage/al;Z)Z

    :cond_2
    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/ag;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/netease/nr/biz/news/detailpage/ai;->d(Lcom/netease/nr/biz/news/detailpage/ai;)Z

    move-result v1

    invoke-static {v2}, Lcom/netease/nr/biz/news/detailpage/ai;->b(Lcom/netease/nr/biz/news/detailpage/ai;)I

    move-result v6

    invoke-direct {p0, v1, v6}, Lcom/netease/nr/biz/news/detailpage/ag;->a(ZI)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v2}, Lcom/netease/nr/biz/news/detailpage/ai;->b(Lcom/netease/nr/biz/news/detailpage/ai;)I

    move-result v6

    iget-object v7, p0, Lcom/netease/nr/biz/news/detailpage/ag;->h:Ljava/util/List;

    invoke-static {v0, v1, v6, v4, v7}, Lcom/netease/nr/biz/news/detailpage/af;->a(Landroid/content/Context;Ljava/lang/Boolean;ILjava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netease/nr/base/c/aa;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    :goto_3
    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/ag;->d:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_3
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    invoke-direct {p0}, Lcom/netease/nr/biz/news/detailpage/ag;->e()V

    goto/16 :goto_0

    :cond_5
    :try_start_1
    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/ag;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/netease/nr/biz/news/detailpage/ai;->d(Lcom/netease/nr/biz/news/detailpage/ai;)Z

    move-result v0

    invoke-static {v2}, Lcom/netease/nr/biz/news/detailpage/ai;->b(Lcom/netease/nr/biz/news/detailpage/ai;)I

    move-result v4

    invoke-direct {p0, v0, v4}, Lcom/netease/nr/biz/news/detailpage/ag;->a(ZI)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v2}, Lcom/netease/nr/biz/news/detailpage/ai;->b(Lcom/netease/nr/biz/news/detailpage/ai;)I

    move-result v6

    invoke-static {v2}, Lcom/netease/nr/biz/news/detailpage/ai;->d(Lcom/netease/nr/biz/news/detailpage/ai;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "big_reload_img.png"

    :goto_4
    iget-object v7, p0, Lcom/netease/nr/biz/news/detailpage/ag;->h:Ljava/util/List;

    invoke-static {v1, v4, v6, v0, v7}, Lcom/netease/nr/biz/news/detailpage/af;->a(Landroid/content/Context;Ljava/lang/Boolean;ILjava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netease/nr/base/c/aa;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_6
    :try_start_2
    const-string v0, "small_reload_img.png"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v2}, Lcom/netease/nr/biz/news/detailpage/ag;->b(IZ)V

    goto/16 :goto_0

    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v3}, Lcom/netease/nr/biz/news/detailpage/ag;->b(IZ)V

    goto/16 :goto_0

    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1}, Lcom/netease/nr/biz/news/detailpage/ag;->b(II)V

    goto/16 :goto_0

    :cond_7
    move-object v0, v1

    goto :goto_2

    :cond_8
    move-object v2, v1

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
