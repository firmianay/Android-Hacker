.class Lcom/netease/nr/biz/plugin/video/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/plugin/video/a;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/plugin/video/a;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/plugin/video/b;->a:Lcom/netease/nr/biz/plugin/video/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/video/b;->a:Lcom/netease/nr/biz/plugin/video/a;

    invoke-static {v0, v1}, Lcom/netease/nr/biz/plugin/video/a;->a(Lcom/netease/nr/biz/plugin/video/a;Z)Z

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/video/b;->a:Lcom/netease/nr/biz/plugin/video/a;

    invoke-static {v0, v1}, Lcom/netease/nr/biz/plugin/video/a;->b(Lcom/netease/nr/biz/plugin/video/a;Z)V

    return-void
.end method
