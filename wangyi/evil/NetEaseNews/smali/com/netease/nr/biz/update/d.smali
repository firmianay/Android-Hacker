.class Lcom/netease/nr/biz/update/d;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/update/b;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/update/b;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/update/d;->a:Lcom/netease/nr/biz/update/b;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    const-wide/16 v6, 0x64

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/netease/nr/biz/update/a;

    iget-wide v1, v0, Lcom/netease/nr/biz/update/a;->b:J

    mul-long/2addr v1, v6

    iget-wide v3, v0, Lcom/netease/nr/biz/update/a;->a:J

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/nr/biz/update/d;->a:Lcom/netease/nr/biz/update/b;

    iget-object v3, v3, Lcom/netease/nr/biz/update/b;->a:Lcom/netease/nr/biz/update/AppUpdateService;

    iget-wide v4, v0, Lcom/netease/nr/biz/update/a;->b:J

    invoke-static {v3, v4, v5}, Lcom/netease/nr/biz/update/AppUpdateService;->a(Lcom/netease/nr/biz/update/AppUpdateService;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/nr/biz/update/d;->a:Lcom/netease/nr/biz/update/b;

    iget-object v3, v3, Lcom/netease/nr/biz/update/b;->a:Lcom/netease/nr/biz/update/AppUpdateService;

    iget-wide v4, v0, Lcom/netease/nr/biz/update/a;->a:J

    invoke-static {v3, v4, v5}, Lcom/netease/nr/biz/update/AppUpdateService;->a(Lcom/netease/nr/biz/update/AppUpdateService;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/netease/nr/biz/update/a;->d:Ljava/lang/String;

    iget v0, v0, Lcom/netease/nr/biz/update/a;->c:I

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1

    iget-object v1, p0, Lcom/netease/nr/biz/update/d;->a:Lcom/netease/nr/biz/update/b;

    invoke-static {v1, v3, v2}, Lcom/netease/nr/biz/update/b;->a(Lcom/netease/nr/biz/update/b;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netease/nr/biz/update/d;->a:Lcom/netease/nr/biz/update/b;

    iget-object v1, v1, Lcom/netease/nr/biz/update/b;->a:Lcom/netease/nr/biz/update/AppUpdateService;

    invoke-static {v1}, Lcom/netease/nr/biz/update/AppUpdateService;->b(Lcom/netease/nr/biz/update/AppUpdateService;)Landroid/app/NotificationManager;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nr/biz/update/d;->a:Lcom/netease/nr/biz/update/b;

    iget-object v2, v2, Lcom/netease/nr/biz/update/b;->a:Lcom/netease/nr/biz/update/AppUpdateService;

    invoke-static {v2}, Lcom/netease/nr/biz/update/AppUpdateService;->a(Lcom/netease/nr/biz/update/AppUpdateService;)Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    iget-object v0, p0, Lcom/netease/nr/biz/update/d;->a:Lcom/netease/nr/biz/update/b;

    invoke-static {v0}, Lcom/netease/nr/biz/update/b;->c(Lcom/netease/nr/biz/update/b;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nr/biz/update/d;->a:Lcom/netease/nr/biz/update/b;

    iget-object v2, v2, Lcom/netease/nr/biz/update/b;->a:Lcom/netease/nr/biz/update/AppUpdateService;

    const v3, 0x7f0b0081

    invoke-virtual {v2, v3}, Lcom/netease/nr/biz/update/AppUpdateService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/netease/nr/base/view/az;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/netease/nr/base/view/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/base/view/az;->show()V

    iget-object v0, p0, Lcom/netease/nr/biz/update/d;->a:Lcom/netease/nr/biz/update/b;

    invoke-static {v0}, Lcom/netease/nr/biz/update/b;->c(Lcom/netease/nr/biz/update/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nr/base/c/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/update/d;->a:Lcom/netease/nr/biz/update/b;

    invoke-static {v0}, Lcom/netease/nr/biz/update/b;->c(Lcom/netease/nr/biz/update/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nr/biz/ad/o;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/netease/nr/biz/update/d;->a:Lcom/netease/nr/biz/update/b;

    invoke-static {v1}, Lcom/netease/nr/biz/update/b;->c(Lcom/netease/nr/biz/update/b;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "apknewversion"

    invoke-static {v1, v2, v0}, Lcom/netease/util/g/a;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/netease/nr/biz/update/d;->a:Lcom/netease/nr/biz/update/b;

    iget-object v0, v0, Lcom/netease/nr/biz/update/b;->a:Lcom/netease/nr/biz/update/AppUpdateService;

    invoke-static {v0}, Lcom/netease/nr/biz/update/AppUpdateService;->d(Lcom/netease/nr/biz/update/AppUpdateService;)I

    goto/16 :goto_0

    :cond_1
    iget-object v4, p0, Lcom/netease/nr/biz/update/d;->a:Lcom/netease/nr/biz/update/b;

    iget-object v4, v4, Lcom/netease/nr/biz/update/b;->a:Lcom/netease/nr/biz/update/AppUpdateService;

    invoke-static {v4}, Lcom/netease/nr/biz/update/AppUpdateService;->c(Lcom/netease/nr/biz/update/AppUpdateService;)I

    move-result v4

    rem-int/lit8 v4, v4, 0x5

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/netease/nr/biz/update/d;->a:Lcom/netease/nr/biz/update/b;

    invoke-static {v4, v3, v2, v1}, Lcom/netease/nr/biz/update/b;->a(Lcom/netease/nr/biz/update/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v1, p0, Lcom/netease/nr/biz/update/d;->a:Lcom/netease/nr/biz/update/b;

    iget-object v1, v1, Lcom/netease/nr/biz/update/b;->a:Lcom/netease/nr/biz/update/AppUpdateService;

    invoke-static {v1}, Lcom/netease/nr/biz/update/AppUpdateService;->b(Lcom/netease/nr/biz/update/AppUpdateService;)Landroid/app/NotificationManager;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nr/biz/update/d;->a:Lcom/netease/nr/biz/update/b;

    iget-object v2, v2, Lcom/netease/nr/biz/update/b;->a:Lcom/netease/nr/biz/update/AppUpdateService;

    invoke-static {v2}, Lcom/netease/nr/biz/update/AppUpdateService;->a(Lcom/netease/nr/biz/update/AppUpdateService;)Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/netease/nr/biz/update/d;->a:Lcom/netease/nr/biz/update/b;

    invoke-static {v0}, Lcom/netease/nr/biz/update/b;->c(Lcom/netease/nr/biz/update/b;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0084

    invoke-static {v0, v1}, Lcom/netease/nr/base/view/az;->a(Landroid/content/Context;I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
