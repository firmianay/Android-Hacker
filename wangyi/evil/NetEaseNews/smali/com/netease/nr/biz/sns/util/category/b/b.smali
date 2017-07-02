.class Lcom/netease/nr/biz/sns/util/category/b/b;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/sns/util/category/b/a;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/sns/util/category/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/sns/util/category/b/b;->a:Lcom/netease/nr/biz/sns/util/category/b/a;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x1

    const-string v0, "weibo4andriod://AccountSettingActivity"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/b/b;->a:Lcom/netease/nr/biz/sns/util/category/b/a;

    invoke-static {v0}, Lcom/netease/nr/biz/sns/util/category/b/a;->a(Lcom/netease/nr/biz/sns/util/category/b/a;)Lcom/netease/nr/biz/sns/util/category/b/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/b/b;->a:Lcom/netease/nr/biz/sns/util/category/b/a;

    invoke-static {v0}, Lcom/netease/nr/biz/sns/util/category/b/a;->a(Lcom/netease/nr/biz/sns/util/category/b/a;)Lcom/netease/nr/biz/sns/util/category/b/c;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/netease/nr/biz/sns/util/category/b/c;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/b/b;->a:Lcom/netease/nr/biz/sns/util/category/b/a;

    new-instance v1, Lcom/netease/nr/biz/sns/util/category/b/c;

    iget-object v2, p0, Lcom/netease/nr/biz/sns/util/category/b/b;->a:Lcom/netease/nr/biz/sns/util/category/b/a;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/netease/nr/biz/sns/util/category/b/c;-><init>(Lcom/netease/nr/biz/sns/util/category/b/a;Lcom/netease/nr/biz/sns/util/category/b/b;)V

    invoke-static {v0, v1}, Lcom/netease/nr/biz/sns/util/category/b/a;->a(Lcom/netease/nr/biz/sns/util/category/b/a;Lcom/netease/nr/biz/sns/util/category/b/c;)Lcom/netease/nr/biz/sns/util/category/b/c;

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/b/b;->a:Lcom/netease/nr/biz/sns/util/category/b/a;

    invoke-static {v0}, Lcom/netease/nr/biz/sns/util/category/b/a;->a(Lcom/netease/nr/biz/sns/util/category/b/a;)Lcom/netease/nr/biz/sns/util/category/b/c;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/sns/util/category/b/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/b/b;->a:Lcom/netease/nr/biz/sns/util/category/b/a;

    invoke-static {v0}, Lcom/netease/nr/biz/sns/util/category/b/a;->b(Lcom/netease/nr/biz/sns/util/category/b/a;)Lcom/netease/nr/biz/sns/util/d;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/b/b;->a:Lcom/netease/nr/biz/sns/util/category/b/a;

    invoke-static {v0}, Lcom/netease/nr/biz/sns/util/category/b/a;->c(Lcom/netease/nr/biz/sns/util/category/b/a;)Lcom/netease/nr/biz/sns/util/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/nr/biz/sns/util/d;->r()V

    :cond_1
    :goto_0
    return v4

    :cond_2
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method
