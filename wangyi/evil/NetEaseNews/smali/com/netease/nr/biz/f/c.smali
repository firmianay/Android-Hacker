.class Lcom/netease/nr/biz/f/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/f/a;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/f/a;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/f/c;->a:Lcom/netease/nr/biz/f/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/f/c;->a:Lcom/netease/nr/biz/f/a;

    invoke-static {v0}, Lcom/netease/nr/biz/f/a;->a(Lcom/netease/nr/biz/f/a;)Lcom/netease/nr/base/view/GuideContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/f/c;->a:Lcom/netease/nr/biz/f/a;

    invoke-static {v0}, Lcom/netease/nr/biz/f/a;->a(Lcom/netease/nr/biz/f/a;)Lcom/netease/nr/base/view/GuideContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/base/view/GuideContainer;->b()V

    :cond_0
    return-void
.end method
