.class public final Lcom/yiliao/android/openapis/sdk/g;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/yiliao/android/openapis/sdk/g;

.field private static g:Ljava/util/ArrayList;


# instance fields
.field private b:Lcom/yiliao/android/openapis/sdk/a/a;

.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z

.field private h:Landroid/os/Handler;

.field private i:Lcom/yiliao/android/openapis/services/IYLOpenApiServiceCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/yiliao/android/openapis/sdk/g;->g:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yiliao/android/openapis/sdk/g;->f:Z

    new-instance v0, Lcom/yiliao/android/openapis/sdk/g$1;

    invoke-direct {v0, p0}, Lcom/yiliao/android/openapis/sdk/g$1;-><init>(Lcom/yiliao/android/openapis/sdk/g;)V

    iput-object v0, p0, Lcom/yiliao/android/openapis/sdk/g;->h:Landroid/os/Handler;

    new-instance v0, Lcom/yiliao/android/openapis/sdk/g$2;

    invoke-direct {v0, p0}, Lcom/yiliao/android/openapis/sdk/g$2;-><init>(Lcom/yiliao/android/openapis/sdk/g;)V

    iput-object v0, p0, Lcom/yiliao/android/openapis/sdk/g;->i:Lcom/yiliao/android/openapis/services/IYLOpenApiServiceCallback;

    new-instance v0, Lcom/yiliao/android/openapis/sdk/a/a;

    invoke-direct {v0, p1}, Lcom/yiliao/android/openapis/sdk/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yiliao/android/openapis/sdk/g;->b:Lcom/yiliao/android/openapis/sdk/a/a;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/yiliao/android/openapis/sdk/g;->c:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/yiliao/android/openapis/sdk/g;
    .locals 1

    sget-object v0, Lcom/yiliao/android/openapis/sdk/g;->a:Lcom/yiliao/android/openapis/sdk/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/yiliao/android/openapis/sdk/g;

    invoke-direct {v0, p0}, Lcom/yiliao/android/openapis/sdk/g;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/yiliao/android/openapis/sdk/g;->a:Lcom/yiliao/android/openapis/sdk/g;

    :cond_0
    sget-object v0, Lcom/yiliao/android/openapis/sdk/g;->a:Lcom/yiliao/android/openapis/sdk/g;

    return-object v0
.end method

.method public static a(Landroid/content/Intent;Lcom/yiliao/android/openapis/sdk/IYLAPIEventHandler$IOnFromYLHandler;)V
    .locals 2

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "type"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "showcontent"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/yiliao/android/openapis/sdk/ShowMessageFromYL$Req;

    invoke-direct {v1}, Lcom/yiliao/android/openapis/sdk/ShowMessageFromYL$Req;-><init>()V

    invoke-virtual {v1, v0}, Lcom/yiliao/android/openapis/sdk/ShowMessageFromYL$Req;->parse(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/yiliao/android/openapis/sdk/ShowMessageFromYL$Req;->checkArgs()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, v1}, Lcom/yiliao/android/openapis/sdk/IYLAPIEventHandler$IOnFromYLHandler;->onReq(Lcom/yiliao/android/openapis/model/BaseReq;)V

    goto :goto_0
.end method

.method public static a(Lcom/yiliao/android/openapis/sdk/IYLAPIEventHandler$IOnToYLHandler;)V
    .locals 1

    sget-object v0, Lcom/yiliao/android/openapis/sdk/g;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic a(Lcom/yiliao/android/openapis/sdk/g;)V
    .locals 2

    new-instance v0, Lcom/yiliao/android/openapis/sdk/g$3;

    invoke-direct {v0, p0}, Lcom/yiliao/android/openapis/sdk/g$3;-><init>(Lcom/yiliao/android/openapis/sdk/g;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic a(Lcom/yiliao/android/openapis/sdk/g;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/yiliao/android/openapis/sdk/g;->b(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/yiliao/android/openapis/sdk/g;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yiliao/android/openapis/sdk/g;->e:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/yiliao/android/openapis/sdk/g;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/yiliao/android/openapis/sdk/g;->f:Z

    return-void
.end method

.method static synthetic a(Ljava/lang/Object;)V
    .locals 3

    instance-of v0, p0, Lcom/yiliao/android/openapis/model/BaseState;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/yiliao/android/openapis/sdk/g;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yiliao/android/openapis/sdk/IYLAPIEventHandler$IOnToYLHandler;

    move-object v1, p0

    check-cast v1, Lcom/yiliao/android/openapis/model/BaseState;

    invoke-interface {v0, v1}, Lcom/yiliao/android/openapis/sdk/IYLAPIEventHandler$IOnToYLHandler;->onSysState(Lcom/yiliao/android/openapis/model/BaseState;)V

    goto :goto_0

    :cond_2
    instance-of v0, p0, Lcom/yiliao/android/openapis/model/BaseResp;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/yiliao/android/openapis/sdk/g;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yiliao/android/openapis/sdk/IYLAPIEventHandler$IOnToYLHandler;

    move-object v1, p0

    check-cast v1, Lcom/yiliao/android/openapis/model/BaseResp;

    invoke-interface {v0, v1}, Lcom/yiliao/android/openapis/sdk/IYLAPIEventHandler$IOnToYLHandler;->onResp(Lcom/yiliao/android/openapis/model/BaseResp;)V

    goto :goto_1
.end method

.method public static b(Lcom/yiliao/android/openapis/sdk/IYLAPIEventHandler$IOnToYLHandler;)V
    .locals 1

    sget-object v0, Lcom/yiliao/android/openapis/sdk/g;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic b(Lcom/yiliao/android/openapis/sdk/g;)V
    .locals 0

    invoke-direct {p0}, Lcom/yiliao/android/openapis/sdk/g;->j()V

    return-void
.end method

.method static synthetic b(Lcom/yiliao/android/openapis/sdk/g;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/g;->b:Lcom/yiliao/android/openapis/sdk/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/g;->b:Lcom/yiliao/android/openapis/sdk/a/a;

    iget-object v1, p0, Lcom/yiliao/android/openapis/sdk/g;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/yiliao/android/openapis/sdk/g;->i:Lcom/yiliao/android/openapis/services/IYLOpenApiServiceCallback;

    invoke-virtual {v0, v1, v2, p1}, Lcom/yiliao/android/openapis/sdk/a/a;->a(Ljava/lang/String;Lcom/yiliao/android/openapis/services/IYLOpenApiServiceCallback;Ljava/lang/String;)V
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

.method private b(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/g;->h:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/yiliao/android/openapis/sdk/g;->h:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method static synthetic c(Lcom/yiliao/android/openapis/sdk/g;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/g;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/yiliao/android/openapis/sdk/g;)Lcom/yiliao/android/openapis/sdk/a/a;
    .locals 1

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/g;->b:Lcom/yiliao/android/openapis/sdk/a/a;

    return-object v0
.end method

.method static synthetic e(Lcom/yiliao/android/openapis/sdk/g;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/g;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/yiliao/android/openapis/sdk/g;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/g;->h:Landroid/os/Handler;

    return-object v0
.end method

.method private j()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/g;->b:Lcom/yiliao/android/openapis/sdk/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/g;->b:Lcom/yiliao/android/openapis/sdk/a/a;

    iget-object v1, p0, Lcom/yiliao/android/openapis/sdk/g;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/yiliao/android/openapis/sdk/g;->i:Lcom/yiliao/android/openapis/services/IYLOpenApiServiceCallback;

    invoke-virtual {v0, v1, v2}, Lcom/yiliao/android/openapis/sdk/a/a;->a(Ljava/lang/String;Lcom/yiliao/android/openapis/services/IYLOpenApiServiceCallback;)V
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


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/g;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final a(I)V
    .locals 1

    new-instance v0, Lcom/yiliao/android/openapis/model/BaseState;

    invoke-direct {v0}, Lcom/yiliao/android/openapis/model/BaseState;-><init>()V

    iput p1, v0, Lcom/yiliao/android/openapis/model/BaseState;->state:I

    invoke-direct {p0, v0}, Lcom/yiliao/android/openapis/sdk/g;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/yiliao/android/openapis/model/BaseReq;)V
    .locals 5

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/g;->b:Lcom/yiliao/android/openapis/sdk/a/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/g;->b:Lcom/yiliao/android/openapis/sdk/a/a;

    iget-object v1, p0, Lcom/yiliao/android/openapis/sdk/g;->d:Ljava/lang/String;

    iget v2, p1, Lcom/yiliao/android/openapis/model/BaseReq;->cmd:I

    invoke-virtual {p1}, Lcom/yiliao/android/openapis/model/BaseReq;->build()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/yiliao/android/openapis/sdk/g;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/yiliao/android/openapis/sdk/a/a;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "token_null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ServiceNotBind"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "request_fail"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const v0, 0x9017

    invoke-virtual {p0, v0}, Lcom/yiliao/android/openapis/sdk/g;->a(I)V

    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/g;->b:Lcom/yiliao/android/openapis/sdk/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/g;->b:Lcom/yiliao/android/openapis/sdk/a/a;

    invoke-virtual {v0, p1}, Lcom/yiliao/android/openapis/sdk/a/a;->a(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/g;->b:Lcom/yiliao/android/openapis/sdk/a/a;

    iget-object v1, p0, Lcom/yiliao/android/openapis/sdk/g;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/yiliao/android/openapis/sdk/g;->h:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/yiliao/android/openapis/sdk/a/a;->a(Landroid/os/Handler;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/yiliao/android/openapis/sdk/g;->f:Z

    if-eqz v2, :cond_0

    const-string v1, "YLThirdAppServer"

    const-string v2, "registerAppid::registering"

    invoke-static {v1, v2}, Lcom/yiliao/android/openapis/util/YLLOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "YLThirdAppServer"

    const-string v2, "registerAppid::appid is invalidation"

    invoke-static {v1, v2}, Lcom/yiliao/android/openapis/util/YLLOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const v1, 0x9000

    invoke-virtual {p0, v1}, Lcom/yiliao/android/openapis/sdk/g;->a(I)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/yiliao/android/openapis/sdk/g;->d:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/yiliao/android/openapis/sdk/g;->d:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v1, "YLThirdAppServer"

    const-string v2, "registerAppid::The same APK can only use same appid"

    invoke-static {v1, v2}, Lcom/yiliao/android/openapis/util/YLLOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const v1, 0x9001

    invoke-virtual {p0, v1}, Lcom/yiliao/android/openapis/sdk/g;->a(I)V

    goto :goto_0

    :cond_2
    iput-object p1, p0, Lcom/yiliao/android/openapis/sdk/g;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/g;->h:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/yiliao/android/openapis/sdk/g;->h:Landroid/os/Handler;

    const-wide/16 v3, 0x64

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move v0, v1

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/g;->b:Lcom/yiliao/android/openapis/sdk/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/g;->b:Lcom/yiliao/android/openapis/sdk/a/a;

    invoke-virtual {v0}, Lcom/yiliao/android/openapis/sdk/a/a;->a()V

    :cond_0
    return-void
.end method

.method public final d()Z
    .locals 1

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/g;->b:Lcom/yiliao/android/openapis/sdk/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/g;->b:Lcom/yiliao/android/openapis/sdk/a/a;

    invoke-virtual {v0}, Lcom/yiliao/android/openapis/sdk/a/a;->b()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/yiliao/android/openapis/sdk/g;->b:Lcom/yiliao/android/openapis/sdk/a/a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yiliao/android/openapis/sdk/g;->b:Lcom/yiliao/android/openapis/sdk/a/a;

    iget-object v1, p0, Lcom/yiliao/android/openapis/sdk/g;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/yiliao/android/openapis/sdk/a/a;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const v1, 0x9004

    invoke-virtual {p0, v1}, Lcom/yiliao/android/openapis/sdk/g;->a(I)V

    goto :goto_0
.end method

.method public final f()Z
    .locals 1

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/g;->b:Lcom/yiliao/android/openapis/sdk/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/g;->b:Lcom/yiliao/android/openapis/sdk/a/a;

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/g;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/yiliao/android/openapis/sdk/a/a;->b(Landroid/content/Context;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/g;->b:Lcom/yiliao/android/openapis/sdk/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/g;->b:Lcom/yiliao/android/openapis/sdk/a/a;

    invoke-virtual {v0}, Lcom/yiliao/android/openapis/sdk/a/a;->c()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yiliao/android/openapis/sdk/g;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/g;->b:Lcom/yiliao/android/openapis/sdk/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/g;->b:Lcom/yiliao/android/openapis/sdk/a/a;

    iget-object v1, p0, Lcom/yiliao/android/openapis/sdk/g;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yiliao/android/openapis/sdk/a/a;->c(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/yiliao/android/openapis/sdk/g;->j()V

    return-void
.end method

.method public final i()Z
    .locals 7

    const v6, 0x9003

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.lectek.android.ecp"

    const-string v2, "aeca89c27827e05c221ad51260b9d5d5"

    iget-object v3, p0, Lcom/yiliao/android/openapis/sdk/g;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x40

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v3, v1

    if-lez v3, :cond_0

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yiliao/android/openapis/sdk/a$1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "YLThirdAppServer"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getAppSignature::value =="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/yiliao/android/openapis/util/YLLOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {p0, v6}, Lcom/yiliao/android/openapis/sdk/g;->a(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v6}, Lcom/yiliao/android/openapis/sdk/g;->a(I)V

    goto :goto_0
.end method
