.class Lcom/tencent/a/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/a/a/u;


# instance fields
.field final synthetic a:Lcom/tencent/a/a/x;


# direct methods
.method constructor <init>(Lcom/tencent/a/a/x;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/a/a/e;->a:Lcom/tencent/a/a/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/a/a/e;->a:Lcom/tencent/a/a/x;

    invoke-static {v0}, Lcom/tencent/a/a/x;->a(Lcom/tencent/a/a/x;)Lcom/tencent/a/a/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/a/a/b/d;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/a/a/d;->a(Landroid/content/Context;)Lcom/tencent/a/a/d;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/tencent/a/a/d;->a(I)V

    return-void
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/a/a/e;->a:Lcom/tencent/a/a/x;

    invoke-static {v0}, Lcom/tencent/a/a/x;->a(Lcom/tencent/a/a/x;)Lcom/tencent/a/a/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/a/a/b/d;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/a/a/d;->a(Landroid/content/Context;)Lcom/tencent/a/a/d;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/a/a/e;->a:Lcom/tencent/a/a/x;

    invoke-static {v1}, Lcom/tencent/a/a/x;->a(Lcom/tencent/a/a/x;)Lcom/tencent/a/a/b/d;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/a/a/d;->b(Lcom/tencent/a/a/b/d;Lcom/tencent/a/a/u;)V

    return-void
.end method
