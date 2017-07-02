.class Lcom/tencent/a/a/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/tencent/a/a/d;


# direct methods
.method constructor <init>(Lcom/tencent/a/a/d;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/a/a/i;->b:Lcom/tencent/a/a/d;

    iput-object p2, p0, Lcom/tencent/a/a/i;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/a/a/i;->b:Lcom/tencent/a/a/d;

    iget-object v1, p0, Lcom/tencent/a/a/i;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/tencent/a/a/d;->a(Lcom/tencent/a/a/d;Ljava/util/List;)V

    return-void
.end method
