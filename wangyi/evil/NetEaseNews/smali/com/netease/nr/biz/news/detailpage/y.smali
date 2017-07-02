.class Lcom/netease/nr/biz/news/detailpage/y;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/news/detailpage/y;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/y;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;

    iget-object v0, v0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-virtual {v0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/news/detailpage/NewsPageActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netease/nr/biz/news/detailpage/NewsPageActivity;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/y;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;

    iget-object v0, v0, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-virtual {v0}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->c()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/netease/nr/base/c/a;->a:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/nr/biz/news/detailpage/y;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;

    iget-object v2, v2, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v2}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->f(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Lcom/netease/nr/biz/news/detailpage/t;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/nr/biz/news/detailpage/t;->j:Ljava/util/HashMap;

    const-string v3, "replyBoard"

    invoke-static {v2, v3}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/nr/biz/news/detailpage/y;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;

    iget-object v3, v3, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v3}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->f(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Lcom/netease/nr/biz/news/detailpage/t;

    move-result-object v3

    iget-object v3, v3, Lcom/netease/nr/biz/news/detailpage/t;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/nr/biz/news/detailpage/y;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;

    iget-object v4, v4, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment$JavaScriptInterface;->a:Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;

    invoke-static {v4}, Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;->f(Lcom/netease/nr/biz/news/detailpage/NewsPageFragment;)Lcom/netease/nr/biz/news/detailpage/t;

    move-result-object v4

    iget-object v4, v4, Lcom/netease/nr/biz/news/detailpage/t;->j:Ljava/util/HashMap;

    const-string v5, "title"

    invoke-static {v4, v5}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/netease/nr/biz/news/detailpage/NewsPageActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
