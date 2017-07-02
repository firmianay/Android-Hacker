.class Lcom/netease/nr/biz/sns/util/category/d/b;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/sns/util/category/d/a;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/sns/util/category/d/a;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/sns/util/category/d/b;->a:Lcom/netease/nr/biz/sns/util/category/d/a;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 5

    const/4 v4, 0x1

    const-string v0, "http://m.163.com/newsapp/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/d/b;->a:Lcom/netease/nr/biz/sns/util/category/d/a;

    invoke-static {v0}, Lcom/netease/nr/biz/sns/util/category/d/a;->a(Lcom/netease/nr/biz/sns/util/category/d/a;)Lcom/netease/nr/biz/sns/util/category/d/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/d/b;->a:Lcom/netease/nr/biz/sns/util/category/d/a;

    invoke-static {v0}, Lcom/netease/nr/biz/sns/util/category/d/a;->a(Lcom/netease/nr/biz/sns/util/category/d/a;)Lcom/netease/nr/biz/sns/util/category/d/c;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/netease/nr/biz/sns/util/category/d/c;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/d/b;->a:Lcom/netease/nr/biz/sns/util/category/d/a;

    new-instance v1, Lcom/netease/nr/biz/sns/util/category/d/c;

    iget-object v2, p0, Lcom/netease/nr/biz/sns/util/category/d/b;->a:Lcom/netease/nr/biz/sns/util/category/d/a;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/netease/nr/biz/sns/util/category/d/c;-><init>(Lcom/netease/nr/biz/sns/util/category/d/a;Lcom/netease/nr/biz/sns/util/category/d/b;)V

    invoke-static {v0, v1}, Lcom/netease/nr/biz/sns/util/category/d/a;->a(Lcom/netease/nr/biz/sns/util/category/d/a;Lcom/netease/nr/biz/sns/util/category/d/c;)Lcom/netease/nr/biz/sns/util/category/d/c;

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/d/b;->a:Lcom/netease/nr/biz/sns/util/category/d/a;

    invoke-static {v0}, Lcom/netease/nr/biz/sns/util/category/d/a;->a(Lcom/netease/nr/biz/sns/util/category/d/a;)Lcom/netease/nr/biz/sns/util/category/d/c;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/sns/util/category/d/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/d/b;->a:Lcom/netease/nr/biz/sns/util/category/d/a;

    invoke-static {v0}, Lcom/netease/nr/biz/sns/util/category/d/a;->b(Lcom/netease/nr/biz/sns/util/category/d/a;)Lcom/netease/nr/biz/sns/util/d;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/d/b;->a:Lcom/netease/nr/biz/sns/util/category/d/a;

    invoke-static {v0}, Lcom/netease/nr/biz/sns/util/category/d/a;->c(Lcom/netease/nr/biz/sns/util/category/d/a;)Lcom/netease/nr/biz/sns/util/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/nr/biz/sns/util/d;->r()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v0, Lcom/netease/nr/biz/sns/util/category/d/a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/d/b;->a:Lcom/netease/nr/biz/sns/util/category/d/a;

    invoke-static {v0, p2}, Lcom/netease/nr/biz/sns/util/category/d/a;->a(Lcom/netease/nr/biz/sns/util/category/d/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/nr/biz/sns/util/category/d/a;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method
