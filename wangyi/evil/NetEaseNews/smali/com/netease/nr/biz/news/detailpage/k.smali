.class Lcom/netease/nr/biz/news/detailpage/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/news/detailpage/NeteaseWebView;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/news/detailpage/NeteaseWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/news/detailpage/k;->a:Lcom/netease/nr/biz/news/detailpage/NeteaseWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/k;->a:Lcom/netease/nr/biz/news/detailpage/NeteaseWebView;

    invoke-static {v0}, Lcom/netease/nr/biz/news/detailpage/NeteaseWebView;->a(Lcom/netease/nr/biz/news/detailpage/NeteaseWebView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/k;->a:Lcom/netease/nr/biz/news/detailpage/NeteaseWebView;

    invoke-static {v0}, Lcom/netease/nr/biz/news/detailpage/NeteaseWebView;->a(Lcom/netease/nr/biz/news/detailpage/NeteaseWebView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
