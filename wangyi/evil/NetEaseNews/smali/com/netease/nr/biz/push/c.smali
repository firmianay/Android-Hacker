.class Lcom/netease/nr/biz/push/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/nr/biz/push/d;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/push/PushService;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/push/PushService;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/push/c;->a:Lcom/netease/nr/biz/push/PushService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/netease/nr/biz/push/e;Landroid/content/Context;)V
    .locals 8

    const v7, 0x7f020332

    const/4 v6, 0x1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/push/c;->a:Lcom/netease/nr/biz/push/PushService;

    invoke-static {v0}, Lcom/netease/nr/biz/push/PushService;->b(Lcom/netease/nr/biz/push/PushService;)Landroid/app/NotificationManager;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/netease/nr/biz/push/c;->a:Lcom/netease/nr/biz/push/PushService;

    iget-object v0, p0, Lcom/netease/nr/biz/push/c;->a:Lcom/netease/nr/biz/push/PushService;

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Lcom/netease/nr/biz/push/PushService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-static {v1, v0}, Lcom/netease/nr/biz/push/PushService;->a(Lcom/netease/nr/biz/push/PushService;Landroid/app/NotificationManager;)Landroid/app/NotificationManager;

    :cond_1
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/app/Notification;

    const v2, 0x7f020276

    iget-object v3, p1, Lcom/netease/nr/biz/push/e;->b:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput v6, v1, Landroid/app/Notification;->iconLevel:I

    iget-object v2, p0, Lcom/netease/nr/biz/push/c;->a:Lcom/netease/nr/biz/push/PushService;

    invoke-static {v2}, Lcom/netease/nr/biz/push/PushService;->b(Lcom/netease/nr/biz/push/PushService;)Landroid/app/NotificationManager;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v2, p0, Lcom/netease/nr/biz/push/c;->a:Lcom/netease/nr/biz/push/PushService;

    iget-object v3, p1, Lcom/netease/nr/biz/push/e;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/netease/nr/biz/push/PushService;->a(Lcom/netease/nr/biz/push/PushService;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x8000000

    invoke-static {p2, v7, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    :try_start_0
    invoke-static {}, Lcom/netease/nr/biz/push/PushService;->a()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    iput v3, v1, Landroid/app/Notification;->defaults:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    invoke-static {p2, v0}, Lcom/netease/nr/base/c/p;->a(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v3, p1, Lcom/netease/nr/biz/push/e;->b:Ljava/lang/String;

    invoke-static {p2, v3}, Lcom/netease/nr/base/c/p;->a(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, p2, v0, v3, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget v0, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, v1, Landroid/app/Notification;->flags:I

    iget-object v0, p0, Lcom/netease/nr/biz/push/c;->a:Lcom/netease/nr/biz/push/PushService;

    invoke-static {v0}, Lcom/netease/nr/biz/push/PushService;->b(Lcom/netease/nr/biz/push/PushService;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0, v7, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    :catch_0
    move-exception v3

    iput v6, v1, Landroid/app/Notification;->defaults:I

    goto :goto_1
.end method
