.class Lcom/netease/nr/biz/pc/b/q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/nr/biz/pc/b/o;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/pc/b/g;

.field private b:Lcom/netease/nr/biz/pc/b/u;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/pc/b/g;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/pc/b/q;->a:Lcom/netease/nr/biz/pc/b/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/biz/pc/b/q;)Lcom/netease/nr/biz/pc/b/u;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/pc/b/q;->b:Lcom/netease/nr/biz/pc/b/u;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/netease/nr/biz/pc/b/q;->a:Lcom/netease/nr/biz/pc/b/g;

    invoke-static {v0}, Lcom/netease/nr/biz/pc/b/g;->e(Lcom/netease/nr/biz/pc/b/g;)V

    iget-object v0, p0, Lcom/netease/nr/biz/pc/b/q;->a:Lcom/netease/nr/biz/pc/b/g;

    invoke-virtual {v0}, Lcom/netease/nr/biz/pc/b/g;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nr/biz/pc/sync/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/netease/nr/biz/pc/b/y;

    iget-object v1, p0, Lcom/netease/nr/biz/pc/b/q;->a:Lcom/netease/nr/biz/pc/b/g;

    invoke-virtual {v1}, Lcom/netease/nr/biz/pc/b/g;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netease/nr/biz/pc/b/y;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/netease/nr/biz/pc/b/q;->a:Lcom/netease/nr/biz/pc/b/g;

    invoke-virtual {v1}, Lcom/netease/nr/biz/pc/b/g;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/netease/nr/biz/pc/b/y;->b(Landroid/content/Context;I)V

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/pc/b/q;->a:Lcom/netease/nr/biz/pc/b/g;

    iget-object v1, p0, Lcom/netease/nr/biz/pc/b/q;->a:Lcom/netease/nr/biz/pc/b/g;

    invoke-static {v1}, Lcom/netease/nr/biz/pc/b/g;->g(Lcom/netease/nr/biz/pc/b/g;)Lcom/netease/nr/base/c/e;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nr/biz/pc/b/q;->a:Lcom/netease/nr/biz/pc/b/g;

    invoke-static {v2}, Lcom/netease/nr/biz/pc/b/g;->f(Lcom/netease/nr/biz/pc/b/g;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/netease/nr/base/c/e;->a(I)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/nr/biz/pc/b/g;->a(Lcom/netease/nr/biz/pc/b/g;Ljava/util/List;)Ljava/util/List;

    const-string v0, "NewsFavoriteState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "list data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nr/biz/pc/b/q;->a:Lcom/netease/nr/biz/pc/b/g;

    invoke-static {v2}, Lcom/netease/nr/biz/pc/b/g;->h(Lcom/netease/nr/biz/pc/b/g;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/util/d/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/nr/biz/pc/b/q;->a:Lcom/netease/nr/biz/pc/b/g;

    invoke-static {v0}, Lcom/netease/nr/biz/pc/b/g;->h(Lcom/netease/nr/biz/pc/b/g;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/pc/b/q;->a:Lcom/netease/nr/biz/pc/b/g;

    invoke-static {v0}, Lcom/netease/nr/biz/pc/b/g;->h(Lcom/netease/nr/biz/pc/b/g;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/pc/b/q;->a:Lcom/netease/nr/biz/pc/b/g;

    invoke-static {v0}, Lcom/netease/nr/biz/pc/b/g;->i(Lcom/netease/nr/biz/pc/b/g;)V

    :goto_0
    return-void

    :cond_2
    new-instance v0, Lcom/netease/nr/biz/pc/b/u;

    iget-object v1, p0, Lcom/netease/nr/biz/pc/b/q;->a:Lcom/netease/nr/biz/pc/b/g;

    invoke-virtual {v1}, Lcom/netease/nr/biz/pc/b/g;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nr/biz/pc/b/q;->a:Lcom/netease/nr/biz/pc/b/g;

    invoke-static {v2}, Lcom/netease/nr/biz/pc/b/g;->h(Lcom/netease/nr/biz/pc/b/g;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netease/nr/biz/pc/b/u;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/netease/nr/biz/pc/b/q;->b:Lcom/netease/nr/biz/pc/b/u;

    iget-object v0, p0, Lcom/netease/nr/biz/pc/b/q;->a:Lcom/netease/nr/biz/pc/b/g;

    invoke-static {v0}, Lcom/netease/nr/biz/pc/b/g;->j(Lcom/netease/nr/biz/pc/b/g;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/netease/nr/biz/pc/b/r;

    invoke-direct {v1, p0}, Lcom/netease/nr/biz/pc/b/r;-><init>(Lcom/netease/nr/biz/pc/b/q;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/netease/nr/biz/pc/b/q;->a:Lcom/netease/nr/biz/pc/b/g;

    invoke-static {v0}, Lcom/netease/nr/biz/pc/b/g;->k(Lcom/netease/nr/biz/pc/b/g;)V

    goto :goto_0
.end method

.method public a(I)V
    .locals 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/netease/nr/biz/pc/b/q;->a:Lcom/netease/nr/biz/pc/b/g;

    invoke-static {v0}, Lcom/netease/nr/biz/pc/b/g;->h(Lcom/netease/nr/biz/pc/b/g;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/pc/b/q;->a:Lcom/netease/nr/biz/pc/b/g;

    invoke-static {v0}, Lcom/netease/nr/biz/pc/b/g;->h(Lcom/netease/nr/biz/pc/b/g;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/pc/b/q;->a:Lcom/netease/nr/biz/pc/b/g;

    invoke-static {v0}, Lcom/netease/nr/biz/pc/b/g;->h(Lcom/netease/nr/biz/pc/b/g;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/pc/b/q;->a:Lcom/netease/nr/biz/pc/b/g;

    invoke-static {v0}, Lcom/netease/nr/biz/pc/b/g;->h(Lcom/netease/nr/biz/pc/b/g;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "collect_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v0, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/pc/b/q;->a:Lcom/netease/nr/biz/pc/b/g;

    invoke-virtual {v0}, Lcom/netease/nr/biz/pc/b/g;->s()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/pc/b/q;->a:Lcom/netease/nr/biz/pc/b/g;

    invoke-virtual {v1}, Lcom/netease/nr/biz/pc/b/g;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/netease/nr/biz/news/detailpage/NewsPageActivity;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/pc/b/q;->a:Lcom/netease/nr/biz/pc/b/g;

    invoke-virtual {v1, v0}, Lcom/netease/nr/biz/pc/b/g;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public a(Lcom/netease/util/j/a;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/pc/b/q;->b:Lcom/netease/nr/biz/pc/b/u;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/pc/b/q;->b:Lcom/netease/nr/biz/pc/b/u;

    invoke-virtual {v0}, Lcom/netease/nr/biz/pc/b/u;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/netease/nr/biz/pc/b/q;->a:Lcom/netease/nr/biz/pc/b/g;

    invoke-static {v0}, Lcom/netease/nr/biz/pc/b/g;->l(Lcom/netease/nr/biz/pc/b/g;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/nr/biz/pc/b/q;->a:Lcom/netease/nr/biz/pc/b/g;

    iget-object v1, p0, Lcom/netease/nr/biz/pc/b/q;->a:Lcom/netease/nr/biz/pc/b/g;

    invoke-static {v1}, Lcom/netease/nr/biz/pc/b/g;->g(Lcom/netease/nr/biz/pc/b/g;)Lcom/netease/nr/base/c/e;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nr/biz/pc/b/q;->a:Lcom/netease/nr/biz/pc/b/g;

    invoke-static {v2}, Lcom/netease/nr/biz/pc/b/g;->f(Lcom/netease/nr/biz/pc/b/g;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/netease/nr/base/c/e;->a(I)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/nr/biz/pc/b/g;->a(Lcom/netease/nr/biz/pc/b/g;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/netease/nr/biz/pc/b/q;->b:Lcom/netease/nr/biz/pc/b/u;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/pc/b/q;->a:Lcom/netease/nr/biz/pc/b/g;

    invoke-static {v0}, Lcom/netease/nr/biz/pc/b/g;->h(Lcom/netease/nr/biz/pc/b/g;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/pc/b/q;->b:Lcom/netease/nr/biz/pc/b/u;

    iget-object v1, p0, Lcom/netease/nr/biz/pc/b/q;->a:Lcom/netease/nr/biz/pc/b/g;

    invoke-static {v1}, Lcom/netease/nr/biz/pc/b/g;->h(Lcom/netease/nr/biz/pc/b/g;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/pc/b/u;->a(Ljava/util/List;)V

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/pc/b/q;->a:Lcom/netease/nr/biz/pc/b/g;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netease/nr/biz/pc/b/g;->a(Lcom/netease/nr/biz/pc/b/g;Z)Z

    iget-object v0, p0, Lcom/netease/nr/biz/pc/b/q;->a:Lcom/netease/nr/biz/pc/b/g;

    invoke-static {v0}, Lcom/netease/nr/biz/pc/b/g;->h(Lcom/netease/nr/biz/pc/b/g;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/pc/b/q;->a:Lcom/netease/nr/biz/pc/b/g;

    invoke-static {v0}, Lcom/netease/nr/biz/pc/b/g;->h(Lcom/netease/nr/biz/pc/b/g;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/pc/b/q;->a:Lcom/netease/nr/biz/pc/b/g;

    invoke-static {v0}, Lcom/netease/nr/biz/pc/b/g;->i(Lcom/netease/nr/biz/pc/b/g;)V

    :cond_2
    return-void
.end method

.method public b(I)V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/netease/nr/biz/pc/b/q;->a:Lcom/netease/nr/biz/pc/b/g;

    invoke-static {v0}, Lcom/netease/nr/biz/pc/b/g;->h(Lcom/netease/nr/biz/pc/b/g;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/pc/b/q;->a:Lcom/netease/nr/biz/pc/b/g;

    invoke-static {v0}, Lcom/netease/nr/biz/pc/b/g;->h(Lcom/netease/nr/biz/pc/b/g;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/pc/b/q;->a:Lcom/netease/nr/biz/pc/b/g;

    invoke-static {v0}, Lcom/netease/nr/biz/pc/b/g;->h(Lcom/netease/nr/biz/pc/b/g;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/pc/b/q;->a:Lcom/netease/nr/biz/pc/b/g;

    invoke-static {v0}, Lcom/netease/nr/biz/pc/b/g;->h(Lcom/netease/nr/biz/pc/b/g;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lcom/netease/nr/biz/pc/b/q;->b:Lcom/netease/nr/biz/pc/b/u;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/netease/nr/biz/pc/b/q;->b:Lcom/netease/nr/biz/pc/b/u;

    invoke-virtual {v1}, Lcom/netease/nr/biz/pc/b/u;->notifyDataSetChanged()V

    iget-object v1, p0, Lcom/netease/nr/biz/pc/b/q;->b:Lcom/netease/nr/biz/pc/b/u;

    invoke-virtual {v1}, Lcom/netease/nr/biz/pc/b/u;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/netease/nr/biz/pc/b/q;->a:Lcom/netease/nr/biz/pc/b/g;

    invoke-static {v1}, Lcom/netease/nr/biz/pc/b/g;->i(Lcom/netease/nr/biz/pc/b/g;)V

    :cond_2
    const-string v1, "collect_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/netease/nr/base/c/e;->a()Lcom/netease/nr/base/c/g;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "collect_path"

    invoke-static {v2, v3}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/netease/nr/base/c/g;->b:Ljava/lang/String;

    iput-object v0, v1, Lcom/netease/nr/base/c/g;->a:Ljava/lang/String;

    iput v4, v1, Lcom/netease/nr/base/c/g;->d:I

    iget-object v0, p0, Lcom/netease/nr/biz/pc/b/q;->a:Lcom/netease/nr/biz/pc/b/g;

    invoke-static {v0}, Lcom/netease/nr/biz/pc/b/g;->g(Lcom/netease/nr/biz/pc/b/g;)Lcom/netease/nr/base/c/e;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/c/e;->a(Lcom/netease/nr/base/c/g;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/netease/nr/biz/pc/b/q;->a:Lcom/netease/nr/biz/pc/b/g;

    invoke-static {v1}, Lcom/netease/nr/biz/pc/b/g;->g(Lcom/netease/nr/biz/pc/b/g;)Lcom/netease/nr/base/c/e;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Lcom/netease/nr/base/c/e;->a(II)I

    goto :goto_0
.end method
