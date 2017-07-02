.class public Lcom/netease/nr/base/a/c;
.super Lcom/netease/nr/base/a/f;


# instance fields
.field private a:Lcom/netease/nr/base/a/e;

.field private b:Lcom/netease/nr/base/a/e;

.field private c:Landroid/widget/ListAdapter;

.field private d:Lcom/netease/nr/base/a/d;


# direct methods
.method public constructor <init>(Landroid/widget/ListAdapter;Landroid/view/View;Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Lcom/netease/nr/base/a/f;-><init>()V

    new-instance v0, Lcom/netease/nr/base/a/e;

    const/4 v1, 0x1

    invoke-direct {v0, p2, v1}, Lcom/netease/nr/base/a/e;-><init>(Landroid/view/View;Z)V

    iput-object v0, p0, Lcom/netease/nr/base/a/c;->a:Lcom/netease/nr/base/a/e;

    iget-object v0, p0, Lcom/netease/nr/base/a/c;->a:Lcom/netease/nr/base/a/e;

    invoke-virtual {p0, v0}, Lcom/netease/nr/base/a/c;->a(Landroid/widget/ListAdapter;)V

    iput-object p1, p0, Lcom/netease/nr/base/a/c;->c:Landroid/widget/ListAdapter;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/netease/nr/base/a/c;->a(Landroid/widget/ListAdapter;)V

    :cond_0
    new-instance v0, Lcom/netease/nr/base/a/e;

    const/4 v1, 0x0

    invoke-direct {v0, p3, v1}, Lcom/netease/nr/base/a/e;-><init>(Landroid/view/View;Z)V

    iput-object v0, p0, Lcom/netease/nr/base/a/c;->b:Lcom/netease/nr/base/a/e;

    iget-object v0, p0, Lcom/netease/nr/base/a/c;->b:Lcom/netease/nr/base/a/e;

    invoke-virtual {p0, v0}, Lcom/netease/nr/base/a/c;->a(Landroid/widget/ListAdapter;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/widget/ListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/a/c;->c:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/a/c;->a:Lcom/netease/nr/base/a/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/a/c;->a:Lcom/netease/nr/base/a/e;

    invoke-virtual {v0, p1}, Lcom/netease/nr/base/a/e;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/netease/nr/base/a/d;)V
    .locals 1

    iput-object p1, p0, Lcom/netease/nr/base/a/c;->d:Lcom/netease/nr/base/a/d;

    iget-object v0, p0, Lcom/netease/nr/base/a/c;->a:Lcom/netease/nr/base/a/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/a/c;->a:Lcom/netease/nr/base/a/e;

    invoke-virtual {v0, p1}, Lcom/netease/nr/base/a/e;->a(Lcom/netease/nr/base/a/d;)V

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/base/a/c;->b:Lcom/netease/nr/base/a/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/base/a/c;->b:Lcom/netease/nr/base/a/e;

    invoke-virtual {v0, p1}, Lcom/netease/nr/base/a/e;->a(Lcom/netease/nr/base/a/d;)V

    :cond_1
    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/a/c;->a:Lcom/netease/nr/base/a/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/a/c;->a:Lcom/netease/nr/base/a/e;

    invoke-virtual {v0, p1}, Lcom/netease/nr/base/a/e;->a(Z)V

    :cond_0
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/a/c;->b:Lcom/netease/nr/base/a/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/a/c;->b:Lcom/netease/nr/base/a/e;

    invoke-virtual {v0, p1}, Lcom/netease/nr/base/a/e;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/a/c;->b:Lcom/netease/nr/base/a/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/a/c;->b:Lcom/netease/nr/base/a/e;

    invoke-virtual {v0, p1}, Lcom/netease/nr/base/a/e;->a(Z)V

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/a/c;->b:Lcom/netease/nr/base/a/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/a/c;->b:Lcom/netease/nr/base/a/e;

    invoke-static {v0}, Lcom/netease/nr/base/a/e;->a(Lcom/netease/nr/base/a/e;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/a/c;->c:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/a/c;->c:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
