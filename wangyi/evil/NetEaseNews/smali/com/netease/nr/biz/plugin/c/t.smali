.class Lcom/netease/nr/biz/plugin/c/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/plugin/c/m;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/plugin/c/m;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/plugin/c/t;->a:Lcom/netease/nr/biz/plugin/c/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/c/t;->a:Lcom/netease/nr/biz/plugin/c/m;

    invoke-static {v0}, Lcom/netease/nr/biz/plugin/c/m;->f(Lcom/netease/nr/biz/plugin/c/m;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p3, v0

    new-instance v1, Lcom/netease/nr/base/a/b;

    invoke-direct {v1}, Lcom/netease/nr/base/a/b;-><init>()V

    iget-object v2, p0, Lcom/netease/nr/biz/plugin/c/t;->a:Lcom/netease/nr/biz/plugin/c/m;

    invoke-static {v2}, Lcom/netease/nr/biz/plugin/c/m;->d(Lcom/netease/nr/biz/plugin/c/m;)Lcom/netease/nr/biz/plugin/c/a;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/netease/nr/biz/plugin/c/a;->a(Lcom/netease/nr/base/a/b;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/c/t;->a:Lcom/netease/nr/biz/plugin/c/m;

    invoke-static {v0}, Lcom/netease/nr/biz/plugin/c/m;->d(Lcom/netease/nr/biz/plugin/c/m;)Lcom/netease/nr/biz/plugin/c/a;

    move-result-object v0

    iget v2, v1, Lcom/netease/nr/base/a/b;->a:I

    iget v3, v1, Lcom/netease/nr/base/a/b;->b:I

    invoke-virtual {v0, v2, v3}, Lcom/netease/nr/biz/plugin/c/a;->a(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget v1, v1, Lcom/netease/nr/base/a/b;->a:I

    if-nez v1, :cond_1

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "ipquery"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "ipquery_fail"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/c/t;->a:Lcom/netease/nr/biz/plugin/c/m;

    invoke-static {v0}, Lcom/netease/nr/biz/plugin/c/m;->k(Lcom/netease/nr/biz/plugin/c/m;)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/netease/nr/biz/plugin/c/t;->a:Lcom/netease/nr/biz/plugin/c/m;

    const-string v1, "province"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "city"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "select_count"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v3, v1, v2, v0}, Lcom/netease/nr/biz/plugin/c/m;->a(Lcom/netease/nr/biz/plugin/c/m;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method
