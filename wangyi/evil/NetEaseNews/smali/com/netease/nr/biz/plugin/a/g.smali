.class Lcom/netease/nr/biz/plugin/a/g;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/plugin/a/e;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/plugin/a/e;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/plugin/a/g;->a:Lcom/netease/nr/biz/plugin/a/e;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/a/g;->a:Lcom/netease/nr/biz/plugin/a/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/plugin/a/e;->a(Z)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    const-string v1, "msg=authfail"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netease/nr/biz/plugin/a/g;->a:Lcom/netease/nr/biz/plugin/a/e;

    invoke-virtual {v1}, Lcom/netease/nr/biz/plugin/a/e;->n()V

    :goto_0
    return v0

    :cond_0
    const-string v1, "logout.jsp"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netease/nr/biz/plugin/a/g;->a:Lcom/netease/nr/biz/plugin/a/e;

    invoke-static {v1}, Lcom/netease/nr/biz/plugin/a/e;->a(Lcom/netease/nr/biz/plugin/a/e;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
