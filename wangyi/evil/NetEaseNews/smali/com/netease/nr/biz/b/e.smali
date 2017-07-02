.class public Lcom/netease/nr/biz/b/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/b/a;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netease/nr/biz/b/a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/b/e;->a:Lcom/netease/nr/biz/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/netease/nr/biz/b/e;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/netease/nr/biz/b/e;->a:Lcom/netease/nr/biz/b/a;

    invoke-static {v1}, Lcom/netease/nr/biz/b/a;->e(Lcom/netease/nr/biz/b/a;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/nr/biz/pc/a/n;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v1, "param_url"

    const-string v2, "http://c.3g.163.com/CreditMarket/default.html?viewid=goodsinfo&userid=%s&prizeid=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/netease/nr/biz/b/e;->a:Lcom/netease/nr/biz/b/a;

    invoke-static {v6}, Lcom/netease/nr/biz/b/a;->f(Lcom/netease/nr/biz/b/a;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/netease/nr/biz/pc/a/n;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/netease/nr/biz/b/e;->b:Ljava/lang/String;

    aput-object v6, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netease/nr/biz/b/e;->a:Lcom/netease/nr/biz/b/a;

    invoke-static {v1}, Lcom/netease/nr/biz/b/a;->g(Lcom/netease/nr/biz/b/a;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/netease/nr/biz/pc/e/c;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ScoreMallWebFragment"

    const-class v6, Lcom/netease/nr/base/activity/BaseActivity;

    move-object v5, v0

    invoke-static/range {v0 .. v6}, Lcom/netease/util/fragment/ab;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/b/e;->a:Lcom/netease/nr/biz/b/a;

    invoke-static {v1}, Lcom/netease/nr/biz/b/a;->h(Lcom/netease/nr/biz/b/a;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/netease/nr/biz/b/e;->a:Lcom/netease/nr/biz/b/a;

    invoke-static {v1}, Lcom/netease/nr/biz/b/a;->i(Lcom/netease/nr/biz/b/a;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/netease/nr/biz/pc/a/f;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AccountLoginFragment"

    const-class v6, Lcom/netease/nr/base/activity/BaseActivity;

    move-object v4, v0

    move-object v5, v0

    invoke-static/range {v0 .. v6}, Lcom/netease/util/fragment/ab;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/b/e;->a:Lcom/netease/nr/biz/b/a;

    invoke-static {v1}, Lcom/netease/nr/biz/b/a;->j(Lcom/netease/nr/biz/b/a;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
