.class final Lcom/yiliao/android/openapis/sdk/g$2;
.super Lcom/yiliao/android/openapis/services/IYLOpenApiServiceCallback$Stub;


# instance fields
.field private synthetic a:Lcom/yiliao/android/openapis/sdk/g;


# direct methods
.method constructor <init>(Lcom/yiliao/android/openapis/sdk/g;)V
    .locals 0

    iput-object p1, p0, Lcom/yiliao/android/openapis/sdk/g$2;->a:Lcom/yiliao/android/openapis/sdk/g;

    invoke-direct {p0}, Lcom/yiliao/android/openapis/services/IYLOpenApiServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final YLEvent(Lcom/yiliao/android/openapis/services/YLEvent;)V
    .locals 2

    const-string v0, "YLThirdAppServer"

    const-string v1, "callback"

    invoke-static {v0, v1}, Lcom/yiliao/android/openapis/util/YLLOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Lcom/yiliao/android/openapis/services/YLEvent;->type:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "YLThirdAppServer"

    const-string v1, "callback::TYPE_SENDTOYL"

    invoke-static {v0, v1}, Lcom/yiliao/android/openapis/util/YLLOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/yiliao/android/openapis/sdk/SendMessageToYL$Resp;

    invoke-virtual {p1}, Lcom/yiliao/android/openapis/services/YLEvent;->getSource()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yiliao/android/openapis/sdk/SendMessageToYL$Resp;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yiliao/android/openapis/sdk/g$2;->a:Lcom/yiliao/android/openapis/sdk/g;

    invoke-static {v1, v0}, Lcom/yiliao/android/openapis/sdk/g;->a(Lcom/yiliao/android/openapis/sdk/g;Ljava/lang/Object;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
