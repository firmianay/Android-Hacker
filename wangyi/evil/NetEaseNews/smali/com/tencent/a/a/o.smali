.class Lcom/tencent/a/a/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/a/a/u;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/tencent/a/a/x;


# direct methods
.method constructor <init>(Lcom/tencent/a/a/x;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/a/a/o;->b:Lcom/tencent/a/a/x;

    iput-object p2, p0, Lcom/tencent/a/a/o;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/a/a/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/a/a/d;->a(Landroid/content/Context;)Lcom/tencent/a/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/a/a/d;->a()I

    move-result v0

    invoke-static {}, Lcom/tencent/a/a/a;->e()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/a/a/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/a/a/d;->a(Landroid/content/Context;)Lcom/tencent/a/a/d;

    move-result-object v0

    invoke-static {}, Lcom/tencent/a/a/a;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/a/a/d;->a(I)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method
