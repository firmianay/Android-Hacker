.class Lcom/netease/nr/biz/news/a/c/c/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/netease/nr/biz/news/a/c/c/i;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/news/a/c/c/i;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/news/a/c/c/j;->b:Lcom/netease/nr/biz/news/a/c/c/i;

    iput-object p2, p0, Lcom/netease/nr/biz/news/a/c/c/j;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    const/4 v0, 0x0

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v2, "columnId"

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/c/c/j;->a:Ljava/util/Map;

    const-string v3, "tid"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "columnName"

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/c/c/j;->a:Ljava/util/Map;

    const-string v3, "tname"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "icon"

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/c/c/j;->a:Ljava/util/Map;

    const-string v3, "icon"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ename"

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/c/c/j;->a:Ljava/util/Map;

    const-string v3, "ename"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "type"

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/c/c/j;->a:Ljava/util/Map;

    const-string v3, "type"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "columnSubscribed"

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/c/c/j;->a:Ljava/util/Map;

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

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/c/c/j;->b:Lcom/netease/nr/biz/news/a/c/c/i;

    invoke-static {v1}, Lcom/netease/nr/biz/news/a/c/c/i;->a(Lcom/netease/nr/biz/news/a/c/c/i;)Landroid/content/Context;

    move-result-object v7

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/c/c/j;->b:Lcom/netease/nr/biz/news/a/c/c/i;

    invoke-static {v1}, Lcom/netease/nr/biz/news/a/c/c/i;->a(Lcom/netease/nr/biz/news/a/c/c/i;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/netease/nr/biz/h/p;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SubscribeListFragment"

    const-class v6, Lcom/netease/nr/base/activity/BaseActivity;

    move-object v5, v0

    invoke-static/range {v0 .. v6}, Lcom/netease/util/fragment/ab;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
