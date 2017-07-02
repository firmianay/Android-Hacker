.class public Lcom/yiliao/android/openapis/sdk/ShowMessageFromYL$Req;
.super Lcom/yiliao/android/openapis/model/BaseReq;


# instance fields
.field public message:Lcom/yiliao/android/openapis/model/YLMediaMessage;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/yiliao/android/openapis/model/BaseReq;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/yiliao/android/openapis/model/BaseReq;-><init>()V

    invoke-virtual {p0, p1}, Lcom/yiliao/android/openapis/sdk/ShowMessageFromYL$Req;->parse(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public build()Lorg/json/JSONObject;
    .locals 3

    invoke-super {p0}, Lcom/yiliao/android/openapis/model/BaseReq;->build()Lorg/json/JSONObject;

    move-result-object v1

    :try_start_0
    const-string v0, "req_msg"

    iget-object v2, p0, Lcom/yiliao/android/openapis/sdk/ShowMessageFromYL$Req;->message:Lcom/yiliao/android/openapis/model/YLMediaMessage;

    invoke-virtual {v2}, Lcom/yiliao/android/openapis/model/YLMediaMessage;->buildMessage()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public checkArgs()Z
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/yiliao/android/openapis/sdk/ShowMessageFromYL$Req;->errorCode:I

    iget-object v1, p0, Lcom/yiliao/android/openapis/sdk/ShowMessageFromYL$Req;->message:Lcom/yiliao/android/openapis/model/YLMediaMessage;

    if-nez v1, :cond_0

    const-string v1, "ShowMessageFromYL"

    const-string v2, "checkArgs fail ,message is null"

    invoke-static {v1, v2}, Lcom/yiliao/android/openapis/util/YLLOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const v1, 0x9005

    iput v1, p0, Lcom/yiliao/android/openapis/sdk/ShowMessageFromYL$Req;->errorCode:I

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/yiliao/android/openapis/sdk/ShowMessageFromYL$Req;->message:Lcom/yiliao/android/openapis/model/YLMediaMessage;

    invoke-virtual {v1}, Lcom/yiliao/android/openapis/model/YLMediaMessage;->msgValidityCheck()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/yiliao/android/openapis/sdk/ShowMessageFromYL$Req;->message:Lcom/yiliao/android/openapis/model/YLMediaMessage;

    iget v1, v1, Lcom/yiliao/android/openapis/model/YLMediaMessage;->errorCode:I

    iput v1, p0, Lcom/yiliao/android/openapis/sdk/ShowMessageFromYL$Req;->errorCode:I

    goto :goto_0
.end method

.method public getType()I
    .locals 1

    sget v0, Lcom/yiliao/android/openapis/sdk/ShowMessageFromYL;->type:I

    return v0
.end method

.method public parse(Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/yiliao/android/openapis/model/BaseReq;->parse(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "req_msg"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/yiliao/android/openapis/model/YLMediaMessage;

    invoke-direct {v1}, Lcom/yiliao/android/openapis/model/YLMediaMessage;-><init>()V

    iput-object v1, p0, Lcom/yiliao/android/openapis/sdk/ShowMessageFromYL$Req;->message:Lcom/yiliao/android/openapis/model/YLMediaMessage;

    iget-object v1, p0, Lcom/yiliao/android/openapis/sdk/ShowMessageFromYL$Req;->message:Lcom/yiliao/android/openapis/model/YLMediaMessage;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yiliao/android/openapis/model/YLMediaMessage;->parseMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
