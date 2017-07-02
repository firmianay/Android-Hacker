.class public Lcom/netease/nr/biz/update/AppUpdateService;
.super Landroid/app/Service;


# instance fields
.field a:J

.field b:I

.field c:Lcom/netease/util/b/a;

.field d:Ljava/lang/String;

.field e:J

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Landroid/app/NotificationManager;

.field private j:Landroid/os/PowerManager$WakeLock;

.field private k:Landroid/net/wifi/WifiManager$WifiLock;

.field private l:Landroid/widget/RemoteViews;

.field private m:Landroid/app/Notification;

.field private n:Landroid/app/PendingIntent;

.field private o:Lcom/netease/nr/biz/update/b;

.field private p:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const-wide/16 v1, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    iput-wide v1, p0, Lcom/netease/nr/biz/update/AppUpdateService;->a:J

    const/16 v0, 0x2710

    iput v0, p0, Lcom/netease/nr/biz/update/AppUpdateService;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/nr/biz/update/AppUpdateService;->c:Lcom/netease/util/b/a;

    const-string v0, ""

    iput-object v0, p0, Lcom/netease/nr/biz/update/AppUpdateService;->d:Ljava/lang/String;

    iput-wide v1, p0, Lcom/netease/nr/biz/update/AppUpdateService;->e:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/nr/biz/update/AppUpdateService;->p:I

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/biz/update/AppUpdateService;)Landroid/app/Notification;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/update/AppUpdateService;->m:Landroid/app/Notification;

    return-object v0
.end method

.method static synthetic a(Lcom/netease/nr/biz/update/AppUpdateService;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/update/AppUpdateService;->n:Landroid/app/PendingIntent;

    return-object p1
.end method

.method private a(J)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x2

    const-wide/32 v3, 0x100000

    const-string v0, "0.00M"

    cmp-long v0, p1, v3

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide/16 v1, 0x400

    div-long v1, p1, v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "K"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    rem-long v1, p1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v5, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    div-long v2, p1, v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "M"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/netease/nr/biz/update/AppUpdateService;J)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/netease/nr/biz/update/AppUpdateService;->a(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .locals 1

    sget-object v0, Lcom/netease/nr/base/b/a;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/nr/biz/update/AppUpdateService;->f:Ljava/lang/String;

    const v0, 0x7f020332

    iput v0, p0, Lcom/netease/nr/biz/update/AppUpdateService;->h:I

    const v0, 0x7f0b0080

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/update/AppUpdateService;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/update/AppUpdateService;->g:Ljava/lang/String;

    return-void
.end method

.method private a(IILjava/lang/String;I)V
    .locals 2

    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/netease/nr/biz/update/AppUpdateService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/netease/nr/biz/update/AppUpdateService;->l:Landroid/widget/RemoteViews;

    iget-object v0, p0, Lcom/netease/nr/biz/update/AppUpdateService;->m:Landroid/app/Notification;

    iput p2, v0, Landroid/app/Notification;->icon:I

    iget-object v0, p0, Lcom/netease/nr/biz/update/AppUpdateService;->m:Landroid/app/Notification;

    iget-object v1, p0, Lcom/netease/nr/biz/update/AppUpdateService;->l:Landroid/widget/RemoteViews;

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iget-object v0, p0, Lcom/netease/nr/biz/update/AppUpdateService;->m:Landroid/app/Notification;

    iget-object v1, p0, Lcom/netease/nr/biz/update/AppUpdateService;->n:Landroid/app/PendingIntent;

    iput-object v1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    iget-object v0, p0, Lcom/netease/nr/biz/update/AppUpdateService;->m:Landroid/app/Notification;

    iput p4, v0, Landroid/app/Notification;->flags:I

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/biz/update/AppUpdateService;IILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netease/nr/biz/update/AppUpdateService;->a(IILjava/lang/String;I)V

    return-void
.end method

.method static synthetic b(Lcom/netease/nr/biz/update/AppUpdateService;)Landroid/app/NotificationManager;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/update/AppUpdateService;->i:Landroid/app/NotificationManager;

    return-object v0
.end method

.method private b()V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/update/AppUpdateService;->j:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/update/AppUpdateService;->j:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/update/AppUpdateService;->k:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/update/AppUpdateService;->k:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/netease/nr/biz/update/AppUpdateService;)I
    .locals 1

    iget v0, p0, Lcom/netease/nr/biz/update/AppUpdateService;->p:I

    return v0
.end method

.method private c()V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/update/AppUpdateService;->k:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/update/AppUpdateService;->k:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TThread releaseLock mWifiLock"

    invoke-static {v0}, Lcom/netease/util/d/a;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/nr/biz/update/AppUpdateService;->k:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/update/AppUpdateService;->j:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/update/AppUpdateService;->j:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/update/AppUpdateService;->j:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_1
    return-void
.end method

.method static synthetic d(Lcom/netease/nr/biz/update/AppUpdateService;)I
    .locals 2

    iget v0, p0, Lcom/netease/nr/biz/update/AppUpdateService;->p:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/netease/nr/biz/update/AppUpdateService;->p:I

    return v0
.end method

.method static synthetic e(Lcom/netease/nr/biz/update/AppUpdateService;)Landroid/widget/RemoteViews;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/update/AppUpdateService;->l:Landroid/widget/RemoteViews;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/update/AppUpdateService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/netease/nr/biz/update/AppUpdateService;->i:Landroid/app/NotificationManager;

    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/update/AppUpdateService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "UpdateThread"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/update/AppUpdateService;->j:Landroid/os/PowerManager$WakeLock;

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/update/AppUpdateService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    const-string v1, "UpdateThread"

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->createWifiLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/update/AppUpdateService;->k:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-direct {p0}, Lcom/netease/nr/biz/update/AppUpdateService;->a()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netease/nr/biz/update/AppUpdateService;->e:J

    new-instance v0, Landroid/app/Notification;

    iget v1, p0, Lcom/netease/nr/biz/update/AppUpdateService;->h:I

    iget-object v2, p0, Lcom/netease/nr/biz/update/AppUpdateService;->g:Ljava/lang/String;

    iget-wide v3, p0, Lcom/netease/nr/biz/update/AppUpdateService;->e:J

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput-object v0, p0, Lcom/netease/nr/biz/update/AppUpdateService;->m:Landroid/app/Notification;

    invoke-direct {p0}, Lcom/netease/nr/biz/update/AppUpdateService;->b()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    invoke-direct {p0}, Lcom/netease/nr/biz/update/AppUpdateService;->c()V

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2

    invoke-static {p0}, Lcom/netease/nr/base/c/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/netease/nr/base/c/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/nr/biz/update/AppUpdateService;->d:Ljava/lang/String;

    new-instance v1, Lcom/netease/nr/biz/update/b;

    invoke-direct {v1, p0, p0, v0}, Lcom/netease/nr/biz/update/b;-><init>(Lcom/netease/nr/biz/update/AppUpdateService;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/netease/nr/biz/update/AppUpdateService;->o:Lcom/netease/nr/biz/update/b;

    iget-object v0, p0, Lcom/netease/nr/biz/update/AppUpdateService;->o:Lcom/netease/nr/biz/update/b;

    invoke-virtual {v0}, Lcom/netease/nr/biz/update/b;->run()V

    return-void
.end method
