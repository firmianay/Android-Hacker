.class Lcom/netease/nr/biz/h/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/h/d;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/h/d;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/h/j;->a:Lcom/netease/nr/biz/h/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/biz/h/j;->a:Lcom/netease/nr/biz/h/d;

    invoke-static {v0}, Lcom/netease/nr/biz/h/d;->f(Lcom/netease/nr/biz/h/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/h/j;->a:Lcom/netease/nr/biz/h/d;

    invoke-static {v0}, Lcom/netease/nr/biz/h/d;->e(Lcom/netease/nr/biz/h/d;)Landroid/widget/TabHost;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/h/j;->a:Lcom/netease/nr/biz/h/d;

    invoke-static {v0}, Lcom/netease/nr/biz/h/d;->c(Lcom/netease/nr/biz/h/d;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/h/j;->a:Lcom/netease/nr/biz/h/d;

    invoke-static {v0}, Lcom/netease/nr/biz/h/d;->c(Lcom/netease/nr/biz/h/d;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/h/j;->a:Lcom/netease/nr/biz/h/d;

    invoke-static {v0}, Lcom/netease/nr/biz/h/d;->c(Lcom/netease/nr/biz/h/d;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lcom/netease/nr/biz/h/j;->a:Lcom/netease/nr/biz/h/d;

    invoke-static {v1, v0}, Lcom/netease/nr/biz/h/d;->a(Lcom/netease/nr/biz/h/d;Ljava/util/Map;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/h/j;->a:Lcom/netease/nr/biz/h/d;

    invoke-static {v0}, Lcom/netease/nr/biz/h/d;->e(Lcom/netease/nr/biz/h/d;)Landroid/widget/TabHost;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    move v1, v0

    goto :goto_0
.end method
