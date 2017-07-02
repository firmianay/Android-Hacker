.class public Lcom/renren/api/connect/android/share/ShareHelper;
.super Ljava/lang/Object;


# static fields
.field public static final PUBLISH_STATUS_PERMISSIONS:[Ljava/lang/String;


# instance fields
.field private renren:Lcom/renren/api/connect/android/Renren;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "publish_share"

    aput-object v2, v0, v1

    sput-object v0, Lcom/renren/api/connect/android/share/ShareHelper;->PUBLISH_STATUS_PERMISSIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/renren/api/connect/android/Renren;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/renren/api/connect/android/share/ShareHelper;->renren:Lcom/renren/api/connect/android/Renren;

    return-void
.end method


# virtual methods
.method public publish(Lcom/renren/api/connect/android/share/ShareSetRequestParam;)Lcom/renren/api/connect/android/share/ShareSetResponseBean;
    .locals 4

    iget-object v0, p0, Lcom/renren/api/connect/android/share/ShareHelper;->renren:Lcom/renren/api/connect/android/Renren;

    invoke-virtual {v0}, Lcom/renren/api/connect/android/Renren;->isAccessTokenValid()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "AccessToken is not valid."

    new-instance v1, Lcom/renren/api/connect/android/exception/RenrenException;

    const/4 v2, -0x4

    invoke-direct {v1, v2, v0, v0}, Lcom/renren/api/connect/android/exception/RenrenException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_0
    if-nez p1, :cond_1

    const-string v0, "The parameter is null."

    new-instance v1, Lcom/renren/api/connect/android/exception/RenrenException;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v0, v0}, Lcom/renren/api/connect/android/exception/RenrenException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/renren/api/connect/android/share/ShareSetRequestParam;->getParams()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/renren/api/connect/android/share/ShareHelper;->renren:Lcom/renren/api/connect/android/Renren;

    invoke-virtual {v1, v0}, Lcom/renren/api/connect/android/Renren;->requestJSON4AccessToken(Landroid/os/Bundle;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/renren/api/connect/android/exception/RenrenException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    const-string v1, "json"

    invoke-static {v0, v1}, Lcom/renren/api/connect/android/Util;->parseRenrenError(Ljava/lang/String;Ljava/lang/String;)Lcom/renren/api/connect/android/exception/RenrenError;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v0, Lcom/renren/api/connect/android/exception/RenrenException;

    invoke-direct {v0, v1}, Lcom/renren/api/connect/android/exception/RenrenException;-><init>(Lcom/renren/api/connect/android/exception/RenrenError;)V

    throw v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/renren/api/connect/android/exception/RenrenException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/renren/api/connect/android/Util;->logger(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/renren/api/connect/android/Util;->logger(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/renren/api/connect/android/share/ShareSetResponseBean;

    invoke-direct {v1, v0}, Lcom/renren/api/connect/android/share/ShareSetResponseBean;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    return-object v1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/renren/api/connect/android/Util;->logger(Ljava/lang/String;)V

    new-instance v1, Lcom/renren/api/connect/android/exception/RenrenException;

    const/4 v2, -0x5

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lcom/renren/api/connect/android/exception/RenrenException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw v1
.end method
