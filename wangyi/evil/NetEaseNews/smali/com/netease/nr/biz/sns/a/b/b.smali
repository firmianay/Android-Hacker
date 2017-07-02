.class Lcom/netease/nr/biz/sns/a/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/sns/a/b/a;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/sns/a/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/sns/a/b/b;->a:Lcom/netease/nr/biz/sns/a/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/netease/nr/biz/sns/a/b/b;->a:Lcom/netease/nr/biz/sns/a/b/a;

    invoke-static {v1}, Lcom/netease/nr/biz/sns/a/b/a;->a(Lcom/netease/nr/biz/sns/a/b/a;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p3, :cond_0

    iget-object v1, p0, Lcom/netease/nr/biz/sns/a/b/b;->a:Lcom/netease/nr/biz/sns/a/b/a;

    invoke-static {v1}, Lcom/netease/nr/biz/sns/a/b/a;->a(Lcom/netease/nr/biz/sns/a/b/a;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "type"

    invoke-static {v1, v2}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/netease/nr/biz/sns/a/b/b;->a:Lcom/netease/nr/biz/sns/a/b/a;

    invoke-virtual {v2}, Lcom/netease/nr/biz/sns/a/b/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/netease/nr/biz/sns/util/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/netease/nr/biz/sns/a/b/b;->a:Lcom/netease/nr/biz/sns/a/b/a;

    invoke-virtual {v0}, Lcom/netease/nr/biz/sns/a/b/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/netease/nr/biz/sns/util/a;->b(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/nr/biz/sns/a/b/b;->a:Lcom/netease/nr/biz/sns/a/b/a;

    invoke-static {v0}, Lcom/netease/nr/biz/sns/a/b/a;->b(Lcom/netease/nr/biz/sns/a/b/a;)V

    iget-object v0, p0, Lcom/netease/nr/biz/sns/a/b/b;->a:Lcom/netease/nr/biz/sns/a/b/a;

    invoke-virtual {v0}, Lcom/netease/nr/biz/sns/a/b/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b004f

    invoke-static {v0, v1}, Lcom/netease/nr/base/view/az;->a(Landroid/content/Context;I)V

    goto :goto_0

    :cond_2
    const-string v2, "sina"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/netease/nr/biz/sns/a/b/b;->a:Lcom/netease/nr/biz/sns/a/b/a;

    invoke-static {v0}, Lcom/netease/nr/biz/sns/a/b/a;->c(Lcom/netease/nr/biz/sns/a/b/a;)Lcom/netease/nr/biz/sns/util/h;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/netease/nr/biz/sns/a/b/b;->a:Lcom/netease/nr/biz/sns/a/b/a;

    new-instance v1, Lcom/netease/nr/biz/sns/util/h;

    iget-object v2, p0, Lcom/netease/nr/biz/sns/a/b/b;->a:Lcom/netease/nr/biz/sns/a/b/a;

    invoke-virtual {v2}, Lcom/netease/nr/biz/sns/a/b/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/nr/biz/sns/a/b/b;->a:Lcom/netease/nr/biz/sns/a/b/a;

    iget-object v4, p0, Lcom/netease/nr/biz/sns/a/b/b;->a:Lcom/netease/nr/biz/sns/a/b/a;

    invoke-direct {v1, v2, v3, v4}, Lcom/netease/nr/biz/sns/util/h;-><init>(Landroid/support/v4/app/FragmentActivity;Landroid/support/v4/app/Fragment;Lcom/netease/nr/biz/sns/util/l;)V

    invoke-static {v0, v1}, Lcom/netease/nr/biz/sns/a/b/a;->a(Lcom/netease/nr/biz/sns/a/b/a;Lcom/netease/nr/biz/sns/util/h;)Lcom/netease/nr/biz/sns/util/h;

    :cond_3
    iget-object v0, p0, Lcom/netease/nr/biz/sns/a/b/b;->a:Lcom/netease/nr/biz/sns/a/b/a;

    invoke-static {v0}, Lcom/netease/nr/biz/sns/a/b/a;->c(Lcom/netease/nr/biz/sns/a/b/a;)Lcom/netease/nr/biz/sns/util/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/biz/sns/util/h;->a()V

    goto :goto_0

    :cond_4
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v2, "snsType"

    invoke-virtual {v4, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netease/nr/biz/sns/a/b/b;->a:Lcom/netease/nr/biz/sns/a/b/a;

    invoke-virtual {v1}, Lcom/netease/nr/biz/sns/a/b/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/netease/nr/biz/sns/a/a/a;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const-class v6, Lcom/netease/nr/base/activity/BaseActivity;

    move-object v5, v0

    invoke-static/range {v0 .. v6}, Lcom/netease/util/fragment/ab;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/sns/a/b/b;->a:Lcom/netease/nr/biz/sns/a/b/a;

    invoke-virtual {v1, v0}, Lcom/netease/nr/biz/sns/a/b/a;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
