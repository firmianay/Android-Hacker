.class Lcom/netease/nr/base/view/bf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/netease/nr/base/view/PullRefreshListView;


# direct methods
.method constructor <init>(Lcom/netease/nr/base/view/PullRefreshListView;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/base/view/bf;->a:Lcom/netease/nr/base/view/PullRefreshListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/netease/nr/base/view/bf;->a:Lcom/netease/nr/base/view/PullRefreshListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netease/nr/base/view/PullRefreshListView;->a(Lcom/netease/nr/base/view/PullRefreshListView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/netease/nr/base/view/bf;->a:Lcom/netease/nr/base/view/PullRefreshListView;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/netease/nr/base/view/PullRefreshListView;->a(Lcom/netease/nr/base/view/PullRefreshListView;IZ)V

    return-void
.end method
