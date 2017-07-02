.class Lcom/netease/nr/biz/plugin/c/x;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/plugin/c/m;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/plugin/c/m;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/plugin/c/x;->a:Lcom/netease/nr/biz/plugin/c/m;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-static {}, Lcom/netease/nr/biz/plugin/c/m;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-static {}, Lcom/netease/nr/biz/plugin/c/m;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "ipquery_fail"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v0

    :goto_1
    iget-object v0, p0, Lcom/netease/nr/biz/plugin/c/x;->a:Lcom/netease/nr/biz/plugin/c/m;

    invoke-static {v0}, Lcom/netease/nr/biz/plugin/c/m;->c(Lcom/netease/nr/biz/plugin/c/m;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/c/x;->a:Lcom/netease/nr/biz/plugin/c/m;

    invoke-static {v0}, Lcom/netease/nr/biz/plugin/c/m;->c(Lcom/netease/nr/biz/plugin/c/m;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/util/e/b;

    iget-object v1, v0, Lcom/netease/util/e/b;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v0, v0, Lcom/netease/util/e/b;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/plugin/c/x;->a:Lcom/netease/nr/biz/plugin/c/m;

    invoke-static {v0}, Lcom/netease/nr/biz/plugin/c/m;->d(Lcom/netease/nr/biz/plugin/c/m;)Lcom/netease/nr/biz/plugin/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/biz/plugin/c/a;->notifyDataSetChanged()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/netease/nr/biz/plugin/c/x;->a:Lcom/netease/nr/biz/plugin/c/m;

    invoke-static {v0}, Lcom/netease/nr/biz/plugin/c/m;->i(Lcom/netease/nr/biz/plugin/c/m;)Lcom/netease/nr/biz/plugin/c/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/biz/plugin/c/j;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/c/x;->a:Lcom/netease/nr/biz/plugin/c/m;

    invoke-static {v0}, Lcom/netease/nr/biz/plugin/c/m;->j(Lcom/netease/nr/biz/plugin/c/m;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/c/x;->a:Lcom/netease/nr/biz/plugin/c/m;

    invoke-static {v0}, Lcom/netease/nr/biz/plugin/c/m;->i(Lcom/netease/nr/biz/plugin/c/m;)Lcom/netease/nr/biz/plugin/c/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/biz/plugin/c/j;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/c/x;->a:Lcom/netease/nr/biz/plugin/c/m;

    invoke-static {v0}, Lcom/netease/nr/biz/plugin/c/m;->h(Lcom/netease/nr/biz/plugin/c/m;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/plugin/c/x;->a:Lcom/netease/nr/biz/plugin/c/m;

    invoke-static {v1}, Lcom/netease/nr/biz/plugin/c/m;->i(Lcom/netease/nr/biz/plugin/c/m;)Lcom/netease/nr/biz/plugin/c/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/plugin/c/x;->a:Lcom/netease/nr/biz/plugin/c/m;

    invoke-static {v0}, Lcom/netease/nr/biz/plugin/c/m;->j(Lcom/netease/nr/biz/plugin/c/m;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_2
    move-object v2, v0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
