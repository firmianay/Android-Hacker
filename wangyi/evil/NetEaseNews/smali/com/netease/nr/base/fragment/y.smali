.class Lcom/netease/nr/base/fragment/y;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcom/netease/nr/base/fragment/t;


# direct methods
.method constructor <init>(Lcom/netease/nr/base/fragment/t;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/base/fragment/y;->a:Lcom/netease/nr/base/fragment/t;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/nr/base/fragment/y;->a:Lcom/netease/nr/base/fragment/t;

    invoke-static {v0, v1}, Lcom/netease/nr/base/fragment/t;->b(Lcom/netease/nr/base/fragment/t;Z)Z

    iget-object v0, p0, Lcom/netease/nr/base/fragment/y;->a:Lcom/netease/nr/base/fragment/t;

    invoke-static {v0, v3, v1}, Lcom/netease/nr/base/fragment/t;->a(Lcom/netease/nr/base/fragment/t;ZZ)V

    iget-object v0, p0, Lcom/netease/nr/base/fragment/y;->a:Lcom/netease/nr/base/fragment/t;

    invoke-static {v0}, Lcom/netease/nr/base/fragment/t;->c(Lcom/netease/nr/base/fragment/t;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/fragment/y;->a:Lcom/netease/nr/base/fragment/t;

    invoke-static {v0}, Lcom/netease/nr/base/fragment/t;->d(Lcom/netease/nr/base/fragment/t;)Landroid/webkit/CookieManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/base/fragment/y;->a:Lcom/netease/nr/base/fragment/t;

    invoke-virtual {v0}, Lcom/netease/nr/base/fragment/t;->a()Lcom/netease/nr/base/view/a;

    move-result-object v1

    iget-object v0, p0, Lcom/netease/nr/base/fragment/y;->a:Lcom/netease/nr/base/fragment/t;

    invoke-virtual {v0}, Lcom/netease/nr/base/fragment/t;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/nr/base/fragment/y;->a:Lcom/netease/nr/base/fragment/t;

    invoke-virtual {v0}, Lcom/netease/nr/base/fragment/t;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "param_title"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netease/nr/base/view/a;->a(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/netease/nr/base/view/a;->d(Z)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/netease/nr/base/fragment/y;->a:Lcom/netease/nr/base/fragment/t;

    invoke-static {v0}, Lcom/netease/nr/base/fragment/t;->e(Lcom/netease/nr/base/fragment/t;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/fragment/y;->a:Lcom/netease/nr/base/fragment/t;

    invoke-static {v0, v1, v1}, Lcom/netease/nr/base/fragment/t;->a(Lcom/netease/nr/base/fragment/t;ZZ)V

    :cond_0
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/fragment/y;->a:Lcom/netease/nr/base/fragment/t;

    invoke-static {v0, p1, p2}, Lcom/netease/nr/base/fragment/t;->a(Lcom/netease/nr/base/fragment/t;Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
