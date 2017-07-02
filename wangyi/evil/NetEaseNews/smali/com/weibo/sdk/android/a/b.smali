.class Lcom/weibo/sdk/android/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/weibo/sdk/android/a/a;


# direct methods
.method constructor <init>(Lcom/weibo/sdk/android/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/weibo/sdk/android/a/b;->a:Lcom/weibo/sdk/android/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    invoke-static {p2}, Lcom/b/a/b;->a(Landroid/os/IBinder;)Lcom/b/a/a;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Lcom/b/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/weibo/sdk/android/a/a;->a(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/b/a/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/weibo/sdk/android/a/a;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/weibo/sdk/android/a/b;->a:Lcom/weibo/sdk/android/a/a;

    iget-object v1, p0, Lcom/weibo/sdk/android/a/b;->a:Lcom/weibo/sdk/android/a/a;

    invoke-static {v1}, Lcom/weibo/sdk/android/a/a;->b(Lcom/weibo/sdk/android/a/a;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/weibo/sdk/android/b;->b:Ljava/lang/String;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p0, Lcom/weibo/sdk/android/a/b;->a:Lcom/weibo/sdk/android/a/a;

    invoke-static {v4}, Lcom/weibo/sdk/android/a/a;->c(Lcom/weibo/sdk/android/a/a;)I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/weibo/sdk/android/a/a;->a(Lcom/weibo/sdk/android/a/a;Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;[Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/weibo/sdk/android/a/b;->a:Lcom/weibo/sdk/android/a/a;

    invoke-static {v0}, Lcom/weibo/sdk/android/a/a;->a(Lcom/weibo/sdk/android/a/a;)Lcom/weibo/sdk/android/a/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/weibo/sdk/android/a/b;->a:Lcom/weibo/sdk/android/a/a;

    invoke-static {v0}, Lcom/weibo/sdk/android/a/a;->a(Lcom/weibo/sdk/android/a/a;)Lcom/weibo/sdk/android/a/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/weibo/sdk/android/a/c;->b()V
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

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object v0, p0, Lcom/weibo/sdk/android/a/b;->a:Lcom/weibo/sdk/android/a/a;

    invoke-static {v0}, Lcom/weibo/sdk/android/a/a;->a(Lcom/weibo/sdk/android/a/a;)Lcom/weibo/sdk/android/a/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/weibo/sdk/android/a/b;->a:Lcom/weibo/sdk/android/a/a;

    invoke-static {v0}, Lcom/weibo/sdk/android/a/a;->a(Lcom/weibo/sdk/android/a/a;)Lcom/weibo/sdk/android/a/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/weibo/sdk/android/a/c;->b()V

    :cond_0
    return-void
.end method
