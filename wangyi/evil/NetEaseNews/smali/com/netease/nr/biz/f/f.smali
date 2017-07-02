.class Lcom/netease/nr/biz/f/f;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/f/e;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/f/e;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/f/f;->a:Lcom/netease/nr/biz/f/e;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/netease/nr/biz/f/f;->a:Lcom/netease/nr/biz/f/e;

    invoke-virtual {v0}, Lcom/netease/nr/biz/f/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/netease/nr/biz/f/f;->a:Lcom/netease/nr/biz/f/e;

    invoke-static {v0}, Lcom/netease/nr/biz/f/e;->a(Lcom/netease/nr/biz/f/e;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "0K"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netease/nr/biz/f/f;->a:Lcom/netease/nr/biz/f/e;

    invoke-static {v0}, Lcom/netease/nr/biz/f/e;->b(Lcom/netease/nr/biz/f/e;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/netease/nr/biz/f/f;->a:Lcom/netease/nr/biz/f/e;

    invoke-virtual {v0}, Lcom/netease/nr/biz/f/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "cover"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/netease/util/g/a;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/nr/biz/f/f;->a:Lcom/netease/nr/biz/f/e;

    invoke-virtual {v0}, Lcom/netease/nr/biz/f/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "cover_start"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/netease/util/g/a;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/nr/biz/f/f;->a:Lcom/netease/nr/biz/f/e;

    invoke-virtual {v0}, Lcom/netease/nr/biz/f/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "cover_end"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/netease/util/g/a;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/nr/biz/f/f;->a:Lcom/netease/nr/biz/f/e;

    invoke-virtual {v0}, Lcom/netease/nr/biz/f/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/f/f;->a:Lcom/netease/nr/biz/f/e;

    const v2, 0x7f0b00ac

    invoke-virtual {v1, v2}, Lcom/netease/nr/biz/f/e;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/netease/nr/base/view/az;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/netease/nr/base/view/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/base/view/az;->show()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/netease/nr/biz/f/f;->a:Lcom/netease/nr/biz/f/e;

    invoke-static {v0}, Lcom/netease/nr/biz/f/e;->b(Lcom/netease/nr/biz/f/e;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/netease/nr/biz/f/f;->a:Lcom/netease/nr/biz/f/e;

    invoke-virtual {v0}, Lcom/netease/nr/biz/f/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/f/f;->a:Lcom/netease/nr/biz/f/e;

    const v2, 0x7f0b00ad

    invoke-virtual {v1, v2}, Lcom/netease/nr/biz/f/e;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/netease/nr/base/view/az;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/netease/nr/base/view/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/base/view/az;->show()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
