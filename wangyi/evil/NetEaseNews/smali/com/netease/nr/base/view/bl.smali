.class Lcom/netease/nr/base/view/bl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/netease/nr/base/view/bk;


# direct methods
.method constructor <init>(Lcom/netease/nr/base/view/bk;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/base/view/bl;->a:Lcom/netease/nr/base/view/bk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/base/view/bl;->a:Lcom/netease/nr/base/view/bk;

    iget-object v0, v0, Lcom/netease/nr/base/view/bk;->a:Lcom/netease/nr/base/view/PullRefreshListView;

    invoke-static {v0}, Lcom/netease/nr/base/view/PullRefreshListView;->b(Lcom/netease/nr/base/view/PullRefreshListView;)Lcom/netease/nr/base/view/bi;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/bl;->a:Lcom/netease/nr/base/view/bk;

    iget-object v0, v0, Lcom/netease/nr/base/view/bk;->a:Lcom/netease/nr/base/view/PullRefreshListView;

    invoke-static {v0}, Lcom/netease/nr/base/view/PullRefreshListView;->b(Lcom/netease/nr/base/view/PullRefreshListView;)Lcom/netease/nr/base/view/bi;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/base/view/bl;->a:Lcom/netease/nr/base/view/bk;

    iget-object v1, v1, Lcom/netease/nr/base/view/bk;->a:Lcom/netease/nr/base/view/PullRefreshListView;

    invoke-static {v1}, Lcom/netease/nr/base/view/PullRefreshListView;->c(Lcom/netease/nr/base/view/PullRefreshListView;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netease/nr/base/view/bi;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
