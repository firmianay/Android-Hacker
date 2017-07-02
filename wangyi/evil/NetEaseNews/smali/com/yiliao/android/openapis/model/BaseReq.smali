.class public abstract Lcom/yiliao/android/openapis/model/BaseReq;
.super Ljava/lang/Object;


# instance fields
.field public cmd:I

.field public errorCode:I

.field public transaction:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/yiliao/android/openapis/util/IDGenerater;->getUUID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yiliao/android/openapis/model/BaseReq;->transaction:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/yiliao/android/openapis/model/BaseReq;->errorCode:I

    return-void
.end method


# virtual methods
.method public build()Lorg/json/JSONObject;
    .locals 3

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "id"

    iget-object v2, p0, Lcom/yiliao/android/openapis/model/BaseReq;->transaction:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "cmd"

    iget v2, p0, Lcom/yiliao/android/openapis/model/BaseReq;->cmd:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public abstract checkArgs()Z
.end method

.method public abstract getType()I
.end method

.method public parse(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yiliao/android/openapis/model/BaseReq;->transaction:Ljava/lang/String;

    const-string v1, "cmd"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yiliao/android/openapis/model/BaseReq;->cmd:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
