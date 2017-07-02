.class public Lcom/netease/nr/biz/audio/AudioService;
.super Landroid/app/Service;


# instance fields
.field private a:Lcom/netease/nr/biz/audio/h;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-static {p0}, Lcom/netease/nr/biz/audio/h;->c(Landroid/content/Context;)Lcom/netease/nr/biz/audio/h;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/audio/AudioService;->a:Lcom/netease/nr/biz/audio/h;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iget-object v0, p0, Lcom/netease/nr/biz/audio/AudioService;->a:Lcom/netease/nr/biz/audio/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/audio/AudioService;->a:Lcom/netease/nr/biz/audio/h;

    invoke-virtual {v0}, Lcom/netease/nr/biz/audio/h;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/nr/biz/audio/AudioService;->a:Lcom/netease/nr/biz/audio/h;

    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5

    const/4 v2, 0x4

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "com.netease.newsreader.AUDIO_STOP"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_0
    :goto_0
    if-lez v1, :cond_1

    if-le v1, v2, :cond_6

    :cond_1
    invoke-virtual {p0}, Lcom/netease/nr/biz/audio/AudioService;->stopSelf()V

    :cond_2
    :goto_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0

    :cond_3
    const-string v4, "com.netease.newsreader.AUDIO_PAUSE"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    const-string v4, "com.netease.newsreader.AUDIO_PLAY"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v1, v2

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/netease/nr/biz/audio/AudioService;->a:Lcom/netease/nr/biz/audio/h;

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    const-string v1, "param_commend"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_6
    if-nez v0, :cond_7

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "param_commend"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_7
    iget-object v1, p0, Lcom/netease/nr/biz/audio/AudioService;->a:Lcom/netease/nr/biz/audio/h;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/netease/nr/biz/audio/AudioService;->a:Lcom/netease/nr/biz/audio/h;

    invoke-virtual {v1, v0}, Lcom/netease/nr/biz/audio/h;->a(Landroid/os/Bundle;)V

    goto :goto_1

    :cond_8
    invoke-virtual {p0}, Lcom/netease/nr/biz/audio/AudioService;->stopSelf()V

    goto :goto_1
.end method
