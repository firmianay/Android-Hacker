.class Lcom/netease/nr/biz/news/a/c/c;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/news/a/c/b;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/news/a/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/news/a/c/c;->a:Lcom/netease/nr/biz/news/a/c/b;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/c;->a:Lcom/netease/nr/biz/news/a/c/b;

    invoke-static {v0}, Lcom/netease/nr/biz/news/a/c/b;->a(Lcom/netease/nr/biz/news/a/c/b;)Landroid/webkit/WebViewClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/c;->a:Lcom/netease/nr/biz/news/a/c/b;

    invoke-static {v0}, Lcom/netease/nr/biz/news/a/c/b;->c(Lcom/netease/nr/biz/news/a/c/b;)Landroid/webkit/WebViewClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/c;->a:Lcom/netease/nr/biz/news/a/c/b;

    invoke-static {v0}, Lcom/netease/nr/biz/news/a/c/b;->b(Lcom/netease/nr/biz/news/a/c/b;)Landroid/webkit/WebViewClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v1, 0x0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v2, "http://live.163.com/3g/livelog/"

    const-string v0, ""

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    const-string v2, "/"

    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-static {v2}, Lcom/netease/util/h/b;->g(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-lez v0, :cond_1

    move v0, v7

    :goto_0
    if-eqz v0, :cond_0

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v0, "title"

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/c/c;->a:Lcom/netease/nr/biz/news/a/c/b;

    const v3, 0x7f0b01f3

    invoke-virtual {v1, v3}, Lcom/netease/nr/biz/news/a/c/b;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "roomid"

    invoke-virtual {v4, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/c;->a:Lcom/netease/nr/biz/news/a/c/b;

    invoke-virtual {v0}, Lcom/netease/nr/biz/news/a/c/b;->s()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/c/c;->a:Lcom/netease/nr/biz/news/a/c/b;

    invoke-virtual {v1}, Lcom/netease/nr/biz/news/a/c/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/netease/nr/biz/c/e;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GameLiveFragment"

    const/4 v5, 0x0

    const-class v6, Lcom/netease/nr/base/activity/BaseActivity;

    invoke-static/range {v0 .. v6}, Lcom/netease/util/fragment/ab;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/c/c;->a:Lcom/netease/nr/biz/news/a/c/b;

    invoke-virtual {v1, v0}, Lcom/netease/nr/biz/news/a/c/b;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return v7

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/c;->a:Lcom/netease/nr/biz/news/a/c/b;

    invoke-virtual {v0, p2}, Lcom/netease/nr/biz/news/a/c/b;->e(Ljava/lang/String;)V

    move v7, v1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move-object v2, v0

    move v0, v1

    goto :goto_0
.end method
