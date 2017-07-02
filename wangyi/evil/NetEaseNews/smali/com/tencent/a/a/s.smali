.class Lcom/tencent/a/a/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/tencent/a/a/u;

.field final synthetic c:Lcom/tencent/a/a/p;


# direct methods
.method constructor <init>(Lcom/tencent/a/a/p;Ljava/util/List;Lcom/tencent/a/a/u;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/a/a/s;->c:Lcom/tencent/a/a/p;

    iput-object p2, p0, Lcom/tencent/a/a/s;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/tencent/a/a/s;->b:Lcom/tencent/a/a/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/a/a/s;->c:Lcom/tencent/a/a/p;

    iget-object v1, p0, Lcom/tencent/a/a/s;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/tencent/a/a/s;->b:Lcom/tencent/a/a/u;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/a/a/p;->a(Ljava/util/List;Lcom/tencent/a/a/u;)V

    return-void
.end method
