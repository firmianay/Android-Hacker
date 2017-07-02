.class Lcom/tencent/a/a/q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/a/a/u;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:I

.field final synthetic c:Lcom/tencent/a/a/f;


# direct methods
.method constructor <init>(Lcom/tencent/a/a/f;Ljava/util/List;I)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/a/a/q;->c:Lcom/tencent/a/a/f;

    iput-object p2, p0, Lcom/tencent/a/a/q;->a:Ljava/util/List;

    iput p3, p0, Lcom/tencent/a/a/q;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/tencent/a/a/q;->c:Lcom/tencent/a/a/f;

    iget-object v0, v0, Lcom/tencent/a/a/f;->b:Lcom/tencent/a/a/d;

    iget-object v1, p0, Lcom/tencent/a/a/q;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/tencent/a/a/d;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/tencent/a/a/q;->c:Lcom/tencent/a/a/f;

    iget v0, v0, Lcom/tencent/a/a/f;->a:I

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/tencent/a/a/q;->c:Lcom/tencent/a/a/f;

    iget v0, v0, Lcom/tencent/a/a/f;->a:I

    :goto_0
    if-eq v0, v2, :cond_0

    if-lez v0, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/tencent/a/a/q;->c:Lcom/tencent/a/a/f;

    iget-object v1, v1, Lcom/tencent/a/a/f;->b:Lcom/tencent/a/a/d;

    invoke-virtual {v1, v0}, Lcom/tencent/a/a/d;->a(I)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/tencent/a/a/q;->c:Lcom/tencent/a/a/f;

    iget v0, v0, Lcom/tencent/a/a/f;->a:I

    iget-object v1, p0, Lcom/tencent/a/a/q;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/a/a/q;->c:Lcom/tencent/a/a/f;

    iget-object v0, v0, Lcom/tencent/a/a/f;->b:Lcom/tencent/a/a/d;

    iget v1, v0, Lcom/tencent/a/a/d;->b:I

    iget v2, p0, Lcom/tencent/a/a/q;->b:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/tencent/a/a/d;->b:I

    iget-object v0, p0, Lcom/tencent/a/a/q;->c:Lcom/tencent/a/a/f;

    iget-object v0, v0, Lcom/tencent/a/a/f;->b:Lcom/tencent/a/a/d;

    iget-object v1, p0, Lcom/tencent/a/a/q;->a:Ljava/util/List;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/a/a/d;->a(Ljava/util/List;I)V

    return-void
.end method
