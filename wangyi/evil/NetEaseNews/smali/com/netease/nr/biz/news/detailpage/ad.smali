.class Lcom/netease/nr/biz/news/detailpage/ad;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/nr/biz/news/detailpage/ae;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/news/detailpage/ad;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/ad;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->k(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/ad;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->b(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Lcom/netease/nr/biz/news/detailpage/NeteaseWebView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/news/detailpage/NeteaseWebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/ad;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->l(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public b()V
    .locals 3

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/ad;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->k(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/ad;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->b(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Lcom/netease/nr/biz/news/detailpage/NeteaseWebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/news/detailpage/NeteaseWebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/ad;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->l(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
