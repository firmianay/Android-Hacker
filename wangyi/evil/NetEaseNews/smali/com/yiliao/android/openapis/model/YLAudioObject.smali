.class public Lcom/yiliao/android/openapis/model/YLAudioObject;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/yiliao/android/openapis/model/YLMediaMessage$a;


# instance fields
.field public audioUrl:Ljava/lang/String;

.field public errorCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/yiliao/android/openapis/model/YLAudioObject;->errorCode:I

    return-void
.end method


# virtual methods
.method public buildMessage()Lorg/json/JSONObject;
    .locals 3

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "type"

    invoke-virtual {p0}, Lcom/yiliao/android/openapis/model/YLAudioObject;->type()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "audioobject_url"

    iget-object v2, p0, Lcom/yiliao/android/openapis/model/YLAudioObject;->audioUrl:Ljava/lang/String;

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

    iput v0, p0, Lcom/yiliao/android/openapis/model/YLAudioObject;->errorCode:I

    iget-object v1, p0, Lcom/yiliao/android/openapis/model/YLAudioObject;->audioUrl:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "YLAudioMessage"

    const-string v2, "audio url is null"

    invoke-static {v1, v2}, Lcom/yiliao/android/openapis/util/YLLOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const v1, 0x900c

    iput v1, p0, Lcom/yiliao/android/openapis/model/YLAudioObject;->errorCode:I

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/yiliao/android/openapis/model/YLAudioObject;->audioUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/yiliao/android/openapis/model/YLAudioObject;->audioUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xc8

    if-le v1, v2, :cond_2

    :cond_1
    const-string v1, "YLAudioMessage"

    const-string v2, "audio url is invalid"

    invoke-static {v1, v2}, Lcom/yiliao/android/openapis/util/YLLOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const v1, 0x900d

    iput v1, p0, Lcom/yiliao/android/openapis/model/YLAudioObject;->errorCode:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getCheckErrorCode()I
    .locals 1

    iget v0, p0, Lcom/yiliao/android/openapis/model/YLAudioObject;->errorCode:I

    return v0
.end method

.method public parseMessage(Lorg/json/JSONObject;)V
    .locals 2

    if-nez p1, :cond_1

    const-string v0, "YLAudioMessage"

    const-string v1, "parse fail,msg is null"

    invoke-static {v0, v1}, Lcom/yiliao/android/openapis/util/YLLOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    const-string v0, "audioobject_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "audioobject_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yiliao/android/openapis/model/YLAudioObject;->audioUrl:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public type()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method
