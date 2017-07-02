.class Lcom/netease/nr/biz/sns/a/a/b;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/sns/a/a/a;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/sns/a/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/sns/a/a/b;->a:Lcom/netease/nr/biz/sns/a/a/a;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/nr/biz/sns/a/a/b;->a:Lcom/netease/nr/biz/sns/a/a/a;

    invoke-static {v0}, Lcom/netease/nr/biz/sns/a/a/a;->a(Lcom/netease/nr/biz/sns/a/a/a;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/sns/a/a/b;->a:Lcom/netease/nr/biz/sns/a/a/a;

    invoke-static {v0}, Lcom/netease/nr/biz/sns/a/a/a;->b(Lcom/netease/nr/biz/sns/a/a/a;)Lcom/netease/nr/biz/sns/util/c;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/netease/nr/biz/sns/util/c;->needRedirect(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/sns/a/a/b;->a:Lcom/netease/nr/biz/sns/a/a/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/sns/a/a/a;->a(Z)V

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/sns/a/a/b;->a:Lcom/netease/nr/biz/sns/a/a/a;

    invoke-static {v0}, Lcom/netease/nr/biz/sns/a/a/a;->b(Lcom/netease/nr/biz/sns/a/a/a;)Lcom/netease/nr/biz/sns/util/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/biz/sns/util/c;->getWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/a/a/b;->a:Lcom/netease/nr/biz/sns/a/a/a;

    invoke-static {v0}, Lcom/netease/nr/biz/sns/a/a/a;->b(Lcom/netease/nr/biz/sns/a/a/a;)Lcom/netease/nr/biz/sns/util/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/biz/sns/util/c;->getWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/netease/nr/biz/sns/a/a/b;->a:Lcom/netease/nr/biz/sns/a/a/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/sns/a/a/a;->a(Z)V

    iget-object v0, p0, Lcom/netease/nr/biz/sns/a/a/b;->a:Lcom/netease/nr/biz/sns/a/a/a;

    invoke-static {v0}, Lcom/netease/nr/biz/sns/a/a/a;->b(Lcom/netease/nr/biz/sns/a/a/a;)Lcom/netease/nr/biz/sns/util/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/biz/sns/util/c;->getWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/sns/a/a/b;->a:Lcom/netease/nr/biz/sns/a/a/a;

    invoke-static {v0}, Lcom/netease/nr/biz/sns/a/a/a;->b(Lcom/netease/nr/biz/sns/a/a/a;)Lcom/netease/nr/biz/sns/util/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/biz/sns/util/c;->getWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/nr/biz/sns/a/a/b;->a:Lcom/netease/nr/biz/sns/a/a/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/sns/a/a/a;->a(Z)V

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
    .locals 2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/sns/a/a/b;->a:Lcom/netease/nr/biz/sns/a/a/a;

    invoke-static {v0}, Lcom/netease/nr/biz/sns/a/a/a;->c(Lcom/netease/nr/biz/sns/a/a/a;)V

    :cond_0
    const-string v0, "weibo4andriod://AccountSettingActivity"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "weibo4andriod://AccountSettingActivity"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "weibo4andriod://AccountSettingActivity"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/sns/a/a/b;->a:Lcom/netease/nr/biz/sns/a/a/a;

    invoke-static {v0}, Lcom/netease/nr/biz/sns/a/a/a;->b(Lcom/netease/nr/biz/sns/a/a/a;)Lcom/netease/nr/biz/sns/util/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/biz/sns/util/c;->getWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/nr/biz/sns/a/a/b;->a:Lcom/netease/nr/biz/sns/a/a/a;

    invoke-static {v0}, Lcom/netease/nr/biz/sns/a/a/a;->b(Lcom/netease/nr/biz/sns/a/a/a;)Lcom/netease/nr/biz/sns/util/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/biz/sns/util/c;->getWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    :cond_2
    const/4 v0, 0x1

    return v0
.end method
