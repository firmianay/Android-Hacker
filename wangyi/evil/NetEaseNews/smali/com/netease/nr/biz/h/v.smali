.class Lcom/netease/nr/biz/h/v;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/h/t;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/h/t;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/h/v;->a:Lcom/netease/nr/biz/h/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/netease/nr/biz/h/v;->a:Lcom/netease/nr/biz/h/t;

    invoke-static {v1}, Lcom/netease/nr/biz/h/t;->b(Lcom/netease/nr/biz/h/t;)Lcom/netease/nr/biz/h/q;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/netease/nr/biz/h/q;->a(I)Ljava/util/Map;

    move-result-object v2

    const-string v1, "tid"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v3, "columnId"

    invoke-virtual {v4, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "columnName"

    const-string v1, "tname"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "icon"

    const-string v1, "icon"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "ename"

    const-string v1, "ename"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "type"

    const-string v1, "type"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "columnSubscribed"

    iget-object v1, p0, Lcom/netease/nr/biz/h/v;->a:Lcom/netease/nr/biz/h/t;

    invoke-static {v1}, Lcom/netease/nr/biz/h/t;->b(Lcom/netease/nr/biz/h/t;)Lcom/netease/nr/biz/h/q;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/netease/nr/biz/h/q;->a(I)Ljava/util/Map;

    move-result-object v1

    const-string v3, "status"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v4, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/netease/nr/biz/h/v;->a:Lcom/netease/nr/biz/h/t;

    invoke-virtual {v1}, Lcom/netease/nr/biz/h/t;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    iget-object v1, p0, Lcom/netease/nr/biz/h/v;->a:Lcom/netease/nr/biz/h/t;

    invoke-virtual {v1}, Lcom/netease/nr/biz/h/t;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/netease/nr/biz/h/p;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SubscribeListFragment"

    const-class v6, Lcom/netease/nr/base/activity/BaseActivity;

    move-object v5, v0

    invoke-static/range {v0 .. v6}, Lcom/netease/util/fragment/ab;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
