.class public Lcom/renren/api/connect/android/exception/RenrenAuthError;
.super Ljava/lang/RuntimeException;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private error:Ljava/lang/String;

.field private errorDescription:Ljava/lang/String;

.field private errorUri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/renren/api/connect/android/exception/RenrenAuthError;->error:Ljava/lang/String;

    iput-object p2, p0, Lcom/renren/api/connect/android/exception/RenrenAuthError;->errorDescription:Ljava/lang/String;

    iput-object p3, p0, Lcom/renren/api/connect/android/exception/RenrenAuthError;->errorUri:Ljava/lang/String;

    return-void
.end method

.method public static genJSONObjectError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    if-nez p2, :cond_2

    const-string p2, ""

    :cond_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "error"

    invoke-virtual {v1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "error_uri"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "error_description"

    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getError()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/renren/api/connect/android/exception/RenrenAuthError;->error:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/renren/api/connect/android/exception/RenrenAuthError;->errorDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/renren/api/connect/android/exception/RenrenAuthError;->errorUri:Ljava/lang/String;

    return-object v0
.end method

.method public getJSONObjectError()Lorg/json/JSONObject;
    .locals 3

    iget-object v0, p0, Lcom/renren/api/connect/android/exception/RenrenAuthError;->error:Ljava/lang/String;

    iget-object v1, p0, Lcom/renren/api/connect/android/exception/RenrenAuthError;->errorUri:Ljava/lang/String;

    iget-object v2, p0, Lcom/renren/api/connect/android/exception/RenrenAuthError;->errorDescription:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/renren/api/connect/android/exception/RenrenAuthError;->genJSONObjectError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
