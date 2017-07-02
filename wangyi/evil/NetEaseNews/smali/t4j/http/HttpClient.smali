.class public Lt4j/http/HttpClient;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final BAD_GATEWAY:I = 0x1f6

.field private static final BAD_REQUEST:I = 0x190

.field private static final DEBUG:Z

.field private static final FORBIDDEN:I = 0x193

.field private static final INTERNAL_SERVER_ERROR:I = 0x1f4

.field private static final NOT_ACCEPTABLE:I = 0x196

.field private static final NOT_AUTHORIZED:I = 0x191

.field private static final NOT_FOUND:I = 0x194

.field private static final NOT_MODIFIED:I = 0x130

.field private static final OK:I = 0xc8

.field private static final SERVICE_UNAVAILABLE:I = 0x1f7

.field private static isJDK14orEarlier:Z = false

.field private static final serialVersionUID:J = 0xb36a81e0d31617cL


# instance fields
.field private accessTokenURL:Ljava/lang/String;

.field private authenticationURL:Ljava/lang/String;

.field private basic:Ljava/lang/String;

.field private connectionTimeout:I

.field private oauth:Lt4j/http/OAuth;

.field private oauthToken:Lt4j/http/OAuthToken;

.field private password:Ljava/lang/String;

.field private proxyAuthPassword:Ljava/lang/String;

.field private proxyAuthUser:Ljava/lang/String;

.field private proxyHost:Ljava/lang/String;

.field private proxyPort:I

.field private readTimeout:I

.field private requestHeaders:Ljava/util/Map;

.field private requestTokenURL:Ljava/lang/String;

.field private retryCount:I

.field private retryIntervalMillis:I

.field private userId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lt4j/Configuration;->getDebug()Z

    move-result v2

    sput-boolean v2, Lt4j/http/HttpClient;->DEBUG:Z

    sput-boolean v0, Lt4j/http/HttpClient;->isJDK14orEarlier:Z

    :try_start_0
    const-string v2, "java.specification.version"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-wide/high16 v3, 0x3ff8000000000000L    # 1.5

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    cmpl-double v2, v3, v5

    if-lez v2, :cond_0

    move v0, v1

    :cond_0
    sput-boolean v0, Lt4j/http/HttpClient;->isJDK14orEarlier:Z
    :try_end_0
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sput-boolean v1, Lt4j/http/HttpClient;->isJDK14orEarlier:Z

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lt4j/Configuration;->getRetryCount()I

    move-result v0

    iput v0, p0, Lt4j/http/HttpClient;->retryCount:I

    invoke-static {}, Lt4j/Configuration;->getRetryIntervalSecs()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lt4j/http/HttpClient;->retryIntervalMillis:I

    invoke-static {}, Lt4j/Configuration;->getUser()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lt4j/http/HttpClient;->userId:Ljava/lang/String;

    invoke-static {}, Lt4j/Configuration;->getPassword()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lt4j/http/HttpClient;->password:Ljava/lang/String;

    invoke-static {}, Lt4j/Configuration;->getProxyHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lt4j/http/HttpClient;->proxyHost:Ljava/lang/String;

    invoke-static {}, Lt4j/Configuration;->getProxyPort()I

    move-result v0

    iput v0, p0, Lt4j/http/HttpClient;->proxyPort:I

    invoke-static {}, Lt4j/Configuration;->getProxyUser()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lt4j/http/HttpClient;->proxyAuthUser:Ljava/lang/String;

    invoke-static {}, Lt4j/Configuration;->getProxyPassword()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lt4j/http/HttpClient;->proxyAuthPassword:Ljava/lang/String;

    invoke-static {}, Lt4j/Configuration;->getConnectionTimeout()I

    move-result v0

    iput v0, p0, Lt4j/http/HttpClient;->connectionTimeout:I

    invoke-static {}, Lt4j/Configuration;->getReadTimeout()I

    move-result v0

    iput v0, p0, Lt4j/http/HttpClient;->readTimeout:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lt4j/http/HttpClient;->requestHeaders:Ljava/util/Map;

    iput-object v2, p0, Lt4j/http/HttpClient;->oauth:Lt4j/http/OAuth;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lt4j/Configuration;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "api.t.163.com/oauth/request_token"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lt4j/http/HttpClient;->requestTokenURL:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lt4j/Configuration;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "api.t.163.com/oauth/authenticate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lt4j/http/HttpClient;->authenticationURL:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lt4j/Configuration;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "api.t.163.com/oauth/access_token"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lt4j/http/HttpClient;->accessTokenURL:Ljava/lang/String;

    iput-object v2, p0, Lt4j/http/HttpClient;->oauthToken:Lt4j/http/OAuthToken;

    iput-object v2, p0, Lt4j/http/HttpClient;->basic:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lt4j/http/HttpClient;->setUserAgent(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v2}, Lt4j/http/HttpClient;->setOAuthConsumer(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Accept-Encoding"

    const-string v1, "gzip"

    invoke-virtual {p0, v0, v1}, Lt4j/http/HttpClient;->setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lt4j/http/HttpClient;-><init>()V

    invoke-virtual {p0, p1}, Lt4j/http/HttpClient;->setUserId(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lt4j/http/HttpClient;->setPassword(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$0(Lt4j/http/HttpClient;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lt4j/http/HttpClient;->proxyAuthUser:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lt4j/http/HttpClient;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lt4j/http/HttpClient;->proxyAuthPassword:Ljava/lang/String;

    return-object v0
.end method

.method private encodeBasicAuthenticationString()V
    .locals 5

    iget-object v0, p0, Lt4j/http/HttpClient;->userId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lt4j/http/HttpClient;->password:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Basic "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    new-instance v2, Lt4j/http/BASE64Encoder;

    invoke-direct {v2}, Lt4j/http/BASE64Encoder;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lt4j/http/HttpClient;->userId:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lt4j/http/HttpClient;->password:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lt4j/http/BASE64Encoder;->encode([B)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lt4j/http/HttpClient;->basic:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lt4j/http/HttpClient;->oauth:Lt4j/http/OAuth;

    :cond_0
    return-void
.end method

.method public static encodeParameters([Lt4j/http/PostParameter;)Ljava/lang/String;
    .locals 5

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    if-eqz v0, :cond_1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    :try_start_0
    aget-object v2, p0, v0

    iget-object v2, v2, Lt4j/http/PostParameter;->name:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    aget-object v3, p0, v0

    iget-object v3, v3, Lt4j/http/PostParameter;->value:Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private static getCause(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    sparse-switch p0, :sswitch_data_0

    const-string v0, ""

    :goto_0
    :sswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_1
    const-string v0, "The request was invalid.  An accompanying error message will explain why. This is the status code will be returned during rate limiting."

    goto :goto_0

    :sswitch_2
    const-string v0, "Authentication credentials were missing or incorrect."

    goto :goto_0

    :sswitch_3
    const-string v0, "The request is understood, but it has been refused.  An accompanying error message will explain why."

    goto :goto_0

    :sswitch_4
    const-string v0, "The URI requested is invalid or the resource requested, such as a user, does not exists."

    goto :goto_0

    :sswitch_5
    const-string v0, "Returned by the Search API when an invalid format is specified in the request."

    goto :goto_0

    :sswitch_6
    const-string v0, "Something is broken.  Please post to the group so the team can investigate."

    goto :goto_0

    :sswitch_7
    const-string v0, "server is down or being upgraded."

    goto :goto_0

    :sswitch_8
    const-string v0, "Service Unavailable: The servers are up, but overloaded with requests. Try again later. The search and trend methods use this to indicate when you are being rate limited."

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x130 -> :sswitch_0
        0x190 -> :sswitch_1
        0x191 -> :sswitch_2
        0x193 -> :sswitch_3
        0x194 -> :sswitch_4
        0x196 -> :sswitch_5
        0x1f4 -> :sswitch_6
        0x1f6 -> :sswitch_7
        0x1f7 -> :sswitch_8
    .end sparse-switch
.end method

.method private getConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 4

    iget-object v0, p0, Lt4j/http/HttpClient;->proxyHost:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lt4j/http/HttpClient;->proxyHost:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lt4j/http/HttpClient;->proxyAuthUser:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lt4j/http/HttpClient;->proxyAuthUser:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Proxy AuthUser: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lt4j/http/HttpClient;->proxyAuthUser:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lt4j/http/HttpClient;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Proxy AuthPassword: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lt4j/http/HttpClient;->proxyAuthPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lt4j/http/HttpClient;->log(Ljava/lang/String;)V

    new-instance v0, Lt4j/http/HttpClient$3;

    invoke-direct {v0, p0}, Lt4j/http/HttpClient$3;-><init>(Lt4j/http/HttpClient;)V

    invoke-static {v0}, Ljava/net/Authenticator;->setDefault(Ljava/net/Authenticator;)V

    :cond_0
    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    iget-object v2, p0, Lt4j/http/HttpClient;->proxyHost:Ljava/lang/String;

    iget v3, p0, Lt4j/http/HttpClient;->proxyPort:I

    invoke-static {v2, v3}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    sget-boolean v1, Lt4j/http/HttpClient;->DEBUG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Opening proxied connection("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lt4j/http/HttpClient;->proxyHost:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lt4j/http/HttpClient;->proxyPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lt4j/http/HttpClient;->log(Ljava/lang/String;)V

    :cond_1
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    :goto_0
    iget v1, p0, Lt4j/http/HttpClient;->connectionTimeout:I

    if-lez v1, :cond_2

    sget-boolean v1, Lt4j/http/HttpClient;->isJDK14orEarlier:Z

    if-nez v1, :cond_2

    iget v1, p0, Lt4j/http/HttpClient;->connectionTimeout:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    :cond_2
    iget v1, p0, Lt4j/http/HttpClient;->readTimeout:I

    if-lez v1, :cond_3

    sget-boolean v1, Lt4j/http/HttpClient;->isJDK14orEarlier:Z

    if-nez v1, :cond_3

    iget v1, p0, Lt4j/http/HttpClient;->readTimeout:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    :cond_3
    return-object v0

    :cond_4
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lt4j/http/HttpClient;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lt4j/http/HttpClient;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lt4j/http/HttpClient;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setHeaders(Ljava/lang/String;[Lt4j/http/PostParameter;Ljava/net/HttpURLConnection;ZLjava/lang/String;)V
    .locals 4

    const-string v0, "Request: "

    invoke-static {v0}, Lt4j/http/HttpClient;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lt4j/http/HttpClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_1

    iget-object v0, p0, Lt4j/http/HttpClient;->basic:Ljava/lang/String;

    if-nez v0, :cond_0

    :cond_0
    iget-object v0, p0, Lt4j/http/HttpClient;->oauth:Lt4j/http/OAuth;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lt4j/http/HttpClient;->oauth:Lt4j/http/OAuth;

    iget-object v1, p0, Lt4j/http/HttpClient;->oauthToken:Lt4j/http/OAuthToken;

    invoke-virtual {v0, p5, p1, p2, v1}, Lt4j/http/OAuth;->generateAuthorizationHeader(Ljava/lang/String;Ljava/lang/String;[Lt4j/http/PostParameter;Lt4j/http/OAuthToken;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "Authorization"

    invoke-virtual {p3, v1, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Authorization: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lt4j/http/HttpClient;->log(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lt4j/http/HttpClient;->requestHeaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    :cond_2
    iget-object v0, p0, Lt4j/http/HttpClient;->basic:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lt4j/http/HttpClient;->basic:Ljava/lang/String;

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Neither user ID/password combination nor OAuth consumer key/secret combination supplied"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lt4j/http/HttpClient;->requestHeaders:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lt4j/http/HttpClient;->requestHeaders:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lt4j/http/HttpClient;->log(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public delete(Ljava/lang/String;Z)Lt4j/http/Response;
    .locals 2

    const/4 v0, 0x0

    const-string v1, "DELETE"

    invoke-virtual {p0, p1, v0, p2, v1}, Lt4j/http/HttpClient;->httpRequest(Ljava/lang/String;[Lt4j/http/PostParameter;ZLjava/lang/String;)Lt4j/http/Response;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lt4j/http/HttpClient;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lt4j/http/HttpClient;

    iget v2, p0, Lt4j/http/HttpClient;->connectionTimeout:I

    iget v3, p1, Lt4j/http/HttpClient;->connectionTimeout:I

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget v2, p0, Lt4j/http/HttpClient;->proxyPort:I

    iget v3, p1, Lt4j/http/HttpClient;->proxyPort:I

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget v2, p0, Lt4j/http/HttpClient;->readTimeout:I

    iget v3, p1, Lt4j/http/HttpClient;->readTimeout:I

    if-eq v2, v3, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget v2, p0, Lt4j/http/HttpClient;->retryCount:I

    iget v3, p1, Lt4j/http/HttpClient;->retryCount:I

    if-eq v2, v3, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    iget v2, p0, Lt4j/http/HttpClient;->retryIntervalMillis:I

    iget v3, p1, Lt4j/http/HttpClient;->retryIntervalMillis:I

    if-eq v2, v3, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lt4j/http/HttpClient;->accessTokenURL:Ljava/lang/String;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lt4j/http/HttpClient;->accessTokenURL:Ljava/lang/String;

    iget-object v3, p1, Lt4j/http/HttpClient;->accessTokenURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    :cond_8
    move v0, v1

    goto :goto_0

    :cond_9
    iget-object v2, p1, Lt4j/http/HttpClient;->accessTokenURL:Ljava/lang/String;

    if-nez v2, :cond_8

    :cond_a
    iget-object v2, p0, Lt4j/http/HttpClient;->authenticationURL:Ljava/lang/String;

    iget-object v3, p1, Lt4j/http/HttpClient;->authenticationURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_0

    :cond_b
    iget-object v2, p0, Lt4j/http/HttpClient;->basic:Ljava/lang/String;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lt4j/http/HttpClient;->basic:Ljava/lang/String;

    iget-object v3, p1, Lt4j/http/HttpClient;->basic:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    :cond_c
    move v0, v1

    goto :goto_0

    :cond_d
    iget-object v2, p1, Lt4j/http/HttpClient;->basic:Ljava/lang/String;

    if-nez v2, :cond_c

    :cond_e
    iget-object v2, p0, Lt4j/http/HttpClient;->oauth:Lt4j/http/OAuth;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lt4j/http/HttpClient;->oauth:Lt4j/http/OAuth;

    iget-object v3, p1, Lt4j/http/HttpClient;->oauth:Lt4j/http/OAuth;

    invoke-virtual {v2, v3}, Lt4j/http/OAuth;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    :cond_f
    move v0, v1

    goto :goto_0

    :cond_10
    iget-object v2, p1, Lt4j/http/HttpClient;->oauth:Lt4j/http/OAuth;

    if-nez v2, :cond_f

    :cond_11
    iget-object v2, p0, Lt4j/http/HttpClient;->oauthToken:Lt4j/http/OAuthToken;

    if-eqz v2, :cond_13

    iget-object v2, p0, Lt4j/http/HttpClient;->oauthToken:Lt4j/http/OAuthToken;

    iget-object v3, p1, Lt4j/http/HttpClient;->oauthToken:Lt4j/http/OAuthToken;

    invoke-virtual {v2, v3}, Lt4j/http/OAuthToken;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    :cond_12
    move v0, v1

    goto/16 :goto_0

    :cond_13
    iget-object v2, p1, Lt4j/http/HttpClient;->oauthToken:Lt4j/http/OAuthToken;

    if-nez v2, :cond_12

    :cond_14
    iget-object v2, p0, Lt4j/http/HttpClient;->password:Ljava/lang/String;

    if-eqz v2, :cond_16

    iget-object v2, p0, Lt4j/http/HttpClient;->password:Ljava/lang/String;

    iget-object v3, p1, Lt4j/http/HttpClient;->password:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    :cond_15
    move v0, v1

    goto/16 :goto_0

    :cond_16
    iget-object v2, p1, Lt4j/http/HttpClient;->password:Ljava/lang/String;

    if-nez v2, :cond_15

    :cond_17
    iget-object v2, p0, Lt4j/http/HttpClient;->proxyAuthPassword:Ljava/lang/String;

    if-eqz v2, :cond_19

    iget-object v2, p0, Lt4j/http/HttpClient;->proxyAuthPassword:Ljava/lang/String;

    iget-object v3, p1, Lt4j/http/HttpClient;->proxyAuthPassword:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    :cond_18
    move v0, v1

    goto/16 :goto_0

    :cond_19
    iget-object v2, p1, Lt4j/http/HttpClient;->proxyAuthPassword:Ljava/lang/String;

    if-nez v2, :cond_18

    :cond_1a
    iget-object v2, p0, Lt4j/http/HttpClient;->proxyAuthUser:Ljava/lang/String;

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lt4j/http/HttpClient;->proxyAuthUser:Ljava/lang/String;

    iget-object v3, p1, Lt4j/http/HttpClient;->proxyAuthUser:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    :cond_1b
    move v0, v1

    goto/16 :goto_0

    :cond_1c
    iget-object v2, p1, Lt4j/http/HttpClient;->proxyAuthUser:Ljava/lang/String;

    if-nez v2, :cond_1b

    :cond_1d
    iget-object v2, p0, Lt4j/http/HttpClient;->proxyHost:Ljava/lang/String;

    if-eqz v2, :cond_1f

    iget-object v2, p0, Lt4j/http/HttpClient;->proxyHost:Ljava/lang/String;

    iget-object v3, p1, Lt4j/http/HttpClient;->proxyHost:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    :cond_1e
    move v0, v1

    goto/16 :goto_0

    :cond_1f
    iget-object v2, p1, Lt4j/http/HttpClient;->proxyHost:Ljava/lang/String;

    if-nez v2, :cond_1e

    :cond_20
    iget-object v2, p0, Lt4j/http/HttpClient;->requestHeaders:Ljava/util/Map;

    iget-object v3, p1, Lt4j/http/HttpClient;->requestHeaders:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    move v0, v1

    goto/16 :goto_0

    :cond_21
    iget-object v2, p0, Lt4j/http/HttpClient;->requestTokenURL:Ljava/lang/String;

    iget-object v3, p1, Lt4j/http/HttpClient;->requestTokenURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    move v0, v1

    goto/16 :goto_0

    :cond_22
    iget-object v2, p0, Lt4j/http/HttpClient;->userId:Ljava/lang/String;

    if-eqz v2, :cond_23

    iget-object v2, p0, Lt4j/http/HttpClient;->userId:Ljava/lang/String;

    iget-object v3, p1, Lt4j/http/HttpClient;->userId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    goto/16 :goto_0

    :cond_23
    iget-object v2, p1, Lt4j/http/HttpClient;->userId:Ljava/lang/String;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public get(Ljava/lang/String;)Lt4j/http/Response;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lt4j/http/HttpClient;->httpRequest(Ljava/lang/String;[Lt4j/http/PostParameter;Z)Lt4j/http/Response;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Z)Lt4j/http/Response;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lt4j/http/HttpClient;->httpRequest(Ljava/lang/String;[Lt4j/http/PostParameter;Z)Lt4j/http/Response;

    move-result-object v0

    return-object v0
.end method

.method public getAccessTokenURL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lt4j/http/HttpClient;->accessTokenURL:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthenticationRL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lt4j/http/HttpClient;->authenticationURL:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectionTimeout()I
    .locals 1

    iget v0, p0, Lt4j/http/HttpClient;->connectionTimeout:I

    return v0
.end method

.method public getOAuthAccessToken(Ljava/lang/String;Ljava/lang/String;)Lt4j/http/AccessToken;
    .locals 4

    :try_start_0
    new-instance v0, Lt4j/http/HttpClient$1;

    invoke-direct {v0, p0, p1, p2}, Lt4j/http/HttpClient$1;-><init>(Lt4j/http/HttpClient;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lt4j/http/HttpClient;->oauthToken:Lt4j/http/OAuthToken;

    new-instance v0, Lt4j/http/AccessToken;

    iget-object v1, p0, Lt4j/http/HttpClient;->accessTokenURL:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Lt4j/http/PostParameter;

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lt4j/http/HttpClient;->httpRequest(Ljava/lang/String;[Lt4j/http/PostParameter;Z)Lt4j/http/Response;

    move-result-object v1

    invoke-direct {v0, v1}, Lt4j/http/AccessToken;-><init>(Lt4j/http/Response;)V

    iput-object v0, p0, Lt4j/http/HttpClient;->oauthToken:Lt4j/http/OAuthToken;
    :try_end_0
    .catch Lt4j/TBlogException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lt4j/http/HttpClient;->oauthToken:Lt4j/http/OAuthToken;

    check-cast v0, Lt4j/http/AccessToken;

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lt4j/TBlogException;

    const-string v2, "The user has not given access to the account."

    invoke-virtual {v0}, Lt4j/TBlogException;->getStatusCode()I

    move-result v3

    invoke-direct {v1, v2, v0, v3}, Lt4j/TBlogException;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v1
.end method

.method public getOAuthAccessToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lt4j/http/AccessToken;
    .locals 6

    :try_start_0
    new-instance v0, Lt4j/http/HttpClient$2;

    invoke-direct {v0, p0, p1, p2}, Lt4j/http/HttpClient$2;-><init>(Lt4j/http/HttpClient;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lt4j/http/HttpClient;->oauthToken:Lt4j/http/OAuthToken;

    new-instance v0, Lt4j/http/AccessToken;

    iget-object v1, p0, Lt4j/http/HttpClient;->accessTokenURL:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Lt4j/http/PostParameter;

    const/4 v3, 0x0

    new-instance v4, Lt4j/http/PostParameter;

    const-string v5, "oauth_verifier"

    invoke-direct {v4, v5, p3}, Lt4j/http/PostParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lt4j/http/HttpClient;->httpRequest(Ljava/lang/String;[Lt4j/http/PostParameter;Z)Lt4j/http/Response;

    move-result-object v1

    invoke-direct {v0, v1}, Lt4j/http/AccessToken;-><init>(Lt4j/http/Response;)V

    iput-object v0, p0, Lt4j/http/HttpClient;->oauthToken:Lt4j/http/OAuthToken;
    :try_end_0
    .catch Lt4j/TBlogException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lt4j/http/HttpClient;->oauthToken:Lt4j/http/OAuthToken;

    check-cast v0, Lt4j/http/AccessToken;

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lt4j/TBlogException;

    const-string v2, "The user has not given access to the account."

    invoke-virtual {v0}, Lt4j/TBlogException;->getStatusCode()I

    move-result v3

    invoke-direct {v1, v2, v0, v3}, Lt4j/TBlogException;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v1
.end method

.method public getOAuthAccessToken(Lt4j/http/RequestToken;)Lt4j/http/AccessToken;
    .locals 4

    :try_start_0
    iput-object p1, p0, Lt4j/http/HttpClient;->oauthToken:Lt4j/http/OAuthToken;

    new-instance v0, Lt4j/http/AccessToken;

    iget-object v1, p0, Lt4j/http/HttpClient;->accessTokenURL:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Lt4j/http/PostParameter;

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lt4j/http/HttpClient;->httpRequest(Ljava/lang/String;[Lt4j/http/PostParameter;Z)Lt4j/http/Response;

    move-result-object v1

    invoke-direct {v0, v1}, Lt4j/http/AccessToken;-><init>(Lt4j/http/Response;)V

    iput-object v0, p0, Lt4j/http/HttpClient;->oauthToken:Lt4j/http/OAuthToken;
    :try_end_0
    .catch Lt4j/TBlogException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lt4j/http/HttpClient;->oauthToken:Lt4j/http/OAuthToken;

    check-cast v0, Lt4j/http/AccessToken;

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lt4j/TBlogException;

    const-string v2, "The user has not given access to the account."

    invoke-virtual {v0}, Lt4j/TBlogException;->getStatusCode()I

    move-result v3

    invoke-direct {v1, v2, v0, v3}, Lt4j/TBlogException;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v1
.end method

.method public getOAuthAccessToken(Lt4j/http/RequestToken;Ljava/lang/String;)Lt4j/http/AccessToken;
    .locals 6

    :try_start_0
    iput-object p1, p0, Lt4j/http/HttpClient;->oauthToken:Lt4j/http/OAuthToken;

    new-instance v0, Lt4j/http/AccessToken;

    iget-object v1, p0, Lt4j/http/HttpClient;->accessTokenURL:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Lt4j/http/PostParameter;

    const/4 v3, 0x0

    new-instance v4, Lt4j/http/PostParameter;

    const-string v5, "oauth_verifier"

    invoke-direct {v4, v5, p2}, Lt4j/http/PostParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lt4j/http/HttpClient;->httpRequest(Ljava/lang/String;[Lt4j/http/PostParameter;Z)Lt4j/http/Response;

    move-result-object v1

    invoke-direct {v0, v1}, Lt4j/http/AccessToken;-><init>(Lt4j/http/Response;)V

    iput-object v0, p0, Lt4j/http/HttpClient;->oauthToken:Lt4j/http/OAuthToken;
    :try_end_0
    .catch Lt4j/TBlogException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lt4j/http/HttpClient;->oauthToken:Lt4j/http/OAuthToken;

    check-cast v0, Lt4j/http/AccessToken;

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lt4j/TBlogException;

    const-string v2, "The user has not given access to the account."

    invoke-virtual {v0}, Lt4j/TBlogException;->getStatusCode()I

    move-result v3

    invoke-direct {v1, v2, v0, v3}, Lt4j/TBlogException;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v1
.end method

.method public getOAuthRequestToken()Lt4j/http/RequestToken;
    .locals 4

    new-instance v0, Lt4j/http/RequestToken;

    iget-object v1, p0, Lt4j/http/HttpClient;->requestTokenURL:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lt4j/http/HttpClient;->httpRequest(Ljava/lang/String;[Lt4j/http/PostParameter;Z)Lt4j/http/Response;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lt4j/http/RequestToken;-><init>(Lt4j/http/Response;Lt4j/http/HttpClient;)V

    iput-object v0, p0, Lt4j/http/HttpClient;->oauthToken:Lt4j/http/OAuthToken;

    iget-object v0, p0, Lt4j/http/HttpClient;->oauthToken:Lt4j/http/OAuthToken;

    check-cast v0, Lt4j/http/RequestToken;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lt4j/http/HttpClient;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getProxyAuthPassword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lt4j/http/HttpClient;->proxyAuthPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getProxyAuthUser()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lt4j/http/HttpClient;->proxyAuthUser:Ljava/lang/String;

    return-object v0
.end method

.method public getProxyHost()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lt4j/http/HttpClient;->proxyHost:Ljava/lang/String;

    return-object v0
.end method

.method public getProxyPort()I
    .locals 1

    iget v0, p0, Lt4j/http/HttpClient;->proxyPort:I

    return v0
.end method

.method public getReadTimeout()I
    .locals 1

    iget v0, p0, Lt4j/http/HttpClient;->readTimeout:I

    return v0
.end method

.method public getRequestHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lt4j/http/HttpClient;->requestHeaders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getRequestTokenURL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lt4j/http/HttpClient;->requestTokenURL:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    const-string v0, "User-Agent"

    invoke-virtual {p0, v0}, Lt4j/http/HttpClient;->getRequestHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lt4j/http/HttpClient;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getXAuthAccessToken(Ljava/lang/String;Ljava/lang/String;Z)Lt4j/http/AccessToken;
    .locals 7

    const/4 v6, 0x1

    const-string v0, "1"

    if-eqz p3, :cond_0

    const-string v0, "0"

    :cond_0
    const/4 v1, 0x4

    new-array v1, v1, [Lt4j/http/PostParameter;

    const/4 v2, 0x0

    new-instance v3, Lt4j/http/PostParameter;

    const-string v4, "x_auth_username"

    invoke-direct {v3, v4, p1}, Lt4j/http/PostParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    new-instance v2, Lt4j/http/PostParameter;

    const-string v3, "x_auth_password"

    invoke-direct {v2, v3, p2}, Lt4j/http/PostParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v6

    const/4 v2, 0x2

    new-instance v3, Lt4j/http/PostParameter;

    const-string v4, "x_auth_mode"

    const-string v5, "client_auth"

    invoke-direct {v3, v4, v5}, Lt4j/http/PostParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Lt4j/http/PostParameter;

    const-string v4, "x_auth_passtype"

    invoke-direct {v3, v4, v0}, Lt4j/http/PostParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    new-instance v0, Lt4j/http/AccessToken;

    iget-object v2, p0, Lt4j/http/HttpClient;->accessTokenURL:Ljava/lang/String;

    invoke-virtual {p0, v2, v1, v6}, Lt4j/http/HttpClient;->httpRequest(Ljava/lang/String;[Lt4j/http/PostParameter;Z)Lt4j/http/Response;

    move-result-object v1

    invoke-direct {v0, v1}, Lt4j/http/AccessToken;-><init>(Lt4j/http/Response;)V

    iput-object v0, p0, Lt4j/http/HttpClient;->oauthToken:Lt4j/http/OAuthToken;

    iget-object v0, p0, Lt4j/http/HttpClient;->oauthToken:Lt4j/http/OAuthToken;

    check-cast v0, Lt4j/http/AccessToken;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lt4j/http/HttpClient;->basic:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lt4j/http/HttpClient;->basic:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lt4j/http/HttpClient;->retryCount:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lt4j/http/HttpClient;->retryIntervalMillis:I

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lt4j/http/HttpClient;->userId:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lt4j/http/HttpClient;->userId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lt4j/http/HttpClient;->password:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lt4j/http/HttpClient;->password:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lt4j/http/HttpClient;->proxyHost:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lt4j/http/HttpClient;->proxyHost:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lt4j/http/HttpClient;->proxyPort:I

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lt4j/http/HttpClient;->proxyAuthUser:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lt4j/http/HttpClient;->proxyAuthUser:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lt4j/http/HttpClient;->proxyAuthPassword:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lt4j/http/HttpClient;->proxyAuthPassword:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lt4j/http/HttpClient;->connectionTimeout:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lt4j/http/HttpClient;->readTimeout:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lt4j/http/HttpClient;->requestHeaders:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lt4j/http/HttpClient;->oauth:Lt4j/http/OAuth;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lt4j/http/HttpClient;->oauth:Lt4j/http/OAuth;

    invoke-virtual {v0}, Lt4j/http/OAuth;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lt4j/http/HttpClient;->requestTokenURL:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lt4j/http/HttpClient;->authenticationURL:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lt4j/http/HttpClient;->accessTokenURL:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lt4j/http/HttpClient;->accessTokenURL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lt4j/http/HttpClient;->oauthToken:Lt4j/http/OAuthToken;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lt4j/http/HttpClient;->oauthToken:Lt4j/http/OAuthToken;

    invoke-virtual {v1}, Lt4j/http/OAuthToken;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto/16 :goto_0

    :cond_2
    move v0, v1

    goto/16 :goto_1

    :cond_3
    move v0, v1

    goto/16 :goto_2

    :cond_4
    move v0, v1

    goto :goto_3

    :cond_5
    move v0, v1

    goto :goto_4

    :cond_6
    move v0, v1

    goto :goto_5

    :cond_7
    move v0, v1

    goto :goto_6

    :cond_8
    move v0, v1

    goto :goto_7
.end method

.method protected httpRequest(Ljava/lang/String;[Lt4j/http/PostParameter;Z)Lt4j/http/Response;
    .locals 2

    const-string v0, "GET"

    if-eqz p2, :cond_0

    const-string v0, "POST"

    array-length v1, p2

    :cond_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lt4j/http/HttpClient;->httpRequest(Ljava/lang/String;[Lt4j/http/PostParameter;ZLjava/lang/String;)Lt4j/http/Response;

    move-result-object v0

    return-object v0
.end method

.method public httpRequest(Ljava/lang/String;[Lt4j/http/PostParameter;ZLjava/lang/String;)Lt4j/http/Response;
    .locals 13

    iget v1, p0, Lt4j/http/HttpClient;->retryCount:I

    add-int/lit8 v11, v1, 0x1

    const/4 v7, 0x0

    const/4 v1, 0x0

    move v10, v1

    :goto_0
    if-lt v10, v11, :cond_0

    move-object v1, v7

    :goto_1
    return-object v1

    :cond_0
    const/4 v9, -0x1

    const/4 v8, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lt4j/http/HttpClient;->getConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v4

    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lt4j/http/HttpClient;->setHeaders(Ljava/lang/String;[Lt4j/http/PostParameter;Ljava/net/HttpURLConnection;ZLjava/lang/String;)V

    if-nez p2, :cond_1

    const-string v1, "POST"

    move-object/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_1
    const-string v1, "POST"

    invoke-virtual {v4, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v1, "Content-Type"

    const-string v2, "application/x-www-form-urlencoded"

    invoke-virtual {v4, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string v1, ""

    if-eqz p2, :cond_2

    invoke-static {p2}, Lt4j/http/HttpClient;->encodeParameters([Lt4j/http/PostParameter;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    const-string v2, "Post Params: "

    invoke-static {v2, v1}, Lt4j/http/HttpClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "Content-Length"

    array-length v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    :try_start_1
    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v5, v2

    :goto_2
    :try_start_2
    new-instance v3, Lt4j/http/Response;

    invoke-direct {v3, v4}, Lt4j/http/Response;-><init>(Ljava/net/HttpURLConnection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move-result v6

    :try_start_4
    sget-boolean v1, Lt4j/http/HttpClient;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "Response: "

    invoke-static {v1}, Lt4j/http/HttpClient;->log(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_8

    :cond_4
    const/16 v1, 0xc8

    if-eq v6, v1, :cond_a

    const/16 v1, 0x1f4

    if-lt v6, v1, :cond_5

    iget v1, p0, Lt4j/http/HttpClient;->retryCount:I

    if-ne v10, v1, :cond_b

    :cond_5
    new-instance v1, Lt4j/TBlogException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v6}, Lt4j/http/HttpClient;->getCause(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Lt4j/http/Response;->asString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v6}, Lt4j/TBlogException;-><init>(Ljava/lang/String;I)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v1

    move-object v2, v5

    move-object v7, v3

    move v3, v6

    :goto_3
    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :goto_4
    :try_start_6
    throw v1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v1

    move v6, v3

    move-object v3, v7

    :goto_5
    iget v2, p0, Lt4j/http/HttpClient;->retryCount:I

    if-ne v10, v2, :cond_d

    new-instance v2, Lt4j/TBlogException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1, v6}, Lt4j/TBlogException;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v2

    :cond_6
    :try_start_7
    const-string v1, "DELETE"

    move-object/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "DELETE"

    invoke-virtual {v4, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    move-object v5, v8

    goto :goto_2

    :cond_7
    const-string v1, "GET"

    invoke-virtual {v4, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object v5, v8

    goto/16 :goto_2

    :cond_8
    :try_start_8
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v1, :cond_9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, ": "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lt4j/http/HttpClient;->log(Ljava/lang/String;)V

    goto :goto_6

    :cond_9
    invoke-static {v2}, Lt4j/http/HttpClient;->log(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_6

    :cond_a
    :try_start_9
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    move-object v1, v3

    goto/16 :goto_1

    :catch_1
    move-exception v1

    move-object v1, v3

    goto/16 :goto_1

    :cond_b
    :try_start_a
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    move-object v7, v3

    :goto_7
    :try_start_b
    sget-boolean v1, Lt4j/http/HttpClient;->DEBUG:Z

    if-eqz v1, :cond_c

    if-eqz v7, :cond_c

    invoke-virtual {v7}, Lt4j/http/Response;->asString()Ljava/lang/String;

    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sleeping "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lt4j/http/HttpClient;->retryIntervalMillis:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " millisecs for next retry."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lt4j/http/HttpClient;->log(Ljava/lang/String;)V

    iget v1, p0, Lt4j/http/HttpClient;->retryIntervalMillis:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_4

    :goto_8
    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto/16 :goto_0

    :catch_2
    move-exception v1

    move-object v7, v3

    goto :goto_7

    :catch_3
    move-exception v2

    goto/16 :goto_4

    :catch_4
    move-exception v1

    goto :goto_8

    :catch_5
    move-exception v1

    goto/16 :goto_5

    :catchall_1
    move-exception v1

    move-object v2, v8

    move v3, v9

    goto/16 :goto_3

    :catchall_2
    move-exception v1

    move v3, v9

    goto/16 :goto_3

    :catchall_3
    move-exception v1

    move-object v2, v5

    move v3, v9

    goto/16 :goto_3

    :catchall_4
    move-exception v1

    move-object v2, v5

    move-object v7, v3

    move v3, v9

    goto/16 :goto_3

    :cond_d
    move-object v7, v3

    goto :goto_7
.end method

.method public isAuthenticationEnabled()Z
    .locals 1

    iget-object v0, p0, Lt4j/http/HttpClient;->basic:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lt4j/http/HttpClient;->oauth:Lt4j/http/OAuth;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public multPartURL(Ljava/lang/String;Ljava/lang/String;[Lt4j/http/PostParameter;Ljava/io/File;Z)Lt4j/http/Response;
    .locals 13

    new-instance v8, Lorg/apache/commons/httpclient/methods/PostMethod;

    invoke-direct {v8, p2}, Lorg/apache/commons/httpclient/methods/PostMethod;-><init>(Ljava/lang/String;)V

    new-instance v9, Lorg/apache/commons/httpclient/HttpClient;

    invoke-direct {v9}, Lorg/apache/commons/httpclient/HttpClient;-><init>()V

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const/4 v1, 0x0

    check-cast v1, [Lorg/apache/commons/httpclient/methods/multipart/Part;

    if-nez p3, :cond_3

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/commons/httpclient/methods/multipart/Part;

    move-object v7, v1

    :goto_0
    if-eqz p3, :cond_0

    const/4 v2, 0x0

    move-object/from16 v0, p3

    array-length v4, v0

    const/4 v1, 0x0

    :goto_1
    if-lt v1, v4, :cond_4

    :cond_0
    new-instance v1, Lorg/apache/commons/httpclient/methods/multipart/FilePart;

    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v2, Ljavax/activation/MimetypesFileTypeMap;

    invoke-direct {v2}, Ljavax/activation/MimetypesFileTypeMap;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljavax/activation/MimetypesFileTypeMap;->getContentType(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    move-object v2, p1

    move-object/from16 v4, p4

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/httpclient/methods/multipart/FilePart;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "binary"

    invoke-virtual {v1, v2}, Lorg/apache/commons/httpclient/methods/multipart/FilePart;->setTransferEncoding(Ljava/lang/String;)V

    array-length v2, v7

    add-int/lit8 v2, v2, -0x1

    aput-object v1, v7, v2

    new-instance v1, Lorg/apache/commons/httpclient/methods/multipart/MultipartRequestEntity;

    invoke-virtual {v8}, Lorg/apache/commons/httpclient/methods/PostMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v2

    invoke-direct {v1, v7, v2}, Lorg/apache/commons/httpclient/methods/multipart/MultipartRequestEntity;-><init>([Lorg/apache/commons/httpclient/methods/multipart/Part;Lorg/apache/commons/httpclient/params/HttpMethodParams;)V

    invoke-virtual {v8, v1}, Lorg/apache/commons/httpclient/methods/PostMethod;->setRequestEntity(Lorg/apache/commons/httpclient/methods/RequestEntity;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p5, :cond_2

    iget-object v1, p0, Lt4j/http/HttpClient;->basic:Ljava/lang/String;

    if-nez v1, :cond_1

    :cond_1
    iget-object v1, p0, Lt4j/http/HttpClient;->oauth:Lt4j/http/OAuth;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lt4j/http/HttpClient;->oauth:Lt4j/http/OAuth;

    const-string v3, "POST"

    iget-object v4, p0, Lt4j/http/HttpClient;->oauthToken:Lt4j/http/OAuthToken;

    move-object/from16 v0, p3

    invoke-virtual {v1, v3, p2, v0, v4}, Lt4j/http/OAuth;->generateAuthorizationHeader(Ljava/lang/String;Ljava/lang/String;[Lt4j/http/PostParameter;Lt4j/http/OAuthToken;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    new-instance v3, Lorg/apache/commons/httpclient/Header;

    const-string v4, "Authorization"

    invoke-direct {v3, v4, v1}, Lorg/apache/commons/httpclient/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Authorization: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lt4j/http/HttpClient;->log(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v9}, Lorg/apache/commons/httpclient/HttpClient;->getHostConfiguration()Lorg/apache/commons/httpclient/HostConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/HostConfiguration;->getParams()Lorg/apache/commons/httpclient/params/HostParams;

    move-result-object v1

    const-string v3, "http.default-headers"

    invoke-virtual {v1, v3, v2}, Lorg/apache/commons/httpclient/params/HostParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v9, v8}, Lorg/apache/commons/httpclient/HttpClient;->executeMethod(Lorg/apache/commons/httpclient/HttpMethod;)I

    new-instance v1, Lt4j/http/Response;

    invoke-direct {v1}, Lt4j/http/Response;-><init>()V

    invoke-virtual {v8}, Lorg/apache/commons/httpclient/methods/PostMethod;->getResponseBodyAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lt4j/http/Response;->setResponseAsString(Ljava/lang/String;)V

    invoke-virtual {v8}, Lorg/apache/commons/httpclient/methods/PostMethod;->getStatusCode()I

    move-result v2

    invoke-virtual {v1, v2}, Lt4j/http/Response;->setStatusCode(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "multPartURL URL:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v10

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lt4j/http/HttpClient;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v8}, Lorg/apache/commons/httpclient/methods/PostMethod;->releaseConnection()V

    return-object v1

    :cond_3
    :try_start_1
    move-object/from16 v0, p3

    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Lorg/apache/commons/httpclient/methods/multipart/Part;

    move-object v7, v1

    goto/16 :goto_0

    :cond_4
    aget-object v5, p3, v1

    add-int/lit8 v3, v2, 0x1

    new-instance v6, Lorg/apache/commons/httpclient/methods/multipart/StringPart;

    invoke-virtual {v5}, Lt4j/http/PostParameter;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5}, Lt4j/http/PostParameter;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v12, v5}, Lorg/apache/commons/httpclient/methods/multipart/StringPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v7, v2

    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto/16 :goto_1

    :cond_5
    iget-object v1, p0, Lt4j/http/HttpClient;->basic:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lt4j/http/HttpClient;->basic:Ljava/lang/String;

    goto/16 :goto_2

    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Neither user ID/password combination nor OAuth consumer key/secret combination supplied"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    move-exception v1

    :try_start_2
    new-instance v2, Lt4j/TBlogException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-direct {v2, v3, v1, v4}, Lt4j/TBlogException;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v1

    invoke-virtual {v8}, Lorg/apache/commons/httpclient/methods/PostMethod;->releaseConnection()V

    throw v1
.end method

.method public post(Ljava/lang/String;)Lt4j/http/Response;
    .locals 2

    const/4 v1, 0x0

    new-array v0, v1, [Lt4j/http/PostParameter;

    invoke-virtual {p0, p1, v0, v1}, Lt4j/http/HttpClient;->httpRequest(Ljava/lang/String;[Lt4j/http/PostParameter;Z)Lt4j/http/Response;

    move-result-object v0

    return-object v0
.end method

.method public post(Ljava/lang/String;Z)Lt4j/http/Response;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lt4j/http/PostParameter;

    invoke-virtual {p0, p1, v0, p2}, Lt4j/http/HttpClient;->httpRequest(Ljava/lang/String;[Lt4j/http/PostParameter;Z)Lt4j/http/Response;

    move-result-object v0

    return-object v0
.end method

.method public post(Ljava/lang/String;[Lt4j/http/PostParameter;)Lt4j/http/Response;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lt4j/http/HttpClient;->httpRequest(Ljava/lang/String;[Lt4j/http/PostParameter;Z)Lt4j/http/Response;

    move-result-object v0

    return-object v0
.end method

.method public post(Ljava/lang/String;[Lt4j/http/PostParameter;Z)Lt4j/http/Response;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lt4j/http/HttpClient;->httpRequest(Ljava/lang/String;[Lt4j/http/PostParameter;Z)Lt4j/http/Response;

    move-result-object v0

    return-object v0
.end method

.method public setAccessTokenURL(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lt4j/http/HttpClient;->accessTokenURL:Ljava/lang/String;

    return-void
.end method

.method public setConnectionTimeout(I)V
    .locals 1

    invoke-static {p1}, Lt4j/Configuration;->getConnectionTimeout(I)I

    move-result v0

    iput v0, p0, Lt4j/http/HttpClient;->connectionTimeout:I

    return-void
.end method

.method public setOAuthAccessToken(Lt4j/http/AccessToken;)V
    .locals 0

    iput-object p1, p0, Lt4j/http/HttpClient;->oauthToken:Lt4j/http/OAuthToken;

    return-void
.end method

.method public setOAuthConsumer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Lt4j/Configuration;->getOAuthConsumerKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lt4j/Configuration;->getOAuthConsumerSecret(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lt4j/http/OAuth;

    invoke-direct {v2, v0, v1}, Lt4j/http/OAuth;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lt4j/http/HttpClient;->oauth:Lt4j/http/OAuth;

    :cond_0
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lt4j/http/HttpClient;->password:Ljava/lang/String;

    invoke-direct {p0}, Lt4j/http/HttpClient;->encodeBasicAuthenticationString()V

    return-void
.end method

.method public setProxyAuthPassword(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lt4j/Configuration;->getProxyPassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lt4j/http/HttpClient;->proxyAuthPassword:Ljava/lang/String;

    return-void
.end method

.method public setProxyAuthUser(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lt4j/Configuration;->getProxyUser(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lt4j/http/HttpClient;->proxyAuthUser:Ljava/lang/String;

    return-void
.end method

.method public setProxyHost(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lt4j/Configuration;->getProxyHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lt4j/http/HttpClient;->proxyHost:Ljava/lang/String;

    return-void
.end method

.method public setProxyPort(I)V
    .locals 1

    invoke-static {p1}, Lt4j/Configuration;->getProxyPort(I)I

    move-result v0

    iput v0, p0, Lt4j/http/HttpClient;->proxyPort:I

    return-void
.end method

.method public setReadTimeout(I)V
    .locals 1

    invoke-static {p1}, Lt4j/Configuration;->getReadTimeout(I)I

    move-result v0

    iput v0, p0, Lt4j/http/HttpClient;->readTimeout:I

    return-void
.end method

.method public setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lt4j/http/HttpClient;->requestHeaders:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setRequestTokenURL(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lt4j/http/HttpClient;->requestTokenURL:Ljava/lang/String;

    return-void
.end method

.method public setRetryCount(I)V
    .locals 2

    if-ltz p1, :cond_0

    invoke-static {p1}, Lt4j/Configuration;->getRetryCount(I)I

    move-result v0

    iput v0, p0, Lt4j/http/HttpClient;->retryCount:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "RetryCount cannot be negative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRetryIntervalSecs(I)V
    .locals 2

    if-ltz p1, :cond_0

    invoke-static {p1}, Lt4j/Configuration;->getRetryIntervalSecs(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lt4j/http/HttpClient;->retryIntervalMillis:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "RetryInterval cannot be negative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setToken(Ljava/lang/String;Ljava/lang/String;)Lt4j/http/RequestToken;
    .locals 1

    new-instance v0, Lt4j/http/RequestToken;

    invoke-direct {v0, p1, p2}, Lt4j/http/RequestToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lt4j/http/HttpClient;->oauthToken:Lt4j/http/OAuthToken;

    iget-object v0, p0, Lt4j/http/HttpClient;->oauthToken:Lt4j/http/OAuthToken;

    check-cast v0, Lt4j/http/RequestToken;

    return-object v0
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 2

    const-string v0, "User-Agent"

    invoke-static {p1}, Lt4j/Configuration;->getUserAgent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lt4j/http/HttpClient;->setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lt4j/http/HttpClient;->userId:Ljava/lang/String;

    invoke-direct {p0}, Lt4j/http/HttpClient;->encodeBasicAuthenticationString()V

    return-void
.end method
