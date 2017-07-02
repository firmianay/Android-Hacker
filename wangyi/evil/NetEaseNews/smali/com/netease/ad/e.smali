.class public Lcom/netease/ad/e;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/netease/ad/b/a;

.field private b:I

.field private c:Lcom/netease/ad/b/j;


# direct methods
.method public constructor <init>(Lcom/netease/ad/b/j;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/ad/e;->c:Lcom/netease/ad/b/j;

    invoke-virtual {p1}, Lcom/netease/ad/b/j;->f()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netease/ad/e;->a(I)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/ad/e;->c:Lcom/netease/ad/b/j;

    invoke-virtual {v0}, Lcom/netease/ad/b/j;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/netease/ad/e;->b:I

    return-void
.end method

.method public a(Z)V
    .locals 4

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/netease/ad/e;->a:Lcom/netease/ad/b/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/ad/b/a;

    iget-object v1, p0, Lcom/netease/ad/e;->c:Lcom/netease/ad/b/j;

    invoke-direct {v0, v1}, Lcom/netease/ad/b/a;-><init>(Lcom/netease/ad/b/j;)V

    iput-object v0, p0, Lcom/netease/ad/e;->a:Lcom/netease/ad/b/a;

    :cond_0
    iget-object v0, p0, Lcom/netease/ad/e;->a:Lcom/netease/ad/b/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netease/ad/b/a;->a(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/netease/ad/b/f;->a()Lcom/netease/ad/b/f;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ad/e;->c:Lcom/netease/ad/b/j;

    invoke-virtual {v1}, Lcom/netease/ad/b/j;->k()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/ad/e;->c:Lcom/netease/ad/b/j;

    invoke-virtual {v2}, Lcom/netease/ad/b/j;->c()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/ad/b/f;->b(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lcom/netease/ad/e;->c:Lcom/netease/ad/b/j;

    invoke-virtual {v0}, Lcom/netease/ad/b/j;->l()I

    move-result v0

    return v0
.end method

.method public c()Lcom/netease/ad/b/j;
    .locals 1

    iget-object v0, p0, Lcom/netease/ad/e;->c:Lcom/netease/ad/b/j;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/netease/ad/e;->c:Lcom/netease/ad/b/j;

    invoke-virtual {v0}, Lcom/netease/ad/b/j;->m()Ljava/util/Hashtable;

    move-result-object v0

    const-string v1, "link_url"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/ad/e;->c:Lcom/netease/ad/b/j;

    invoke-virtual {v0}, Lcom/netease/ad/b/j;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()V
    .locals 4

    invoke-static {}, Lcom/netease/ad/b/f;->a()Lcom/netease/ad/b/f;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ad/e;->c:Lcom/netease/ad/b/j;

    invoke-virtual {v1}, Lcom/netease/ad/b/j;->k()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/ad/e;->c:Lcom/netease/ad/b/j;

    invoke-virtual {v2}, Lcom/netease/ad/b/j;->c()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/ad/b/f;->a(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
