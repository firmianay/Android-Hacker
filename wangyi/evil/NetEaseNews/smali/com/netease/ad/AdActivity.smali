.class public Lcom/netease/ad/AdActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Lcom/netease/ad/widget/b;

.field private b:Lcom/netease/ad/widget/a;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/ad/AdActivity;->c:Z

    return-void
.end method

.method private a()V
    .locals 4

    const/16 v3, 0x400

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/netease/ad/AdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.netease.ad.action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/ad/AdActivity;->finish()V

    :cond_0
    const-string v1, "com.netease.ad.web"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/netease/ad/AdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/netease/ad/AdActivity;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/netease/ad/AdActivity;->requestWindowFeature(I)Z

    new-instance v1, Lcom/netease/ad/widget/b;

    invoke-direct {v1, p0}, Lcom/netease/ad/widget/b;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/netease/ad/AdActivity;->a:Lcom/netease/ad/widget/b;

    iget-object v1, p0, Lcom/netease/ad/AdActivity;->a:Lcom/netease/ad/widget/b;

    invoke-virtual {v1, v0}, Lcom/netease/ad/widget/b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/ad/AdActivity;->a:Lcom/netease/ad/widget/b;

    invoke-virtual {v0}, Lcom/netease/ad/widget/b;->b()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/ad/AdActivity;->setContentView(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v1, "com.netease.ad.fullpic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, v2}, Lcom/netease/ad/AdActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/netease/ad/AdActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {p0, v2}, Lcom/netease/ad/AdActivity;->setRequestedOrientation(I)V

    invoke-virtual {p0}, Lcom/netease/ad/AdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {p0, v2}, Lcom/netease/ad/AdActivity;->requestWindowFeature(I)Z

    new-instance v1, Lcom/netease/ad/widget/a;

    invoke-direct {v1, p0}, Lcom/netease/ad/widget/a;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/netease/ad/AdActivity;->b:Lcom/netease/ad/widget/a;

    iget-object v1, p0, Lcom/netease/ad/AdActivity;->b:Lcom/netease/ad/widget/a;

    invoke-virtual {v1}, Lcom/netease/ad/widget/a;->a()Lcom/netease/ad/widget/a;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/netease/ad/AdActivity;->setContentView(Landroid/view/View;)V

    invoke-direct {p0, v0}, Lcom/netease/ad/AdActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/netease/ad/AdActivity;->finish()V

    goto :goto_0

    :cond_4
    const-string v1, "com.netease.ad.spot_ad"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iput-boolean v2, p0, Lcom/netease/ad/AdActivity;->c:Z

    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/netease/ad/AdActivity;->finish()V

    goto :goto_0

    :cond_6
    const-string v1, "com.netease.ad.video"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "com.netease.ad.audio"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_7
    new-instance v0, Landroid/widget/VideoView;

    invoke-direct {v0, p0}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v2}, Lcom/netease/ad/AdActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/netease/ad/AdActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setFlags(II)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/netease/ad/AdActivity;->setRequestedOrientation(I)V

    invoke-virtual {p0}, Lcom/netease/ad/AdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    invoke-virtual {p0}, Lcom/netease/ad/AdActivity;->finish()V

    goto/16 :goto_0

    :cond_8
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    new-instance v1, Landroid/widget/MediaController;

    invoke-direct {v1, p0}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    goto :goto_1
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "AdActivity"

    const-string v1, "oncreate"

    invoke-static {v0, v1}, Lcom/netease/ad/f/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/ad/AdActivity;->c:Z

    invoke-direct {p0}, Lcom/netease/ad/AdActivity;->a()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v2, 0x4

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/netease/ad/AdActivity;->c:Z

    if-eqz v1, :cond_1

    if-ne p1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ne p1, v2, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/netease/ad/AdActivity;->a:Lcom/netease/ad/widget/b;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/netease/ad/AdActivity;->a:Lcom/netease/ad/widget/b;

    invoke-virtual {v1}, Lcom/netease/ad/widget/b;->c()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-static {}, Landroid/webkit/WebView;->enablePlatformNotifications()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    invoke-static {}, Landroid/webkit/WebView;->disablePlatformNotifications()V

    return-void
.end method
