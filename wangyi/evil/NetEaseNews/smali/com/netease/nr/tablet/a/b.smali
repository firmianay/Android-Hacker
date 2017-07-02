.class Lcom/netease/nr/tablet/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/netease/nr/tablet/a/a;


# direct methods
.method constructor <init>(Lcom/netease/nr/tablet/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/tablet/a/b;->a:Lcom/netease/nr/tablet/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/netease/nr/tablet/a/b;->a:Lcom/netease/nr/tablet/a/a;

    invoke-virtual {v0}, Lcom/netease/nr/tablet/a/a;->s()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/tablet/a/b;->a:Lcom/netease/nr/tablet/a/a;

    invoke-virtual {v1}, Lcom/netease/nr/tablet/a/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/netease/nr/biz/pc/a/f;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AccountLoginFragment"

    const-class v6, Lcom/netease/nr/base/activity/BaseActivity;

    move-object v5, v4

    invoke-static/range {v0 .. v6}, Lcom/netease/util/fragment/ab;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/tablet/a/b;->a:Lcom/netease/nr/tablet/a/a;

    invoke-virtual {v1}, Lcom/netease/nr/tablet/a/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
