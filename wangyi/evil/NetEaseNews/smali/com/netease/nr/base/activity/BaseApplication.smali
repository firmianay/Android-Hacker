.class public Lcom/netease/nr/base/activity/BaseApplication;
.super Lcom/netease/util/app/MyApplication;

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Lcom/netease/nr/base/c/m;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Lcom/netease/util/b/a;

.field private e:Z

.field private f:Lcom/netease/ad/e;

.field private g:Lcom/netease/ad/f;

.field private h:Ljava/util/Map;

.field private i:Lcom/netease/nr/base/c/j;

.field private j:Lcom/netease/nr/base/c/l;

.field private k:Lcom/netease/nr/biz/download/a;

.field private l:I

.field private m:I

.field private n:Lcom/netease/nr/biz/audio/h;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/netease/util/app/MyApplication;-><init>()V

    iput-boolean v0, p0, Lcom/netease/nr/base/activity/BaseApplication;->a:Z

    iput-boolean v0, p0, Lcom/netease/nr/base/activity/BaseApplication;->b:Z

    iput-boolean v0, p0, Lcom/netease/nr/base/activity/BaseApplication;->c:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/base/activity/BaseApplication;->h:Ljava/util/Map;

    return-void
.end method

.method private r()V
    .locals 1

    new-instance v0, Lcom/netease/nr/biz/download/a;

    invoke-direct {v0, p0}, Lcom/netease/nr/biz/download/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/nr/base/activity/BaseApplication;->k:Lcom/netease/nr/biz/download/a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/netease/nr/biz/ad/q;
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/netease/nr/base/activity/BaseApplication;->h:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/ad/q;

    if-nez v0, :cond_1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "category"

    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "location"

    invoke-virtual {v2, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/netease/nr/biz/ad/q;

    invoke-virtual {p0}, Lcom/netease/nr/base/activity/BaseApplication;->e()Lcom/netease/ad/f;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/netease/ad/f;->a(Ljava/util/HashMap;)Lcom/netease/ad/a;

    move-result-object v2

    invoke-direct {v0, v2, p1, p2}, Lcom/netease/nr/biz/ad/q;-><init>(Lcom/netease/ad/a;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/netease/nr/base/activity/BaseApplication;->h:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public a(II)V
    .locals 0

    iput p1, p0, Lcom/netease/nr/base/activity/BaseApplication;->l:I

    iput p2, p0, Lcom/netease/nr/base/activity/BaseApplication;->m:I

    return-void
.end method

.method public a(Lcom/netease/ad/e;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/base/activity/BaseApplication;->f:Lcom/netease/ad/e;

    return-void
.end method

.method public final a(Lcom/netease/nr/base/c/l;)V
    .locals 5

    iget-object v1, p0, Lcom/netease/nr/base/activity/BaseApplication;->i:Lcom/netease/nr/base/c/j;

    monitor-enter v1

    if-nez p1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/netease/nr/base/activity/BaseApplication;->j:Lcom/netease/nr/base/c/l;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/activity/BaseApplication;->i:Lcom/netease/nr/base/c/j;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v2, v3}, Lcom/netease/nr/base/c/j;->a(J)V

    :cond_0
    monitor-exit v1

    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/netease/nr/base/activity/BaseApplication;->j:Lcom/netease/nr/base/c/l;

    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/netease/nr/base/c/l;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "ct"

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Lcom/netease/b/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    const-string v0, "ct"

    invoke-static {p0, v0}, Lcom/netease/b/i;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lcom/netease/nr/base/c/l;->c:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ct"

    iget-object v2, p1, Lcom/netease/nr/base/c/l;->c:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/netease/b/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ct"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/netease/nr/base/c/l;->c:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {p0, v0, v2}, Lcom/netease/b/i;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/netease/nr/base/activity/BaseApplication;->a:Z

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netease/nr/base/activity/BaseApplication;->a:Z

    return v0
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/netease/nr/base/activity/BaseApplication;->b:Z

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netease/nr/base/activity/BaseApplication;->b:Z

    return v0
.end method

.method c()V
    .locals 2

    iget-boolean v0, p0, Lcom/netease/nr/base/activity/BaseApplication;->e:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/nr/base/activity/BaseApplication;->e:Z

    invoke-virtual {p0}, Lcom/netease/nr/base/activity/BaseApplication;->n()V

    invoke-static {p0}, Lcom/netease/nr/base/c/i;->a(Landroid/content/Context;)V

    new-instance v0, Lcom/netease/util/b/a;

    invoke-direct {v0, p0}, Lcom/netease/util/b/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/nr/base/activity/BaseApplication;->d:Lcom/netease/util/b/a;

    invoke-direct {p0}, Lcom/netease/nr/base/activity/BaseApplication;->r()V

    invoke-virtual {p0}, Lcom/netease/nr/base/activity/BaseApplication;->g()V

    invoke-static {p0}, Lcom/netease/nr/biz/news/column/g;->c(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/netease/nr/base/activity/a;->a(Lcom/netease/nr/base/activity/BaseApplication;)V

    invoke-static {p0}, Lcom/netease/util/g/a;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    invoke-static {p0}, Lcom/netease/nr/biz/push/PushService;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/netease/nr/biz/push/PushService;->a(Landroid/content/Context;)V

    :cond_1
    invoke-virtual {p0}, Lcom/netease/nr/base/activity/BaseApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nr/base/c/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/netease/nr/base/activity/c;

    invoke-virtual {p0}, Lcom/netease/nr/base/activity/BaseApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netease/nr/base/activity/c;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/activity/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_2
    invoke-virtual {p0}, Lcom/netease/nr/base/activity/BaseApplication;->e()Lcom/netease/ad/f;

    goto :goto_0
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/netease/nr/base/activity/BaseApplication;->c:Z

    return-void
.end method

.method public d()Lcom/netease/ad/e;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/activity/BaseApplication;->f:Lcom/netease/ad/e;

    return-object v0
.end method

.method public e()Lcom/netease/ad/f;
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/base/activity/BaseApplication;->g:Lcom/netease/ad/f;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/netease/ad/f;->a()Lcom/netease/ad/f;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/base/activity/BaseApplication;->g:Lcom/netease/ad/f;

    iget-object v0, p0, Lcom/netease/nr/base/activity/BaseApplication;->g:Lcom/netease/ad/f;

    const-string v1, "7A16FBB6"

    invoke-virtual {v0, p0, v1}, Lcom/netease/ad/f;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/base/activity/BaseApplication;->g:Lcom/netease/ad/f;

    return-object v0
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/activity/BaseApplication;->g:Lcom/netease/ad/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/activity/BaseApplication;->g:Lcom/netease/ad/f;

    invoke-virtual {v0}, Lcom/netease/ad/f;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/nr/base/activity/BaseApplication;->g:Lcom/netease/ad/f;

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/base/activity/BaseApplication;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public g()V
    .locals 1

    new-instance v0, Lcom/netease/nr/base/c/j;

    invoke-direct {v0, p0}, Lcom/netease/nr/base/c/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/nr/base/activity/BaseApplication;->i:Lcom/netease/nr/base/c/j;

    iget-object v0, p0, Lcom/netease/nr/base/activity/BaseApplication;->i:Lcom/netease/nr/base/c/j;

    invoke-virtual {v0, p0}, Lcom/netease/nr/base/c/j;->a(Lcom/netease/nr/base/c/m;)V

    iget-object v0, p0, Lcom/netease/nr/base/activity/BaseApplication;->i:Lcom/netease/nr/base/c/j;

    invoke-virtual {v0}, Lcom/netease/nr/base/c/j;->a()V

    return-void
.end method

.method public h()Lcom/netease/nr/base/c/j;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/activity/BaseApplication;->i:Lcom/netease/nr/base/c/j;

    return-object v0
.end method

.method public i()Lcom/netease/nr/base/c/l;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/netease/nr/base/activity/BaseApplication;->i:Lcom/netease/nr/base/c/j;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/netease/nr/base/activity/BaseApplication;->i:Lcom/netease/nr/base/c/j;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/netease/nr/base/activity/BaseApplication;->j:Lcom/netease/nr/base/c/l;

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
    :try_start_1
    new-instance v0, Lcom/netease/nr/base/c/l;

    iget-object v2, p0, Lcom/netease/nr/base/activity/BaseApplication;->j:Lcom/netease/nr/base/c/l;

    invoke-direct {v0, v2}, Lcom/netease/nr/base/c/l;-><init>(Lcom/netease/nr/base/c/l;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public j()Lcom/netease/nr/biz/download/a;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/activity/BaseApplication;->k:Lcom/netease/nr/biz/download/a;

    return-object v0
.end method

.method public k()Lcom/netease/util/b/a;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/activity/BaseApplication;->d:Lcom/netease/util/b/a;

    return-object v0
.end method

.method public l()I
    .locals 1

    iget v0, p0, Lcom/netease/nr/base/activity/BaseApplication;->l:I

    return v0
.end method

.method public m()I
    .locals 1

    iget v0, p0, Lcom/netease/nr/base/activity/BaseApplication;->m:I

    return v0
.end method

.method public n()V
    .locals 1

    new-instance v0, Lcom/netease/nr/base/activity/b;

    invoke-direct {v0, p0}, Lcom/netease/nr/base/activity/b;-><init>(Lcom/netease/nr/base/activity/BaseApplication;)V

    invoke-static {v0}, Lcom/netease/b/i;->a(Lcom/netease/b/j;)V

    return-void
.end method

.method public o()V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/activity/BaseApplication;->n:Lcom/netease/nr/biz/audio/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/nr/biz/audio/h;

    invoke-direct {v0, p0}, Lcom/netease/nr/biz/audio/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/nr/base/activity/BaseApplication;->n:Lcom/netease/nr/biz/audio/h;

    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 0

    invoke-super {p0}, Lcom/netease/util/app/MyApplication;->onCreate()V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 5

    const/4 v2, 0x1

    const-string v0, "autopost"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "ps"

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0}, Lcom/netease/b/i;->a(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/netease/b/i;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/netease/nr/biz/push/PushService;->a(Landroid/content/Context;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lcom/netease/nr/biz/push/PushService;->b(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onTerminate()V
    .locals 0

    invoke-super {p0}, Lcom/netease/util/app/MyApplication;->onTerminate()V

    return-void
.end method

.method public p()Lcom/netease/nr/biz/audio/h;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/activity/BaseApplication;->n:Lcom/netease/nr/biz/audio/h;

    return-object v0
.end method

.method public q()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/nr/base/activity/BaseApplication;->n:Lcom/netease/nr/biz/audio/h;

    return-void
.end method
