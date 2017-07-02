.class public Lcom/netease/ad/h/e;
.super Landroid/webkit/WebView;


# instance fields
.field a:Lcom/netease/ad/h/d;

.field b:Lcom/netease/ad/h/f;

.field private c:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/netease/ad/h/f;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/netease/ad/h/e;->b:Lcom/netease/ad/h/f;

    iput-object p1, p0, Lcom/netease/ad/h/e;->c:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/netease/ad/h/e;->a()V

    return-void
.end method

.method private a()V
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/webkit/WebView;->enablePlatformNotifications()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0}, Lcom/netease/ad/h/e;->b()V

    invoke-direct {p0}, Lcom/netease/ad/h/e;->c()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private b()V
    .locals 4

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/netease/ad/h/e;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLightTouchEnabled(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    invoke-static {}, Lcom/netease/ad/f/e;->a()Lcom/netease/ad/f/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ad/f/e;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/netease/ad/f/e;->b()Lcom/netease/ad/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ad/a/a/a;->a()Lcom/netease/ad/a/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ad/a/a/i;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/netease/ad/a/a/i;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    const-string v3, ""

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/netease/ad/h/e;->setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    new-instance v0, Lcom/netease/ad/h/d;

    iget-object v1, p0, Lcom/netease/ad/h/e;->c:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/netease/ad/h/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/ad/h/e;->a:Lcom/netease/ad/h/d;

    iget-object v0, p0, Lcom/netease/ad/h/e;->a:Lcom/netease/ad/h/d;

    iget-object v1, p0, Lcom/netease/ad/h/e;->b:Lcom/netease/ad/h/f;

    invoke-virtual {v0, v1}, Lcom/netease/ad/h/d;->a(Lcom/netease/ad/h/f;)V

    iget-object v0, p0, Lcom/netease/ad/h/e;->a:Lcom/netease/ad/h/d;

    invoke-virtual {p0, v0}, Lcom/netease/ad/h/e;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v0, Lcom/netease/ad/h/c;

    iget-object v1, p0, Lcom/netease/ad/h/e;->c:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/netease/ad/h/c;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Lcom/netease/ad/h/e;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void

    :cond_0
    const-string v0, ""

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/netease/ad/h/e;->setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private c()V
    .locals 1

    :try_start_0
    new-instance v0, Lcom/netease/ad/h/a;

    invoke-direct {v0}, Lcom/netease/ad/h/a;-><init>()V

    invoke-virtual {p0, v0}, Lcom/netease/ad/h/e;->setDownloadListener(Landroid/webkit/DownloadListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
