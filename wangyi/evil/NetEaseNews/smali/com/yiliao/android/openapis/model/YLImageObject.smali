.class public Lcom/yiliao/android/openapis/model/YLImageObject;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/yiliao/android/openapis/model/YLMediaMessage$a;


# instance fields
.field public errorCode:I

.field public imageData:[B

.field public imagePath:Ljava/lang/String;

.field public imageUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/yiliao/android/openapis/model/YLImageObject;->errorCode:I

    return-void
.end method


# virtual methods
.method public buildMessage()Lorg/json/JSONObject;
    .locals 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "type"

    invoke-virtual {p0}, Lcom/yiliao/android/openapis/model/YLImageObject;->type()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/yiliao/android/openapis/model/YLImageObject;->imageData:[B

    if-eqz v0, :cond_0

    const-string v0, "imageobject_bytes"

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/yiliao/android/openapis/model/YLImageObject;->imageData:[B

    invoke-static {v3}, Lcom/yiliao/android/openapis/util/a;->a([B)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string v0, "imageobject_loadurl"

    iget-object v2, p0, Lcom/yiliao/android/openapis/model/YLImageObject;->imageUrl:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "imageobject_localpath"

    iget-object v2, p0, Lcom/yiliao/android/openapis/model/YLImageObject;->imagePath:Ljava/lang/String;

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
    .locals 6

    const v5, 0x32000

    const/16 v4, 0x64

    const/4 v3, 0x0

    iput v3, p0, Lcom/yiliao/android/openapis/model/YLImageObject;->errorCode:I

    iget-object v0, p0, Lcom/yiliao/android/openapis/model/YLImageObject;->imageData:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yiliao/android/openapis/model/YLImageObject;->imageData:[B

    array-length v0, v0

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/yiliao/android/openapis/model/YLImageObject;->imagePath:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yiliao/android/openapis/model/YLImageObject;->imagePath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/yiliao/android/openapis/model/YLImageObject;->imageUrl:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yiliao/android/openapis/model/YLImageObject;->imageUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const-string v0, "YLImageMessage"

    const-string v1, "checkArgs fail, all arguments are null"

    invoke-static {v0, v1}, Lcom/yiliao/android/openapis/util/YLLOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x900e

    iput v0, p0, Lcom/yiliao/android/openapis/model/YLImageObject;->errorCode:I

    move v0, v3

    :goto_0
    return v0

    :cond_3
    iget-object v0, p0, Lcom/yiliao/android/openapis/model/YLImageObject;->imageData:[B

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/yiliao/android/openapis/model/YLImageObject;->imageData:[B

    array-length v0, v0

    if-le v0, v5, :cond_4

    const-string v0, "YLImageMessage"

    const-string v1, "checkArgs fail, content is too large"

    invoke-static {v0, v1}, Lcom/yiliao/android/openapis/util/YLLOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x900f

    iput v0, p0, Lcom/yiliao/android/openapis/model/YLImageObject;->errorCode:I

    move v0, v3

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/yiliao/android/openapis/model/YLImageObject;->imagePath:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/yiliao/android/openapis/model/YLImageObject;->imagePath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v4, :cond_5

    const-string v0, "YLImageMessage"

    const-string v1, "checkArgs fail, path is invalid"

    invoke-static {v0, v1}, Lcom/yiliao/android/openapis/util/YLLOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x9010

    iput v0, p0, Lcom/yiliao/android/openapis/model/YLImageObject;->errorCode:I

    move v0, v3

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/yiliao/android/openapis/model/YLImageObject;->imagePath:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/yiliao/android/openapis/model/YLImageObject;->imagePath:Ljava/lang/String;

    if-eqz v1, :cond_7

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_7

    new-instance v2, Ljava/io/File;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v0, v0

    :goto_1
    if-le v0, v5, :cond_8

    const-string v0, "YLImageMessage"

    const-string v1, "checkArgs fail, image content is too large"

    invoke-static {v0, v1}, Lcom/yiliao/android/openapis/util/YLLOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x9011

    iput v0, p0, Lcom/yiliao/android/openapis/model/YLImageObject;->errorCode:I

    move v0, v3

    goto :goto_0

    :cond_6
    move v0, v3

    goto :goto_1

    :cond_7
    move v0, v3

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/yiliao/android/openapis/model/YLImageObject;->imageUrl:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/yiliao/android/openapis/model/YLImageObject;->imageUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v4, :cond_9

    const-string v0, "YLImageMessage"

    const-string v1, "checkArgs fail, url is invalid"

    invoke-static {v0, v1}, Lcom/yiliao/android/openapis/util/YLLOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x9012

    iput v0, p0, Lcom/yiliao/android/openapis/model/YLImageObject;->errorCode:I

    move v0, v3

    goto/16 :goto_0

    :cond_9
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public getCheckErrorCode()I
    .locals 1

    iget v0, p0, Lcom/yiliao/android/openapis/model/YLImageObject;->errorCode:I

    return v0
.end method

.method public parseMessage(Lorg/json/JSONObject;)V
    .locals 3

    if-nez p1, :cond_1

    const-string v0, "YLImageMessage"

    const-string v1, "parse fail:msg is null"

    invoke-static {v0, v1}, Lcom/yiliao/android/openapis/util/YLLOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    const-string v0, "imageobject_bytes"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "YLImageMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "image data:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "imageobject_bytes"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yiliao/android/openapis/util/YLLOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "imageobject_bytes"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yiliao/android/openapis/util/a;->a(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/yiliao/android/openapis/model/YLImageObject;->imageData:[B

    :cond_2
    const-string v0, "imageobject_localpath"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "imageobject_localpath"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yiliao/android/openapis/model/YLImageObject;->imagePath:Ljava/lang/String;

    :cond_3
    const-string v0, "imageobject_loadurl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "imageobject_loadurl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yiliao/android/openapis/model/YLImageObject;->imageUrl:Ljava/lang/String;
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

    const/4 v0, 0x2

    return v0
.end method
