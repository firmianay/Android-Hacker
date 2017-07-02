.class Lcom/netease/nr/biz/pc/d/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/netease/nr/biz/pc/d/a;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/pc/d/a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/pc/d/d;->b:Lcom/netease/nr/biz/pc/d/a;

    iput-object p2, p0, Lcom/netease/nr/biz/pc/d/d;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v0, "param_title"

    iget-object v1, p0, Lcom/netease/nr/biz/pc/d/d;->b:Lcom/netease/nr/biz/pc/d/a;

    invoke-static {v1}, Lcom/netease/nr/biz/pc/d/a;->a(Lcom/netease/nr/biz/pc/d/a;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b01d2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "param_url"

    iget-object v1, p0, Lcom/netease/nr/biz/pc/d/d;->a:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    iget-object v1, p0, Lcom/netease/nr/biz/pc/d/d;->b:Lcom/netease/nr/biz/pc/d/a;

    invoke-static {v1}, Lcom/netease/nr/biz/pc/d/a;->a(Lcom/netease/nr/biz/pc/d/a;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/netease/nr/base/fragment/BaseWebFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BaseWebFragment"

    const/4 v5, 0x0

    const-class v6, Lcom/netease/nr/base/activity/BaseActivity;

    invoke-static/range {v0 .. v6}, Lcom/netease/util/fragment/ab;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/pc/d/d;->b:Lcom/netease/nr/biz/pc/d/a;

    invoke-static {v1}, Lcom/netease/nr/biz/pc/d/a;->a(Lcom/netease/nr/biz/pc/d/a;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
