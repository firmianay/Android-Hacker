.class Lcom/netease/nr/biz/h/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/h/d;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/h/d;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/h/i;->a:Lcom/netease/nr/biz/h/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/biz/h/i;->a:Lcom/netease/nr/biz/h/d;

    invoke-static {v0}, Lcom/netease/nr/biz/h/d;->c(Lcom/netease/nr/biz/h/d;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lcom/netease/nr/biz/h/i;->a:Lcom/netease/nr/biz/h/d;

    invoke-static {v1, v0}, Lcom/netease/nr/biz/h/d;->a(Lcom/netease/nr/biz/h/d;Ljava/util/Map;)V

    const/4 v0, 0x1

    return v0
.end method
