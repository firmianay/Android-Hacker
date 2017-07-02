.class Lcom/netease/nr/biz/sns/util/category/f/b;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/sns/util/category/f/a;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/sns/util/category/f/a;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/sns/util/category/f/b;->a:Lcom/netease/nr/biz/sns/util/category/f/a;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/f/b;->a:Lcom/netease/nr/biz/sns/util/category/f/a;

    invoke-static {v0}, Lcom/netease/nr/biz/sns/util/category/f/a;->a(Lcom/netease/nr/biz/sns/util/category/f/a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/f/b;->a:Lcom/netease/nr/biz/sns/util/category/f/a;

    invoke-static {v0}, Lcom/netease/nr/biz/sns/util/category/f/a;->a(Lcom/netease/nr/biz/sns/util/category/f/a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "javascript:(function(){document.getElementsByClassName(\'user_if\')[0].innerHTML = document.getElementsByClassName(\'user_if\')[0].innerHTML.replace(\'\u6ce8\u518c\',\'\');})()"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 5

    const/4 v4, 0x1

    const-string v0, "http://m.163.com/newsapp/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/f/b;->a:Lcom/netease/nr/biz/sns/util/category/f/a;

    invoke-static {v0}, Lcom/netease/nr/biz/sns/util/category/f/a;->b(Lcom/netease/nr/biz/sns/util/category/f/a;)Lcom/netease/nr/biz/sns/util/category/f/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/f/b;->a:Lcom/netease/nr/biz/sns/util/category/f/a;

    invoke-static {v0}, Lcom/netease/nr/biz/sns/util/category/f/a;->b(Lcom/netease/nr/biz/sns/util/category/f/a;)Lcom/netease/nr/biz/sns/util/category/f/c;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/netease/nr/biz/sns/util/category/f/c;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/f/b;->a:Lcom/netease/nr/biz/sns/util/category/f/a;

    new-instance v1, Lcom/netease/nr/biz/sns/util/category/f/c;

    iget-object v2, p0, Lcom/netease/nr/biz/sns/util/category/f/b;->a:Lcom/netease/nr/biz/sns/util/category/f/a;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/netease/nr/biz/sns/util/category/f/c;-><init>(Lcom/netease/nr/biz/sns/util/category/f/a;Lcom/netease/nr/biz/sns/util/category/f/b;)V

    invoke-static {v0, v1}, Lcom/netease/nr/biz/sns/util/category/f/a;->a(Lcom/netease/nr/biz/sns/util/category/f/a;Lcom/netease/nr/biz/sns/util/category/f/c;)Lcom/netease/nr/biz/sns/util/category/f/c;

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/f/b;->a:Lcom/netease/nr/biz/sns/util/category/f/a;

    invoke-static {v0}, Lcom/netease/nr/biz/sns/util/category/f/a;->b(Lcom/netease/nr/biz/sns/util/category/f/a;)Lcom/netease/nr/biz/sns/util/category/f/c;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/sns/util/category/f/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/f/b;->a:Lcom/netease/nr/biz/sns/util/category/f/a;

    invoke-static {v0}, Lcom/netease/nr/biz/sns/util/category/f/a;->c(Lcom/netease/nr/biz/sns/util/category/f/a;)Lcom/netease/nr/biz/sns/util/d;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/f/b;->a:Lcom/netease/nr/biz/sns/util/category/f/a;

    invoke-static {v0}, Lcom/netease/nr/biz/sns/util/category/f/a;->d(Lcom/netease/nr/biz/sns/util/category/f/a;)Lcom/netease/nr/biz/sns/util/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/nr/biz/sns/util/d;->r()V

    :cond_1
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method
