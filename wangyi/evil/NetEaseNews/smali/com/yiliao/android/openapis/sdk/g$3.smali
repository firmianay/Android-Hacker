.class final Lcom/yiliao/android/openapis/sdk/g$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/yiliao/android/openapis/sdk/g;


# direct methods
.method constructor <init>(Lcom/yiliao/android/openapis/sdk/g;)V
    .locals 0

    iput-object p1, p0, Lcom/yiliao/android/openapis/sdk/g$3;->a:Lcom/yiliao/android/openapis/sdk/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/yiliao/android/openapis/sdk/g$3;->a:Lcom/yiliao/android/openapis/sdk/g;

    invoke-static {v1}, Lcom/yiliao/android/openapis/sdk/g;->d(Lcom/yiliao/android/openapis/sdk/g;)Lcom/yiliao/android/openapis/sdk/a/a;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/g$3;->a:Lcom/yiliao/android/openapis/sdk/g;

    invoke-static {v0}, Lcom/yiliao/android/openapis/sdk/g;->d(Lcom/yiliao/android/openapis/sdk/g;)Lcom/yiliao/android/openapis/sdk/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/yiliao/android/openapis/sdk/g$3;->a:Lcom/yiliao/android/openapis/sdk/g;

    invoke-static {v1}, Lcom/yiliao/android/openapis/sdk/g;->e(Lcom/yiliao/android/openapis/sdk/g;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yiliao/android/openapis/sdk/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/yiliao/android/openapis/sdk/g$3;->a:Lcom/yiliao/android/openapis/sdk/g;

    invoke-static {v1}, Lcom/yiliao/android/openapis/sdk/g;->f(Lcom/yiliao/android/openapis/sdk/g;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/g$3;->a:Lcom/yiliao/android/openapis/sdk/g;

    invoke-static {v0}, Lcom/yiliao/android/openapis/sdk/g;->f(Lcom/yiliao/android/openapis/sdk/g;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
