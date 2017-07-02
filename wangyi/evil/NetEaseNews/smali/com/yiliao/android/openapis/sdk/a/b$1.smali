.class final Lcom/yiliao/android/openapis/sdk/a/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private synthetic a:Lcom/yiliao/android/openapis/sdk/a/b;


# direct methods
.method constructor <init>(Lcom/yiliao/android/openapis/sdk/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/yiliao/android/openapis/sdk/a/b$1;->a:Lcom/yiliao/android/openapis/sdk/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/a/b$1;->a:Lcom/yiliao/android/openapis/sdk/a/b;

    invoke-static {p2}, Lcom/yiliao/android/openapis/services/IYLOpenApiService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yiliao/android/openapis/services/IYLOpenApiService;

    move-result-object v1

    iput-object v1, v0, Lcom/yiliao/android/openapis/sdk/a/b;->a:Lcom/yiliao/android/openapis/services/IYLOpenApiService;

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/a/b$1;->a:Lcom/yiliao/android/openapis/sdk/a/b;

    invoke-static {v0}, Lcom/yiliao/android/openapis/sdk/a/b;->a(Lcom/yiliao/android/openapis/sdk/a/b;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/yiliao/android/openapis/sdk/a/b$1;->a:Lcom/yiliao/android/openapis/sdk/a/b;

    invoke-static {v1}, Lcom/yiliao/android/openapis/sdk/a/b;->a(Lcom/yiliao/android/openapis/sdk/a/b;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string v0, "YLOpenApiServiceManager"

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Lcom/yiliao/android/openapis/util/YLLOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/a/b$1;->a:Lcom/yiliao/android/openapis/sdk/a/b;

    invoke-static {v0}, Lcom/yiliao/android/openapis/sdk/a/b;->b(Lcom/yiliao/android/openapis/sdk/a/b;)V

    return-void
.end method
