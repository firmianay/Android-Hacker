.class final Lcom/netease/nr/biz/sns/util/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/netease/nr/base/activity/BaseApplication;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/netease/nr/base/activity/BaseApplication;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/sns/util/b;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/netease/nr/biz/sns/util/b;->b:Lcom/netease/nr/base/activity/BaseApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "oauth_list"

    invoke-static {v0}, Lcom/netease/nr/base/db/BaseContentProvider;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Lcom/netease/util/db/c;

    invoke-direct {v1}, Lcom/netease/util/db/c;-><init>()V

    const-string v2, "oauth_type"

    invoke-virtual {v1, v2}, Lcom/netease/util/db/c;->a(Ljava/lang/String;)Lcom/netease/util/db/c;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/netease/nr/biz/sns/util/b;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/netease/nr/biz/sns/util/b;->b:Lcom/netease/nr/base/activity/BaseApplication;

    invoke-virtual {v3}, Lcom/netease/nr/base/activity/BaseApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v1}, Lcom/netease/util/db/c;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/b;->b:Lcom/netease/nr/base/activity/BaseApplication;

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    return-void
.end method
