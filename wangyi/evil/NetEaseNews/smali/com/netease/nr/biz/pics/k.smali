.class Lcom/netease/nr/biz/pics/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/pics/b;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/netease/nr/biz/pics/b;I)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/pics/k;->a:Lcom/netease/nr/biz/pics/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/netease/nr/biz/pics/k;->b:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    iget v0, p0, Lcom/netease/nr/biz/pics/k;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/pics/k;->a:Lcom/netease/nr/biz/pics/b;

    invoke-static {v0}, Lcom/netease/nr/biz/pics/b;->h(Lcom/netease/nr/biz/pics/b;)Lcom/netease/ad/e;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "admap"

    iget-object v0, p0, Lcom/netease/nr/biz/pics/k;->a:Lcom/netease/nr/biz/pics/b;

    invoke-static {v0}, Lcom/netease/nr/biz/pics/b;->g(Lcom/netease/nr/biz/pics/b;)Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lcom/netease/nr/biz/pics/k;->b:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "admap"

    invoke-static {v0, v2}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/pics/k;->a:Lcom/netease/nr/biz/pics/b;

    invoke-virtual {v0}, Lcom/netease/nr/biz/pics/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/pics/k;->a:Lcom/netease/nr/biz/pics/b;

    invoke-static {v1}, Lcom/netease/nr/biz/pics/b;->h(Lcom/netease/nr/biz/pics/b;)Lcom/netease/ad/e;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/nr/biz/ad/o;->b(Landroid/content/Context;Lcom/netease/ad/e;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/pics/k;->a:Lcom/netease/nr/biz/pics/b;

    invoke-virtual {v0}, Lcom/netease/nr/biz/pics/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "LP"

    const-string v2, "\u76f8\u5173\u56fe\u96c6"

    invoke-static {v0, v1, v2}, Lcom/netease/nr/base/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netease/nr/biz/pics/k;->a:Lcom/netease/nr/biz/pics/b;

    iget-object v0, p0, Lcom/netease/nr/biz/pics/k;->a:Lcom/netease/nr/biz/pics/b;

    invoke-static {v0}, Lcom/netease/nr/biz/pics/b;->k(Lcom/netease/nr/biz/pics/b;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/netease/nr/biz/pics/k;->a:Lcom/netease/nr/biz/pics/b;

    invoke-static {v0}, Lcom/netease/nr/biz/pics/b;->g(Lcom/netease/nr/biz/pics/b;)Ljava/util/List;

    move-result-object v0

    iget v3, p0, Lcom/netease/nr/biz/pics/k;->b:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v3, "setid"

    invoke-static {v0, v3}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/netease/nr/biz/pics/k;->a:Lcom/netease/nr/biz/pics/b;

    invoke-static {v0}, Lcom/netease/nr/biz/pics/b;->g(Lcom/netease/nr/biz/pics/b;)Ljava/util/List;

    move-result-object v0

    iget v4, p0, Lcom/netease/nr/biz/pics/k;->b:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v4, "setname"

    invoke-static {v0, v4}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/netease/nr/biz/pics/k;->a:Lcom/netease/nr/biz/pics/b;

    invoke-static {v0}, Lcom/netease/nr/biz/pics/b;->g(Lcom/netease/nr/biz/pics/b;)Ljava/util/List;

    move-result-object v0

    iget v5, p0, Lcom/netease/nr/biz/pics/k;->b:I

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v5, "clientcover"

    invoke-static {v0, v5}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v3, v4, v0}, Lcom/netease/nr/biz/pics/b;->a(Lcom/netease/nr/biz/pics/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
