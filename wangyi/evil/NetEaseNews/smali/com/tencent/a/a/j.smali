.class Lcom/tencent/a/a/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tencent/a/a/b/d;

.field final synthetic b:Lcom/tencent/a/a/u;

.field final synthetic c:Lcom/tencent/a/a/d;


# direct methods
.method constructor <init>(Lcom/tencent/a/a/d;Lcom/tencent/a/a/b/d;Lcom/tencent/a/a/u;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/a/a/j;->c:Lcom/tencent/a/a/d;

    iput-object p2, p0, Lcom/tencent/a/a/j;->a:Lcom/tencent/a/a/b/d;

    iput-object p3, p0, Lcom/tencent/a/a/j;->b:Lcom/tencent/a/a/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/a/a/j;->c:Lcom/tencent/a/a/d;

    iget-object v1, p0, Lcom/tencent/a/a/j;->a:Lcom/tencent/a/a/b/d;

    iget-object v2, p0, Lcom/tencent/a/a/j;->b:Lcom/tencent/a/a/u;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/a/a/d;->a(Lcom/tencent/a/a/b/d;Lcom/tencent/a/a/u;)V

    return-void
.end method
