.class Lcom/netease/nr/biz/plugin/plugin/e;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/plugin/plugin/OfflinePlugin;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/plugin/plugin/OfflinePlugin;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/plugin/plugin/e;->a:Lcom/netease/nr/biz/plugin/plugin/OfflinePlugin;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/netease/nr/biz/plugin/plugin/e;->a:Lcom/netease/nr/biz/plugin/plugin/OfflinePlugin;

    invoke-static {v1}, Lcom/netease/nr/biz/plugin/plugin/OfflinePlugin;->b(Lcom/netease/nr/biz/plugin/plugin/OfflinePlugin;)Lcom/netease/nr/biz/plugin/plugin/d;

    move-result-object v1

    const-string v2, "current_num"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v2, "current_col"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "percent"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "current_num_in_col"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v4, "status"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v3, v1, Lcom/netease/nr/biz/plugin/plugin/d;->b:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/netease/nr/biz/plugin/plugin/d;->c:Ljava/lang/String;

    iput v0, v1, Lcom/netease/nr/biz/plugin/plugin/d;->a:I

    iget-object v1, p0, Lcom/netease/nr/biz/plugin/plugin/e;->a:Lcom/netease/nr/biz/plugin/plugin/OfflinePlugin;

    invoke-static {v1}, Lcom/netease/nr/biz/plugin/plugin/OfflinePlugin;->c(Lcom/netease/nr/biz/plugin/plugin/OfflinePlugin;)Z

    move-result v1

    if-nez v1, :cond_1

    if-ne v0, v5, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/e;->a:Lcom/netease/nr/biz/plugin/plugin/OfflinePlugin;

    invoke-static {v0, v5}, Lcom/netease/nr/biz/plugin/plugin/OfflinePlugin;->a(Lcom/netease/nr/biz/plugin/plugin/OfflinePlugin;Z)Z

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/e;->a:Lcom/netease/nr/biz/plugin/plugin/OfflinePlugin;

    invoke-virtual {v0}, Lcom/netease/nr/biz/plugin/plugin/OfflinePlugin;->F()Lcom/netease/nr/biz/plugin/plugin/util/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/biz/plugin/plugin/util/i;->i()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/netease/nr/biz/plugin/plugin/e;->a:Lcom/netease/nr/biz/plugin/plugin/OfflinePlugin;

    invoke-static {v1}, Lcom/netease/nr/biz/plugin/plugin/OfflinePlugin;->c(Lcom/netease/nr/biz/plugin/plugin/OfflinePlugin;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eq v0, v5, :cond_2

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/e;->a:Lcom/netease/nr/biz/plugin/plugin/OfflinePlugin;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netease/nr/biz/plugin/plugin/OfflinePlugin;->a(Lcom/netease/nr/biz/plugin/plugin/OfflinePlugin;Z)Z

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/e;->a:Lcom/netease/nr/biz/plugin/plugin/OfflinePlugin;

    invoke-virtual {v0}, Lcom/netease/nr/biz/plugin/plugin/OfflinePlugin;->F()Lcom/netease/nr/biz/plugin/plugin/util/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/biz/plugin/plugin/util/i;->i()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/e;->a:Lcom/netease/nr/biz/plugin/plugin/OfflinePlugin;

    invoke-static {v0}, Lcom/netease/nr/biz/plugin/plugin/OfflinePlugin;->d(Lcom/netease/nr/biz/plugin/plugin/OfflinePlugin;)V

    goto :goto_0
.end method
