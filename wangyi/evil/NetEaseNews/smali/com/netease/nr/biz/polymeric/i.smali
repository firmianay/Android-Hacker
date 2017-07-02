.class Lcom/netease/nr/biz/polymeric/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/netease/nr/biz/polymeric/f;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/polymeric/f;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/polymeric/i;->b:Lcom/netease/nr/biz/polymeric/f;

    iput-object p2, p0, Lcom/netease/nr/biz/polymeric/i;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v0, 0x0

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v1, "channel"

    iget-object v2, p0, Lcom/netease/nr/biz/polymeric/i;->a:Ljava/util/Map;

    const-string v3, "channel"

    invoke-static {v2, v3}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "setid"

    iget-object v2, p0, Lcom/netease/nr/biz/polymeric/i;->a:Ljava/util/Map;

    const-string v3, "albumID"

    invoke-static {v2, v3}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "imgTitle"

    iget-object v2, p0, Lcom/netease/nr/biz/polymeric/i;->a:Ljava/util/Map;

    const-string v3, "albumName"

    invoke-static {v2, v3}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netease/nr/biz/polymeric/i;->b:Lcom/netease/nr/biz/polymeric/f;

    invoke-static {v1}, Lcom/netease/nr/biz/polymeric/f;->a(Lcom/netease/nr/biz/polymeric/f;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/netease/nr/biz/pics/b;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PicShowFragment"

    const-class v6, Lcom/netease/nr/base/activity/BaseActivity;

    move-object v5, v0

    invoke-static/range {v0 .. v6}, Lcom/netease/util/fragment/ab;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/polymeric/i;->b:Lcom/netease/nr/biz/polymeric/f;

    invoke-static {v1}, Lcom/netease/nr/biz/polymeric/f;->a(Lcom/netease/nr/biz/polymeric/f;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
