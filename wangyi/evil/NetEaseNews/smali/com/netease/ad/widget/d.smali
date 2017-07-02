.class Lcom/netease/ad/widget/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/netease/ad/widget/b;


# direct methods
.method private constructor <init>(Lcom/netease/ad/widget/b;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/ad/widget/d;->a:Lcom/netease/ad/widget/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/ad/widget/b;Lcom/netease/ad/widget/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/ad/widget/d;-><init>(Lcom/netease/ad/widget/b;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/16 v2, 0x258

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/netease/ad/widget/d;->a:Lcom/netease/ad/widget/b;

    invoke-static {v0}, Lcom/netease/ad/widget/b;->a(Lcom/netease/ad/widget/b;)Lcom/netease/ad/h/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ad/h/e;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ad/widget/d;->a:Lcom/netease/ad/widget/b;

    invoke-static {v0}, Lcom/netease/ad/widget/b;->a(Lcom/netease/ad/widget/b;)Lcom/netease/ad/h/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ad/h/e;->goBack()V

    iget-object v0, p0, Lcom/netease/ad/widget/d;->a:Lcom/netease/ad/widget/b;

    invoke-static {v0}, Lcom/netease/ad/widget/b;->b(Lcom/netease/ad/widget/b;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u540e\u9000"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/netease/ad/widget/d;->a:Lcom/netease/ad/widget/b;

    invoke-static {v0}, Lcom/netease/ad/widget/b;->a(Lcom/netease/ad/widget/b;)Lcom/netease/ad/h/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ad/h/e;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ad/widget/d;->a:Lcom/netease/ad/widget/b;

    invoke-static {v0}, Lcom/netease/ad/widget/b;->a(Lcom/netease/ad/widget/b;)Lcom/netease/ad/h/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ad/h/e;->goForward()V

    iget-object v0, p0, Lcom/netease/ad/widget/d;->a:Lcom/netease/ad/widget/b;

    invoke-static {v0}, Lcom/netease/ad/widget/b;->b(Lcom/netease/ad/widget/b;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u524d\u8fdb"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/netease/ad/widget/d;->a:Lcom/netease/ad/widget/b;

    invoke-static {v0}, Lcom/netease/ad/widget/b;->a(Lcom/netease/ad/widget/b;)Lcom/netease/ad/h/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ad/h/e;->reload()V

    iget-object v0, p0, Lcom/netease/ad/widget/d;->a:Lcom/netease/ad/widget/b;

    invoke-static {v0}, Lcom/netease/ad/widget/b;->b(Lcom/netease/ad/widget/b;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u5237\u65b0"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/netease/ad/widget/d;->a:Lcom/netease/ad/widget/b;

    invoke-static {v0}, Lcom/netease/ad/widget/b;->b(Lcom/netease/ad/widget/b;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
