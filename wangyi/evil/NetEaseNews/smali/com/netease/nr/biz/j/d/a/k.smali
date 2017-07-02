.class Lcom/netease/nr/biz/j/d/a/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:[Landroid/widget/Button;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Landroid/content/Context;

.field final synthetic e:Landroid/view/ViewGroup;

.field final synthetic f:Lcom/netease/nr/biz/j/d/a/i;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/j/d/a/i;[Landroid/widget/Button;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/j/d/a/k;->f:Lcom/netease/nr/biz/j/d/a/i;

    iput-object p2, p0, Lcom/netease/nr/biz/j/d/a/k;->a:[Landroid/widget/Button;

    iput-object p3, p0, Lcom/netease/nr/biz/j/d/a/k;->b:Ljava/util/List;

    iput-object p4, p0, Lcom/netease/nr/biz/j/d/a/k;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/netease/nr/biz/j/d/a/k;->d:Landroid/content/Context;

    iput-object p6, p0, Lcom/netease/nr/biz/j/d/a/k;->e:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v1, -0x1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/netease/nr/biz/j/d/a/k;->a:[Landroid/widget/Button;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/netease/nr/biz/j/d/a/k;->a:[Landroid/widget/Button;

    aget-object v2, v2, v0

    if-ne p1, v2, :cond_0

    move v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/j/d/a/k;->f:Lcom/netease/nr/biz/j/d/a/i;

    iget-object v2, p0, Lcom/netease/nr/biz/j/d/a/k;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    iget-object v3, p0, Lcom/netease/nr/biz/j/d/a/k;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/nr/biz/j/d/a/k;->d:Landroid/content/Context;

    iget-object v5, p0, Lcom/netease/nr/biz/j/d/a/k;->e:Landroid/view/ViewGroup;

    invoke-static/range {v0 .. v5}, Lcom/netease/nr/biz/j/d/a/i;->a(Lcom/netease/nr/biz/j/d/a/i;ILjava/util/Map;Ljava/lang/String;Landroid/content/Context;Landroid/view/ViewGroup;)V

    return-void
.end method
