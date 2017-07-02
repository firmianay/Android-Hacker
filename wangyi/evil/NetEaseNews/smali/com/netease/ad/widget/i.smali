.class Lcom/netease/ad/widget/i;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/netease/ad/widget/g;


# direct methods
.method constructor <init>(Lcom/netease/ad/widget/g;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/ad/widget/i;->a:Lcom/netease/ad/widget/g;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v1, p0, Lcom/netease/ad/widget/i;->a:Lcom/netease/ad/widget/g;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/netease/ad/d/a/a;

    invoke-virtual {v1, v0}, Lcom/netease/ad/widget/g;->a(Lcom/netease/ad/d/a/a;)V

    return-void
.end method
