.class public Lcom/netease/nr/biz/offline/SyncDealImageTwoService;
.super Landroid/app/IntentService;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SyncDealImageTwoService"

    sput-object v0, Lcom/netease/nr/biz/offline/SyncDealImageTwoService;->c:Ljava/lang/String;

    const-string v0, "imgurl"

    sput-object v0, Lcom/netease/nr/biz/offline/SyncDealImageTwoService;->a:Ljava/lang/String;

    const-string v0, "is_pic_news"

    sput-object v0, Lcom/netease/nr/biz/offline/SyncDealImageTwoService;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/netease/nr/biz/offline/SyncDealImageTwoService;->c:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/netease/nr/biz/offline/SyncDealImageTwoService;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/netease/nr/biz/offline/SyncDealImageTwoService;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0, v2}, Lcom/netease/nr/base/c/a/d;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/netease/nr/base/c/a/d;

    move-result-object v2

    invoke-virtual {v2, p0, v1, v0}, Lcom/netease/nr/base/c/a/d;->a(Landroid/content/Context;Ljava/lang/String;Z)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method
