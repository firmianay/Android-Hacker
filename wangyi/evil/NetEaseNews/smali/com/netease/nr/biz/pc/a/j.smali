.class Lcom/netease/nr/biz/pc/a/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/pc/a/f;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/pc/a/f;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/pc/a/j;->a:Lcom/netease/nr/biz/pc/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v0, "param_url"

    const-string v1, "http://reg.163.com/reg/reg_mob2_retake_pw.jsp"

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "param_title"

    iget-object v1, p0, Lcom/netease/nr/biz/pc/a/j;->a:Lcom/netease/nr/biz/pc/a/f;

    const v2, 0x7f0b0100

    invoke-virtual {v1, v2}, Lcom/netease/nr/biz/pc/a/f;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/nr/biz/pc/a/j;->a:Lcom/netease/nr/biz/pc/a/f;

    invoke-virtual {v0}, Lcom/netease/nr/biz/pc/a/f;->s()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/pc/a/j;->a:Lcom/netease/nr/biz/pc/a/f;

    invoke-virtual {v1}, Lcom/netease/nr/biz/pc/a/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/netease/nr/base/fragment/BaseWebFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BaseWebFragment"

    const/4 v5, 0x0

    const-class v6, Lcom/netease/nr/base/activity/BaseActivity;

    invoke-static/range {v0 .. v6}, Lcom/netease/util/fragment/ab;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/pc/a/j;->a:Lcom/netease/nr/biz/pc/a/f;

    invoke-virtual {v1}, Lcom/netease/nr/biz/pc/a/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
