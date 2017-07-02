.class public Lcom/netease/nr/biz/push/PushService;
.super Landroid/app/IntentService;


# instance fields
.field private a:Landroid/os/PowerManager$WakeLock;

.field private b:Landroid/app/NotificationManager;

.field private c:Z

.field private d:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "newsreader_rb_push"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/netease/nr/biz/push/a;

    invoke-direct {v0, p0}, Lcom/netease/nr/biz/push/a;-><init>(Lcom/netease/nr/biz/push/PushService;)V

    iput-object v0, p0, Lcom/netease/nr/biz/push/PushService;->d:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/biz/push/PushService;Landroid/app/NotificationManager;)Landroid/app/NotificationManager;
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/push/PushService;->b:Landroid/app/NotificationManager;

    return-object p1
.end method

.method static synthetic a(Lcom/netease/nr/biz/push/PushService;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    invoke-direct {p0, p1}, Lcom/netease/nr/biz/push/PushService;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Landroid/content/Intent;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const-string v0, ""

    const-string v0, ""

    array-length v1, v2

    if-le v1, v4, :cond_0

    aget-object v1, v2, v4

    aget-object v0, v2, v3

    :goto_0
    invoke-direct {p0, v0}, Lcom/netease/nr/biz/push/PushService;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v1}, Lcom/netease/nr/biz/push/PushService;->d(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    aget-object v1, v2, v3

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/netease/nr/biz/push/PushService;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v1}, Lcom/netease/nr/biz/push/PushService;->e(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/netease/nr/biz/push/PushService;->g()Landroid/content/Intent;

    move-result-object v0

    goto :goto_1
.end method

.method static synthetic a(Lcom/netease/nr/biz/push/PushService;)Lcom/netease/nr/biz/push/d;
    .locals 1

    invoke-direct {p0}, Lcom/netease/nr/biz/push/PushService;->c()Lcom/netease/nr/biz/push/d;

    move-result-object v0

    return-object v0
.end method

.method private a(Z)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const-string v0, "http://p.3g.163.com/nc/last.do"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "http://p.3g.163.com/nc/now.do"

    goto :goto_0
.end method

.method private a(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-direct {p0}, Lcom/netease/nr/biz/push/PushService;->e()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    new-instance v3, Lcom/netease/nr/biz/push/e;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/netease/nr/biz/push/e;-><init>(Lcom/netease/nr/biz/push/PushService;Lcom/netease/nr/biz/push/a;)V

    const-string v4, "id"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/netease/nr/biz/push/e;->a:Ljava/lang/String;

    const-string v4, "c"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/netease/nr/biz/push/e;->b:Ljava/lang/String;

    iget-object v0, v3, Lcom/netease/nr/biz/push/e;->a:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/netease/nr/biz/push/f;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    return-object v2
.end method

.method private a(J)V
    .locals 3

    const v2, 0x1d4c0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/nr/biz/push/PushService;->c:Z

    invoke-direct {p0}, Lcom/netease/nr/biz/push/PushService;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/netease/nr/biz/push/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/util/f/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/32 v0, 0x1d4c0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_2

    const-string v0, "interval_tag"

    invoke-static {p0, v0, v2}, Lcom/netease/util/g/a;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lcom/netease/nr/biz/push/PushService;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x927c0

    add-int/2addr v0, v1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/netease/nr/biz/push/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/netease/nr/biz/push/PushService;->a(Landroid/content/Context;I)V

    :cond_1
    return-void

    :cond_2
    long-to-int v0, p1

    sub-int v0, v2, v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/netease/nr/biz/push/PushService;->a(Landroid/content/Context;I)V

    return-void
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/netease/nr/biz/push/PushService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    if-gtz p1, :cond_0

    invoke-static {p0, v1}, Lcom/netease/util/a/a;->a(Landroid/content/Context;Landroid/app/PendingIntent;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, v1, p1}, Lcom/netease/util/a/a;->a(Landroid/content/Context;Landroid/app/PendingIntent;I)V

    goto :goto_0
.end method

.method static synthetic a()Z
    .locals 1

    invoke-static {}, Lcom/netease/nr/biz/push/PushService;->j()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/netease/nr/biz/push/PushService;)Landroid/app/NotificationManager;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/push/PushService;->b:Landroid/app/NotificationManager;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/netease/nr/biz/push/PushService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/netease/util/a/a;->a(Landroid/content/Context;Landroid/app/PendingIntent;)V

    return-void
.end method

.method private b(Z)V
    .locals 5

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/netease/nr/biz/push/PushService;->a(Z)Ljava/lang/String;

    move-result-object v1

    const v2, 0x9c40

    invoke-static {v1, v2, p0}, Lcom/netease/nr/biz/push/f;->a(Ljava/lang/String;ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "error"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "304"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/netease/nr/biz/push/PushService;->e()V

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lcom/netease/util/h/b;->f(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-direct {p0, v1}, Lcom/netease/nr/biz/push/PushService;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-gt v0, v2, :cond_0

    iget-object v3, p0, Lcom/netease/nr/biz/push/PushService;->d:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/netease/nr/biz/push/PushService;->d:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v4, p0, Lcom/netease/nr/biz/push/PushService;->d:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eq v0, v2, :cond_3

    const-wide/16 v3, 0x2710

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private b()Z
    .locals 2

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/netease/nr/biz/push/PushService;->c:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iput-boolean v0, p0, Lcom/netease/nr/biz/push/PushService;->c:Z

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "doc"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "odoc"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()Lcom/netease/nr/biz/push/d;
    .locals 1

    invoke-direct {p0}, Lcom/netease/nr/biz/push/PushService;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/netease/nr/biz/push/b;

    invoke-direct {v0, p0}, Lcom/netease/nr/biz/push/b;-><init>(Lcom/netease/nr/biz/push/PushService;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/netease/nr/biz/push/c;

    invoke-direct {v0, p0}, Lcom/netease/nr/biz/push/c;-><init>(Lcom/netease/nr/biz/push/PushService;)V

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x1

    const-string v1, "autopost"

    invoke-static {p0, v1, v0}, Lcom/netease/util/g/a;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/netease/nr/base/c/h;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "spc"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ospc"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)Landroid/content/Intent;
    .locals 7

    const/4 v6, 0x1

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/netease/nr/biz/push/PushService;->g()Landroid/content/Intent;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move-object v4, v0

    move-object v5, v0

    invoke-static/range {v0 .. v5}, Lcom/netease/nr/biz/news/detailpage/NewsPageActivity;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "from_push"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "from_real_push"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private d(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lcom/netease/nr/biz/push/PushService;->a:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "PushService"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/push/PushService;->a:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/netease/nr/biz/push/PushService;->a:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iget-object v0, p0, Lcom/netease/nr/biz/push/PushService;->a:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :cond_0
    return-void
.end method

.method private d()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e(Ljava/lang/String;)Landroid/content/Intent;
    .locals 8

    const/4 v0, 0x0

    const/4 v7, 0x1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/netease/nr/biz/push/PushService;->g()Landroid/content/Intent;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v1, "specialId"

    invoke-virtual {v4, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "from_push"

    invoke-virtual {v4, v1, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-class v1, Lcom/netease/nr/biz/g/p;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SpecilaNewsListFragment"

    const-class v6, Lcom/netease/nr/base/activity/BaseActivity;

    move-object v1, p0

    move-object v5, v0

    invoke-static/range {v0 .. v6}, Lcom/netease/util/fragment/ab;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "from_push"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "from_real_push"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0
.end method

.method private e()V
    .locals 3

    const-string v0, "lastpush_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {p0, v0, v1, v2}, Lcom/netease/util/g/a;->b(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method private f()J
    .locals 3

    const-string v0, "lastpush_time"

    const-wide/16 v1, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/netease/util/g/a;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private g()Landroid/content/Intent;
    .locals 3

    const/4 v2, 0x1

    invoke-static {p0}, Lcom/netease/nr/biz/main/MainActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "from_push"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "from_real_push"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method private h()V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/push/PushService;->a:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/push/PushService;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/push/PushService;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/nr/biz/push/PushService;->a:Landroid/os/PowerManager$WakeLock;

    :cond_0
    return-void
.end method

.method private i()Z
    .locals 1

    invoke-static {p0}, Lcom/netease/nr/biz/push/PushService;->c(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private static j()Z
    .locals 2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_1

    :cond_0
    const/16 v1, 0x16

    if-le v0, v1, :cond_2

    const/16 v1, 0x18

    if-gt v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static k()Z
    .locals 2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_1

    :cond_0
    const/16 v1, 0x18

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    invoke-direct {p0, p0}, Lcom/netease/nr/biz/push/PushService;->d(Landroid/content/Context;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    invoke-direct {p0}, Lcom/netease/nr/biz/push/PushService;->h()V

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 5

    invoke-direct {p0}, Lcom/netease/nr/biz/push/PushService;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/netease/nr/biz/push/PushService;->f()J

    move-result-wide v2

    sub-long v1, v0, v2

    invoke-direct {p0}, Lcom/netease/nr/biz/push/PushService;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/32 v3, 0x1d4c0

    cmp-long v0, v1, v3

    if-ltz v0, :cond_1

    const-string v0, "interval_tag"

    const v3, 0x1d4c0

    invoke-static {p0, v0, v3}, Lcom/netease/util/g/a;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    add-int/lit16 v0, v0, 0x2710

    int-to-long v3, v0

    cmp-long v0, v1, v3

    if-gtz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lcom/netease/nr/biz/push/PushService;->b(Z)V

    :cond_1
    invoke-direct {p0, v1, v2}, Lcom/netease/nr/biz/push/PushService;->a(J)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
