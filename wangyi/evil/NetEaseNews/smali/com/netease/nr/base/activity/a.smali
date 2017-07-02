.class public Lcom/netease/nr/base/activity/a;
.super Ljava/lang/Object;


# direct methods
.method static final a(Lcom/netease/nr/base/activity/BaseApplication;)V
    .locals 0

    invoke-static {p0}, Lcom/netease/nr/base/activity/a;->b(Lcom/netease/nr/base/activity/BaseApplication;)V

    invoke-static {p0}, Lcom/netease/nr/base/activity/a;->c(Lcom/netease/nr/base/activity/BaseApplication;)V

    return-void
.end method

.method private static b(Lcom/netease/nr/base/activity/BaseApplication;)V
    .locals 5

    const-string v0, "top_columns"

    invoke-static {v0}, Lcom/netease/nr/base/db/BaseContentProvider;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "tid=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "T1351840906470"

    aput-object v4, v2, v3

    invoke-virtual {p0}, Lcom/netease/nr/base/activity/BaseApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private static c(Lcom/netease/nr/base/activity/BaseApplication;)V
    .locals 2

    invoke-virtual {p0}, Lcom/netease/nr/base/activity/BaseApplication;->m()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p0}, Lcom/netease/util/i/b;->k(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/base/activity/BaseApplication;->l()I

    move-result v0

    const/16 v1, 0x56

    if-ge v0, v1, :cond_1

    invoke-static {p0}, Lcom/netease/nr/biz/news/column/g;->m(Landroid/content/Context;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v1, 0x57

    if-gt v0, v1, :cond_0

    const-string v0, "T1379038288239"

    invoke-static {p0, v0}, Lcom/netease/nr/biz/news/column/g;->k(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
