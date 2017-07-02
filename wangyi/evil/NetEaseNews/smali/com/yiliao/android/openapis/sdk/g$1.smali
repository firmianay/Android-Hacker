.class final Lcom/yiliao/android/openapis/sdk/g$1;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/yiliao/android/openapis/sdk/g;


# direct methods
.method constructor <init>(Lcom/yiliao/android/openapis/sdk/g;)V
    .locals 0

    iput-object p1, p0, Lcom/yiliao/android/openapis/sdk/g$1;->a:Lcom/yiliao/android/openapis/sdk/g;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    new-instance v0, Lcom/yiliao/android/openapis/model/BaseState;

    invoke-direct {v0}, Lcom/yiliao/android/openapis/model/BaseState;-><init>()V

    iput v1, v0, Lcom/yiliao/android/openapis/model/BaseState;->state:I

    iget-object v1, p0, Lcom/yiliao/android/openapis/sdk/g$1;->a:Lcom/yiliao/android/openapis/sdk/g;

    invoke-static {v1, v0}, Lcom/yiliao/android/openapis/sdk/g;->a(Lcom/yiliao/android/openapis/sdk/g;Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/g$1;->a:Lcom/yiliao/android/openapis/sdk/g;

    invoke-static {v0, v2}, Lcom/yiliao/android/openapis/sdk/g;->a(Lcom/yiliao/android/openapis/sdk/g;Ljava/lang/String;)V

    new-instance v0, Lcom/yiliao/android/openapis/model/BaseState;

    invoke-direct {v0}, Lcom/yiliao/android/openapis/model/BaseState;-><init>()V

    const/4 v1, 0x2

    iput v1, v0, Lcom/yiliao/android/openapis/model/BaseState;->state:I

    iget-object v1, p0, Lcom/yiliao/android/openapis/sdk/g$1;->a:Lcom/yiliao/android/openapis/sdk/g;

    invoke-static {v1, v0}, Lcom/yiliao/android/openapis/sdk/g;->a(Lcom/yiliao/android/openapis/sdk/g;Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/g$1;->a:Lcom/yiliao/android/openapis/sdk/g;

    invoke-static {v0, v1}, Lcom/yiliao/android/openapis/sdk/g;->a(Lcom/yiliao/android/openapis/sdk/g;Z)V

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/g$1;->a:Lcom/yiliao/android/openapis/sdk/g;

    invoke-static {v0}, Lcom/yiliao/android/openapis/sdk/g;->a(Lcom/yiliao/android/openapis/sdk/g;)V

    goto :goto_0

    :sswitch_3
    iget-object v1, p0, Lcom/yiliao/android/openapis/sdk/g$1;->a:Lcom/yiliao/android/openapis/sdk/g;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/yiliao/android/openapis/sdk/g;->a(Lcom/yiliao/android/openapis/sdk/g;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/g$1;->a:Lcom/yiliao/android/openapis/sdk/g;

    invoke-static {v0}, Lcom/yiliao/android/openapis/sdk/g;->b(Lcom/yiliao/android/openapis/sdk/g;)V

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/g$1;->a:Lcom/yiliao/android/openapis/sdk/g;

    invoke-static {v0}, Lcom/yiliao/android/openapis/sdk/g;->c(Lcom/yiliao/android/openapis/sdk/g;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/g$1;->a:Lcom/yiliao/android/openapis/sdk/g;

    const v1, 0x9006

    invoke-virtual {v0, v1}, Lcom/yiliao/android/openapis/sdk/g;->a(I)V

    :goto_1
    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/g$1;->a:Lcom/yiliao/android/openapis/sdk/g;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yiliao/android/openapis/sdk/g;->a(Lcom/yiliao/android/openapis/sdk/g;Z)V

    goto :goto_0

    :cond_0
    const-string v0, "0016"

    iget-object v1, p0, Lcom/yiliao/android/openapis/sdk/g$1;->a:Lcom/yiliao/android/openapis/sdk/g;

    invoke-static {v1}, Lcom/yiliao/android/openapis/sdk/g;->c(Lcom/yiliao/android/openapis/sdk/g;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/g$1;->a:Lcom/yiliao/android/openapis/sdk/g;

    const v1, 0x9002

    invoke-virtual {v0, v1}, Lcom/yiliao/android/openapis/sdk/g;->a(I)V

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/g$1;->a:Lcom/yiliao/android/openapis/sdk/g;

    invoke-static {v0, v2}, Lcom/yiliao/android/openapis/sdk/g;->a(Lcom/yiliao/android/openapis/sdk/g;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/g$1;->a:Lcom/yiliao/android/openapis/sdk/g;

    iget-object v1, p0, Lcom/yiliao/android/openapis/sdk/g$1;->a:Lcom/yiliao/android/openapis/sdk/g;

    invoke-static {v1}, Lcom/yiliao/android/openapis/sdk/g;->c(Lcom/yiliao/android/openapis/sdk/g;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yiliao/android/openapis/sdk/g;->b(Lcom/yiliao/android/openapis/sdk/g;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/g$1;->a:Lcom/yiliao/android/openapis/sdk/g;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/yiliao/android/openapis/sdk/g;->a(I)V

    goto :goto_1

    :sswitch_4
    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/g$1;->a:Lcom/yiliao/android/openapis/sdk/g;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0}, Lcom/yiliao/android/openapis/sdk/g;->a(Ljava/lang/Object;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_2
        0x2 -> :sswitch_4
        0x3 -> :sswitch_3
        0xff -> :sswitch_1
    .end sparse-switch
.end method
