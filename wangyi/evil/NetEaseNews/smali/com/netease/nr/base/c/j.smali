.class public Lcom/netease/nr/base/c/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/location/BDLocationListener;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/baidu/location/LocationClient;

.field private c:Ljava/util/List;

.field private d:Landroid/os/Handler;

.field private e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/base/c/j;->c:Ljava/util/List;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/base/c/j;->d:Landroid/os/Handler;

    new-instance v0, Lcom/netease/nr/base/c/k;

    invoke-direct {v0, p0}, Lcom/netease/nr/base/c/k;-><init>(Lcom/netease/nr/base/c/j;)V

    iput-object v0, p0, Lcom/netease/nr/base/c/j;->e:Ljava/lang/Runnable;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/base/c/j;->a:Landroid/content/Context;

    new-instance v0, Lcom/baidu/location/LocationClient;

    iget-object v1, p0, Lcom/netease/nr/base/c/j;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/baidu/location/LocationClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/nr/base/c/j;->b:Lcom/baidu/location/LocationClient;

    new-instance v0, Lcom/baidu/location/LocationClientOption;

    invoke-direct {v0}, Lcom/baidu/location/LocationClientOption;-><init>()V

    invoke-virtual {v0, v2}, Lcom/baidu/location/LocationClientOption;->setOpenGps(Z)V

    const-string v1, "all"

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setAddrType(Ljava/lang/String;)V

    const-string v1, "bd09ll"

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setCoorType(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/baidu/location/LocationClientOption;->setScanSpan(I)V

    invoke-virtual {v0, v2}, Lcom/baidu/location/LocationClientOption;->setPoiNumber(I)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setPriority(I)V

    iget-object v1, p0, Lcom/netease/nr/base/c/j;->b:Lcom/baidu/location/LocationClient;

    invoke-virtual {v1, p0}, Lcom/baidu/location/LocationClient;->registerLocationListener(Lcom/baidu/location/BDLocationListener;)V

    iget-object v1, p0, Lcom/netease/nr/base/c/j;->b:Lcom/baidu/location/LocationClient;

    invoke-virtual {v1, v0}, Lcom/baidu/location/LocationClient;->setLocOption(Lcom/baidu/location/LocationClientOption;)V

    return-void
.end method

.method private a(Lcom/netease/nr/base/c/l;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/base/c/j;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/c/m;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/netease/nr/base/c/m;->a(Lcom/netease/nr/base/c/l;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/netease/nr/base/c/j;->a(J)V

    return-void
.end method

.method public a(J)V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/base/c/j;->b:Lcom/baidu/location/LocationClient;

    invoke-virtual {v0}, Lcom/baidu/location/LocationClient;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/netease/nr/base/c/j;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netease/nr/base/c/j;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/netease/nr/base/c/j;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/util/f/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/base/c/j;->b:Lcom/baidu/location/LocationClient;

    invoke-virtual {v0}, Lcom/baidu/location/LocationClient;->start()V

    iget-object v0, p0, Lcom/netease/nr/base/c/j;->b:Lcom/baidu/location/LocationClient;

    invoke-virtual {v0}, Lcom/baidu/location/LocationClient;->requestLocation()I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netease/nr/base/c/j;->a(Lcom/netease/nr/base/c/l;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/netease/nr/base/c/j;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netease/nr/base/c/j;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public a(Lcom/netease/nr/base/c/m;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/c/j;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public b(Lcom/netease/nr/base/c/m;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/c/j;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public onReceiveLocation(Lcom/baidu/location/BDLocation;)V
    .locals 3

    iget-object v0, p0, Lcom/netease/nr/base/c/j;->b:Lcom/baidu/location/LocationClient;

    invoke-virtual {v0}, Lcom/baidu/location/LocationClient;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/c/j;->b:Lcom/baidu/location/LocationClient;

    invoke-virtual {v0}, Lcom/baidu/location/LocationClient;->stop()V

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    new-instance v0, Lcom/netease/nr/base/c/l;

    invoke-direct {v0}, Lcom/netease/nr/base/c/l;-><init>()V

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/netease/nr/base/c/l;->a:D

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/netease/nr/base/c/l;->b:D

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getCity()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/nr/base/c/l;->c:Ljava/lang/String;

    :cond_1
    invoke-direct {p0, v0}, Lcom/netease/nr/base/c/j;->a(Lcom/netease/nr/base/c/l;)V

    return-void
.end method

.method public onReceivePoi(Lcom/baidu/location/BDLocation;)V
    .locals 0

    return-void
.end method
