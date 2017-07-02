.class Lcom/netease/nr/biz/offline/g;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/offline/OffLineService;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/offline/OffLineService;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/offline/g;->a:Lcom/netease/nr/biz/offline/OffLineService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/offline/g;->a:Lcom/netease/nr/biz/offline/OffLineService;

    invoke-static {v0}, Lcom/netease/nr/biz/offline/OffLineService;->a(Lcom/netease/nr/biz/offline/OffLineService;)V

    return-void
.end method
