.class public final Lcom/yiliao/android/openapis/sdk/a/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/yiliao/android/openapis/sdk/a/b;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "0.0.0"

    iput-object v0, p0, Lcom/yiliao/android/openapis/sdk/a/a;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/a/a;->a:Lcom/yiliao/android/openapis/sdk/a/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/yiliao/android/openapis/sdk/a/b;

    invoke-direct {v0, p1}, Lcom/yiliao/android/openapis/sdk/a/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yiliao/android/openapis/sdk/a/a;->a:Lcom/yiliao/android/openapis/sdk/a/b;

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-static {p0}, Lcom/yiliao/android/openapis/sdk/a/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "3.1.0"

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    if-ltz v2, :cond_3

    :goto_1
    return v0

    :cond_1
    invoke-static {v3}, Lcom/yiliao/android/openapis/sdk/a/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4}, Lcom/yiliao/android/openapis/sdk/a/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_2

    move v2, v0

    goto :goto_0

    :cond_2
    if-ltz v3, :cond_0

    move v2, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/yiliao/android/openapis/sdk/a/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.lectek.android.ecp"

    const/16 v2, 0x4000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-nez v1, :cond_0

    const-string v0, "0"

    :goto_0
    return-object v0

    :cond_0
    :try_start_1
    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v2, "YLChannelApis"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "code =="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";versionName =="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/yiliao/android/openapis/util/YLLOG;->D(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "YLChannelApis"

    const-string v1, "getVersionCode::NameNotFoundException"

    invoke-static {v0, v1}, Lcom/yiliao/android/openapis/util/YLLOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "0"

    goto :goto_0
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v1, 0x0

    const-string v0, "."

    const/16 v2, 0x10

    invoke-static {v0, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    array-length v4, v2

    move v0, v1

    :goto_0
    if-lt v0, v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    aget-object v5, v2, v0

    const-string v6, "%4s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v5, v7, v1

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "YLChannelApis"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "asyncRequest::json =="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yiliao/android/openapis/util/YLLOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "YLChannelApis"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "asyncRequest::token =="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yiliao/android/openapis/util/YLLOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "YLChannelApis"

    const-string v1, "request fail::token is null"

    invoke-static {v0, v1}, Lcom/yiliao/android/openapis/util/YLLOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "token_null"

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/a/a;->a:Lcom/yiliao/android/openapis/sdk/a/b;

    iget-object v0, v0, Lcom/yiliao/android/openapis/sdk/a/b;->a:Lcom/yiliao/android/openapis/services/IYLOpenApiService;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/a/a;->a:Lcom/yiliao/android/openapis/sdk/a/b;

    iget-object v0, v0, Lcom/yiliao/android/openapis/sdk/a/b;->a:Lcom/yiliao/android/openapis/services/IYLOpenApiService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/yiliao/android/openapis/services/IYLOpenApiService;->asyncRequest(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "YLChannelApis"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "asyncRequest::ret== "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yiliao/android/openapis/util/YLLOG;->D(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    :goto_1
    const-string v0, "YLChannelApis"

    const-string v1, "request fail::unknown"

    invoke-static {v0, v1}, Lcom/yiliao/android/openapis/util/YLLOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "request_fail"

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v0, "YLChannelApis"

    const-string v1, "channel disconnected!"

    invoke-static {v0, v1}, Lcom/yiliao/android/openapis/util/YLLOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v0, "ServiceNotBind"

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/a/a;->a:Lcom/yiliao/android/openapis/sdk/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/a/a;->a:Lcom/yiliao/android/openapis/sdk/a/b;

    invoke-virtual {v0}, Lcom/yiliao/android/openapis/sdk/a/b;->d()V

    :cond_0
    return-void
.end method

.method public final a(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/a/a;->a:Lcom/yiliao/android/openapis/sdk/a/b;

    invoke-virtual {v0}, Lcom/yiliao/android/openapis/sdk/a/b;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/a/a;->a:Lcom/yiliao/android/openapis/sdk/a/b;

    invoke-virtual {v0}, Lcom/yiliao/android/openapis/sdk/a/b;->a()V

    :cond_0
    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/a/a;->a:Lcom/yiliao/android/openapis/sdk/a/b;

    invoke-virtual {v0, p1}, Lcom/yiliao/android/openapis/sdk/a/b;->a(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/a/a;->a:Lcom/yiliao/android/openapis/sdk/a/b;

    invoke-virtual {v0}, Lcom/yiliao/android/openapis/sdk/a/b;->c()V

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/yiliao/android/openapis/services/IYLOpenApiServiceCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/a/a;->a:Lcom/yiliao/android/openapis/sdk/a/b;

    iget-object v0, v0, Lcom/yiliao/android/openapis/sdk/a/b;->a:Lcom/yiliao/android/openapis/services/IYLOpenApiService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/a/a;->a:Lcom/yiliao/android/openapis/sdk/a/b;

    iget-object v0, v0, Lcom/yiliao/android/openapis/sdk/a/b;->a:Lcom/yiliao/android/openapis/services/IYLOpenApiService;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/yiliao/android/openapis/services/IYLOpenApiService;->unregisterCallback(Ljava/lang/String;Lcom/yiliao/android/openapis/services/IYLOpenApiServiceCallback;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/yiliao/android/openapis/services/IYLOpenApiServiceCallback;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/a/a;->a:Lcom/yiliao/android/openapis/sdk/a/b;

    iget-object v0, v0, Lcom/yiliao/android/openapis/sdk/a/b;->a:Lcom/yiliao/android/openapis/services/IYLOpenApiService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/a/a;->a:Lcom/yiliao/android/openapis/sdk/a/b;

    iget-object v0, v0, Lcom/yiliao/android/openapis/sdk/a/b;->a:Lcom/yiliao/android/openapis/services/IYLOpenApiService;

    invoke-interface {v0, p1, p2, p3}, Lcom/yiliao/android/openapis/services/IYLOpenApiService;->registerCallback(Ljava/lang/String;Lcom/yiliao/android/openapis/services/IYLOpenApiServiceCallback;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    const-string v0, "YLChannelApis"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isregistered =="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/yiliao/android/openapis/sdk/a/a;->a:Lcom/yiliao/android/openapis/sdk/a/b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yiliao/android/openapis/util/YLLOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/a/a;->a:Lcom/yiliao/android/openapis/sdk/a/b;

    iget-object v0, v0, Lcom/yiliao/android/openapis/sdk/a/b;->a:Lcom/yiliao/android/openapis/services/IYLOpenApiService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/a/a;->a:Lcom/yiliao/android/openapis/sdk/a/b;

    iget-object v0, v0, Lcom/yiliao/android/openapis/sdk/a/b;->a:Lcom/yiliao/android/openapis/services/IYLOpenApiService;

    invoke-interface {v0, p1}, Lcom/yiliao/android/openapis/services/IYLOpenApiService;->isRegistered(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/a/a;->a:Lcom/yiliao/android/openapis/sdk/a/b;

    iget-object v0, v0, Lcom/yiliao/android/openapis/sdk/a/b;->a:Lcom/yiliao/android/openapis/services/IYLOpenApiService;

    if-eqz v0, :cond_0

    const-string v0, "YLChannelApis"

    const-string v1, "registerAppId...."

    invoke-static {v0, v1}, Lcom/yiliao/android/openapis/util/YLLOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/a/a;->a:Lcom/yiliao/android/openapis/sdk/a/b;

    iget-object v0, v0, Lcom/yiliao/android/openapis/sdk/a/b;->a:Lcom/yiliao/android/openapis/services/IYLOpenApiService;

    invoke-interface {v0, p1}, Lcom/yiliao/android/openapis/services/IYLOpenApiService;->registerAppId(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/yiliao/android/openapis/sdk/a/a;->a:Lcom/yiliao/android/openapis/sdk/a/b;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/yiliao/android/openapis/sdk/a/a;->a:Lcom/yiliao/android/openapis/sdk/a/b;

    iget-object v1, v1, Lcom/yiliao/android/openapis/sdk/a/b;->a:Lcom/yiliao/android/openapis/services/IYLOpenApiService;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/a/a;->a:Lcom/yiliao/android/openapis/sdk/a/b;

    iget-object v0, v0, Lcom/yiliao/android/openapis/sdk/a/b;->a:Lcom/yiliao/android/openapis/services/IYLOpenApiService;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/a/a;->a:Lcom/yiliao/android/openapis/sdk/a/b;

    iget-object v0, v0, Lcom/yiliao/android/openapis/sdk/a/b;->a:Lcom/yiliao/android/openapis/services/IYLOpenApiService;

    invoke-interface {v0}, Lcom/yiliao/android/openapis/services/IYLOpenApiService;->checkVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yiliao/android/openapis/sdk/a/a;->b:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/a/a;->b:Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/a/a;->a:Lcom/yiliao/android/openapis/sdk/a/b;

    iget-object v0, v0, Lcom/yiliao/android/openapis/sdk/a/b;->a:Lcom/yiliao/android/openapis/services/IYLOpenApiService;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/a/a;->a:Lcom/yiliao/android/openapis/sdk/a/b;

    iget-object v0, v0, Lcom/yiliao/android/openapis/sdk/a/b;->a:Lcom/yiliao/android/openapis/services/IYLOpenApiService;

    invoke-interface {v0, p1}, Lcom/yiliao/android/openapis/services/IYLOpenApiService;->unRegisterAppId(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
