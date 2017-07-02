.class Lcom/netease/nr/biz/j/d/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:[Landroid/widget/Button;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Landroid/content/Context;

.field final synthetic e:Lcom/netease/nr/biz/j/d/a/c;

.field final synthetic f:Landroid/view/View;

.field final synthetic g:Lcom/netease/nr/biz/j/d/a/d;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/j/d/a/d;[Landroid/widget/Button;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;Lcom/netease/nr/biz/j/d/a/c;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/j/d/a/f;->g:Lcom/netease/nr/biz/j/d/a/d;

    iput-object p2, p0, Lcom/netease/nr/biz/j/d/a/f;->a:[Landroid/widget/Button;

    iput-object p3, p0, Lcom/netease/nr/biz/j/d/a/f;->b:Ljava/util/List;

    iput-object p4, p0, Lcom/netease/nr/biz/j/d/a/f;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/netease/nr/biz/j/d/a/f;->d:Landroid/content/Context;

    iput-object p6, p0, Lcom/netease/nr/biz/j/d/a/f;->e:Lcom/netease/nr/biz/j/d/a/c;

    iput-object p7, p0, Lcom/netease/nr/biz/j/d/a/f;->f:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v1, -0x1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/netease/nr/biz/j/d/a/f;->a:[Landroid/widget/Button;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/netease/nr/biz/j/d/a/f;->a:[Landroid/widget/Button;

    aget-object v2, v2, v0

    if-ne p1, v2, :cond_0

    move v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/j/d/a/f;->g:Lcom/netease/nr/biz/j/d/a/d;

    iget-object v2, p0, Lcom/netease/nr/biz/j/d/a/f;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    iget-object v3, p0, Lcom/netease/nr/biz/j/d/a/f;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/nr/biz/j/d/a/f;->d:Landroid/content/Context;

    iget-object v5, p0, Lcom/netease/nr/biz/j/d/a/f;->e:Lcom/netease/nr/biz/j/d/a/c;

    iget-object v6, p0, Lcom/netease/nr/biz/j/d/a/f;->f:Landroid/view/View;

    invoke-static/range {v0 .. v6}, Lcom/netease/nr/biz/j/d/a/d;->a(Lcom/netease/nr/biz/j/d/a/d;ILjava/util/Map;Ljava/lang/String;Landroid/content/Context;Lcom/netease/nr/biz/j/d/a/c;Landroid/view/View;)V

    return-void
.end method
