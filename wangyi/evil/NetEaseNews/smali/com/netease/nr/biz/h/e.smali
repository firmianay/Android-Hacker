.class Lcom/netease/nr/biz/h/e;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/h/d;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/h/d;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/h/e;->a:Lcom/netease/nr/biz/h/d;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    if-eqz p2, :cond_0

    const-string v0, "intent.broadcast.switch.topcolumn"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "sync \u63a5\u6536\u5230\u5e7f\u64ad\uff0c\u66f4\u65b0\u5217\u8868\u6570\u636e"

    invoke-static {v0}, Lcom/netease/util/d/a;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/nr/biz/h/e;->a:Lcom/netease/nr/biz/h/d;

    invoke-virtual {v0}, Lcom/netease/nr/biz/h/d;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/16 v1, 0x64

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/netease/nr/biz/h/e;->a:Lcom/netease/nr/biz/h/d;

    invoke-static {v3}, Lcom/netease/nr/biz/h/d;->a(Lcom/netease/nr/biz/h/d;)Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    :cond_0
    return-void
.end method
