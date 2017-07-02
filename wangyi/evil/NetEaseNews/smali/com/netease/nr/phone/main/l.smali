.class Lcom/netease/nr/phone/main/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/netease/nr/phone/main/i;


# direct methods
.method constructor <init>(Lcom/netease/nr/phone/main/i;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/phone/main/l;->a:Lcom/netease/nr/phone/main/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    iget-object v0, p0, Lcom/netease/nr/phone/main/l;->a:Lcom/netease/nr/phone/main/i;

    invoke-virtual {v0}, Lcom/netease/nr/phone/main/i;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u7cbe\u9009"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/netease/nr/biz/news/column/g;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v0, "param_source"

    const-string v1, "source_columns"

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/nr/phone/main/l;->a:Lcom/netease/nr/phone/main/i;

    invoke-virtual {v0}, Lcom/netease/nr/phone/main/i;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    iget-object v0, p0, Lcom/netease/nr/phone/main/l;->a:Lcom/netease/nr/phone/main/i;

    invoke-virtual {v0}, Lcom/netease/nr/phone/main/i;->s()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/phone/main/l;->a:Lcom/netease/nr/phone/main/i;

    invoke-virtual {v1}, Lcom/netease/nr/phone/main/i;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/netease/nr/biz/h/d;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/netease/nr/biz/h/d;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const-class v6, Lcom/netease/nr/base/activity/BaseActivity;

    invoke-static/range {v0 .. v6}, Lcom/netease/util/fragment/ab;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
