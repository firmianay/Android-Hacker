.class public Lcom/yiliao/android/openapis/sdk/SendMessageToYL$Resp;
.super Lcom/yiliao/android/openapis/model/BaseResp;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/yiliao/android/openapis/model/BaseResp;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/yiliao/android/openapis/model/BaseResp;-><init>()V

    invoke-virtual {p0, p1}, Lcom/yiliao/android/openapis/sdk/SendMessageToYL$Resp;->parse(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public checkArgs()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getType()I
    .locals 1

    sget v0, Lcom/yiliao/android/openapis/sdk/SendMessageToYL;->type:I

    return v0
.end method
