.class Lcom/netease/nr/biz/plugin/plugin/util/j;
.super Landroid/database/ContentObserver;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/plugin/plugin/util/i;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/plugin/plugin/util/i;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/plugin/plugin/util/j;->a:Lcom/netease/nr/biz/plugin/plugin/util/i;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/j;->a:Lcom/netease/nr/biz/plugin/plugin/util/i;

    invoke-static {v0}, Lcom/netease/nr/biz/plugin/plugin/util/i;->a(Lcom/netease/nr/biz/plugin/plugin/util/i;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/j;->a:Lcom/netease/nr/biz/plugin/plugin/util/i;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netease/nr/biz/plugin/plugin/util/i;->a(Lcom/netease/nr/biz/plugin/plugin/util/i;Z)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/j;->a:Lcom/netease/nr/biz/plugin/plugin/util/i;

    invoke-static {v0}, Lcom/netease/nr/biz/plugin/plugin/util/i;->b(Lcom/netease/nr/biz/plugin/plugin/util/i;)V

    goto :goto_0
.end method
