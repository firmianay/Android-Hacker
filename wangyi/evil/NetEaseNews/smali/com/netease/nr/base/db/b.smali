.class public Lcom/netease/nr/base/db/b;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "netease_news.db"

    const/4 v1, 0x0

    const/16 v2, 0x58

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object p1, p0, Lcom/netease/nr/base/db/b;->a:Landroid/content/Context;

    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    new-instance v0, Lcom/netease/nr/base/db/a;

    iget-object v1, p0, Lcom/netease/nr/base/db/b;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/netease/nr/base/db/a;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;II)V

    invoke-virtual {v0}, Lcom/netease/nr/base/db/a;->a()Z

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    const/16 v3, 0x58

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-static {p1}, Lcom/netease/nr/base/db/c;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    const/4 v0, 0x0

    const/16 v1, 0x58

    invoke-direct {p0, p1, v0, v1}, Lcom/netease/nr/base/db/b;->a(Landroid/database/sqlite/SQLiteDatabase;II)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    iget-object v0, p0, Lcom/netease/nr/base/db/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/activity/BaseApplication;

    invoke-virtual {v0, v2, v3}, Lcom/netease/nr/base/activity/BaseApplication;->a(II)V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/16 v0, 0x4f

    if-ge p2, v0, :cond_0

    invoke-static {p1}, Lcom/netease/nr/base/db/c;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_0
    invoke-static {p1}, Lcom/netease/nr/base/db/c;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/netease/nr/base/db/b;->a(Landroid/database/sqlite/SQLiteDatabase;II)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    iget-object v0, p0, Lcom/netease/nr/base/db/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/activity/BaseApplication;

    invoke-virtual {v0, p2, p3}, Lcom/netease/nr/base/activity/BaseApplication;->a(II)V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method
