.class Lcom/netease/nr/biz/plugin/c/o;
.super Landroid/widget/Filter;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/plugin/c/m;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/plugin/c/m;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/plugin/c/o;->a:Lcom/netease/nr/biz/plugin/c/m;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/c/o;->a:Lcom/netease/nr/biz/plugin/c/m;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/netease/nr/biz/plugin/c/m;->a(Lcom/netease/nr/biz/plugin/c/m;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    iput-object v0, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    return-object v1
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/c/o;->a:Lcom/netease/nr/biz/plugin/c/m;

    invoke-static {v0}, Lcom/netease/nr/biz/plugin/c/m;->e(Lcom/netease/nr/biz/plugin/c/m;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/netease/nr/biz/plugin/c/o;->a:Lcom/netease/nr/biz/plugin/c/m;

    invoke-static {v1}, Lcom/netease/nr/biz/plugin/c/m;->e(Lcom/netease/nr/biz/plugin/c/m;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
