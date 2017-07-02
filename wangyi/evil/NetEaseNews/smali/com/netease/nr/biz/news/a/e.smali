.class Lcom/netease/nr/biz/news/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/news/a/d;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/news/a/d;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/news/a/e;->a:Lcom/netease/nr/biz/news/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/Integer;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/e;->a:Lcom/netease/nr/biz/news/a/d;

    invoke-virtual {v0, v3}, Lcom/netease/nr/biz/news/a/d;->d(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    if-lt v1, v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/e;->a:Lcom/netease/nr/biz/news/a/d;

    invoke-static {v0}, Lcom/netease/nr/biz/news/a/d;->a(Lcom/netease/nr/biz/news/a/d;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v1, v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/e;->a:Lcom/netease/nr/biz/news/a/d;

    invoke-static {v0}, Lcom/netease/nr/biz/news/a/d;->a(Lcom/netease/nr/biz/news/a/d;)Ljava/util/List;

    move-result-object v0

    add-int/lit8 v2, v1, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "from_sdk"

    invoke-static {v0, v2, v3}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/e;->a:Lcom/netease/nr/biz/news/a/d;

    invoke-static {v0}, Lcom/netease/nr/biz/news/a/d;->b(Lcom/netease/nr/biz/news/a/d;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v2, v1, -0x1

    if-le v0, v2, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/e;->a:Lcom/netease/nr/biz/news/a/d;

    invoke-static {v0}, Lcom/netease/nr/biz/news/a/d;->b(Lcom/netease/nr/biz/news/a/d;)Ljava/util/List;

    move-result-object v0

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ad/e;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/e;->a:Lcom/netease/nr/biz/news/a/d;

    invoke-virtual {v1}, Lcom/netease/nr/biz/news/a/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/netease/nr/biz/ad/o;->b(Landroid/content/Context;Lcom/netease/ad/e;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/netease/nr/biz/news/a/e;->a:Lcom/netease/nr/biz/news/a/d;

    invoke-virtual {v1, p1, v0}, Lcom/netease/nr/biz/news/a/d;->a(Landroid/view/View;Ljava/util/Map;)Z

    goto :goto_0
.end method
