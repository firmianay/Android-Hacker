.class public Lcom/yiliao/android/openapis/model/YLMediaMessage;
.super Ljava/lang/Object;


# static fields
.field public static final TAG:Ljava/lang/String; = "YLMediaMessage"


# instance fields
.field public appid:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public errorCode:I

.field public mediaObject:Lcom/yiliao/android/openapis/model/YLMediaMessage$a;

.field public thumbData:[B

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/yiliao/android/openapis/model/YLMediaMessage;->errorCode:I

    return-void
.end method


# virtual methods
.method public buildMessage()Lorg/json/JSONObject;
    .locals 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "title"

    iget-object v2, p0, Lcom/yiliao/android/openapis/model/YLMediaMessage;->title:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/yiliao/android/openapis/model/YLMediaMessage;->thumbData:[B

    if-eqz v0, :cond_0

    const-string v0, "thumbdata"

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/yiliao/android/openapis/model/YLMediaMessage;->thumbData:[B

    invoke-static {v3}, Lcom/yiliao/android/openapis/util/a;->a([B)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string v0, "description"

    iget-object v2, p0, Lcom/yiliao/android/openapis/model/YLMediaMessage;->description:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "appid"

    iget-object v2, p0, Lcom/yiliao/android/openapis/model/YLMediaMessage;->appid:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/yiliao/android/openapis/model/YLMediaMessage;->mediaObject:Lcom/yiliao/android/openapis/model/YLMediaMessage$a;

    invoke-interface {v0}, Lcom/yiliao/android/openapis/model/YLMediaMessage$a;->buildMessage()Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "mediaobject"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "YLMediaMessage"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/yiliao/android/openapis/util/YLLOG;->D(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public isEmpty(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final msgValidityCheck()Z
    .locals 5

    const v4, 0x9009

    const v3, 0x9008

    const/4 v0, 0x0

    iput v0, p0, Lcom/yiliao/android/openapis/model/YLMediaMessage;->errorCode:I

    iget-object v1, p0, Lcom/yiliao/android/openapis/model/YLMediaMessage;->title:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yiliao/android/openapis/model/YLMediaMessage;->title:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x28

    if-le v1, v2, :cond_0

    const-string v1, "YLMediaMessage"

    const-string v2, "checkArgs fail, title is invalid"

    invoke-static {v1, v2}, Lcom/yiliao/android/openapis/util/YLLOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const v1, 0x9007

    iput v1, p0, Lcom/yiliao/android/openapis/model/YLMediaMessage;->errorCode:I

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/yiliao/android/openapis/model/YLMediaMessage;->thumbData:[B

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/yiliao/android/openapis/model/YLMediaMessage;->thumbData:[B

    array-length v1, v1

    const v2, 0x32000

    if-le v1, v2, :cond_1

    const-string v1, "YLMediaMessage"

    const-string v2, "checkArgs fail, thumbData is invalid"

    invoke-static {v1, v2}, Lcom/yiliao/android/openapis/util/YLLOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    iput v3, p0, Lcom/yiliao/android/openapis/model/YLMediaMessage;->errorCode:I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/yiliao/android/openapis/model/YLMediaMessage;->description:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/yiliao/android/openapis/model/YLMediaMessage;->description:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_2

    const-string v1, "YLMediaMessage"

    const-string v2, "checkArgs fail, description is invalid"

    invoke-static {v1, v2}, Lcom/yiliao/android/openapis/util/YLLOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    iput v4, p0, Lcom/yiliao/android/openapis/model/YLMediaMessage;->errorCode:I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/yiliao/android/openapis/model/YLMediaMessage;->mediaObject:Lcom/yiliao/android/openapis/model/YLMediaMessage$a;

    if-nez v1, :cond_3

    const-string v1, "YLMediaMessage"

    const-string v2, "checkArgs fail, mediaObject is null"

    invoke-static {v1, v2}, Lcom/yiliao/android/openapis/util/YLLOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const v1, 0x900a

    iput v1, p0, Lcom/yiliao/android/openapis/model/YLMediaMessage;->errorCode:I

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/yiliao/android/openapis/model/YLMediaMessage;->mediaObject:Lcom/yiliao/android/openapis/model/YLMediaMessage$a;

    invoke-interface {v1}, Lcom/yiliao/android/openapis/model/YLMediaMessage$a;->type()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_4
    iget-object v1, p0, Lcom/yiliao/android/openapis/model/YLMediaMessage;->mediaObject:Lcom/yiliao/android/openapis/model/YLMediaMessage$a;

    invoke-interface {v1}, Lcom/yiliao/android/openapis/model/YLMediaMessage$a;->checkArgs()Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/yiliao/android/openapis/model/YLMediaMessage;->description:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/yiliao/android/openapis/model/YLMediaMessage;->description:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    :cond_5
    const-string v1, "YLMediaMessage"

    const-string v2, "checkArgs fail, description is invalid"

    invoke-static {v1, v2}, Lcom/yiliao/android/openapis/util/YLLOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    iput v4, p0, Lcom/yiliao/android/openapis/model/YLMediaMessage;->errorCode:I

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/yiliao/android/openapis/model/YLMediaMessage;->description:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/yiliao/android/openapis/model/YLMediaMessage;->description:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    :cond_6
    iget-object v1, p0, Lcom/yiliao/android/openapis/model/YLMediaMessage;->title:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/yiliao/android/openapis/model/YLMediaMessage;->title:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    :cond_7
    iget-object v1, p0, Lcom/yiliao/android/openapis/model/YLMediaMessage;->thumbData:[B

    if-nez v1, :cond_4

    const-string v1, "YLMediaMessage"

    const-string v2, "title,thumbData,description are all null!"

    invoke-static {v1, v2}, Lcom/yiliao/android/openapis/util/YLLOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const v1, 0x900b

    iput v1, p0, Lcom/yiliao/android/openapis/model/YLMediaMessage;->errorCode:I

    goto/16 :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/yiliao/android/openapis/model/YLMediaMessage;->thumbData:[B

    if-nez v1, :cond_4

    const-string v1, "YLMediaMessage"

    const-string v2, "thumbData is null!"

    invoke-static {v1, v2}, Lcom/yiliao/android/openapis/util/YLLOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    iput v3, p0, Lcom/yiliao/android/openapis/model/YLMediaMessage;->errorCode:I

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lcom/yiliao/android/openapis/model/YLMediaMessage;->mediaObject:Lcom/yiliao/android/openapis/model/YLMediaMessage$a;

    invoke-interface {v1}, Lcom/yiliao/android/openapis/model/YLMediaMessage$a;->getCheckErrorCode()I

    move-result v1

    iput v1, p0, Lcom/yiliao/android/openapis/model/YLMediaMessage;->errorCode:I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public parseMessage(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "title"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "title"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/yiliao/android/openapis/model/YLMediaMessage;->title:Ljava/lang/String;

    :cond_0
    const-string v2, "thumbdata"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "YLMediaMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "thumb data:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "thumbdata"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/yiliao/android/openapis/util/YLLOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "thumbdata"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yiliao/android/openapis/util/a;->a(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/yiliao/android/openapis/model/YLMediaMessage;->thumbData:[B

    :cond_1
    const-string v2, "description"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "description"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/yiliao/android/openapis/model/YLMediaMessage;->description:Ljava/lang/String;

    :cond_2
    const-string v2, "appid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "appid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/yiliao/android/openapis/model/YLMediaMessage;->appid:Ljava/lang/String;

    :cond_3
    const-string v2, "mediaobject"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "mediaobject"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_5

    const-string v2, "type"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_1
    if-eqz v0, :cond_4

    invoke-interface {v0, v1}, Lcom/yiliao/android/openapis/model/YLMediaMessage$a;->parseMessage(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/yiliao/android/openapis/model/YLMediaMessage;->mediaObject:Lcom/yiliao/android/openapis/model/YLMediaMessage$a;

    :cond_4
    :goto_2
    return-void

    :pswitch_0
    new-instance v0, Lcom/yiliao/android/openapis/model/YLTextObject;

    invoke-direct {v0}, Lcom/yiliao/android/openapis/model/YLTextObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v0, "YLMediaMessage"

    const-string v1, "parse fail:can not get media object"

    invoke-static {v0, v1}, Lcom/yiliao/android/openapis/util/YLLOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_1
    :try_start_1
    new-instance v0, Lcom/yiliao/android/openapis/model/YLImageObject;

    invoke-direct {v0}, Lcom/yiliao/android/openapis/model/YLImageObject;-><init>()V

    goto :goto_1

    :pswitch_2
    new-instance v0, Lcom/yiliao/android/openapis/model/YLAudioObject;

    invoke-direct {v0}, Lcom/yiliao/android/openapis/model/YLAudioObject;-><init>()V

    goto :goto_1

    :pswitch_3
    new-instance v0, Lcom/yiliao/android/openapis/model/YLWebpageObject;

    invoke-direct {v0}, Lcom/yiliao/android/openapis/model/YLWebpageObject;-><init>()V

    goto :goto_1

    :cond_5
    const-string v0, "YLMediaMessage"

    const-string v1, "parse fail:can not get media object"

    invoke-static {v0, v1}, Lcom/yiliao/android/openapis/util/YLLOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_6
    move-object v1, v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final setThumbImage(Landroid/graphics/Bitmap;)V
    .locals 3

    if-nez p1, :cond_0

    const-string v0, "YLMediaMessage"

    const-string v1, "thumbImage can not be null"

    invoke-static {v0, v1}, Lcom/yiliao/android/openapis/util/YLLOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x55

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lcom/yiliao/android/openapis/model/YLMediaMessage;->thumbData:[B

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "YLMediaMessage"

    const-string v1, "put thumb failed"

    invoke-static {v0, v1}, Lcom/yiliao/android/openapis/util/YLLOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
