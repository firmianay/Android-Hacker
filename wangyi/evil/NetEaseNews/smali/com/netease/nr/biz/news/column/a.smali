.class public Lcom/netease/nr/biz/news/column/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final m:Landroid/util/SparseArray;


# instance fields
.field public a:Landroid/database/ContentObserver;

.field private b:Landroid/content/Context;

.field private c:I

.field private d:Landroid/widget/SimpleAdapter;

.field private e:Z

.field private f:Z

.field private g:I

.field private h:Ljava/util/List;

.field private i:Ljava/util/Set;

.field private j:Ljava/lang/String;

.field private k:Lcom/netease/nr/biz/news/column/e;

.field private l:Lcom/netease/nr/biz/news/column/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/netease/nr/biz/news/column/a;->m:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/netease/nr/biz/news/column/a;->g:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/biz/news/column/a;->h:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/biz/news/column/a;->i:Ljava/util/Set;

    new-instance v0, Lcom/netease/nr/biz/news/column/b;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/netease/nr/biz/news/column/b;-><init>(Lcom/netease/nr/biz/news/column/a;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/netease/nr/biz/news/column/a;->a:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/netease/nr/biz/news/column/a;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "top_columns"

    invoke-static {v1}, Lcom/netease/nr/base/db/BaseContentProvider;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nr/biz/news/column/a;->a:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iput p2, p0, Lcom/netease/nr/biz/news/column/a;->c:I

    invoke-direct {p0}, Lcom/netease/nr/biz/news/column/a;->h()V

    sget-object v1, Lcom/netease/nr/biz/news/column/a;->m:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/netease/nr/biz/news/column/a;->m:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget-object v2, Lcom/netease/nr/biz/news/column/a;->m:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-direct {p0, v3}, Lcom/netease/nr/biz/news/column/a;->b(Z)V

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    invoke-direct {p0, v0}, Lcom/netease/nr/biz/news/column/a;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/netease/nr/biz/news/column/a;)I
    .locals 1

    iget v0, p0, Lcom/netease/nr/biz/news/column/a;->c:I

    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;
    .locals 3

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    const-string v0, "columnCId"

    const-string v2, "columnCId"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "param_source"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v2, "T1348647909107"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-class v0, Lcom/netease/nr/biz/news/a/a/b;

    :goto_0
    const-string v2, "columnId"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "columnName"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_1

    invoke-virtual {v1, p3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v2, "T1351840906470"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-class v0, Lcom/netease/nr/phone/main/b;

    goto :goto_0

    :cond_3
    const-string v2, "T1348649503389"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-class v0, Lcom/netease/nr/biz/news/a/c/a;

    goto :goto_0

    :cond_4
    const-string v2, "T1348648756099"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-class v0, Lcom/netease/nr/biz/news/a/c/b/f;

    goto :goto_0

    :cond_5
    const-string v2, "T1379038288239"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-class v0, Lcom/netease/nr/biz/audio/m;

    goto :goto_0

    :cond_6
    const-string v2, "T1348654060988"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-class v0, Lcom/netease/nr/biz/news/a/c/a/a;

    goto :goto_0

    :cond_7
    const-string v2, "source_media"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-class v0, Lcom/netease/nr/biz/news/a/c/c/a;

    goto :goto_0

    :cond_8
    const-class v0, Lcom/netease/nr/biz/news/a/d;

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;I)Ljava/util/List;
    .locals 2

    new-instance v0, Lcom/netease/nr/biz/news/column/f;

    invoke-direct {v0, p0, p1}, Lcom/netease/nr/biz/news/column/f;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/news/column/f;->a([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;ILjava/util/List;)V
    .locals 2

    sget-object v1, Lcom/netease/nr/biz/news/column/a;->m:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/netease/nr/biz/news/column/a;->m:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/netease/nr/biz/news/column/a;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/nr/biz/news/column/a;->a(Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/biz/news/column/a;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/nr/biz/news/column/a;->b(Z)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/news/column/a;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/netease/nr/biz/news/column/a;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lcom/netease/nr/biz/news/column/a;->h()V

    iget-object v0, p0, Lcom/netease/nr/biz/news/column/a;->d:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/netease/nr/biz/news/column/a;->i:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/DataSetObserver;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/database/DataSetObserver;->onChanged()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static a(Ljava/util/Map;)Z
    .locals 1

    const-string v0, "delete"

    invoke-static {p0, v0}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/netease/nr/biz/news/column/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/nr/biz/news/column/a;->g()V

    return-void
.end method

.method private b(Z)V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/biz/news/column/a;->l:Lcom/netease/nr/biz/news/column/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/column/a;->l:Lcom/netease/nr/biz/news/column/f;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/news/column/f;->cancel(Z)Z

    :cond_0
    new-instance v0, Lcom/netease/nr/biz/news/column/f;

    iget-object v1, p0, Lcom/netease/nr/biz/news/column/a;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/netease/nr/biz/news/column/f;-><init>(Landroid/content/Context;Lcom/netease/nr/biz/news/column/a;)V

    iput-object v0, p0, Lcom/netease/nr/biz/news/column/a;->l:Lcom/netease/nr/biz/news/column/f;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/news/column/a;->l:Lcom/netease/nr/biz/news/column/f;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/news/column/f;->a([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/nr/biz/news/column/a;->a(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/netease/nr/biz/news/column/a;->g()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/nr/biz/news/column/a;->l:Lcom/netease/nr/biz/news/column/f;

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/netease/util/k/a;->b()Lcom/netease/util/k/f;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/news/column/a;->l:Lcom/netease/nr/biz/news/column/f;

    invoke-interface {v0, v1}, Lcom/netease/util/k/f;->a(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method static synthetic c(Lcom/netease/nr/biz/news/column/a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/news/column/a;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/netease/nr/biz/news/column/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/netease/nr/biz/news/column/a;->e:Z

    return v0
.end method

.method static synthetic e(Lcom/netease/nr/biz/news/column/a;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/news/column/a;->h:Ljava/util/List;

    return-object v0
.end method

.method static synthetic f()Landroid/util/SparseArray;
    .locals 1

    sget-object v0, Lcom/netease/nr/biz/news/column/a;->m:Landroid/util/SparseArray;

    return-object v0
.end method

.method private g()V
    .locals 4

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/netease/nr/biz/news/column/a;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/netease/nr/biz/news/column/a;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v3, "tid"

    invoke-static {v0, v3}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/netease/nr/biz/news/column/a;->j:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_1
    iget-object v0, p0, Lcom/netease/nr/biz/news/column/a;->k:Lcom/netease/nr/biz/news/column/e;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/nr/biz/news/column/a;->k:Lcom/netease/nr/biz/news/column/e;

    invoke-interface {v0, v1}, Lcom/netease/nr/biz/news/column/e;->b(I)V

    :cond_2
    return-void

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method private h()V
    .locals 8

    const/4 v7, 0x3

    iget-object v0, p0, Lcom/netease/nr/biz/news/column/a;->d:Landroid/widget/SimpleAdapter;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/column/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/util/i/b;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v4, 0x7f030056

    :goto_0
    new-instance v0, Lcom/netease/nr/biz/news/column/c;

    iget-object v2, p0, Lcom/netease/nr/biz/news/column/a;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/netease/nr/biz/news/column/a;->h:Ljava/util/List;

    new-array v5, v7, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v6, "tname"

    aput-object v6, v5, v1

    const/4 v1, 0x1

    const-string v6, "delete"

    aput-object v6, v5, v1

    const/4 v1, 0x2

    const-string v6, "icon"

    aput-object v6, v5, v1

    new-array v6, v7, [I

    fill-array-data v6, :array_0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/netease/nr/biz/news/column/c;-><init>(Lcom/netease/nr/biz/news/column/a;Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/netease/nr/biz/news/column/a;->d:Landroid/widget/SimpleAdapter;

    iget-object v0, p0, Lcom/netease/nr/biz/news/column/a;->d:Landroid/widget/SimpleAdapter;

    new-instance v1, Lcom/netease/nr/biz/news/column/d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/netease/nr/biz/news/column/d;-><init>(Lcom/netease/nr/biz/news/column/a;Lcom/netease/nr/biz/news/column/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/SimpleAdapter;->setViewBinder(Landroid/widget/SimpleAdapter$ViewBinder;)V

    :cond_0
    return-void

    :cond_1
    const v4, 0x7f03004c

    goto :goto_0

    :array_0
    .array-data 4
        0x7f0c0008
        0x7f0c00eb
        0x7f0c0081
    .end array-data
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 5

    const/4 v2, -0x1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/news/column/a;->h:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/column/a;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/column/a;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    add-int/lit8 v1, v1, 0x1

    const-string v4, "tid"

    invoke-static {v0, v4}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v2, v1

    goto :goto_0
.end method

.method public a(I)Landroid/support/v4/app/Fragment;
    .locals 4

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/column/a;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/news/column/a;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "tid"

    invoke-static {v0, v2}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    const-string v3, "tname"

    invoke-static {v0, v3}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/netease/nr/biz/news/column/a;->b:Landroid/content/Context;

    invoke-static {v3, v2, v0, v1}, Lcom/netease/nr/biz/news/column/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto :goto_0
.end method

.method public a()Landroid/widget/ListAdapter;
    .locals 1

    invoke-direct {p0}, Lcom/netease/nr/biz/news/column/a;->h()V

    iget-object v0, p0, Lcom/netease/nr/biz/news/column/a;->d:Landroid/widget/SimpleAdapter;

    return-object v0
.end method

.method public a(ILandroid/os/Bundle;)Lcom/netease/util/fragment/i;
    .locals 5

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/column/a;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/news/column/a;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "tid"

    invoke-static {v0, v2}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/netease/nr/biz/news/column/a;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iput-object v2, p0, Lcom/netease/nr/biz/news/column/a;->j:Ljava/lang/String;

    const-string v3, "tname"

    invoke-static {v0, v3}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    if-eqz p2, :cond_9

    const-string v0, "columnCId"

    const-string v1, "columnCId"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "param_source"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string v1, "T1348647909107"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-class v0, Lcom/netease/nr/biz/news/a/a/b;

    :goto_2
    const-string v1, "columnId"

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "columnName"

    invoke-virtual {v4, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/netease/util/fragment/i;

    invoke-direct {v1, v2, v0, v4}, Lcom/netease/util/fragment/i;-><init>(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    const-string v1, "T1351840906470"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-class v0, Lcom/netease/nr/phone/main/b;

    goto :goto_2

    :cond_3
    const-string v1, "T1348649503389"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-class v0, Lcom/netease/nr/biz/news/a/c/a;

    goto :goto_2

    :cond_4
    const-string v1, "T1348648756099"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-class v0, Lcom/netease/nr/biz/news/a/c/b/f;

    goto :goto_2

    :cond_5
    const-string v1, "T1348654060988"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-class v0, Lcom/netease/nr/biz/news/a/c/a/a;

    goto :goto_2

    :cond_6
    const-string v1, "T1379038288239"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-class v0, Lcom/netease/nr/biz/audio/m;

    goto :goto_2

    :cond_7
    const-string v1, "source_media"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-class v0, Lcom/netease/nr/biz/news/a/c/c/a;

    goto :goto_2

    :cond_8
    const-class v0, Lcom/netease/nr/biz/news/a/d;

    goto :goto_2

    :cond_9
    move-object v0, v1

    goto :goto_1
.end method

.method public a(Landroid/database/DataSetObserver;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/column/a;->i:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/column/a;->i:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public a(Lcom/netease/nr/biz/news/column/e;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/news/column/a;->k:Lcom/netease/nr/biz/news/column/e;

    return-void
.end method

.method public a(Z)V
    .locals 3

    iget-object v0, p0, Lcom/netease/nr/biz/news/column/a;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "delete"

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/news/column/a;->k:Lcom/netease/nr/biz/news/column/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/news/column/a;->k:Lcom/netease/nr/biz/news/column/e;

    iget-object v1, p0, Lcom/netease/nr/biz/news/column/a;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/netease/nr/biz/news/column/e;->a(Ljava/util/List;)V

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/netease/nr/biz/news/column/a;->d:Landroid/widget/SimpleAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/nr/biz/news/column/a;->d:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method public a(II)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    if-ne p1, p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/netease/nr/biz/news/column/a;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    if-ltz p1, :cond_0

    if-ge p2, v2, :cond_0

    if-ltz p2, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/column/a;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-boolean v1, p0, Lcom/netease/nr/biz/news/column/a;->f:Z

    iget-object v2, p0, Lcom/netease/nr/biz/news/column/a;->h:Ljava/util/List;

    invoke-interface {v2, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/netease/nr/biz/news/column/a;->h()V

    iget-object v0, p0, Lcom/netease/nr/biz/news/column/a;->d:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    move v0, v1

    goto :goto_0
.end method

.method public b(I)Ljava/lang/String;
    .locals 2

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/column/a;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/news/column/a;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "tname"

    invoke-static {v0, v1}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/biz/news/column/a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/news/column/a;->a:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public b(Landroid/database/DataSetObserver;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/column/a;->i:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/column/a;->i:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/news/column/a;->j:Ljava/lang/String;

    return-object v0
.end method

.method public c(I)Ljava/lang/String;
    .locals 2

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/column/a;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/news/column/a;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "tid"

    invoke-static {v0, v1}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public d(I)Ljava/lang/String;
    .locals 2

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/column/a;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/news/column/a;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "icon"

    invoke-static {v0, v1}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netease/nr/biz/news/column/a;->e:Z

    return v0
.end method

.method public e()I
    .locals 2

    iget v0, p0, Lcom/netease/nr/biz/news/column/a;->g:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/column/a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/netease/nr/biz/news/column/a;->g:I

    :cond_0
    iget v0, p0, Lcom/netease/nr/biz/news/column/a;->g:I

    return v0
.end method

.method public e(I)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/news/column/a;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/netease/nr/biz/news/column/a;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/news/column/a;->c(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/news/column/a;->j:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/netease/nr/biz/news/column/a;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/netease/nr/biz/news/column/a;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/netease/nr/biz/news/column/a;->f:Z

    invoke-static {v0}, Lcom/netease/nr/biz/news/column/a;->a(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "delete"

    const-string v2, "TAG_DELETE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iget-object v0, p0, Lcom/netease/nr/biz/news/column/a;->k:Lcom/netease/nr/biz/news/column/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/news/column/a;->k:Lcom/netease/nr/biz/news/column/e;

    iget-object v1, p0, Lcom/netease/nr/biz/news/column/a;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/netease/nr/biz/news/column/e;->a(Ljava/util/List;)V

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/news/column/a;->d:Landroid/widget/SimpleAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/column/a;->d:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_2
    const-string v1, "delete"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x7f0c00eb
        :pswitch_0
    .end packed-switch
.end method
