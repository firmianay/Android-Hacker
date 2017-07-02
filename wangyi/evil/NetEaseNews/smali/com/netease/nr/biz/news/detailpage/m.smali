.class Lcom/netease/nr/biz/news/detailpage/m;
.super Landroid/webkit/WebChromeClient;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/news/detailpage/m;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/m;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Lcom/netease/nr/biz/news/detailpage/ae;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/nr/biz/news/detailpage/ae;->b()V

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/m;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    new-instance v1, Lcom/netease/nr/biz/news/detailpage/aa;

    iget-object v2, p0, Lcom/netease/nr/biz/news/detailpage/m;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-direct {v1, v2}, Lcom/netease/nr/biz/news/detailpage/aa;-><init>(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)V

    invoke-static {v0, v1}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;Lcom/netease/nr/biz/news/detailpage/ae;)Lcom/netease/nr/biz/news/detailpage/ae;

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/m;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->a(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Lcom/netease/nr/biz/news/detailpage/ae;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/nr/biz/news/detailpage/ae;->a()V

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/m;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->b(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Lcom/netease/nr/biz/news/detailpage/NeteaseWebView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/m;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->b(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Lcom/netease/nr/biz/news/detailpage/NeteaseWebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/news/detailpage/NeteaseWebView;->a(Z)V

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/m;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->b(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Lcom/netease/nr/biz/news/detailpage/NeteaseWebView;

    move-result-object v0

    const-string v1, "javascript:requestImgLoading(true)"

    invoke-static {v0, v1}, Lcom/netease/nr/base/c/aa;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
