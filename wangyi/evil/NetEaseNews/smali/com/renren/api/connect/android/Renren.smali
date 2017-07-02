.class public Lcom/renren/api/connect/android/Renren;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final AUTHORIZE_URL:Ljava/lang/String; = "https://graph.renren.com/oauth/authorize"

.field public static final CANCEL_URI:Ljava/lang/String; = "rrconnect://cancel"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final DEFAULT_PERMISSIONS:[Ljava/lang/String;

.field public static final DEFAULT_REDIRECT_URI:Ljava/lang/String; = "http://graph.renren.com/oauth/login_success.html"

.field private static final KEY_API_KEY:Ljava/lang/String; = "api_key"

.field private static final KEY_APP_ID:Ljava/lang/String; = "appid"

.field private static final KEY_SECRET:Ljava/lang/String; = "secret"

.field private static final LOG_TAG:Ljava/lang/String; = "Renren"

.field private static final LOG_TAG_REQUEST:Ljava/lang/String; = "Renren-SDK-Request"

.field private static final LOG_TAG_RESPONSE:Ljava/lang/String; = "Renren-SDK-Response"

.field private static final POST_FEED_URL:Ljava/lang/String; = "http://www.connect.renren.com/feed/iphone/feedPrompt"

.field public static final RENREN_LABEL:Ljava/lang/String; = "Renren"

.field public static final RESPONSE_FORMAT_JSON:Ljava/lang/String; = "json"

.field public static final RESPONSE_FORMAT_XML:Ljava/lang/String; = "xml"

.field private static final RESTSERVER_URL:Ljava/lang/String; = "http://api.renren.com/restserver.do"

.field private static final SIGNATURE:Ljava/lang/String; = "b12b32ae8aec768f84cfdbb0714fbada"

.field public static final SUCCESS_URI:Ljava/lang/String; = "rrconnect://success"

.field public static final WIDGET_CALLBACK_URI:Ljava/lang/String; = "http://widget.renren.com/callback.html"


# instance fields
.field private accessTokenManager:Lcom/renren/api/connect/android/AccessTokenManager;

.field private apiKey:Ljava/lang/String;

.field private appId:Ljava/lang/String;

.field private secret:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "publish_share"

    aput-object v2, v0, v1

    sput-object v0, Lcom/renren/api/connect/android/Renren;->DEFAULT_PERMISSIONS:[Ljava/lang/String;

    new-instance v0, Lcom/renren/api/connect/android/Renren$1;

    invoke-direct {v0}, Lcom/renren/api/connect/android/Renren$1;-><init>()V

    sput-object v0, Lcom/renren/api/connect/android/Renren;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "api_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/renren/api/connect/android/Renren;->apiKey:Ljava/lang/String;

    const-string v1, "secret"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/renren/api/connect/android/Renren;->secret:Ljava/lang/String;

    const-string v1, "appid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/renren/api/connect/android/Renren;->appId:Ljava/lang/String;

    sget-object v0, Lcom/renren/api/connect/android/AccessTokenManager;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/renren/api/connect/android/AccessTokenManager;

    iput-object v0, p0, Lcom/renren/api/connect/android/Renren;->accessTokenManager:Lcom/renren/api/connect/android/AccessTokenManager;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "apiKey\u5fc5\u987b\u63d0\u4f9b"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "secret\u5fc5\u987b\u63d0\u4f9b"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "appId\u5fc5\u987b\u63d0\u4f9b"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p1, p0, Lcom/renren/api/connect/android/Renren;->apiKey:Ljava/lang/String;

    iput-object p2, p0, Lcom/renren/api/connect/android/Renren;->secret:Ljava/lang/String;

    iput-object p3, p0, Lcom/renren/api/connect/android/Renren;->appId:Ljava/lang/String;

    invoke-virtual {p0, p4}, Lcom/renren/api/connect/android/Renren;->init(Landroid/content/Context;)V

    return-void
.end method

.method private logRequest(Landroid/os/Bundle;)V
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, "method"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "method="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "Renren-SDK-Request"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "Renren-SDK-Request"

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private logResponse(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "Renren-SDK-Response"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private prepareParams(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "api_key"

    iget-object v1, p0, Lcom/renren/api/connect/android/Renren;->apiKey:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "v"

    const-string v1, "1.0"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "call_id"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "xn_ss"

    const-string v1, "1"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v0, Ljava/util/TreeSet;

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/renren/api/connect/android/Renren;->accessTokenManager:Lcom/renren/api/connect/android/AccessTokenManager;

    invoke-virtual {v0}, Lcom/renren/api/connect/android/AccessTokenManager;->getSessionSecret()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "sig"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/renren/api/connect/android/Util;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private request(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "format"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/renren/api/connect/android/Renren;->isSessionKeyValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "session_key"

    iget-object v1, p0, Lcom/renren/api/connect/android/Renren;->accessTokenManager:Lcom/renren/api/connect/android/AccessTokenManager;

    invoke-virtual {v1}, Lcom/renren/api/connect/android/AccessTokenManager;->getSessionKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/renren/api/connect/android/Renren;->prepareParams(Landroid/os/Bundle;)V

    invoke-direct {p0, p1}, Lcom/renren/api/connect/android/Renren;->logRequest(Landroid/os/Bundle;)V

    const-string v0, "http://api.renren.com/restserver.do"

    const-string v1, "POST"

    invoke-static {v0, v1, p1}, Lcom/renren/api/connect/android/Util;->openUrl(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "method"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/renren/api/connect/android/Renren;->logResponse(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/renren/api/connect/android/Renren;->accessTokenManager:Lcom/renren/api/connect/android/AccessTokenManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/renren/api/connect/android/Renren;->accessTokenManager:Lcom/renren/api/connect/android/AccessTokenManager;

    invoke-virtual {v0}, Lcom/renren/api/connect/android/AccessTokenManager;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getApiKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/renren/api/connect/android/Renren;->apiKey:Ljava/lang/String;

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/renren/api/connect/android/Renren;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentUid()J
    .locals 2

    iget-object v0, p0, Lcom/renren/api/connect/android/Renren;->accessTokenManager:Lcom/renren/api/connect/android/AccessTokenManager;

    invoke-virtual {v0}, Lcom/renren/api/connect/android/AccessTokenManager;->getUid()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSecret()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/renren/api/connect/android/Renren;->secret:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/renren/api/connect/android/Renren;->accessTokenManager:Lcom/renren/api/connect/android/AccessTokenManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/renren/api/connect/android/Renren;->accessTokenManager:Lcom/renren/api/connect/android/AccessTokenManager;

    invoke-virtual {v0}, Lcom/renren/api/connect/android/AccessTokenManager;->getSessionKey()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init(Landroid/content/Context;)V
    .locals 2

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Renren"

    const-string v1, "App miss permission android.permission.ACCESS_NETWORK_STATE! Some mobile\'s WebView don\'t display page!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance v0, Lcom/renren/api/connect/android/AccessTokenManager;

    invoke-direct {v0, p1}, Lcom/renren/api/connect/android/AccessTokenManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/renren/api/connect/android/Renren;->accessTokenManager:Lcom/renren/api/connect/android/AccessTokenManager;

    iget-object v0, p0, Lcom/renren/api/connect/android/Renren;->accessTokenManager:Lcom/renren/api/connect/android/AccessTokenManager;

    invoke-virtual {v0}, Lcom/renren/api/connect/android/AccessTokenManager;->restoreSessionKey()V

    return-void

    :cond_0
    invoke-static {}, Landroid/webkit/WebView;->enablePlatformNotifications()V

    goto :goto_0
.end method

.method public isAccessTokenValid()Z
    .locals 1

    iget-object v0, p0, Lcom/renren/api/connect/android/Renren;->accessTokenManager:Lcom/renren/api/connect/android/AccessTokenManager;

    invoke-virtual {v0}, Lcom/renren/api/connect/android/AccessTokenManager;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSessionKeyValid()Z
    .locals 1

    iget-object v0, p0, Lcom/renren/api/connect/android/Renren;->accessTokenManager:Lcom/renren/api/connect/android/AccessTokenManager;

    invoke-virtual {v0}, Lcom/renren/api/connect/android/AccessTokenManager;->isSessionKeyValid()Z

    move-result v0

    return v0
.end method

.method public logout(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/renren/api/connect/android/Util;->clearCookies(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/renren/api/connect/android/Renren;->accessTokenManager:Lcom/renren/api/connect/android/AccessTokenManager;

    invoke-virtual {v0}, Lcom/renren/api/connect/android/AccessTokenManager;->clearPersistSession()V

    const-string v0, "true"

    return-object v0
.end method

.method public publishShare(Lcom/renren/api/connect/android/share/ShareSetRequestParam;)Lcom/renren/api/connect/android/share/ShareSetResponseBean;
    .locals 1

    new-instance v0, Lcom/renren/api/connect/android/share/ShareHelper;

    invoke-direct {v0, p0}, Lcom/renren/api/connect/android/share/ShareHelper;-><init>(Lcom/renren/api/connect/android/Renren;)V

    invoke-virtual {v0, p1}, Lcom/renren/api/connect/android/share/ShareHelper;->publish(Lcom/renren/api/connect/android/share/ShareSetRequestParam;)Lcom/renren/api/connect/android/share/ShareSetResponseBean;

    move-result-object v0

    return-object v0
.end method

.method public requestJSON(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    const-string v0, "json"

    invoke-direct {p0, p1, v0}, Lcom/renren/api/connect/android/Renren;->request(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public requestJSON4AccessToken(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2

    const-string v0, "format"

    const-string v1, "json"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/renren/api/connect/android/Renren;->isSessionKeyValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "session_key"

    iget-object v1, p0, Lcom/renren/api/connect/android/Renren;->accessTokenManager:Lcom/renren/api/connect/android/AccessTokenManager;

    invoke-virtual {v1}, Lcom/renren/api/connect/android/AccessTokenManager;->getSessionKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/renren/api/connect/android/Renren;->isAccessTokenValid()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "access_token"

    iget-object v1, p0, Lcom/renren/api/connect/android/Renren;->accessTokenManager:Lcom/renren/api/connect/android/AccessTokenManager;

    invoke-virtual {v1}, Lcom/renren/api/connect/android/AccessTokenManager;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0, p1}, Lcom/renren/api/connect/android/Renren;->prepareParams(Landroid/os/Bundle;)V

    invoke-direct {p0, p1}, Lcom/renren/api/connect/android/Renren;->logRequest(Landroid/os/Bundle;)V

    const-string v0, "http://api.renren.com/restserver.do"

    const-string v1, "POST"

    invoke-static {v0, v1, p1}, Lcom/renren/api/connect/android/Util;->openUrl(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "method"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/renren/api/connect/android/Renren;->logResponse(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public requestXML(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    const-string v0, "xml"

    invoke-direct {p0, p1, v0}, Lcom/renren/api/connect/android/Renren;->request(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public restorSessionKey(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/renren/api/connect/android/Renren;->init(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/renren/api/connect/android/Renren;->accessTokenManager:Lcom/renren/api/connect/android/AccessTokenManager;

    invoke-virtual {v0}, Lcom/renren/api/connect/android/AccessTokenManager;->isSessionKeyValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateAccessToken(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/renren/api/connect/android/Renren;->accessTokenManager:Lcom/renren/api/connect/android/AccessTokenManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/renren/api/connect/android/Renren;->accessTokenManager:Lcom/renren/api/connect/android/AccessTokenManager;

    invoke-virtual {v0, p1}, Lcom/renren/api/connect/android/AccessTokenManager;->updateAccessToken(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/renren/api/connect/android/Renren;->apiKey:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "api_key"

    iget-object v2, p0, Lcom/renren/api/connect/android/Renren;->apiKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/renren/api/connect/android/Renren;->secret:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "secret"

    iget-object v2, p0, Lcom/renren/api/connect/android/Renren;->secret:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/renren/api/connect/android/Renren;->appId:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, "appid"

    iget-object v2, p0, Lcom/renren/api/connect/android/Renren;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/renren/api/connect/android/Renren;->accessTokenManager:Lcom/renren/api/connect/android/AccessTokenManager;

    invoke-virtual {v0, p1, p2}, Lcom/renren/api/connect/android/AccessTokenManager;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
