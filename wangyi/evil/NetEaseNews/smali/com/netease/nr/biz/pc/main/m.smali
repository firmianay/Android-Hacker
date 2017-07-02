.class Lcom/netease/nr/biz/pc/main/m;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/pc/main/m;->a:Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.netease.service.OffLineService.ACTION_UPDATE_DATA"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/netease/nr/biz/plugin/plugin/d;

    invoke-direct {v1}, Lcom/netease/nr/biz/plugin/plugin/d;-><init>()V

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

    move-result v4

    iget-object v0, p0, Lcom/netease/nr/biz/pc/main/m;->a:Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;

    invoke-virtual {v0}, Lcom/netease/nr/biz/pc/main/PersonCenterMainFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v5, 0x7f0c0163

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    iput v3, v1, Lcom/netease/nr/biz/plugin/plugin/d;->b:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/netease/nr/biz/plugin/plugin/d;->c:Ljava/lang/String;

    iput v4, v1, Lcom/netease/nr/biz/plugin/plugin/d;->a:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget v1, v1, Lcom/netease/nr/biz/plugin/plugin/d;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    :cond_2
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method
