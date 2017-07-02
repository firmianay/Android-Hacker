.class Lcom/netease/nr/biz/news/detailpage/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/news/detailpage/o;->b:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    iput-object p2, p0, Lcom/netease/nr/biz/news/detailpage/o;->a:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/o;->b:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-virtual {v0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/o;->b:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v1}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->b(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Lcom/netease/nr/biz/news/detailpage/NeteaseWebView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/o;->b:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-virtual {v1}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const-string v1, "article_tie_show"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/netease/util/g/a;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/o;->b:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v1}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->b(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Lcom/netease/nr/biz/news/detailpage/NeteaseWebView;

    move-result-object v1

    const-string v2, "javascript:startCommentTask(1002)"

    invoke-virtual {v1, v2}, Lcom/netease/nr/biz/news/detailpage/NeteaseWebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/o;->a:[Ljava/lang/String;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    new-instance v1, Lcom/netease/nr/biz/news/detailpage/a/a/t;

    iget-object v2, p0, Lcom/netease/nr/biz/news/detailpage/o;->b:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    iget-object v3, p0, Lcom/netease/nr/biz/news/detailpage/o;->a:[Ljava/lang/String;

    invoke-direct {v1, v0, v2, v3}, Lcom/netease/nr/biz/news/detailpage/a/a/t;-><init>(Landroid/content/Context;Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;[Ljava/lang/String;)V

    invoke-static {}, Lcom/netease/util/k/a;->b()Lcom/netease/util/k/f;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/netease/util/k/f;->a(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    :cond_1
    return-void
.end method
