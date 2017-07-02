.class Lcom/netease/nr/biz/news/detailpage/x;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Z

.field final synthetic c:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/news/detailpage/x;->c:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;

    iput p2, p0, Lcom/netease/nr/biz/news/detailpage/x;->a:I

    iput-boolean p3, p0, Lcom/netease/nr/biz/news/detailpage/x;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/x;->c:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;

    iget-object v0, v0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->b(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Lcom/netease/nr/biz/news/detailpage/NeteaseWebView;

    move-result-object v1

    iget v2, p0, Lcom/netease/nr/biz/news/detailpage/x;->a:I

    iget-boolean v0, p0, Lcom/netease/nr/biz/news/detailpage/x;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/netease/nr/biz/news/detailpage/a/a/aa;->a(Landroid/webkit/WebView;IZ)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
