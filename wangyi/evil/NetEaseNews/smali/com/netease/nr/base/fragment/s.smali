.class Lcom/netease/nr/base/fragment/s;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcom/netease/nr/base/fragment/BaseWebFragment;


# direct methods
.method constructor <init>(Lcom/netease/nr/base/fragment/BaseWebFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/base/fragment/s;->a:Lcom/netease/nr/base/fragment/BaseWebFragment;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/fragment/s;->a:Lcom/netease/nr/base/fragment/BaseWebFragment;

    invoke-virtual {v0}, Lcom/netease/nr/base/fragment/BaseWebFragment;->m()Landroid/webkit/WebViewClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    const-string v0, "javascript:(function(){var shareText=\'\';var shareImg=\'\';var boardid=\'\';var docid=\'\';var shake=\'\';var ele=document.getElementById(\'__newsapp_sharetext\');if(ele){shareText=\'share_text\';}ele=document.getElementById(\'__newsapp_sharephotourl\');if(ele){shareImg=ele.innerHTML;}ele=document.getElementById(\'__newsapp_comment\');if(ele){boardid=ele.getAttribute(\'boardid\');docid=ele.getAttribute(\'docid\');}ele=document.getElementById(\'__newsapp_shake\');if(ele){shake=ele.getAttribute(\'shake\');}if (window.extra){window.extra.__newsapp_init(shareText, shareImg, boardid, docid, shake);}})()"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/fragment/s;->a:Lcom/netease/nr/base/fragment/BaseWebFragment;

    invoke-virtual {v0}, Lcom/netease/nr/base/fragment/BaseWebFragment;->m()Landroid/webkit/WebViewClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/fragment/s;->a:Lcom/netease/nr/base/fragment/BaseWebFragment;

    invoke-virtual {v0}, Lcom/netease/nr/base/fragment/BaseWebFragment;->m()Landroid/webkit/WebViewClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/netease/nr/base/fragment/s;->a:Lcom/netease/nr/base/fragment/BaseWebFragment;

    invoke-virtual {v1}, Lcom/netease/nr/base/fragment/BaseWebFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "share://"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/netease/nr/base/fragment/s;->a:Lcom/netease/nr/base/fragment/BaseWebFragment;

    invoke-static {v1}, Lcom/netease/nr/base/fragment/BaseWebFragment;->e(Lcom/netease/nr/base/fragment/BaseWebFragment;)V

    goto :goto_0

    :cond_2
    const-string v1, "comment://"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/netease/nr/base/fragment/s;->a:Lcom/netease/nr/base/fragment/BaseWebFragment;

    invoke-static {v1}, Lcom/netease/nr/base/fragment/BaseWebFragment;->f(Lcom/netease/nr/base/fragment/BaseWebFragment;)V

    goto :goto_0

    :cond_3
    const-string v1, "userinfo://"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/netease/nr/base/fragment/s;->a:Lcom/netease/nr/base/fragment/BaseWebFragment;

    invoke-static {v1}, Lcom/netease/nr/base/fragment/BaseWebFragment;->g(Lcom/netease/nr/base/fragment/BaseWebFragment;)V

    goto :goto_0

    :cond_4
    const-string v1, "login://"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/netease/nr/base/fragment/s;->a:Lcom/netease/nr/base/fragment/BaseWebFragment;

    invoke-static {v1}, Lcom/netease/nr/base/fragment/BaseWebFragment;->h(Lcom/netease/nr/base/fragment/BaseWebFragment;)V

    goto :goto_0

    :cond_5
    const-string v1, "device://"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/netease/nr/base/fragment/s;->a:Lcom/netease/nr/base/fragment/BaseWebFragment;

    invoke-static {v1}, Lcom/netease/nr/base/fragment/BaseWebFragment;->i(Lcom/netease/nr/base/fragment/BaseWebFragment;)V

    goto :goto_0

    :cond_6
    const-string v1, "pushview://font"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/netease/nr/base/fragment/s;->a:Lcom/netease/nr/base/fragment/BaseWebFragment;

    invoke-static {v1}, Lcom/netease/nr/base/fragment/BaseWebFragment;->j(Lcom/netease/nr/base/fragment/BaseWebFragment;)V

    goto :goto_0

    :cond_7
    const-string v1, "updateprofile://"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/netease/nr/base/fragment/s;->a:Lcom/netease/nr/base/fragment/BaseWebFragment;

    invoke-static {v1}, Lcom/netease/nr/base/fragment/BaseWebFragment;->k(Lcom/netease/nr/base/fragment/BaseWebFragment;)V

    goto :goto_0

    :cond_8
    const-string v1, "pushview://feedback"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/netease/nr/base/fragment/s;->a:Lcom/netease/nr/base/fragment/BaseWebFragment;

    invoke-static {v1}, Lcom/netease/nr/base/fragment/BaseWebFragment;->l(Lcom/netease/nr/base/fragment/BaseWebFragment;)V

    goto :goto_0

    :cond_9
    const-string v1, "pushview://personalcenter"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/netease/nr/base/fragment/s;->a:Lcom/netease/nr/base/fragment/BaseWebFragment;

    invoke-static {v1}, Lcom/netease/nr/base/fragment/BaseWebFragment;->m(Lcom/netease/nr/base/fragment/BaseWebFragment;)V

    goto :goto_0

    :cond_a
    iget-object v1, p0, Lcom/netease/nr/base/fragment/s;->a:Lcom/netease/nr/base/fragment/BaseWebFragment;

    invoke-static {v1, p1, p2}, Lcom/netease/nr/base/fragment/BaseWebFragment;->a(Lcom/netease/nr/base/fragment/BaseWebFragment;Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/fragment/s;->a:Lcom/netease/nr/base/fragment/BaseWebFragment;

    invoke-virtual {v0}, Lcom/netease/nr/base/fragment/BaseWebFragment;->m()Landroid/webkit/WebViewClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0
.end method
