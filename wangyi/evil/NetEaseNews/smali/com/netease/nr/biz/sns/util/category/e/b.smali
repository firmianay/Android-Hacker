.class Lcom/netease/nr/biz/sns/util/category/e/b;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/sns/util/category/e/a;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/sns/util/category/e/a;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/sns/util/category/e/b;->a:Lcom/netease/nr/biz/sns/util/category/e/a;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    const-string v0, "http://graph.renren.com/login_deny/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/e/b;->a:Lcom/netease/nr/biz/sns/util/category/e/a;

    invoke-static {v0}, Lcom/netease/nr/biz/sns/util/category/e/a;->a(Lcom/netease/nr/biz/sns/util/category/e/a;)Lcom/netease/nr/biz/sns/util/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/e/b;->a:Lcom/netease/nr/biz/sns/util/category/e/a;

    invoke-static {v0}, Lcom/netease/nr/biz/sns/util/category/e/a;->b(Lcom/netease/nr/biz/sns/util/category/e/a;)Lcom/netease/nr/biz/sns/util/d;

    move-result-object v0

    invoke-static {v3, v4}, Lcom/netease/util/e/c;->a(ILjava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netease/nr/biz/sns/util/d;->b(Ljava/util/Map;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "http://graph.renren.com/oauth/login_success.html"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/e/b;->a:Lcom/netease/nr/biz/sns/util/category/e/a;

    invoke-static {v0}, Lcom/netease/nr/biz/sns/util/category/e/a;->c(Lcom/netease/nr/biz/sns/util/category/e/a;)Lcom/netease/nr/biz/sns/util/category/e/c;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/e/b;->a:Lcom/netease/nr/biz/sns/util/category/e/a;

    invoke-static {v0}, Lcom/netease/nr/biz/sns/util/category/e/a;->c(Lcom/netease/nr/biz/sns/util/category/e/a;)Lcom/netease/nr/biz/sns/util/category/e/c;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/netease/nr/biz/sns/util/category/e/c;->cancel(Z)Z

    :cond_2
    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/e/b;->a:Lcom/netease/nr/biz/sns/util/category/e/a;

    new-instance v1, Lcom/netease/nr/biz/sns/util/category/e/c;

    iget-object v2, p0, Lcom/netease/nr/biz/sns/util/category/e/b;->a:Lcom/netease/nr/biz/sns/util/category/e/a;

    invoke-direct {v1, v2, v4}, Lcom/netease/nr/biz/sns/util/category/e/c;-><init>(Lcom/netease/nr/biz/sns/util/category/e/a;Lcom/netease/nr/biz/sns/util/category/e/b;)V

    invoke-static {v0, v1}, Lcom/netease/nr/biz/sns/util/category/e/a;->a(Lcom/netease/nr/biz/sns/util/category/e/a;Lcom/netease/nr/biz/sns/util/category/e/c;)Lcom/netease/nr/biz/sns/util/category/e/c;

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/e/b;->a:Lcom/netease/nr/biz/sns/util/category/e/a;

    invoke-static {v0}, Lcom/netease/nr/biz/sns/util/category/e/a;->c(Lcom/netease/nr/biz/sns/util/category/e/a;)Lcom/netease/nr/biz/sns/util/category/e/c;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/sns/util/category/e/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/e/b;->a:Lcom/netease/nr/biz/sns/util/category/e/a;

    invoke-static {v0}, Lcom/netease/nr/biz/sns/util/category/e/a;->d(Lcom/netease/nr/biz/sns/util/category/e/a;)Lcom/netease/nr/biz/sns/util/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/e/b;->a:Lcom/netease/nr/biz/sns/util/category/e/a;

    invoke-static {v0}, Lcom/netease/nr/biz/sns/util/category/e/a;->e(Lcom/netease/nr/biz/sns/util/category/e/a;)Lcom/netease/nr/biz/sns/util/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/nr/biz/sns/util/d;->r()V

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method
