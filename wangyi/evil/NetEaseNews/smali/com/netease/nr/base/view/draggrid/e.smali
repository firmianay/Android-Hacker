.class Lcom/netease/nr/base/view/draggrid/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/netease/nr/base/view/draggrid/c;

.field private b:I


# direct methods
.method constructor <init>(Lcom/netease/nr/base/view/draggrid/c;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/base/view/draggrid/e;->a:Lcom/netease/nr/base/view/draggrid/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(I)V
    .locals 0

    iput p1, p0, Lcom/netease/nr/base/view/draggrid/e;->b:I

    return-void
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/base/view/draggrid/e;->a:Lcom/netease/nr/base/view/draggrid/c;

    invoke-static {v0}, Lcom/netease/nr/base/view/draggrid/c;->a(Lcom/netease/nr/base/view/draggrid/c;)Lcom/netease/nr/base/view/draggrid/f;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/draggrid/e;->a:Lcom/netease/nr/base/view/draggrid/c;

    invoke-static {v0}, Lcom/netease/nr/base/view/draggrid/c;->b(Lcom/netease/nr/base/view/draggrid/c;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/netease/nr/base/view/draggrid/e;->b:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/base/view/draggrid/e;->a:Lcom/netease/nr/base/view/draggrid/c;

    invoke-static {v0}, Lcom/netease/nr/base/view/draggrid/c;->a(Lcom/netease/nr/base/view/draggrid/c;)Lcom/netease/nr/base/view/draggrid/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/nr/base/view/draggrid/f;->b()V

    :goto_0
    iget-object v0, p0, Lcom/netease/nr/base/view/draggrid/e;->a:Lcom/netease/nr/base/view/draggrid/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netease/nr/base/view/draggrid/c;->a(Lcom/netease/nr/base/view/draggrid/c;I)I

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/base/view/draggrid/e;->a:Lcom/netease/nr/base/view/draggrid/c;

    invoke-static {v0}, Lcom/netease/nr/base/view/draggrid/c;->a(Lcom/netease/nr/base/view/draggrid/c;)Lcom/netease/nr/base/view/draggrid/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/nr/base/view/draggrid/f;->c()V

    goto :goto_0
.end method
