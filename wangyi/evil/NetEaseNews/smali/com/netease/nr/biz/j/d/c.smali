.class Lcom/netease/nr/biz/j/d/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:[Landroid/widget/Button;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/netease/nr/biz/j/d/a;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/j/d/a;[Landroid/widget/Button;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/j/d/c;->d:Lcom/netease/nr/biz/j/d/a;

    iput-object p2, p0, Lcom/netease/nr/biz/j/d/c;->a:[Landroid/widget/Button;

    iput-object p3, p0, Lcom/netease/nr/biz/j/d/c;->b:Ljava/util/List;

    iput-object p4, p0, Lcom/netease/nr/biz/j/d/c;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v1, -0x1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/netease/nr/biz/j/d/c;->a:[Landroid/widget/Button;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/netease/nr/biz/j/d/c;->a:[Landroid/widget/Button;

    aget-object v2, v2, v0

    if-ne p1, v2, :cond_0

    move v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/netease/nr/biz/j/d/c;->d:Lcom/netease/nr/biz/j/d/a;

    iget-object v0, p0, Lcom/netease/nr/biz/j/d/c;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v3, p0, Lcom/netease/nr/biz/j/d/c;->c:Ljava/lang/String;

    invoke-static {v2, v1, v0, v3}, Lcom/netease/nr/biz/j/d/a;->a(Lcom/netease/nr/biz/j/d/a;ILjava/util/Map;Ljava/lang/String;)V

    return-void
.end method
