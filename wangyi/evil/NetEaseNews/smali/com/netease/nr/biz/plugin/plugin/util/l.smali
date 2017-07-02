.class Lcom/netease/nr/biz/plugin/plugin/util/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/plugin/plugin/util/a;

.field final synthetic b:Lcom/netease/nr/biz/plugin/plugin/util/k;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/plugin/plugin/util/k;Lcom/netease/nr/biz/plugin/plugin/util/a;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/plugin/plugin/util/l;->b:Lcom/netease/nr/biz/plugin/plugin/util/k;

    iput-object p2, p0, Lcom/netease/nr/biz/plugin/plugin/util/l;->a:Lcom/netease/nr/biz/plugin/plugin/util/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/l;->a:Lcom/netease/nr/biz/plugin/plugin/util/a;

    instance-of v0, v0, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/l;->a:Lcom/netease/nr/biz/plugin/plugin/util/a;

    check-cast v0, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;

    invoke-virtual {v0}, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->f()V

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/l;->a:Lcom/netease/nr/biz/plugin/plugin/util/a;

    instance-of v0, v0, Lcom/netease/nr/biz/plugin/plugin/ThemePlugin;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/l;->b:Lcom/netease/nr/biz/plugin/plugin/util/k;

    invoke-virtual {v0}, Lcom/netease/nr/biz/plugin/plugin/util/k;->notifyDataSetChanged()V

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/l;->a:Lcom/netease/nr/biz/plugin/plugin/util/a;

    instance-of v0, v0, Lcom/netease/nr/biz/plugin/plugin/OfflinePlugin;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/l;->b:Lcom/netease/nr/biz/plugin/plugin/util/k;

    invoke-static {v0}, Lcom/netease/nr/biz/plugin/plugin/util/k;->a(Lcom/netease/nr/biz/plugin/plugin/util/k;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b01e8

    invoke-static {v0, v1}, Lcom/netease/nr/base/view/az;->a(Landroid/content/Context;I)V

    :cond_1
    return-void
.end method
