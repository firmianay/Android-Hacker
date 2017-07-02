.class Lcom/netease/nr/biz/news/detailpage/e;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/news/detailpage/a;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/news/detailpage/a;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/news/detailpage/e;->a:Lcom/netease/nr/biz/news/detailpage/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/e;->a:Lcom/netease/nr/biz/news/detailpage/a;

    invoke-static {v1, v0}, Lcom/netease/nr/biz/news/detailpage/a;->a(Lcom/netease/nr/biz/news/detailpage/a;Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
