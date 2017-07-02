.class public final Lcom/yiliao/android/openapis/sdk/a/b;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcom/yiliao/android/openapis/services/IYLOpenApiService;

.field private b:Landroid/content/Context;

.field private c:Landroid/os/Handler;

.field private d:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/yiliao/android/openapis/sdk/a/b;->a:Lcom/yiliao/android/openapis/services/IYLOpenApiService;

    iput-object v0, p0, Lcom/yiliao/android/openapis/sdk/a/b;->c:Landroid/os/Handler;

    new-instance v0, Lcom/yiliao/android/openapis/sdk/a/b$1;

    invoke-direct {v0, p0}, Lcom/yiliao/android/openapis/sdk/a/b$1;-><init>(Lcom/yiliao/android/openapis/sdk/a/b;)V

    iput-object v0, p0, Lcom/yiliao/android/openapis/sdk/a/b;->d:Landroid/content/ServiceConnection;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/yiliao/android/openapis/sdk/a/b;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/yiliao/android/openapis/sdk/a/b;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/a/b;->c:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Lcom/yiliao/android/openapis/sdk/a/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/yiliao/android/openapis/sdk/a/b;->e()V

    return-void
.end method

.method private e()V
    .locals 2

    const-string v0, "YLOpenApiServiceManager"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/yiliao/android/openapis/util/YLLOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yiliao/android/openapis/sdk/a/b;->a:Lcom/yiliao/android/openapis/services/IYLOpenApiService;

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/a/b;->c:Landroid/os/Handler;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/yiliao/android/openapis/sdk/a/b;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.yiliao.android.openapis.services.IYLOpenApiService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yiliao/android/openapis/sdk/a/b;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public final a(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/yiliao/android/openapis/sdk/a/b;->c:Landroid/os/Handler;

    return-void
.end method

.method public final b()Z
    .locals 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/a/b;->b:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v3

    const-string v4, "com.yiliao.android.openapis.services.YLOpenApiService"

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    :goto_1
    return v2

    :cond_0
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final c()V
    .locals 4

    const-string v0, "YLOpenApiServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "connectService=="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/yiliao/android/openapis/sdk/a/b;->d:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yiliao/android/openapis/util/YLLOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/a/b;->b:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/yiliao/android/openapis/services/IYLOpenApiService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/yiliao/android/openapis/sdk/a/b;->d:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public final d()V
    .locals 3

    const-string v0, "YLOpenApiServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "disconnectService=="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/yiliao/android/openapis/sdk/a/b;->d:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yiliao/android/openapis/util/YLLOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/a/b;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/yiliao/android/openapis/sdk/a/b;->d:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    invoke-direct {p0}, Lcom/yiliao/android/openapis/sdk/a/b;->e()V

    return-void
.end method
