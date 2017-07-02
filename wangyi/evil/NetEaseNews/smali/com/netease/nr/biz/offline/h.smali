.class Lcom/netease/nr/biz/offline/h;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/offline/OffLineService;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/offline/OffLineService;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/offline/h;->a:Lcom/netease/nr/biz/offline/OffLineService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    const-wide/16 v5, 0x0

    const v3, 0x7f020170

    const v8, 0x7f030071

    const v7, 0x7f030072

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v3, ""

    const-string v2, ""

    const-string v0, ""

    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v0, "current_num"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "current_col"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "current_num_in_col"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "percent"

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    :cond_1
    iget-object v4, p0, Lcom/netease/nr/biz/offline/h;->a:Lcom/netease/nr/biz/offline/OffLineService;

    invoke-static {v4}, Lcom/netease/nr/biz/offline/OffLineService;->b(Lcom/netease/nr/biz/offline/OffLineService;)Landroid/app/Service;

    move-result-object v4

    invoke-static {v4, v3, v2, v0, v1}, Lcom/netease/nr/biz/offline/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    iget v4, p1, Landroid/os/Message;->what:I

    iput v4, v3, Landroid/os/Message;->what:I

    new-instance v4, Lcom/netease/nr/biz/offline/j;

    invoke-direct {v4}, Lcom/netease/nr/biz/offline/j;-><init>()V

    iput v1, v4, Lcom/netease/nr/biz/offline/j;->d:I

    iput-object v2, v4, Lcom/netease/nr/biz/offline/j;->e:Ljava/lang/String;

    iput-object v0, v4, Lcom/netease/nr/biz/offline/j;->f:Ljava/lang/String;

    const v0, 0x7f030071

    iput v0, v4, Lcom/netease/nr/biz/offline/j;->a:I

    const v0, 0x7f02016f

    iput v0, v4, Lcom/netease/nr/biz/offline/j;->b:I

    iget-object v0, p0, Lcom/netease/nr/biz/offline/h;->a:Lcom/netease/nr/biz/offline/OffLineService;

    invoke-static {v0}, Lcom/netease/nr/biz/offline/OffLineService;->b(Lcom/netease/nr/biz/offline/OffLineService;)Landroid/app/Service;

    move-result-object v0

    const v1, 0x7f0b01df

    invoke-virtual {v0, v1}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/netease/nr/biz/offline/j;->c:Ljava/lang/String;

    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/netease/nr/biz/offline/h;->a:Lcom/netease/nr/biz/offline/OffLineService;

    invoke-static {v0, v3}, Lcom/netease/nr/biz/offline/OffLineService;->a(Lcom/netease/nr/biz/offline/OffLineService;Landroid/os/Message;)Landroid/app/Notification;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/netease/nr/biz/offline/h;->a:Lcom/netease/nr/biz/offline/OffLineService;

    invoke-static {v1}, Lcom/netease/nr/biz/offline/OffLineService;->c(Lcom/netease/nr/biz/offline/OffLineService;)Landroid/app/NotificationManager;

    move-result-object v1

    const v2, 0x7f030071

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.netease.newsreader.offlineupdate"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/netease/nr/biz/offline/h;->a:Lcom/netease/nr/biz/offline/OffLineService;

    invoke-virtual {v2, v0}, Lcom/netease/nr/biz/offline/OffLineService;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iget v2, p1, Landroid/os/Message;->what:I

    iput v2, v0, Landroid/os/Message;->what:I

    new-instance v2, Lcom/netease/nr/biz/offline/k;

    invoke-direct {v2}, Lcom/netease/nr/biz/offline/k;-><init>()V

    iput v7, v2, Lcom/netease/nr/biz/offline/k;->a:I

    const v3, 0x7f020171

    iput v3, v2, Lcom/netease/nr/biz/offline/k;->b:I

    iget-object v3, p0, Lcom/netease/nr/biz/offline/h;->a:Lcom/netease/nr/biz/offline/OffLineService;

    invoke-static {v3}, Lcom/netease/nr/biz/offline/OffLineService;->b(Lcom/netease/nr/biz/offline/OffLineService;)Landroid/app/Service;

    move-result-object v3

    const v4, 0x7f0b01e2

    invoke-virtual {v3, v4}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/netease/nr/biz/offline/k;->c:Ljava/lang/String;

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/netease/nr/biz/offline/h;->a:Lcom/netease/nr/biz/offline/OffLineService;

    invoke-static {v2, v0}, Lcom/netease/nr/biz/offline/OffLineService;->a(Lcom/netease/nr/biz/offline/OffLineService;Landroid/os/Message;)Landroid/app/Notification;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/netease/nr/biz/offline/h;->a:Lcom/netease/nr/biz/offline/OffLineService;

    invoke-static {v2}, Lcom/netease/nr/biz/offline/OffLineService;->c(Lcom/netease/nr/biz/offline/OffLineService;)Landroid/app/NotificationManager;

    move-result-object v2

    invoke-virtual {v2, v8, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_2
    iget-object v0, p0, Lcom/netease/nr/biz/offline/h;->a:Lcom/netease/nr/biz/offline/OffLineService;

    invoke-static {v0}, Lcom/netease/nr/biz/offline/OffLineService;->d(Lcom/netease/nr/biz/offline/OffLineService;)Lcom/netease/nr/base/activity/BaseApplication;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/activity/BaseApplication;->b(Z)V

    iget-object v0, p0, Lcom/netease/nr/biz/offline/h;->a:Lcom/netease/nr/biz/offline/OffLineService;

    invoke-static {v0}, Lcom/netease/nr/biz/offline/OffLineService;->d(Lcom/netease/nr/biz/offline/OffLineService;)Lcom/netease/nr/base/activity/BaseApplication;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/activity/BaseApplication;->a(Z)V

    iget-object v0, p0, Lcom/netease/nr/biz/offline/h;->a:Lcom/netease/nr/biz/offline/OffLineService;

    invoke-static {v0}, Lcom/netease/nr/biz/offline/OffLineService;->d(Lcom/netease/nr/biz/offline/OffLineService;)Lcom/netease/nr/base/activity/BaseApplication;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/netease/nr/base/activity/BaseApplication;->c(Z)V

    iget-object v0, p0, Lcom/netease/nr/biz/offline/h;->a:Lcom/netease/nr/biz/offline/OffLineService;

    invoke-static {v0}, Lcom/netease/nr/biz/offline/OffLineService;->b(Lcom/netease/nr/biz/offline/OffLineService;)Landroid/app/Service;

    move-result-object v0

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    const/16 v7, 0x64

    invoke-static {v0, v2, v3, v4, v7}, Lcom/netease/nr/biz/offline/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/offline/h;->a:Lcom/netease/nr/biz/offline/OffLineService;

    invoke-static {v0}, Lcom/netease/nr/biz/offline/OffLineService;->d(Lcom/netease/nr/biz/offline/OffLineService;)Lcom/netease/nr/base/activity/BaseApplication;

    move-result-object v0

    const-string v2, "autoDownTime"

    invoke-static {v0, v2}, Lcom/netease/nr/base/c/s;->b(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/nr/biz/offline/h;->a:Lcom/netease/nr/biz/offline/OffLineService;

    invoke-static {v0}, Lcom/netease/nr/biz/offline/OffLineService;->b(Lcom/netease/nr/biz/offline/OffLineService;)Landroid/app/Service;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nr/biz/offline/a;->c(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/netease/nr/biz/offline/h;->a:Lcom/netease/nr/biz/offline/OffLineService;

    invoke-static {v0}, Lcom/netease/nr/biz/offline/OffLineService;->b(Lcom/netease/nr/biz/offline/OffLineService;)Landroid/app/Service;

    move-result-object v0

    const-string v3, ""

    const/4 v4, 0x2

    move v2, v1

    invoke-static/range {v0 .. v6}, Lcom/netease/nr/biz/offline/a;->a(Landroid/content/Context;IILjava/lang/String;IJ)V

    iget-object v0, p0, Lcom/netease/nr/biz/offline/h;->a:Lcom/netease/nr/biz/offline/OffLineService;

    invoke-static {v0}, Lcom/netease/nr/biz/offline/OffLineService;->b(Lcom/netease/nr/biz/offline/OffLineService;)Landroid/app/Service;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    goto/16 :goto_0

    :pswitch_2
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iget v2, p1, Landroid/os/Message;->what:I

    iput v2, v0, Landroid/os/Message;->what:I

    new-instance v2, Lcom/netease/nr/biz/offline/i;

    invoke-direct {v2}, Lcom/netease/nr/biz/offline/i;-><init>()V

    iput v7, v2, Lcom/netease/nr/biz/offline/i;->a:I

    iput v3, v2, Lcom/netease/nr/biz/offline/i;->b:I

    const-string v3, "\u79bb\u7ebf\u65b0\u95fb\u4e0b\u8f7d\u5931\u8d25"

    iput-object v3, v2, Lcom/netease/nr/biz/offline/i;->c:Ljava/lang/String;

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/netease/nr/biz/offline/h;->a:Lcom/netease/nr/biz/offline/OffLineService;

    invoke-static {v2, v0}, Lcom/netease/nr/biz/offline/OffLineService;->a(Lcom/netease/nr/biz/offline/OffLineService;Landroid/os/Message;)Landroid/app/Notification;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/netease/nr/biz/offline/h;->a:Lcom/netease/nr/biz/offline/OffLineService;

    invoke-static {v2}, Lcom/netease/nr/biz/offline/OffLineService;->c(Lcom/netease/nr/biz/offline/OffLineService;)Landroid/app/NotificationManager;

    move-result-object v2

    invoke-virtual {v2, v7, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_3
    iget-object v0, p0, Lcom/netease/nr/biz/offline/h;->a:Lcom/netease/nr/biz/offline/OffLineService;

    invoke-static {v0}, Lcom/netease/nr/biz/offline/OffLineService;->d(Lcom/netease/nr/biz/offline/OffLineService;)Lcom/netease/nr/base/activity/BaseApplication;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/activity/BaseApplication;->b(Z)V

    iget-object v0, p0, Lcom/netease/nr/biz/offline/h;->a:Lcom/netease/nr/biz/offline/OffLineService;

    invoke-static {v0}, Lcom/netease/nr/biz/offline/OffLineService;->d(Lcom/netease/nr/biz/offline/OffLineService;)Lcom/netease/nr/base/activity/BaseApplication;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/activity/BaseApplication;->a(Z)V

    iget-object v0, p0, Lcom/netease/nr/biz/offline/h;->a:Lcom/netease/nr/biz/offline/OffLineService;

    invoke-static {v0}, Lcom/netease/nr/biz/offline/OffLineService;->b(Lcom/netease/nr/biz/offline/OffLineService;)Landroid/app/Service;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/netease/nr/biz/offline/h;->a:Lcom/netease/nr/biz/offline/OffLineService;

    invoke-static {v0}, Lcom/netease/nr/biz/offline/OffLineService;->b(Lcom/netease/nr/biz/offline/OffLineService;)Landroid/app/Service;

    move-result-object v0

    const v1, 0x7f0b01e4

    invoke-static {v0, v1}, Lcom/netease/nr/base/view/az;->a(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/offline/h;->a:Lcom/netease/nr/biz/offline/OffLineService;

    invoke-static {v0}, Lcom/netease/nr/biz/offline/OffLineService;->c(Lcom/netease/nr/biz/offline/OffLineService;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v0, p0, Lcom/netease/nr/biz/offline/h;->a:Lcom/netease/nr/biz/offline/OffLineService;

    invoke-static {v0}, Lcom/netease/nr/biz/offline/OffLineService;->b(Lcom/netease/nr/biz/offline/OffLineService;)Landroid/app/Service;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nr/biz/offline/a;->c(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/netease/nr/biz/offline/h;->a:Lcom/netease/nr/biz/offline/OffLineService;

    invoke-static {v0}, Lcom/netease/nr/biz/offline/OffLineService;->b(Lcom/netease/nr/biz/offline/OffLineService;)Landroid/app/Service;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    goto/16 :goto_0

    :pswitch_4
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iget v2, p1, Landroid/os/Message;->what:I

    iput v2, v0, Landroid/os/Message;->what:I

    new-instance v2, Lcom/netease/nr/biz/offline/i;

    invoke-direct {v2}, Lcom/netease/nr/biz/offline/i;-><init>()V

    iput v7, v2, Lcom/netease/nr/biz/offline/i;->a:I

    iput v3, v2, Lcom/netease/nr/biz/offline/i;->b:I

    iget-object v3, p0, Lcom/netease/nr/biz/offline/h;->a:Lcom/netease/nr/biz/offline/OffLineService;

    invoke-static {v3}, Lcom/netease/nr/biz/offline/OffLineService;->b(Lcom/netease/nr/biz/offline/OffLineService;)Landroid/app/Service;

    move-result-object v3

    const v4, 0x7f0b01e5

    invoke-virtual {v3, v4}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/netease/nr/biz/offline/i;->c:Ljava/lang/String;

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/netease/nr/biz/offline/h;->a:Lcom/netease/nr/biz/offline/OffLineService;

    invoke-static {v2, v0}, Lcom/netease/nr/biz/offline/OffLineService;->a(Lcom/netease/nr/biz/offline/OffLineService;Landroid/os/Message;)Landroid/app/Notification;

    move-result-object v0

    iget-object v2, p0, Lcom/netease/nr/biz/offline/h;->a:Lcom/netease/nr/biz/offline/OffLineService;

    invoke-static {v2}, Lcom/netease/nr/biz/offline/OffLineService;->c(Lcom/netease/nr/biz/offline/OffLineService;)Landroid/app/NotificationManager;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/app/NotificationManager;->cancel(I)V

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/netease/nr/biz/offline/h;->a:Lcom/netease/nr/biz/offline/OffLineService;

    invoke-static {v2}, Lcom/netease/nr/biz/offline/OffLineService;->c(Lcom/netease/nr/biz/offline/OffLineService;)Landroid/app/NotificationManager;

    move-result-object v2

    invoke-virtual {v2, v7, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_4
    iget-object v0, p0, Lcom/netease/nr/biz/offline/h;->a:Lcom/netease/nr/biz/offline/OffLineService;

    invoke-static {v0}, Lcom/netease/nr/biz/offline/OffLineService;->b(Lcom/netease/nr/biz/offline/OffLineService;)Landroid/app/Service;

    move-result-object v0

    const-string v3, ""

    const/4 v4, 0x5

    move v2, v1

    invoke-static/range {v0 .. v6}, Lcom/netease/nr/biz/offline/a;->a(Landroid/content/Context;IILjava/lang/String;IJ)V

    iget-object v0, p0, Lcom/netease/nr/biz/offline/h;->a:Lcom/netease/nr/biz/offline/OffLineService;

    invoke-static {v0}, Lcom/netease/nr/biz/offline/OffLineService;->b(Lcom/netease/nr/biz/offline/OffLineService;)Landroid/app/Service;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nr/biz/offline/a;->c(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/netease/nr/biz/offline/h;->a:Lcom/netease/nr/biz/offline/OffLineService;

    invoke-static {v0}, Lcom/netease/nr/biz/offline/OffLineService;->b(Lcom/netease/nr/biz/offline/OffLineService;)Landroid/app/Service;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
