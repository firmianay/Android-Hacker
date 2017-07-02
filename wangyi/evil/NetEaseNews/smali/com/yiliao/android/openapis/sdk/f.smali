.class public final Lcom/yiliao/android/openapis/sdk/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/yiliao/android/openapis/sdk/IYLAPI;


# static fields
.field private static d:Ljava/lang/String;


# instance fields
.field private a:Lcom/yiliao/android/openapis/sdk/g;

.field private b:Z

.field private c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ""

    sput-object v0, Lcom/yiliao/android/openapis/sdk/f;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yiliao/android/openapis/sdk/f;->b:Z

    invoke-static {p1}, Lcom/yiliao/android/openapis/sdk/g;->a(Landroid/content/Context;)Lcom/yiliao/android/openapis/sdk/g;

    move-result-object v0

    iput-object v0, p0, Lcom/yiliao/android/openapis/sdk/f;->a:Lcom/yiliao/android/openapis/sdk/g;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/yiliao/android/openapis/sdk/f;->c:Landroid/content/Context;

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "YLOpenApiAppid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yiliao/android/openapis/sdk/f;->d:Ljava/lang/String;

    const-string v1, "YL"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yiliao/android/openapis/sdk/f;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yiliao/android/openapis/sdk/f;->b:Z

    invoke-static {p1}, Lcom/yiliao/android/openapis/sdk/g;->a(Landroid/content/Context;)Lcom/yiliao/android/openapis/sdk/g;

    move-result-object v0

    iput-object v0, p0, Lcom/yiliao/android/openapis/sdk/f;->a:Lcom/yiliao/android/openapis/sdk/g;

    iput-boolean p2, p0, Lcom/yiliao/android/openapis/sdk/f;->b:Z

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "YLOpenApiAppid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yiliao/android/openapis/sdk/f;->d:Ljava/lang/String;

    const-string v1, "YL"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yiliao/android/openapis/sdk/f;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/yiliao/android/openapis/sdk/f;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/f;->a:Lcom/yiliao/android/openapis/sdk/g;

    invoke-virtual {v0}, Lcom/yiliao/android/openapis/sdk/g;->i()Z

    move-result v0

    goto :goto_0
.end method

.method private a(Z)Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "YLApiImplV1"

    const-string v2, "share req::checkA"

    invoke-static {v1, v2}, Lcom/yiliao/android/openapis/util/YLLOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/yiliao/android/openapis/sdk/f;->isYLAppInstalled()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "YLApiImplV1"

    const-string v2, "YL_APP isn\'t installed"

    invoke-static {v1, v2}, Lcom/yiliao/android/openapis/util/YLLOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/yiliao/android/openapis/sdk/f;->upgradeMainApp()V

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/yiliao/android/openapis/sdk/f;->a()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "YLApiImplV1"

    const-string v2, "openYLChannel ::ylmainapp signature invalidation"

    invoke-static {v1, v2}, Lcom/yiliao/android/openapis/util/YLLOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/yiliao/android/openapis/sdk/f;->isYLAppSupportAPI()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "YLApiImplV1"

    const-string v2, "openYLChannel ::ylmainapp version lower than 3.1.0"

    invoke-static {v1, v2}, Lcom/yiliao/android/openapis/util/YLLOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/yiliao/android/openapis/sdk/f;->isOpenYLChannel()Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "YLApiImplV1"

    const-string v2, "YLChannel disconnected!"

    invoke-static {v1, v2}, Lcom/yiliao/android/openapis/util/YLLOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/yiliao/android/openapis/sdk/f;->openYLChannel()V

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final closeYLChannel()V
    .locals 1

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/f;->a:Lcom/yiliao/android/openapis/sdk/g;

    invoke-virtual {v0}, Lcom/yiliao/android/openapis/sdk/g;->c()V

    return-void
.end method

.method public final gainIYLAPIVersion()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/yiliao/android/openapis/sdk/f;->isOpenYLChannel()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "YLApiImplV1"

    const-string v1, "YLChannel disconnected!"

    invoke-static {v0, v1}, Lcom/yiliao/android/openapis/util/YLLOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "0.0.0"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/f;->a:Lcom/yiliao/android/openapis/sdk/g;

    invoke-virtual {v0}, Lcom/yiliao/android/openapis/sdk/g;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final handleIntent(Landroid/content/Intent;Lcom/yiliao/android/openapis/sdk/IYLAPIEventHandler$IOnFromYLHandler;)V
    .locals 1

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/f;->a:Lcom/yiliao/android/openapis/sdk/g;

    invoke-static {p1, p2}, Lcom/yiliao/android/openapis/sdk/g;->a(Landroid/content/Intent;Lcom/yiliao/android/openapis/sdk/IYLAPIEventHandler$IOnFromYLHandler;)V

    return-void
.end method

.method public final isOpenYLChannel()Z
    .locals 1

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/f;->a:Lcom/yiliao/android/openapis/sdk/g;

    invoke-virtual {v0}, Lcom/yiliao/android/openapis/sdk/g;->d()Z

    move-result v0

    return v0
.end method

.method public final isRegisteredApp()Z
    .locals 2

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/f;->a:Lcom/yiliao/android/openapis/sdk/g;

    sget-object v1, Lcom/yiliao/android/openapis/sdk/f;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yiliao/android/openapis/sdk/g;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final isYLAppInstalled()Z
    .locals 1

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/f;->a:Lcom/yiliao/android/openapis/sdk/g;

    invoke-virtual {v0}, Lcom/yiliao/android/openapis/sdk/g;->f()Z

    move-result v0

    return v0
.end method

.method public final isYLAppSupportAPI()Z
    .locals 1

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/f;->a:Lcom/yiliao/android/openapis/sdk/g;

    invoke-virtual {v0}, Lcom/yiliao/android/openapis/sdk/g;->e()Z

    move-result v0

    return v0
.end method

.method public final openYLChannel()V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/yiliao/android/openapis/sdk/f;->isYLAppInstalled()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "YLApiImplV1"

    const-string v2, "YL_APP isn\'t installed"

    invoke-static {v1, v2}, Lcom/yiliao/android/openapis/util/YLLOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/f;->a:Lcom/yiliao/android/openapis/sdk/g;

    invoke-virtual {v0}, Lcom/yiliao/android/openapis/sdk/g;->b()V

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/yiliao/android/openapis/sdk/f;->a()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "YLApiImplV1"

    const-string v2, "openYLChannel ::ylmainapp signature invalidation"

    invoke-static {v1, v2}, Lcom/yiliao/android/openapis/util/YLLOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/yiliao/android/openapis/sdk/f;->isYLAppSupportAPI()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "YLApiImplV1"

    const-string v2, "openYLChannel ::ylmainapp version lower than 3.1.0"

    invoke-static {v1, v2}, Lcom/yiliao/android/openapis/util/YLLOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final registerApp()Z
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/yiliao/android/openapis/sdk/f;->a(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/f;->a:Lcom/yiliao/android/openapis/sdk/g;

    sget-object v1, Lcom/yiliao/android/openapis/sdk/f;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yiliao/android/openapis/sdk/g;->b(Ljava/lang/String;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public final registerHandler(Lcom/yiliao/android/openapis/sdk/IYLAPIEventHandler$IOnToYLHandler;)V
    .locals 1

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/f;->a:Lcom/yiliao/android/openapis/sdk/g;

    invoke-static {p1}, Lcom/yiliao/android/openapis/sdk/g;->a(Lcom/yiliao/android/openapis/sdk/IYLAPIEventHandler$IOnToYLHandler;)V

    return-void
.end method

.method public final sendShareReq(Lcom/yiliao/android/openapis/model/BaseReq;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "YLApiImplV1"

    const-string v3, "share req::sendShareReq"

    invoke-static {v2, v3}, Lcom/yiliao/android/openapis/util/YLLOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "YLApiImplV1"

    const-string v3, "share req::checkB"

    invoke-static {v2, v3}, Lcom/yiliao/android/openapis/util/YLLOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/yiliao/android/openapis/sdk/f;->a(Z)Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    const-string v0, "YLApiImplV1"

    const-string v2, "share req::sendShareReq2"

    invoke-static {v0, v2}, Lcom/yiliao/android/openapis/util/YLLOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    iput v1, p1, Lcom/yiliao/android/openapis/model/BaseReq;->cmd:I

    move-object v0, p1

    check-cast v0, Lcom/yiliao/android/openapis/sdk/SendMessageToYL$Req;

    iget-object v0, v0, Lcom/yiliao/android/openapis/sdk/SendMessageToYL$Req;->message:Lcom/yiliao/android/openapis/model/YLMediaMessage;

    iget-object v1, p0, Lcom/yiliao/android/openapis/sdk/f;->a:Lcom/yiliao/android/openapis/sdk/g;

    invoke-virtual {v1}, Lcom/yiliao/android/openapis/sdk/g;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yiliao/android/openapis/model/YLMediaMessage;->appid:Ljava/lang/String;

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/f;->a:Lcom/yiliao/android/openapis/sdk/g;

    invoke-virtual {v0, p1}, Lcom/yiliao/android/openapis/sdk/g;->a(Lcom/yiliao/android/openapis/model/BaseReq;)V

    :cond_1
    const-string v0, "YLApiImplV1"

    const-string v1, "share req::sendShareReq3"

    invoke-static {v0, v1}, Lcom/yiliao/android/openapis/util/YLLOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    if-eqz p1, :cond_3

    instance-of v2, p1, Lcom/yiliao/android/openapis/sdk/SendMessageToYL$Req;

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/yiliao/android/openapis/model/BaseReq;->checkArgs()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    const-string v0, "YLApiImplV1"

    const-string v2, "req content error!"

    invoke-static {v0, v2}, Lcom/yiliao/android/openapis/util/YLLOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/f;->a:Lcom/yiliao/android/openapis/sdk/g;

    iget v2, p1, Lcom/yiliao/android/openapis/model/BaseReq;->errorCode:I

    invoke-virtual {v0, v2}, Lcom/yiliao/android/openapis/sdk/g;->a(I)V

    move v0, v1

    goto :goto_0
.end method

.method public final unRegisterApp()V
    .locals 1

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/f;->a:Lcom/yiliao/android/openapis/sdk/g;

    invoke-virtual {v0}, Lcom/yiliao/android/openapis/sdk/g;->h()V

    return-void
.end method

.method public final unRegisterHandler(Lcom/yiliao/android/openapis/sdk/IYLAPIEventHandler$IOnToYLHandler;)V
    .locals 1

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/f;->a:Lcom/yiliao/android/openapis/sdk/g;

    invoke-static {p1}, Lcom/yiliao/android/openapis/sdk/g;->b(Lcom/yiliao/android/openapis/sdk/IYLAPIEventHandler$IOnToYLHandler;)V

    return-void
.end method

.method public final upgradeMainApp()V
    .locals 3

    const-string v0, "YLApiImplV1"

    const-string v1, "upgradeMainApp...."

    invoke-static {v0, v1}, Lcom/yiliao/android/openapis/util/YLLOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/f;->c:Landroid/content/Context;

    const-string v1, "com.lectek.android.ecp"

    invoke-static {v0, v1}, Lcom/yiliao/android/openapis/sdk/a$1;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/f;->c:Landroid/content/Context;

    const-string v1, "\u60a8\u5df2\u5b89\u88c5\u7ffc\u804a\uff01"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/yiliao/android/openapis/sdk/f;->c:Landroid/content/Context;

    const-class v2, Lcom/yiliao/android/openapis/sdk/a;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/yiliao/android/openapis/sdk/f;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
