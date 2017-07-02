.class public Lcom/netease/nr/base/c/c;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/activity/BaseApplication;

    invoke-static {p0}, Lcom/netease/nr/base/c/c;->d(Landroid/content/Context;)V

    new-instance v1, Lcom/netease/nr/base/c/d;

    invoke-direct {v1, v0}, Lcom/netease/nr/base/c/d;-><init>(Lcom/netease/nr/base/activity/BaseApplication;)V

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/activity/BaseApplication;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic b(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/netease/nr/base/c/c;->c(Landroid/content/Context;)V

    return-void
.end method

.method private static c(Landroid/content/Context;)V
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/netease/nr/biz/e/a;->d(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/netease/nr/biz/push/f;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/netease/nr/biz/news/a/i;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/netease/nr/biz/news/a/i;->b(Landroid/content/Context;)I

    invoke-static {p0}, Lcom/netease/nr/biz/pics/p;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/netease/util/cache/o;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static d(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/activity/BaseApplication;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/activity/BaseApplication;->a(Lcom/netease/ad/e;)V

    return-void
.end method
