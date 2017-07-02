.class Lcom/netease/nr/biz/pc/a/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/pc/a/f;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/pc/a/f;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/pc/a/l;->a:Lcom/netease/nr/biz/pc/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/netease/nr/biz/pc/a/l;->a:Lcom/netease/nr/biz/pc/a/f;

    invoke-virtual {v0}, Lcom/netease/nr/biz/pc/a/f;->s()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/pc/a/l;->a:Lcom/netease/nr/biz/pc/a/f;

    invoke-virtual {v1}, Lcom/netease/nr/biz/pc/a/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/netease/nr/biz/pc/a/s;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AccountRegisterFragment"

    const-class v6, Lcom/netease/nr/base/activity/BaseActivity;

    move-object v5, v4

    invoke-static/range {v0 .. v6}, Lcom/netease/util/fragment/ab;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/pc/a/l;->a:Lcom/netease/nr/biz/pc/a/f;

    invoke-virtual {v1, v0}, Lcom/netease/nr/biz/pc/a/f;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
