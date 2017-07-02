.class Lcom/netease/nr/base/view/bj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/netease/nr/base/view/PullRefreshListView;


# direct methods
.method private constructor <init>(Lcom/netease/nr/base/view/PullRefreshListView;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/base/view/bj;->a:Lcom/netease/nr/base/view/PullRefreshListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/nr/base/view/PullRefreshListView;Lcom/netease/nr/base/view/bf;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/nr/base/view/bj;-><init>(Lcom/netease/nr/base/view/PullRefreshListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/netease/nr/base/view/bj;->a:Lcom/netease/nr/base/view/PullRefreshListView;

    invoke-static {v0, v1, v1}, Lcom/netease/nr/base/view/PullRefreshListView;->a(Lcom/netease/nr/base/view/PullRefreshListView;IZ)V

    return-void
.end method
