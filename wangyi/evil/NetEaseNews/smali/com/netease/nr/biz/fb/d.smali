.class Lcom/netease/nr/biz/fb/d;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/fb/CreateNewFeedBack;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/fb/CreateNewFeedBack;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/fb/d;->a:Lcom/netease/nr/biz/fb/CreateNewFeedBack;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/netease/nr/biz/fb/d;->a:Lcom/netease/nr/biz/fb/CreateNewFeedBack;

    iget-object v0, v0, Lcom/netease/nr/biz/fb/CreateNewFeedBack;->a:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/fb/d;->a:Lcom/netease/nr/biz/fb/CreateNewFeedBack;

    iget-object v0, v0, Lcom/netease/nr/biz/fb/CreateNewFeedBack;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/netease/nr/biz/fb/d;->a:Lcom/netease/nr/biz/fb/CreateNewFeedBack;

    const v1, 0x7f0b021c

    invoke-static {v0, v1, v2}, Lcom/netease/nr/base/view/az;->a(Landroid/content/Context;II)Lcom/netease/nr/base/view/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/base/view/az;->show()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/netease/nr/biz/fb/d;->a:Lcom/netease/nr/biz/fb/CreateNewFeedBack;

    const v1, 0x7f0b021d

    invoke-static {v0, v1, v2}, Lcom/netease/nr/base/view/az;->a(Landroid/content/Context;II)Lcom/netease/nr/base/view/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/base/view/az;->show()V

    iget-object v0, p0, Lcom/netease/nr/biz/fb/d;->a:Lcom/netease/nr/biz/fb/CreateNewFeedBack;

    invoke-virtual {v0}, Lcom/netease/nr/biz/fb/CreateNewFeedBack;->finish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
