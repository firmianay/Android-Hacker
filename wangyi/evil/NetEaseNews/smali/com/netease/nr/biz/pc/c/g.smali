.class Lcom/netease/nr/biz/pc/c/g;
.super Landroid/support/v4/content/AsyncTaskLoader;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/pc/c/g;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/netease/nr/biz/pc/c/g;->a:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/netease/nr/biz/pc/c/f;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netease/nr/biz/pc/c/g;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/biz/pc/c/g;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/netease/nr/biz/pc/c/g;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/nr/biz/news/a/i;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/nr/biz/pc/c/g;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/netease/nr/biz/pc/c/g;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/nr/biz/pc/c/i;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/netease/nr/biz/pc/c/g;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/netease/nr/biz/pc/c/i;->a(Landroid/content/Context;Landroid/database/Cursor;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/c/g;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
