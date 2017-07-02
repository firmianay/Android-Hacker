.class public Lcom/netease/nr/biz/plugin/plugin/util/i;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/netease/util/fragment/FragmentActivity;

.field private b:Lcom/netease/util/j/a;

.field private c:Ljava/util/List;

.field private d:Lcom/netease/nr/biz/plugin/plugin/util/f;

.field private e:Z

.field private f:Z

.field private g:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Lcom/netease/util/fragment/FragmentActivity;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/i;->c:Ljava/util/List;

    new-instance v0, Lcom/netease/nr/biz/plugin/plugin/util/j;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/netease/nr/biz/plugin/plugin/util/j;-><init>(Lcom/netease/nr/biz/plugin/plugin/util/i;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/i;->g:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/netease/nr/biz/plugin/plugin/util/i;->a:Lcom/netease/util/fragment/FragmentActivity;

    invoke-static {p1}, Lcom/netease/util/j/a;->a(Landroid/content/Context;)Lcom/netease/util/j/a;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/i;->b:Lcom/netease/util/j/a;

    invoke-virtual {p1}, Lcom/netease/util/fragment/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "plugin_list"

    invoke-static {v1}, Lcom/netease/nr/base/db/BaseContentProvider;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/netease/nr/biz/plugin/plugin/util/i;->g:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private a(Ljava/lang/String;IZ)V
    .locals 2

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/i;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;

    iget v0, v0, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->d:I

    if-ne v0, p2, :cond_2

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/i;->a:Lcom/netease/util/fragment/FragmentActivity;

    invoke-static {v0, p0, p1, p2, p3}, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->a(Lcom/netease/util/fragment/FragmentActivity;Lcom/netease/nr/biz/plugin/plugin/util/i;Ljava/lang/String;IZ)Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->x()V

    iget-object v1, p0, Lcom/netease/nr/biz/plugin/plugin/util/i;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/netease/nr/biz/plugin/plugin/util/i;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/i;->e:Z

    return v0
.end method

.method static synthetic a(Lcom/netease/nr/biz/plugin/plugin/util/i;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/netease/nr/biz/plugin/plugin/util/i;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/netease/nr/biz/plugin/plugin/util/i;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/nr/biz/plugin/plugin/util/i;->k()V

    return-void
.end method

.method private j()V
    .locals 3

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/i;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/i;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/netease/nr/biz/plugin/plugin/util/i;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/netease/nr/biz/plugin/plugin/util/ExtraPlugin;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/netease/nr/biz/plugin/plugin/util/ExtraPlugin;

    invoke-virtual {v1}, Lcom/netease/nr/biz/plugin/plugin/util/ExtraPlugin;->w()I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/netease/nr/biz/plugin/plugin/util/i;->c:Ljava/util/List;

    iget-object v2, p0, Lcom/netease/nr/biz/plugin/plugin/util/i;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/netease/nr/biz/plugin/plugin/util/i;->c:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private k()V
    .locals 9

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/netease/nr/biz/plugin/plugin/util/i;->f:Z

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/i;->a:Lcom/netease/util/fragment/FragmentActivity;

    invoke-static {v0}, Lcom/netease/nr/biz/plugin/plugin/util/n;->c(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/netease/nr/biz/plugin/plugin/util/i;->c:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/netease/nr/biz/plugin/plugin/util/i;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "id"

    invoke-static {v0, v1, v8}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;

    iget v7, v1, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->d:I

    if-ne v7, v5, :cond_1

    iget-object v2, p0, Lcom/netease/nr/biz/plugin/plugin/util/i;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    if-nez v1, :cond_2

    const-string v1, "name"

    invoke-static {v0, v1}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-static {v0, v2, v8}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;I)I

    move-result v2

    const-string v5, "forbid_remove"

    const/4 v6, 0x1

    invoke-static {v0, v5, v6}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0, v1, v2, v0}, Lcom/netease/nr/biz/plugin/plugin/util/i;->a(Ljava/lang/String;IZ)V

    goto :goto_0

    :cond_2
    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;

    invoke-virtual {v0}, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->B()V

    invoke-virtual {v0}, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->A()V

    invoke-virtual {v0}, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->C()V

    goto :goto_2

    :cond_4
    invoke-direct {p0}, Lcom/netease/nr/biz/plugin/plugin/util/i;->j()V

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/plugin/util/i;->i()V

    return-void

    :cond_5
    move-object v1, v2

    goto :goto_1
.end method


# virtual methods
.method public a()Landroid/widget/ListAdapter;
    .locals 6

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/i;->d:Lcom/netease/nr/biz/plugin/plugin/util/f;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/i;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/i;->a:Lcom/netease/util/fragment/FragmentActivity;

    invoke-static {v0}, Lcom/netease/nr/biz/plugin/plugin/util/n;->c(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/i;->a:Lcom/netease/util/fragment/FragmentActivity;

    invoke-static {v0}, Lcom/netease/nr/biz/plugin/plugin/util/n;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/i;->a:Lcom/netease/util/fragment/FragmentActivity;

    invoke-static {v0}, Lcom/netease/nr/biz/plugin/plugin/util/n;->c(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    :cond_1
    :goto_0
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "name"

    invoke-static {v0, v2}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "forbid_remove"

    const/4 v4, 0x1

    invoke-static {v0, v3, v4}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "id"

    const/4 v5, 0x0

    invoke-static {v0, v4, v5}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v2, v0, v3}, Lcom/netease/nr/biz/plugin/plugin/util/i;->a(Ljava/lang/String;IZ)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/plugin/util/i;->g()Lcom/netease/util/fragment/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/util/i/b;->k(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netease/nr/biz/plugin/plugin/util/i;->a:Lcom/netease/util/fragment/FragmentActivity;

    invoke-static {v1}, Lcom/netease/nr/biz/plugin/plugin/util/n;->b(Landroid/content/Context;)Landroid/util/SparseIntArray;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nr/biz/plugin/plugin/util/i;->a:Lcom/netease/util/fragment/FragmentActivity;

    invoke-static {v2, v1}, Lcom/netease/nr/biz/plugin/plugin/util/n;->a(Landroid/content/Context;Landroid/util/SparseIntArray;)V

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/netease/nr/biz/plugin/plugin/util/i;->a:Lcom/netease/util/fragment/FragmentActivity;

    invoke-static {v1}, Lcom/netease/nr/biz/plugin/plugin/util/n;->c(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/netease/nr/biz/plugin/plugin/util/i;->j()V

    :cond_4
    new-instance v0, Lcom/netease/nr/biz/plugin/plugin/util/f;

    iget-object v1, p0, Lcom/netease/nr/biz/plugin/plugin/util/i;->a:Lcom/netease/util/fragment/FragmentActivity;

    iget-object v2, p0, Lcom/netease/nr/biz/plugin/plugin/util/i;->b:Lcom/netease/util/j/a;

    iget-object v3, p0, Lcom/netease/nr/biz/plugin/plugin/util/i;->c:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, Lcom/netease/nr/biz/plugin/plugin/util/f;-><init>(Landroid/content/Context;Lcom/netease/util/j/a;Ljava/util/List;)V

    iput-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/i;->d:Lcom/netease/nr/biz/plugin/plugin/util/f;

    :cond_5
    iget-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/i;->d:Lcom/netease/nr/biz/plugin/plugin/util/f;

    return-object v0
.end method

.method public a(I)V
    .locals 2

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/i;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/i;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->t()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/plugin/util/i;->i()V

    :cond_2
    invoke-virtual {v0}, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->f()V

    invoke-virtual {v0}, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->m()V

    goto :goto_0
.end method

.method public b()Z
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/i;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;

    invoke-virtual {v0}, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/i;->e:Z

    iget-boolean v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/i;->f:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/netease/nr/biz/plugin/plugin/util/i;->k()V

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/i;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;

    invoke-virtual {v0}, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->y()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public d()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/i;->e:Z

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/i;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;

    invoke-virtual {v0}, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->z()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/i;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;

    invoke-virtual {v0}, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->A()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/i;->a:Lcom/netease/util/fragment/FragmentActivity;

    invoke-virtual {v0}, Lcom/netease/util/fragment/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/plugin/plugin/util/i;->g:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/i;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;

    invoke-virtual {v0}, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->C()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/i;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/i;->d:Lcom/netease/nr/biz/plugin/plugin/util/f;

    return-void
.end method

.method public g()Lcom/netease/util/fragment/FragmentActivity;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/i;->a:Lcom/netease/util/fragment/FragmentActivity;

    return-object v0
.end method

.method public h()Lcom/netease/util/j/a;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/i;->b:Lcom/netease/util/j/a;

    return-object v0
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/i;->d:Lcom/netease/nr/biz/plugin/plugin/util/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/i;->d:Lcom/netease/nr/biz/plugin/plugin/util/f;

    invoke-virtual {v0}, Lcom/netease/nr/biz/plugin/plugin/util/f;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
