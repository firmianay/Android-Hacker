.class Lcom/netease/nr/base/view/bo;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/netease/nr/base/view/ShowBigView;


# direct methods
.method private constructor <init>(Lcom/netease/nr/base/view/ShowBigView;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/base/view/bo;->a:Lcom/netease/nr/base/view/ShowBigView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/nr/base/view/ShowBigView;Lcom/netease/nr/base/view/bm;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/nr/base/view/bo;-><init>(Lcom/netease/nr/base/view/ShowBigView;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/netease/nr/base/view/bo;->a:Lcom/netease/nr/base/view/ShowBigView;

    invoke-virtual {v0}, Lcom/netease/nr/base/view/ShowBigView;->d()F

    move-result v0

    iget-object v1, p0, Lcom/netease/nr/base/view/bo;->a:Lcom/netease/nr/base/view/ShowBigView;

    iget v1, v1, Lcom/netease/nr/base/view/ShowBigView;->e:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/base/view/bo;->a:Lcom/netease/nr/base/view/ShowBigView;

    iget-object v1, p0, Lcom/netease/nr/base/view/bo;->a:Lcom/netease/nr/base/view/ShowBigView;

    iget v1, v1, Lcom/netease/nr/base/view/ShowBigView;->e:F

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/ShowBigView;->a(F)V

    :goto_1
    iget-object v0, p0, Lcom/netease/nr/base/view/bo;->a:Lcom/netease/nr/base/view/ShowBigView;

    invoke-static {v0}, Lcom/netease/nr/base/view/ShowBigView;->a(Lcom/netease/nr/base/view/ShowBigView;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/base/view/bo;->a:Lcom/netease/nr/base/view/ShowBigView;

    iget-object v1, p0, Lcom/netease/nr/base/view/bo;->a:Lcom/netease/nr/base/view/ShowBigView;

    iget v1, v1, Lcom/netease/nr/base/view/ShowBigView;->e:F

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/ShowBigView;->a(F)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/netease/nr/base/view/bo;->a:Lcom/netease/nr/base/view/ShowBigView;

    invoke-static {v0}, Lcom/netease/nr/base/view/ShowBigView;->b(Lcom/netease/nr/base/view/ShowBigView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/bo;->a:Lcom/netease/nr/base/view/ShowBigView;

    invoke-static {v0}, Lcom/netease/nr/base/view/ShowBigView;->a(Lcom/netease/nr/base/view/ShowBigView;)V

    iget-object v0, p0, Lcom/netease/nr/base/view/bo;->a:Lcom/netease/nr/base/view/ShowBigView;

    invoke-static {v0}, Lcom/netease/nr/base/view/ShowBigView;->c(Lcom/netease/nr/base/view/ShowBigView;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
