.class Lcom/netease/ad/b/g;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/netease/ad/b/f;


# direct methods
.method constructor <init>(Lcom/netease/ad/b/f;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/ad/b/g;->a:Lcom/netease/ad/b/f;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/netease/ad/b/g;->a:Lcom/netease/ad/b/f;

    invoke-static {v0}, Lcom/netease/ad/b/f;->a(Lcom/netease/ad/b/f;)V

    iget-object v0, p0, Lcom/netease/ad/b/g;->a:Lcom/netease/ad/b/f;

    invoke-static {v0}, Lcom/netease/ad/b/f;->b(Lcom/netease/ad/b/f;)V

    iget-object v0, p0, Lcom/netease/ad/b/g;->a:Lcom/netease/ad/b/f;

    invoke-static {v0}, Lcom/netease/ad/b/f;->c(Lcom/netease/ad/b/f;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
