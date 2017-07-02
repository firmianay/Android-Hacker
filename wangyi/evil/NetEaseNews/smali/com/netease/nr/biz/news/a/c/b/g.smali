.class Lcom/netease/nr/biz/news/a/c/b/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/news/a/c/b/f;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/news/a/c/b/f;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/news/a/c/b/g;->a:Lcom/netease/nr/biz/news/a/c/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/g;->a:Lcom/netease/nr/biz/news/a/c/b/f;

    invoke-static {v0}, Lcom/netease/nr/biz/news/a/c/b/f;->a(Lcom/netease/nr/biz/news/a/c/b/f;)Lcom/netease/nr/biz/news/a/c/b/i;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/g;->a:Lcom/netease/nr/biz/news/a/c/b/f;

    invoke-static {v0}, Lcom/netease/nr/biz/news/a/c/b/f;->a(Lcom/netease/nr/biz/news/a/c/b/f;)Lcom/netease/nr/biz/news/a/c/b/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/biz/news/a/c/b/i;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/g;->a:Lcom/netease/nr/biz/news/a/c/b/f;

    invoke-static {v0}, Lcom/netease/nr/biz/news/a/c/b/f;->a(Lcom/netease/nr/biz/news/a/c/b/f;)Lcom/netease/nr/biz/news/a/c/b/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/biz/news/a/c/b/i;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/g;->a:Lcom/netease/nr/biz/news/a/c/b/f;

    invoke-virtual {v0}, Lcom/netease/nr/biz/news/a/c/b/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "STOCK"

    const-string v2, "\u5927\u76d8\u6307\u6570"

    invoke-static {v0, v1, v2}, Lcom/netease/nr/base/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/g;->a:Lcom/netease/nr/biz/news/a/c/b/f;

    invoke-virtual {v0}, Lcom/netease/nr/biz/news/a/c/b/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "ENTRY"

    const-string v2, "\u8d22\u7ecf\u6307\u6570"

    invoke-static {v0, v1, v2}, Lcom/netease/nr/base/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/g;->a:Lcom/netease/nr/biz/news/a/c/b/f;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netease/nr/biz/news/a/c/b/f;->a(Lcom/netease/nr/biz/news/a/c/b/f;Z)Z

    const-class v0, Lcom/netease/nr/biz/news/a/c/b/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/c/b/g;->a:Lcom/netease/nr/biz/news/a/c/b/f;

    invoke-virtual {v1}, Lcom/netease/nr/biz/news/a/c/b/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/netease/nr/biz/news/a/c/b/c;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/netease/nr/biz/news/a/c/b/c;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-class v6, Lcom/netease/nr/base/activity/BaseActivity;

    move-object v5, v4

    invoke-static/range {v0 .. v6}, Lcom/netease/util/fragment/ab;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/c/b/g;->a:Lcom/netease/nr/biz/news/a/c/b/f;

    invoke-virtual {v1, v0}, Lcom/netease/nr/biz/news/a/c/b/f;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
