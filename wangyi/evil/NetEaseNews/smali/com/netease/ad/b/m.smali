.class final Lcom/netease/ad/b/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/ad/b/d;


# instance fields
.field final synthetic a:Lcom/netease/ad/widget/e;


# direct methods
.method constructor <init>(Lcom/netease/ad/widget/e;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/ad/b/m;->a:Lcom/netease/ad/widget/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/netease/ad/b/m;->a:Lcom/netease/ad/widget/e;

    iget-boolean v0, v0, Lcom/netease/ad/widget/e;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/ad/b/m;->a:Lcom/netease/ad/widget/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/ad/widget/e;->a(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/ad/b/m;->a:Lcom/netease/ad/widget/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netease/ad/widget/e;->a(Z)V

    goto :goto_0
.end method
