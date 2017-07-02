.class Lcom/netease/nr/biz/news/detailpage/w;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/news/detailpage/w;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Lcom/netease/nr/biz/news/detailpage/j;

    invoke-direct {v0}, Lcom/netease/nr/biz/news/detailpage/j;-><init>()V

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/w;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;

    iget-object v1, v1, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v1}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->c(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nr/biz/news/detailpage/w;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;

    iget-object v2, v2, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v2}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->f(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Lcom/netease/nr/biz/news/detailpage/t;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/nr/biz/news/detailpage/t;->a:Ljava/lang/String;

    const-string v3, "tail"

    invoke-static {v1, v2, v3}, Lcom/netease/nr/biz/news/detailpage/g;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/news/detailpage/j;->a(Ljava/util/HashMap;)V

    new-instance v1, Lcom/netease/nr/biz/news/detailpage/u;

    iget-object v2, p0, Lcom/netease/nr/biz/news/detailpage/w;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;

    iget-object v2, v2, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-direct {v1, v2, v0}, Lcom/netease/nr/biz/news/detailpage/u;-><init>(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;Lcom/netease/nr/biz/news/detailpage/j;)V

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/w;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;

    iget-object v0, v0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->h(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
