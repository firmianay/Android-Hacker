.class public abstract Lorg/apache/commons/httpclient/HttpMethodBase;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/commons/httpclient/HttpMethod;


# static fields
.field private static final DEFAULT_INITIAL_BUFFER_SIZE:I = 0x1000

.field private static final LOG:Lorg/apache/commons/logging/Log;

.field private static final RESPONSE_WAIT_TIME_MS:I = 0xbb8

.field static class$org$apache$commons$httpclient$HttpMethodBase:Ljava/lang/Class;


# instance fields
.field private volatile aborted:Z

.field private connectionCloseForced:Z

.field private cookiespec:Lorg/apache/commons/httpclient/cookie/CookieSpec;

.field private doAuthentication:Z

.field protected effectiveVersion:Lorg/apache/commons/httpclient/HttpVersion;

.field private followRedirects:Z

.field private hostAuthState:Lorg/apache/commons/httpclient/auth/AuthState;

.field private httphost:Lorg/apache/commons/httpclient/HttpHost;

.field private methodRetryHandler:Lorg/apache/commons/httpclient/MethodRetryHandler;

.field private params:Lorg/apache/commons/httpclient/params/HttpMethodParams;

.field private path:Ljava/lang/String;

.field private proxyAuthState:Lorg/apache/commons/httpclient/auth/AuthState;

.field private queryString:Ljava/lang/String;

.field private recoverableExceptionCount:I

.field private requestHeaders:Lorg/apache/commons/httpclient/HeaderGroup;

.field private requestSent:Z

.field private responseBody:[B

.field private responseConnection:Lorg/apache/commons/httpclient/HttpConnection;

.field private responseHeaders:Lorg/apache/commons/httpclient/HeaderGroup;

.field private responseStream:Ljava/io/InputStream;

.field private responseTrailerHeaders:Lorg/apache/commons/httpclient/HeaderGroup;

.field protected statusLine:Lorg/apache/commons/httpclient/StatusLine;

.field private used:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodBase;->class$org$apache$commons$httpclient$HttpMethodBase:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.commons.httpclient.HttpMethodBase"

    invoke-static {v0}, Lorg/apache/commons/httpclient/HttpMethodBase;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/HttpMethodBase;->class$org$apache$commons$httpclient$HttpMethodBase:Ljava/lang/Class;

    :goto_0
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    return-void

    :cond_0
    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodBase;->class$org$apache$commons$httpclient$HttpMethodBase:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/commons/httpclient/HeaderGroup;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/HeaderGroup;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->requestHeaders:Lorg/apache/commons/httpclient/HeaderGroup;

    iput-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->statusLine:Lorg/apache/commons/httpclient/StatusLine;

    new-instance v0, Lorg/apache/commons/httpclient/HeaderGroup;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/HeaderGroup;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseHeaders:Lorg/apache/commons/httpclient/HeaderGroup;

    new-instance v0, Lorg/apache/commons/httpclient/HeaderGroup;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/HeaderGroup;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseTrailerHeaders:Lorg/apache/commons/httpclient/HeaderGroup;

    iput-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->path:Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->queryString:Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseStream:Ljava/io/InputStream;

    iput-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseConnection:Lorg/apache/commons/httpclient/HttpConnection;

    iput-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseBody:[B

    iput-boolean v2, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->followRedirects:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->doAuthentication:Z

    new-instance v0, Lorg/apache/commons/httpclient/params/HttpMethodParams;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/params/HttpMethodParams;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->params:Lorg/apache/commons/httpclient/params/HttpMethodParams;

    new-instance v0, Lorg/apache/commons/httpclient/auth/AuthState;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/auth/AuthState;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->hostAuthState:Lorg/apache/commons/httpclient/auth/AuthState;

    new-instance v0, Lorg/apache/commons/httpclient/auth/AuthState;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/auth/AuthState;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->proxyAuthState:Lorg/apache/commons/httpclient/auth/AuthState;

    iput-boolean v2, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->used:Z

    iput v2, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->recoverableExceptionCount:I

    iput-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->httphost:Lorg/apache/commons/httpclient/HttpHost;

    iput-boolean v2, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->connectionCloseForced:Z

    iput-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->effectiveVersion:Lorg/apache/commons/httpclient/HttpVersion;

    iput-boolean v2, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->aborted:Z

    iput-boolean v2, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->requestSent:Z

    iput-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->cookiespec:Lorg/apache/commons/httpclient/cookie/CookieSpec;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/commons/httpclient/HeaderGroup;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/HeaderGroup;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->requestHeaders:Lorg/apache/commons/httpclient/HeaderGroup;

    iput-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->statusLine:Lorg/apache/commons/httpclient/StatusLine;

    new-instance v0, Lorg/apache/commons/httpclient/HeaderGroup;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/HeaderGroup;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseHeaders:Lorg/apache/commons/httpclient/HeaderGroup;

    new-instance v0, Lorg/apache/commons/httpclient/HeaderGroup;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/HeaderGroup;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseTrailerHeaders:Lorg/apache/commons/httpclient/HeaderGroup;

    iput-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->path:Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->queryString:Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseStream:Ljava/io/InputStream;

    iput-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseConnection:Lorg/apache/commons/httpclient/HttpConnection;

    iput-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseBody:[B

    iput-boolean v2, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->followRedirects:Z

    iput-boolean v3, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->doAuthentication:Z

    new-instance v0, Lorg/apache/commons/httpclient/params/HttpMethodParams;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/params/HttpMethodParams;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->params:Lorg/apache/commons/httpclient/params/HttpMethodParams;

    new-instance v0, Lorg/apache/commons/httpclient/auth/AuthState;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/auth/AuthState;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->hostAuthState:Lorg/apache/commons/httpclient/auth/AuthState;

    new-instance v0, Lorg/apache/commons/httpclient/auth/AuthState;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/auth/AuthState;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->proxyAuthState:Lorg/apache/commons/httpclient/auth/AuthState;

    iput-boolean v2, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->used:Z

    iput v2, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->recoverableExceptionCount:I

    iput-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->httphost:Lorg/apache/commons/httpclient/HttpHost;

    iput-boolean v2, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->connectionCloseForced:Z

    iput-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->effectiveVersion:Lorg/apache/commons/httpclient/HttpVersion;

    iput-boolean v2, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->aborted:Z

    iput-boolean v2, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->requestSent:Z

    iput-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->cookiespec:Lorg/apache/commons/httpclient/cookie/CookieSpec;

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string p1, "/"

    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->getUriCharset()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/commons/httpclient/URI;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2, v0}, Lorg/apache/commons/httpclient/URI;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {p0, v1}, Lorg/apache/commons/httpclient/HttpMethodBase;->setURI(Lorg/apache/commons/httpclient/URI;)V
    :try_end_0
    .catch Lorg/apache/commons/httpclient/URIException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Invalid uri \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\': "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/URIException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static canResponseHaveBody(I)Z
    .locals 2

    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpMethodBase.canResponseHaveBody(int)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    const/4 v0, 0x1

    const/16 v1, 0x64

    if-lt p0, v1, :cond_0

    const/16 v1, 0xc7

    if-le p0, v1, :cond_1

    :cond_0
    const/16 v1, 0xcc

    if-eq p0, v1, :cond_1

    const/16 v1, 0x130

    if-ne p0, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    :cond_2
    return v0
.end method

.method private checkExecuteConditions(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HttpState parameter may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HttpConnection parameter may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->aborted:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Method has been aborted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->validate()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lorg/apache/commons/httpclient/ProtocolException;

    const-string v1, "HttpMethodBase object not valid"

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private ensureConnectionRelease()V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseConnection:Lorg/apache/commons/httpclient/HttpConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->releaseConnection()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseConnection:Lorg/apache/commons/httpclient/HttpConnection;

    :cond_0
    return-void
.end method

.method protected static generateRequestLine(Lorg/apache/commons/httpclient/HttpConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpMethodBase.generateRequestLine(HttpConnection, String, String, String, String)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpConnection;->isTransparent()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpConnection;->getProtocol()Lorg/apache/commons/httpclient/protocol/Protocol;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/protocol/Protocol;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpConnection;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpConnection;->getPort()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpConnection;->getPort()I

    move-result v2

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/protocol/Protocol;->getDefaultPort()I

    move-result v1

    if-eq v2, v1, :cond_0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpConnection;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_0
    if-nez p2, :cond_3

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    if-eqz p3, :cond_2

    const-string v1, "?"

    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpConnection;->isTransparent()Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private getCookieSpec(Lorg/apache/commons/httpclient/HttpState;)Lorg/apache/commons/httpclient/cookie/CookieSpec;
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->cookiespec:Lorg/apache/commons/httpclient/cookie/CookieSpec;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpState;->getCookiePolicy()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->params:Lorg/apache/commons/httpclient/params/HttpMethodParams;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->getCookiePolicy()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/httpclient/cookie/CookiePolicy;->getCookieSpec(Ljava/lang/String;)Lorg/apache/commons/httpclient/cookie/CookieSpec;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->cookiespec:Lorg/apache/commons/httpclient/cookie/CookieSpec;

    :goto_0
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->cookiespec:Lorg/apache/commons/httpclient/cookie/CookieSpec;

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->params:Lorg/apache/commons/httpclient/params/HttpMethodParams;

    const-string v2, "http.dateparser.patterns"

    invoke-virtual {v0, v2}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v1, v0}, Lorg/apache/commons/httpclient/cookie/CookieSpec;->setValidDateFormats(Ljava/util/Collection;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->cookiespec:Lorg/apache/commons/httpclient/cookie/CookieSpec;

    return-object v0

    :cond_1
    invoke-static {v0}, Lorg/apache/commons/httpclient/cookie/CookiePolicy;->getSpecByPolicy(I)Lorg/apache/commons/httpclient/cookie/CookieSpec;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->cookiespec:Lorg/apache/commons/httpclient/cookie/CookieSpec;

    goto :goto_0
.end method

.method private getRequestLine(Lorg/apache/commons/httpclient/HttpConnection;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getQueryString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->effectiveVersion:Lorg/apache/commons/httpclient/HttpVersion;

    invoke-virtual {v3}, Lorg/apache/commons/httpclient/HttpVersion;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v0, v1, v2, v3}, Lorg/apache/commons/httpclient/HttpMethodBase;->generateRequestLine(Lorg/apache/commons/httpclient/HttpConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private readResponseBody(Lorg/apache/commons/httpclient/HttpConnection;)Ljava/io/InputStream;
    .locals 9

    const/4 v8, 0x1

    const/4 v2, 0x0

    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpMethodBase.readResponseBody(HttpConnection)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    iput-object v2, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseBody:[B

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpConnection;->getResponseInputStream()Ljava/io/InputStream;

    move-result-object v1

    sget-object v0, Lorg/apache/commons/httpclient/Wire;->CONTENT_WIRE:Lorg/apache/commons/httpclient/Wire;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/Wire;->enabled()Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Lorg/apache/commons/httpclient/WireLogInputStream;

    sget-object v3, Lorg/apache/commons/httpclient/Wire;->CONTENT_WIRE:Lorg/apache/commons/httpclient/Wire;

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/httpclient/WireLogInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/commons/httpclient/Wire;)V

    :goto_0
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->statusLine:Lorg/apache/commons/httpclient/StatusLine;

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/StatusLine;->getStatusCode()I

    move-result v1

    invoke-static {v1}, Lorg/apache/commons/httpclient/HttpMethodBase;->canResponseHaveBody(I)Z

    move-result v3

    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseHeaders:Lorg/apache/commons/httpclient/HeaderGroup;

    const-string v4, "Transfer-Encoding"

    invoke-virtual {v1, v4}, Lorg/apache/commons/httpclient/HeaderGroup;->getFirstHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    const-string v5, "chunked"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "identity"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v5}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Unsupported transfer encoding: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {v1}, Lorg/apache/commons/httpclient/Header;->getElements()[Lorg/apache/commons/httpclient/HeaderElement;

    move-result-object v1

    array-length v4, v1

    if-lez v4, :cond_4

    const-string v5, "chunked"

    add-int/lit8 v4, v4, -0x1

    aget-object v1, v1, v4

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpConnection;->getParams()Lorg/apache/commons/httpclient/params/HttpConnectionParams;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/params/HttpConnectionParams;->getSoTimeout()I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/apache/commons/httpclient/HttpConnection;->isResponseAvailable(I)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lorg/apache/commons/httpclient/ChunkedInputStream;

    invoke-direct {v1, v0, p0}, Lorg/apache/commons/httpclient/ChunkedInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/commons/httpclient/HttpMethod;)V

    move-object v0, v1

    :goto_1
    move-object v1, v0

    :goto_2
    if-nez v3, :cond_1

    move-object v1, v2

    :cond_1
    if-eqz v1, :cond_8

    new-instance v0, Lorg/apache/commons/httpclient/AutoCloseInputStream;

    new-instance v2, Lorg/apache/commons/httpclient/HttpMethodBase$1;

    invoke-direct {v2, p0}, Lorg/apache/commons/httpclient/HttpMethodBase$1;-><init>(Lorg/apache/commons/httpclient/HttpMethodBase;)V

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/httpclient/AutoCloseInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/commons/httpclient/ResponseConsumedWatcher;)V

    :goto_3
    return-object v0

    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v0

    const-string v1, "http.protocol.strict-transfer-encoding"

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->isParameterTrue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lorg/apache/commons/httpclient/ProtocolException;

    const-string v1, "Chunk-encoded body declared but not sent"

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "Chunk-encoded body missing"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    move-object v0, v2

    goto :goto_1

    :cond_4
    sget-object v1, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v4, "Response content is not chunk-encoded"

    invoke-interface {v1, v4}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    invoke-virtual {p0, v8}, Lorg/apache/commons/httpclient/HttpMethodBase;->setConnectionCloseForced(Z)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getResponseContentLength()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-nez v1, :cond_7

    if-eqz v3, :cond_6

    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->effectiveVersion:Lorg/apache/commons/httpclient/HttpVersion;

    sget-object v4, Lorg/apache/commons/httpclient/HttpVersion;->HTTP_1_1:Lorg/apache/commons/httpclient/HttpVersion;

    invoke-virtual {v1, v4}, Lorg/apache/commons/httpclient/HttpVersion;->greaterEquals(Lorg/apache/commons/httpclient/HttpVersion;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseHeaders:Lorg/apache/commons/httpclient/HeaderGroup;

    const-string v4, "Connection"

    invoke-virtual {v1, v4}, Lorg/apache/commons/httpclient/HeaderGroup;->getFirstHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    :goto_4
    const-string v4, "close"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v4, "Response content length is not known"

    invoke-interface {v1, v4}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    invoke-virtual {p0, v8}, Lorg/apache/commons/httpclient/HttpMethodBase;->setConnectionCloseForced(Z)V

    :cond_6
    move-object v1, v0

    goto :goto_2

    :cond_7
    new-instance v1, Lorg/apache/commons/httpclient/ContentLengthInputStream;

    invoke-direct {v1, v0, v4, v5}, Lorg/apache/commons/httpclient/ContentLengthInputStream;-><init>(Ljava/io/InputStream;J)V

    goto :goto_2

    :cond_8
    move-object v0, v1

    goto :goto_3

    :cond_9
    move-object v1, v2

    goto :goto_4

    :cond_a
    move-object v0, v1

    goto/16 :goto_0
.end method

.method private responseAvailable()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseBody:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseStream:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public abort()V
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->aborted:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->aborted:Z

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseConnection:Lorg/apache/commons/httpclient/HttpConnection;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->close()V

    goto :goto_0
.end method

.method protected addCookieRequestHeader(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V
    .locals 9

    const/4 v7, 0x1

    const/4 v6, 0x0

    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpMethodBase.addCookieRequestHeader(HttpState, HttpConnection)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getRequestHeaderGroup()Lorg/apache/commons/httpclient/HeaderGroup;

    move-result-object v0

    const-string v1, "Cookie"

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/HeaderGroup;->getHeaders(Ljava/lang/String;)[Lorg/apache/commons/httpclient/Header;

    move-result-object v1

    move v0, v6

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v2, v1, v0

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/Header;->isAutogenerated()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getRequestHeaderGroup()Lorg/apache/commons/httpclient/HeaderGroup;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/apache/commons/httpclient/HeaderGroup;->removeHeader(Lorg/apache/commons/httpclient/Header;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/HttpMethodBase;->getCookieSpec(Lorg/apache/commons/httpclient/HttpState;)Lorg/apache/commons/httpclient/cookie/CookieSpec;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->params:Lorg/apache/commons/httpclient/params/HttpMethodParams;

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->getVirtualHost()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {p2}, Lorg/apache/commons/httpclient/HttpConnection;->getHost()Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-virtual {p2}, Lorg/apache/commons/httpclient/HttpConnection;->getPort()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lorg/apache/commons/httpclient/HttpConnection;->isSecure()Z

    move-result v4

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpState;->getCookies()[Lorg/apache/commons/httpclient/Cookie;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lorg/apache/commons/httpclient/cookie/CookieSpec;->match(Ljava/lang/String;ILjava/lang/String;Z[Lorg/apache/commons/httpclient/Cookie;)[Lorg/apache/commons/httpclient/Cookie;

    move-result-object v2

    if-eqz v2, :cond_7

    array-length v1, v2

    if-lez v1, :cond_7

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v1

    const-string v3, "http.protocol.single-cookie-header"

    invoke-virtual {v1, v3}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->isParameterTrue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0, v2}, Lorg/apache/commons/httpclient/cookie/CookieSpec;->formatCookies([Lorg/apache/commons/httpclient/Cookie;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getRequestHeaderGroup()Lorg/apache/commons/httpclient/HeaderGroup;

    move-result-object v3

    new-instance v4, Lorg/apache/commons/httpclient/Header;

    const-string v5, "Cookie"

    invoke-direct {v4, v5, v1, v7}, Lorg/apache/commons/httpclient/Header;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v3, v4}, Lorg/apache/commons/httpclient/HeaderGroup;->addHeader(Lorg/apache/commons/httpclient/Header;)V

    :cond_3
    instance-of v1, v0, Lorg/apache/commons/httpclient/cookie/CookieVersionSupport;

    if-eqz v1, :cond_7

    check-cast v0, Lorg/apache/commons/httpclient/cookie/CookieVersionSupport;

    invoke-interface {v0}, Lorg/apache/commons/httpclient/cookie/CookieVersionSupport;->getVersion()I

    move-result v3

    move v1, v6

    :goto_1
    array-length v4, v2

    if-ge v6, v4, :cond_6

    aget-object v4, v2, v6

    invoke-virtual {v4}, Lorg/apache/commons/httpclient/Cookie;->getVersion()I

    move-result v4

    if-eq v3, v4, :cond_4

    move v1, v7

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    move v1, v6

    :goto_2
    array-length v3, v2

    if-ge v1, v3, :cond_3

    aget-object v3, v2, v1

    invoke-interface {v0, v3}, Lorg/apache/commons/httpclient/cookie/CookieSpec;->formatCookie(Lorg/apache/commons/httpclient/Cookie;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getRequestHeaderGroup()Lorg/apache/commons/httpclient/HeaderGroup;

    move-result-object v4

    new-instance v5, Lorg/apache/commons/httpclient/Header;

    const-string v8, "Cookie"

    invoke-direct {v5, v8, v3, v7}, Lorg/apache/commons/httpclient/Header;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v4, v5}, Lorg/apache/commons/httpclient/HeaderGroup;->addHeader(Lorg/apache/commons/httpclient/Header;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getRequestHeaderGroup()Lorg/apache/commons/httpclient/HeaderGroup;

    move-result-object v1

    invoke-interface {v0}, Lorg/apache/commons/httpclient/cookie/CookieVersionSupport;->getVersionHeader()Lorg/apache/commons/httpclient/Header;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/commons/httpclient/HeaderGroup;->addHeader(Lorg/apache/commons/httpclient/Header;)V

    :cond_7
    return-void
.end method

.method protected addHostRequestHeader(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V
    .locals 4

    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpMethodBase.addHostRequestHeader(HttpState, HttpConnection)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->params:Lorg/apache/commons/httpclient/params/HttpMethodParams;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->getVirtualHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v1, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Using virtual host name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p2}, Lorg/apache/commons/httpclient/HttpConnection;->getPort()I

    move-result v1

    sget-object v2, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v3, "Adding Host request header"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p2}, Lorg/apache/commons/httpclient/HttpConnection;->getProtocol()Lorg/apache/commons/httpclient/protocol/Protocol;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/protocol/Protocol;->getDefaultPort()I

    move-result v2

    if-eq v2, v1, :cond_1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string v1, "Host"

    invoke-virtual {p0, v1, v0}, Lorg/apache/commons/httpclient/HttpMethodBase;->setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {p2}, Lorg/apache/commons/httpclient/HttpConnection;->getHost()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected addProxyConnectionHeader(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V
    .locals 2

    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpMethodBase.addProxyConnectionHeader(HttpState, HttpConnection)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lorg/apache/commons/httpclient/HttpConnection;->isTransparent()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Proxy-Connection"

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getRequestHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Proxy-Connection"

    const-string v1, "Keep-Alive"

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/httpclient/HttpMethodBase;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lorg/apache/commons/httpclient/Header;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/httpclient/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/HttpMethodBase;->addRequestHeader(Lorg/apache/commons/httpclient/Header;)V

    return-void
.end method

.method public addRequestHeader(Lorg/apache/commons/httpclient/Header;)V
    .locals 2

    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "HttpMethodBase.addRequestHeader(Header)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    if-nez p1, :cond_0

    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "null header value ignored"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getRequestHeaderGroup()Lorg/apache/commons/httpclient/HeaderGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/httpclient/HeaderGroup;->addHeader(Lorg/apache/commons/httpclient/Header;)V

    goto :goto_0
.end method

.method protected addRequestHeaders(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V
    .locals 2

    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpMethodBase.addRequestHeaders(HttpState, HttpConnection)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/httpclient/HttpMethodBase;->addUserAgentRequestHeader(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/httpclient/HttpMethodBase;->addHostRequestHeader(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/httpclient/HttpMethodBase;->addCookieRequestHeader(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/httpclient/HttpMethodBase;->addProxyConnectionHeader(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V

    return-void
.end method

.method public addResponseFooter(Lorg/apache/commons/httpclient/Header;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getResponseTrailerHeaderGroup()Lorg/apache/commons/httpclient/HeaderGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/httpclient/HeaderGroup;->addHeader(Lorg/apache/commons/httpclient/Header;)V

    return-void
.end method

.method protected addUserAgentRequestHeader(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V
    .locals 2

    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpMethodBase.addUserAgentRequestHeaders(HttpState, HttpConnection)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    const-string v0, "User-Agent"

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getRequestHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v0

    const-string v1, "http.useragent"

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "Jakarta Commons-HttpClient"

    :cond_0
    const-string v1, "User-Agent"

    invoke-virtual {p0, v1, v0}, Lorg/apache/commons/httpclient/HttpMethodBase;->setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected checkNotUsed()V
    .locals 2

    iget-boolean v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->used:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already used."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method protected checkUsed()V
    .locals 2

    iget-boolean v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->used:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not Used."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public execute(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)I
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpMethodBase.execute(HttpState, HttpConnection)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    iput-object p2, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/httpclient/HttpMethodBase;->checkExecuteConditions(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V

    iput-object v3, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->statusLine:Lorg/apache/commons/httpclient/StatusLine;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->connectionCloseForced:Z

    invoke-virtual {p2, v3}, Lorg/apache/commons/httpclient/HttpConnection;->setLastResponseInputStream(Ljava/io/InputStream;)V

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->effectiveVersion:Lorg/apache/commons/httpclient/HttpVersion;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->params:Lorg/apache/commons/httpclient/params/HttpMethodParams;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->getVersion()Lorg/apache/commons/httpclient/HttpVersion;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->effectiveVersion:Lorg/apache/commons/httpclient/HttpVersion;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/httpclient/HttpMethodBase;->writeRequest(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V

    iput-boolean v2, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->requestSent:Z

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/httpclient/HttpMethodBase;->readResponse(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V

    iput-boolean v2, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->used:Z

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->statusLine:Lorg/apache/commons/httpclient/StatusLine;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/StatusLine;->getStatusCode()I

    move-result v0

    return v0
.end method

.method fakeResponse(Lorg/apache/commons/httpclient/StatusLine;Lorg/apache/commons/httpclient/HeaderGroup;Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->used:Z

    iput-object p1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->statusLine:Lorg/apache/commons/httpclient/StatusLine;

    iput-object p2, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseHeaders:Lorg/apache/commons/httpclient/HeaderGroup;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseBody:[B

    iput-object p3, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseStream:Ljava/io/InputStream;

    return-void
.end method

.method public getAuthenticationRealm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->hostAuthState:Lorg/apache/commons/httpclient/auth/AuthState;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/auth/AuthState;->getRealm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getContentCharSet(Lorg/apache/commons/httpclient/Header;)Ljava/lang/String;
    .locals 4

    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter getContentCharSet( Header contentheader )"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/Header;->getElements()[Lorg/apache/commons/httpclient/HeaderElement;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const-string v2, "charset"

    invoke-virtual {v1, v2}, Lorg/apache/commons/httpclient/HeaderElement;->getParameterByName(Ljava/lang/String;)Lorg/apache/commons/httpclient/NameValuePair;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->getContentCharset()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Default charset used: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_1
    return-object v0
.end method

.method public getDoAuthentication()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->doAuthentication:Z

    return v0
.end method

.method public getEffectiveVersion()Lorg/apache/commons/httpclient/HttpVersion;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->effectiveVersion:Lorg/apache/commons/httpclient/HttpVersion;

    return-object v0
.end method

.method public getFollowRedirects()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->followRedirects:Z

    return v0
.end method

.method public getHostAuthState()Lorg/apache/commons/httpclient/auth/AuthState;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->hostAuthState:Lorg/apache/commons/httpclient/auth/AuthState;

    return-object v0
.end method

.method public getHostConfiguration()Lorg/apache/commons/httpclient/HostConfiguration;
    .locals 2

    new-instance v0, Lorg/apache/commons/httpclient/HostConfiguration;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/HostConfiguration;-><init>()V

    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->httphost:Lorg/apache/commons/httpclient/HttpHost;

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/HostConfiguration;->setHost(Lorg/apache/commons/httpclient/HttpHost;)V

    return-object v0
.end method

.method public getMethodRetryHandler()Lorg/apache/commons/httpclient/MethodRetryHandler;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->methodRetryHandler:Lorg/apache/commons/httpclient/MethodRetryHandler;

    return-object v0
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->params:Lorg/apache/commons/httpclient/params/HttpMethodParams;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->path:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->path:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "/"

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->path:Ljava/lang/String;

    goto :goto_0
.end method

.method public getProxyAuthState()Lorg/apache/commons/httpclient/auth/AuthState;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->proxyAuthState:Lorg/apache/commons/httpclient/auth/AuthState;

    return-object v0
.end method

.method public getProxyAuthenticationRealm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->proxyAuthState:Lorg/apache/commons/httpclient/auth/AuthState;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/auth/AuthState;->getRealm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQueryString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->queryString:Ljava/lang/String;

    return-object v0
.end method

.method public getRecoverableExceptionCount()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->recoverableExceptionCount:I

    return v0
.end method

.method public getRequestCharSet()Ljava/lang/String;
    .locals 1

    const-string v0, "Content-Type"

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getRequestHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getContentCharSet(Lorg/apache/commons/httpclient/Header;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getRequestHeaderGroup()Lorg/apache/commons/httpclient/HeaderGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/httpclient/HeaderGroup;->getCondensedHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;

    move-result-object v0

    goto :goto_0
.end method

.method protected getRequestHeaderGroup()Lorg/apache/commons/httpclient/HeaderGroup;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->requestHeaders:Lorg/apache/commons/httpclient/HeaderGroup;

    return-object v0
.end method

.method public getRequestHeaders()[Lorg/apache/commons/httpclient/Header;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getRequestHeaderGroup()Lorg/apache/commons/httpclient/HeaderGroup;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HeaderGroup;->getAllHeaders()[Lorg/apache/commons/httpclient/Header;

    move-result-object v0

    return-object v0
.end method

.method public getRequestHeaders(Ljava/lang/String;)[Lorg/apache/commons/httpclient/Header;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getRequestHeaderGroup()Lorg/apache/commons/httpclient/HeaderGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/httpclient/HeaderGroup;->getHeaders(Ljava/lang/String;)[Lorg/apache/commons/httpclient/Header;

    move-result-object v0

    return-object v0
.end method

.method public getResponseBody()[B
    .locals 8

    const/16 v1, 0x1000

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseBody:[B

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getResponseBodyAsStream()Ljava/io/InputStream;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getResponseContentLength()J

    move-result-wide v3

    const-wide/32 v5, 0x7fffffff

    cmp-long v0, v3, v5

    if-lez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Content too large to be buffered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v0

    const-string v5, "http.method.response.buffer.warnlimit"

    const/high16 v6, 0x100000

    invoke-virtual {v0, v5, v6}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v0

    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    if-eqz v5, :cond_1

    int-to-long v5, v0

    cmp-long v0, v3, v5

    if-lez v0, :cond_2

    :cond_1
    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v5, "Going to buffer response body of large or unknown size. Using getResponseBodyAsStream instead is recommended."

    invoke-interface {v0, v5}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    :cond_2
    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v5, "Buffering response body"

    invoke-interface {v0, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    const-wide/16 v6, 0x0

    cmp-long v0, v3, v6

    if-lez v0, :cond_3

    long-to-int v0, v3

    :goto_0
    invoke-direct {v5, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-array v0, v1, [B

    :goto_1
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_4

    const/4 v3, 0x0

    invoke-virtual {v5, v0, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/HttpMethodBase;->setResponseStream(Ljava/io/InputStream;)V

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseBody:[B

    :cond_5
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseBody:[B

    return-object v0
.end method

.method public getResponseBody(I)[B
    .locals 9

    const/4 v8, -0x1

    const/4 v1, 0x0

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxlen must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseBody:[B

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getResponseBodyAsStream()Ljava/io/InputStream;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getResponseContentLength()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-eqz v0, :cond_1

    int-to-long v5, p1

    cmp-long v0, v3, v5

    if-lez v0, :cond_1

    new-instance v0, Lorg/apache/commons/httpclient/HttpContentTooLargeException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Content-Length is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/httpclient/HttpContentTooLargeException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1
    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v5, "Buffering response body"

    invoke-interface {v0, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    const-wide/16 v6, 0x0

    cmp-long v0, v3, v6

    if-lez v0, :cond_3

    long-to-int v0, v3

    :goto_0
    invoke-direct {v5, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/16 v0, 0x800

    new-array v3, v0, [B

    move v0, v1

    :cond_2
    array-length v4, v3

    sub-int v6, p1, v0

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v2, v3, v1, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-ne v4, v8, :cond_4

    :goto_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/apache/commons/httpclient/HttpMethodBase;->setResponseStream(Ljava/io/InputStream;)V

    if-ne v0, p1, :cond_5

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v0

    if-eq v0, v8, :cond_5

    new-instance v0, Lorg/apache/commons/httpclient/HttpContentTooLargeException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Content-Length not known but larger than "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/httpclient/HttpContentTooLargeException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_3
    const/16 v0, 0x1000

    goto :goto_0

    :cond_4
    invoke-virtual {v5, v3, v1, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    add-int/2addr v0, v4

    if-lt v0, p1, :cond_2

    goto :goto_1

    :cond_5
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseBody:[B

    :cond_6
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseBody:[B

    return-object v0
.end method

.method public getResponseBodyAsStream()Ljava/io/InputStream;
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseStream:Ljava/io/InputStream;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseBody:[B

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseBody:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    sget-object v1, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "re-creating response stream from byte array"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getResponseBodyAsString()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->responseAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getResponseBody()[B

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getResponseCharSet()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method public getResponseBodyAsString(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxlen must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->responseAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1}, Lorg/apache/commons/httpclient/HttpMethodBase;->getResponseBody(I)[B

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getResponseCharSet()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method public getResponseCharSet()Ljava/lang/String;
    .locals 1

    const-string v0, "Content-Type"

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getResponseHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getContentCharSet(Lorg/apache/commons/httpclient/Header;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponseContentLength()J
    .locals 8

    const-wide/16 v0, -0x1

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getResponseHeaderGroup()Lorg/apache/commons/httpclient/HeaderGroup;

    move-result-object v2

    const-string v3, "Content-Length"

    invoke-virtual {v2, v3}, Lorg/apache/commons/httpclient/HeaderGroup;->getHeaders(Ljava/lang/String;)[Lorg/apache/commons/httpclient/Header;

    move-result-object v4

    array-length v2, v4

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    array-length v2, v4

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    sget-object v2, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v3, "Multiple content-length headers detected"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    :cond_2
    array-length v2, v4

    add-int/lit8 v2, v2, -0x1

    move v3, v2

    :goto_1
    if-ltz v3, :cond_0

    aget-object v2, v4, v3

    :try_start_0
    invoke-virtual {v2}, Lorg/apache/commons/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v5, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v5}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Invalid content-length value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    :cond_3
    add-int/lit8 v2, v3, -0x1

    move v3, v2

    goto :goto_1
.end method

.method public getResponseFooter(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getResponseTrailerHeaderGroup()Lorg/apache/commons/httpclient/HeaderGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/httpclient/HeaderGroup;->getCondensedHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;

    move-result-object v0

    goto :goto_0
.end method

.method public getResponseFooters()[Lorg/apache/commons/httpclient/Header;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getResponseTrailerHeaderGroup()Lorg/apache/commons/httpclient/HeaderGroup;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HeaderGroup;->getAllHeaders()[Lorg/apache/commons/httpclient/Header;

    move-result-object v0

    return-object v0
.end method

.method public getResponseHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getResponseHeaderGroup()Lorg/apache/commons/httpclient/HeaderGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/httpclient/HeaderGroup;->getCondensedHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;

    move-result-object v0

    goto :goto_0
.end method

.method protected getResponseHeaderGroup()Lorg/apache/commons/httpclient/HeaderGroup;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseHeaders:Lorg/apache/commons/httpclient/HeaderGroup;

    return-object v0
.end method

.method public getResponseHeaders()[Lorg/apache/commons/httpclient/Header;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getResponseHeaderGroup()Lorg/apache/commons/httpclient/HeaderGroup;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HeaderGroup;->getAllHeaders()[Lorg/apache/commons/httpclient/Header;

    move-result-object v0

    return-object v0
.end method

.method public getResponseHeaders(Ljava/lang/String;)[Lorg/apache/commons/httpclient/Header;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getResponseHeaderGroup()Lorg/apache/commons/httpclient/HeaderGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/httpclient/HeaderGroup;->getHeaders(Ljava/lang/String;)[Lorg/apache/commons/httpclient/Header;

    move-result-object v0

    return-object v0
.end method

.method protected getResponseStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseStream:Ljava/io/InputStream;

    return-object v0
.end method

.method protected getResponseTrailerHeaderGroup()Lorg/apache/commons/httpclient/HeaderGroup;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseTrailerHeaders:Lorg/apache/commons/httpclient/HeaderGroup;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->statusLine:Lorg/apache/commons/httpclient/StatusLine;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/StatusLine;->getStatusCode()I

    move-result v0

    return v0
.end method

.method public getStatusLine()Lorg/apache/commons/httpclient/StatusLine;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->statusLine:Lorg/apache/commons/httpclient/StatusLine;

    return-object v0
.end method

.method public getStatusText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->statusLine:Lorg/apache/commons/httpclient/StatusLine;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getURI()Lorg/apache/commons/httpclient/URI;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->httphost:Lorg/apache/commons/httpclient/HttpHost;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->httphost:Lorg/apache/commons/httpclient/HttpHost;

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/HttpHost;->getProtocol()Lorg/apache/commons/httpclient/protocol/Protocol;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/protocol/Protocol;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->httphost:Lorg/apache/commons/httpclient/HttpHost;

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->httphost:Lorg/apache/commons/httpclient/HttpHost;

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/HttpHost;->getPort()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->httphost:Lorg/apache/commons/httpclient/HttpHost;

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/HttpHost;->getProtocol()Lorg/apache/commons/httpclient/protocol/Protocol;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/protocol/Protocol;->getDefaultPort()I

    move-result v2

    if-eq v1, v2, :cond_0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->queryString:Ljava/lang/String;

    if-eqz v1, :cond_1

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->queryString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->getUriCharset()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/apache/commons/httpclient/URI;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3, v1}, Lorg/apache/commons/httpclient/URI;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    return-object v2
.end method

.method public hasBeenUsed()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->used:Z

    return v0
.end method

.method public isAborted()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->aborted:Z

    return v0
.end method

.method protected isConnectionCloseForced()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->connectionCloseForced:Z

    return v0
.end method

.method public isHttp11()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->params:Lorg/apache/commons/httpclient/params/HttpMethodParams;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->getVersion()Lorg/apache/commons/httpclient/HttpVersion;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/httpclient/HttpVersion;->HTTP_1_1:Lorg/apache/commons/httpclient/HttpVersion;

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/HttpVersion;->equals(Lorg/apache/commons/httpclient/HttpVersion;)Z

    move-result v0

    return v0
.end method

.method public isRequestSent()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->requestSent:Z

    return v0
.end method

.method public isStrictMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected processCookieHeaders(Lorg/apache/commons/httpclient/cookie/CookieSpec;[Lorg/apache/commons/httpclient/Header;Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V
    .locals 10

    const/4 v7, 0x0

    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpMethodBase.processCookieHeaders(Header[], HttpState, HttpConnection)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->params:Lorg/apache/commons/httpclient/params/HttpMethodParams;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->getVirtualHost()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p4}, Lorg/apache/commons/httpclient/HttpConnection;->getHost()Ljava/lang/String;

    move-result-object v1

    :cond_0
    move v6, v7

    :goto_0
    array-length v0, p2

    if-ge v6, v0, :cond_4

    aget-object v5, p2, v6

    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {p4}, Lorg/apache/commons/httpclient/HttpConnection;->getPort()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4}, Lorg/apache/commons/httpclient/HttpConnection;->isSecure()Z

    move-result v4

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lorg/apache/commons/httpclient/cookie/CookieSpec;->parse(Ljava/lang/String;ILjava/lang/String;ZLorg/apache/commons/httpclient/Header;)[Lorg/apache/commons/httpclient/Cookie;
    :try_end_0
    .catch Lorg/apache/commons/httpclient/cookie/MalformedCookieException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v9, v0

    :goto_1
    if-eqz v9, :cond_3

    move v8, v7

    :goto_2
    array-length v0, v9

    if-ge v8, v0, :cond_3

    aget-object v5, v9, v8

    :try_start_1
    invoke-virtual {p4}, Lorg/apache/commons/httpclient/HttpConnection;->getPort()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4}, Lorg/apache/commons/httpclient/HttpConnection;->isSecure()Z

    move-result v4

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lorg/apache/commons/httpclient/cookie/CookieSpec;->validate(Ljava/lang/String;ILjava/lang/String;ZLorg/apache/commons/httpclient/Cookie;)V

    invoke-virtual {p3, v5}, Lorg/apache/commons/httpclient/HttpState;->addCookie(Lorg/apache/commons/httpclient/Cookie;)V

    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Cookie accepted: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-interface {p1, v5}, Lorg/apache/commons/httpclient/cookie/CookieSpec;->formatCookie(Lorg/apache/commons/httpclient/Cookie;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/apache/commons/httpclient/cookie/MalformedCookieException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_3
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_2

    :catch_0
    move-exception v0

    sget-object v2, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Invalid cookie header: \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v5}, Lorg/apache/commons/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\". "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    :cond_2
    move-object v9, v8

    goto :goto_1

    :catch_1
    move-exception v0

    sget-object v2, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Cookie rejected: \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-interface {p1, v5}, Lorg/apache/commons/httpclient/cookie/CookieSpec;->formatCookie(Lorg/apache/commons/httpclient/Cookie;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\". "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method protected processResponseBody(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V
    .locals 0

    return-void
.end method

.method protected processResponseHeaders(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V
    .locals 3

    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpMethodBase.processResponseHeaders(HttpState, HttpConnection)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/HttpMethodBase;->getCookieSpec(Lorg/apache/commons/httpclient/HttpState;)Lorg/apache/commons/httpclient/cookie/CookieSpec;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getResponseHeaderGroup()Lorg/apache/commons/httpclient/HeaderGroup;

    move-result-object v0

    const-string v2, "set-cookie"

    invoke-virtual {v0, v2}, Lorg/apache/commons/httpclient/HeaderGroup;->getHeaders(Ljava/lang/String;)[Lorg/apache/commons/httpclient/Header;

    move-result-object v0

    invoke-virtual {p0, v1, v0, p1, p2}, Lorg/apache/commons/httpclient/HttpMethodBase;->processCookieHeaders(Lorg/apache/commons/httpclient/cookie/CookieSpec;[Lorg/apache/commons/httpclient/Header;Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V

    instance-of v0, v1, Lorg/apache/commons/httpclient/cookie/CookieVersionSupport;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Lorg/apache/commons/httpclient/cookie/CookieVersionSupport;

    invoke-interface {v0}, Lorg/apache/commons/httpclient/cookie/CookieVersionSupport;->getVersion()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getResponseHeaderGroup()Lorg/apache/commons/httpclient/HeaderGroup;

    move-result-object v0

    const-string v2, "set-cookie2"

    invoke-virtual {v0, v2}, Lorg/apache/commons/httpclient/HeaderGroup;->getHeaders(Ljava/lang/String;)[Lorg/apache/commons/httpclient/Header;

    move-result-object v0

    invoke-virtual {p0, v1, v0, p1, p2}, Lorg/apache/commons/httpclient/HttpMethodBase;->processCookieHeaders(Lorg/apache/commons/httpclient/cookie/CookieSpec;[Lorg/apache/commons/httpclient/Header;Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V

    :cond_0
    return-void
.end method

.method protected processStatusLine(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V
    .locals 0

    return-void
.end method

.method protected readResponse(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V
    .locals 3

    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpMethodBase.readResponse(HttpState, HttpConnection)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->statusLine:Lorg/apache/commons/httpclient/StatusLine;

    if-nez v0, :cond_2

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/httpclient/HttpMethodBase;->readStatusLine(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/httpclient/HttpMethodBase;->processStatusLine(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/httpclient/HttpMethodBase;->readResponseHeaders(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/httpclient/HttpMethodBase;->processResponseHeaders(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->statusLine:Lorg/apache/commons/httpclient/StatusLine;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_0

    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Discarding unexpected response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->statusLine:Lorg/apache/commons/httpclient/StatusLine;

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/StatusLine;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->statusLine:Lorg/apache/commons/httpclient/StatusLine;

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/httpclient/HttpMethodBase;->readResponseBody(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/httpclient/HttpMethodBase;->processResponseBody(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V

    return-void
.end method

.method protected readResponseBody(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V
    .locals 2

    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpMethodBase.readResponseBody(HttpState, HttpConnection)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    invoke-direct {p0, p2}, Lorg/apache/commons/httpclient/HttpMethodBase;->readResponseBody(Lorg/apache/commons/httpclient/HttpConnection;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->responseBodyConsumed()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2, v0}, Lorg/apache/commons/httpclient/HttpConnection;->setLastResponseInputStream(Ljava/io/InputStream;)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/HttpMethodBase;->setResponseStream(Ljava/io/InputStream;)V

    goto :goto_0
.end method

.method protected readResponseHeaders(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V
    .locals 2

    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpMethodBase.readResponseHeaders(HttpState,HttpConnection)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getResponseHeaderGroup()Lorg/apache/commons/httpclient/HeaderGroup;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HeaderGroup;->clear()V

    invoke-virtual {p2}, Lorg/apache/commons/httpclient/HttpConnection;->getResponseInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->getHttpElementCharset()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/HttpParser;->parseHeaders(Ljava/io/InputStream;Ljava/lang/String;)[Lorg/apache/commons/httpclient/Header;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getResponseHeaderGroup()Lorg/apache/commons/httpclient/HeaderGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/commons/httpclient/HeaderGroup;->setHeaders([Lorg/apache/commons/httpclient/Header;)V

    return-void
.end method

.method protected readStatusLine(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V
    .locals 6

    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpMethodBase.readStatusLine(HttpState, HttpConnection)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v0

    const-string v1, "http.protocol.status-line-garbage-limit"

    const v2, 0x7fffffff

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->getHttpElementCharset()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/apache/commons/httpclient/HttpConnection;->readLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/commons/httpclient/NoHttpResponseException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "The server "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/commons/httpclient/HttpConnection;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " failed to respond"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/NoHttpResponseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v3, Lorg/apache/commons/httpclient/Wire;->HEADER_WIRE:Lorg/apache/commons/httpclient/Wire;

    invoke-virtual {v3}, Lorg/apache/commons/httpclient/Wire;->enabled()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lorg/apache/commons/httpclient/Wire;->HEADER_WIRE:Lorg/apache/commons/httpclient/Wire;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/commons/httpclient/Wire;->input(Ljava/lang/String;)V

    :cond_1
    if-eqz v2, :cond_3

    invoke-static {v2}, Lorg/apache/commons/httpclient/StatusLine;->startsWithHTTP(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v0, Lorg/apache/commons/httpclient/StatusLine;

    invoke-direct {v0, v2}, Lorg/apache/commons/httpclient/StatusLine;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->statusLine:Lorg/apache/commons/httpclient/StatusLine;

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->statusLine:Lorg/apache/commons/httpclient/StatusLine;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/StatusLine;->getHttpVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v1

    const-string v2, "http.protocol.unambiguous-statusline"

    invoke-virtual {v1, v2}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->isParameterFalse(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "HTTP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/httpclient/HttpVersion;->HTTP_1_0:Lorg/apache/commons/httpclient/HttpVersion;

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->setVersion(Lorg/apache/commons/httpclient/HttpVersion;)V

    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Ambiguous status line (HTTP protocol version missing):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->statusLine:Lorg/apache/commons/httpclient/StatusLine;

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/StatusLine;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    if-eqz v2, :cond_4

    if-lt v0, v1, :cond_5

    :cond_4
    new-instance v0, Lorg/apache/commons/httpclient/ProtocolException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "The server "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/commons/httpclient/HttpConnection;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " failed to respond with a valid HTTP response"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_6
    invoke-static {v0}, Lorg/apache/commons/httpclient/HttpVersion;->parse(Ljava/lang/String;)Lorg/apache/commons/httpclient/HttpVersion;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->effectiveVersion:Lorg/apache/commons/httpclient/HttpVersion;

    goto :goto_1
.end method

.method public recycle()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpMethodBase.recycle()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->releaseConnection()V

    iput-object v3, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->path:Ljava/lang/String;

    iput-boolean v2, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->followRedirects:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->doAuthentication:Z

    iput-object v3, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->queryString:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getRequestHeaderGroup()Lorg/apache/commons/httpclient/HeaderGroup;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HeaderGroup;->clear()V

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getResponseHeaderGroup()Lorg/apache/commons/httpclient/HeaderGroup;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HeaderGroup;->clear()V

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getResponseTrailerHeaderGroup()Lorg/apache/commons/httpclient/HeaderGroup;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HeaderGroup;->clear()V

    iput-object v3, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->statusLine:Lorg/apache/commons/httpclient/StatusLine;

    iput-object v3, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->effectiveVersion:Lorg/apache/commons/httpclient/HttpVersion;

    iput-boolean v2, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->aborted:Z

    iput-boolean v2, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->used:Z

    new-instance v0, Lorg/apache/commons/httpclient/params/HttpMethodParams;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/params/HttpMethodParams;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->params:Lorg/apache/commons/httpclient/params/HttpMethodParams;

    iput-object v3, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseBody:[B

    iput v2, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->recoverableExceptionCount:I

    iput-boolean v2, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->connectionCloseForced:Z

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->hostAuthState:Lorg/apache/commons/httpclient/auth/AuthState;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/auth/AuthState;->invalidate()V

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->proxyAuthState:Lorg/apache/commons/httpclient/auth/AuthState;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/auth/AuthState;->invalidate()V

    iput-object v3, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->cookiespec:Lorg/apache/commons/httpclient/cookie/CookieSpec;

    iput-boolean v2, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->requestSent:Z

    return-void
.end method

.method public releaseConnection()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseStream:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->ensureConnectionRelease()V

    return-void

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->ensureConnectionRelease()V

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public removeRequestHeader(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getRequestHeaderGroup()Lorg/apache/commons/httpclient/HeaderGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/httpclient/HeaderGroup;->getHeaders(Ljava/lang/String;)[Lorg/apache/commons/httpclient/Header;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getRequestHeaderGroup()Lorg/apache/commons/httpclient/HeaderGroup;

    move-result-object v2

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Lorg/apache/commons/httpclient/HeaderGroup;->removeHeader(Lorg/apache/commons/httpclient/Header;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeRequestHeader(Lorg/apache/commons/httpclient/Header;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getRequestHeaderGroup()Lorg/apache/commons/httpclient/HeaderGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/httpclient/HeaderGroup;->removeHeader(Lorg/apache/commons/httpclient/Header;)V

    goto :goto_0
.end method

.method protected responseBodyConsumed()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseStream:Ljava/io/InputStream;

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseConnection:Lorg/apache/commons/httpclient/HttpConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/HttpConnection;->setLastResponseInputStream(Ljava/io/InputStream;)V

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/HttpMethodBase;->shouldCloseConnection(Lorg/apache/commons/httpclient/HttpConnection;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->close()V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->connectionCloseForced:Z

    invoke-direct {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->ensureConnectionRelease()V

    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->isResponseAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v0

    const-string v1, "http.protocol.warn-extra-input"

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->isParameterTrue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "Extra response data detected - closing connection"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->close()V

    goto :goto_0
.end method

.method protected setConnectionCloseForced(Z)V
    .locals 3

    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Force-close connection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_0
    iput-boolean p1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->connectionCloseForced:Z

    return-void
.end method

.method public setDoAuthentication(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->doAuthentication:Z

    return-void
.end method

.method public setFollowRedirects(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->followRedirects:Z

    return-void
.end method

.method public setHostConfiguration(Lorg/apache/commons/httpclient/HostConfiguration;)V
    .locals 4

    if-eqz p1, :cond_0

    new-instance v0, Lorg/apache/commons/httpclient/HttpHost;

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HostConfiguration;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HostConfiguration;->getPort()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HostConfiguration;->getProtocol()Lorg/apache/commons/httpclient/protocol/Protocol;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/httpclient/HttpHost;-><init>(Ljava/lang/String;ILorg/apache/commons/httpclient/protocol/Protocol;)V

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->httphost:Lorg/apache/commons/httpclient/HttpHost;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->httphost:Lorg/apache/commons/httpclient/HttpHost;

    goto :goto_0
.end method

.method public setHttp11(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->params:Lorg/apache/commons/httpclient/params/HttpMethodParams;

    sget-object v1, Lorg/apache/commons/httpclient/HttpVersion;->HTTP_1_1:Lorg/apache/commons/httpclient/HttpVersion;

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->setVersion(Lorg/apache/commons/httpclient/HttpVersion;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->params:Lorg/apache/commons/httpclient/params/HttpMethodParams;

    sget-object v1, Lorg/apache/commons/httpclient/HttpVersion;->HTTP_1_0:Lorg/apache/commons/httpclient/HttpVersion;

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->setVersion(Lorg/apache/commons/httpclient/HttpVersion;)V

    goto :goto_0
.end method

.method public setMethodRetryHandler(Lorg/apache/commons/httpclient/MethodRetryHandler;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->methodRetryHandler:Lorg/apache/commons/httpclient/MethodRetryHandler;

    return-void
.end method

.method public setParams(Lorg/apache/commons/httpclient/params/HttpMethodParams;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->params:Lorg/apache/commons/httpclient/params/HttpMethodParams;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->path:Ljava/lang/String;

    return-void
.end method

.method public setQueryString(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->queryString:Ljava/lang/String;

    return-void
.end method

.method public setQueryString([Lorg/apache/commons/httpclient/NameValuePair;)V
    .locals 2

    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpMethodBase.setQueryString(NameValuePair[])"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Lorg/apache/commons/httpclient/util/EncodingUtil;->formUrlEncode([Lorg/apache/commons/httpclient/NameValuePair;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->queryString:Ljava/lang/String;

    return-void
.end method

.method public setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lorg/apache/commons/httpclient/Header;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/httpclient/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/HttpMethodBase;->setRequestHeader(Lorg/apache/commons/httpclient/Header;)V

    return-void
.end method

.method public setRequestHeader(Lorg/apache/commons/httpclient/Header;)V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getRequestHeaderGroup()Lorg/apache/commons/httpclient/HeaderGroup;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/Header;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/HeaderGroup;->getHeaders(Ljava/lang/String;)[Lorg/apache/commons/httpclient/Header;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getRequestHeaderGroup()Lorg/apache/commons/httpclient/HeaderGroup;

    move-result-object v2

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Lorg/apache/commons/httpclient/HeaderGroup;->removeHeader(Lorg/apache/commons/httpclient/Header;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getRequestHeaderGroup()Lorg/apache/commons/httpclient/HeaderGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/httpclient/HeaderGroup;->addHeader(Lorg/apache/commons/httpclient/Header;)V

    return-void
.end method

.method protected setResponseStream(Ljava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseStream:Ljava/io/InputStream;

    return-void
.end method

.method public setStrictMode(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->params:Lorg/apache/commons/httpclient/params/HttpMethodParams;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->makeStrict()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->params:Lorg/apache/commons/httpclient/params/HttpMethodParams;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->makeLenient()V

    goto :goto_0
.end method

.method public setURI(Lorg/apache/commons/httpclient/URI;)V
    .locals 1

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/URI;->isAbsoluteURI()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/commons/httpclient/HttpHost;

    invoke-direct {v0, p1}, Lorg/apache/commons/httpclient/HttpHost;-><init>(Lorg/apache/commons/httpclient/URI;)V

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->httphost:Lorg/apache/commons/httpclient/HttpHost;

    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "/"

    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/HttpMethodBase;->setPath(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/URI;->getEscapedQuery()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/HttpMethodBase;->setQueryString(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/URI;->getEscapedPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected shouldCloseConnection(Lorg/apache/commons/httpclient/HttpConnection;)Z
    .locals 5

    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->isConnectionCloseForced()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "Should force-close connection."

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpConnection;->isTransparent()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseHeaders:Lorg/apache/commons/httpclient/HeaderGroup;

    const-string v2, "proxy-connection"

    invoke-virtual {v1, v2}, Lorg/apache/commons/httpclient/HeaderGroup;->getFirstHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;

    move-result-object v1

    :cond_2
    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseHeaders:Lorg/apache/commons/httpclient/HeaderGroup;

    const-string v2, "connection"

    invoke-virtual {v1, v2}, Lorg/apache/commons/httpclient/HeaderGroup;->getFirstHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;

    move-result-object v1

    :cond_3
    if-nez v1, :cond_4

    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->requestHeaders:Lorg/apache/commons/httpclient/HeaderGroup;

    const-string v2, "connection"

    invoke-virtual {v1, v2}, Lorg/apache/commons/httpclient/HeaderGroup;->getFirstHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;

    move-result-object v1

    :cond_4
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v3, "close"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Should close connection in response to directive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    invoke-virtual {v1}, Lorg/apache/commons/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v2, "keep-alive"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Should NOT close connection in response to directive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_7
    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Unknown directive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/Header;->toExternalForm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_8
    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "Resorting to protocol version default close connection policy"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->effectiveVersion:Lorg/apache/commons/httpclient/HttpVersion;

    sget-object v1, Lorg/apache/commons/httpclient/HttpVersion;->HTTP_1_1:Lorg/apache/commons/httpclient/HttpVersion;

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/HttpVersion;->greaterEquals(Lorg/apache/commons/httpclient/HttpVersion;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Should NOT close connection, using "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->effectiveVersion:Lorg/apache/commons/httpclient/HttpVersion;

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/HttpVersion;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_9
    :goto_1
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->effectiveVersion:Lorg/apache/commons/httpclient/HttpVersion;

    sget-object v1, Lorg/apache/commons/httpclient/HttpVersion;->HTTP_1_0:Lorg/apache/commons/httpclient/HttpVersion;

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/HttpVersion;->lessEquals(Lorg/apache/commons/httpclient/HttpVersion;)Z

    move-result v0

    goto/16 :goto_0

    :cond_a
    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Should close connection, using "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->effectiveVersion:Lorg/apache/commons/httpclient/HttpVersion;

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/HttpVersion;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public validate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected writeRequest(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "enter HttpMethodBase.writeRequest(HttpState, HttpConnection)"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/httpclient/HttpMethodBase;->writeRequestLine(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/httpclient/HttpMethodBase;->writeRequestHeaders(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V

    invoke-virtual {p2}, Lorg/apache/commons/httpclient/HttpConnection;->writeLine()V

    sget-object v1, Lorg/apache/commons/httpclient/Wire;->HEADER_WIRE:Lorg/apache/commons/httpclient/Wire;

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/Wire;->enabled()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/apache/commons/httpclient/Wire;->HEADER_WIRE:Lorg/apache/commons/httpclient/Wire;

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Lorg/apache/commons/httpclient/Wire;->output(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->getVersion()Lorg/apache/commons/httpclient/HttpVersion;

    move-result-object v1

    const-string v2, "Expect"

    invoke-virtual {p0, v2}, Lorg/apache/commons/httpclient/HttpMethodBase;->getRequestHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    const-string v2, "100-continue"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lorg/apache/commons/httpclient/HttpVersion;->HTTP_1_1:Lorg/apache/commons/httpclient/HttpVersion;

    invoke-virtual {v1, v0}, Lorg/apache/commons/httpclient/HttpVersion;->greaterEquals(Lorg/apache/commons/httpclient/HttpVersion;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Lorg/apache/commons/httpclient/HttpConnection;->flushRequestOutputStream()V

    invoke-virtual {p2}, Lorg/apache/commons/httpclient/HttpConnection;->getParams()Lorg/apache/commons/httpclient/params/HttpConnectionParams;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/params/HttpConnectionParams;->getSoTimeout()I

    move-result v1

    const/16 v0, 0xbb8

    :try_start_0
    invoke-virtual {p2, v0}, Lorg/apache/commons/httpclient/HttpConnection;->setSocketTimeout(I)V

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/httpclient/HttpMethodBase;->readStatusLine(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/httpclient/HttpMethodBase;->processStatusLine(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/httpclient/HttpMethodBase;->readResponseHeaders(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/httpclient/HttpMethodBase;->processResponseHeaders(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->statusLine:Lorg/apache/commons/httpclient/StatusLine;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v2, 0x64

    if-ne v0, v2, :cond_3

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->statusLine:Lorg/apache/commons/httpclient/StatusLine;

    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "OK to continue received"

    invoke-interface {v0, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2, v1}, Lorg/apache/commons/httpclient/HttpConnection;->setSocketTimeout(I)V

    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/httpclient/HttpMethodBase;->writeRequestBody(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)Z

    invoke-virtual {p2}, Lorg/apache/commons/httpclient/HttpConnection;->flushRequestOutputStream()V

    :goto_1
    return-void

    :cond_3
    invoke-virtual {p2, v1}, Lorg/apache/commons/httpclient/HttpConnection;->setSocketTimeout(I)V

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lorg/apache/commons/httpclient/util/ExceptionUtil;->isSocketTimeoutException(Ljava/io/InterruptedIOException;)Z

    move-result v2

    if-nez v2, :cond_4

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {p2, v1}, Lorg/apache/commons/httpclient/HttpConnection;->setSocketTimeout(I)V

    throw v0

    :cond_4
    :try_start_2
    const-string v0, "Expect"

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/HttpMethodBase;->removeRequestHeader(Ljava/lang/String;)V

    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "100 (continue) read timeout. Resume sending the request"

    invoke-interface {v0, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p2, v1}, Lorg/apache/commons/httpclient/HttpConnection;->setSocketTimeout(I)V

    goto :goto_0

    :cond_5
    const-string v0, "Expect"

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/HttpMethodBase;->removeRequestHeader(Ljava/lang/String;)V

    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "\'Expect: 100-continue\' handshake is only supported by HTTP/1.1 or higher"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected writeRequestBody(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected writeRequestHeaders(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V
    .locals 5

    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpMethodBase.writeRequestHeaders(HttpState,HttpConnection)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/httpclient/HttpMethodBase;->addRequestHeaders(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->getHttpElementCharset()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getRequestHeaders()[Lorg/apache/commons/httpclient/Header;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget-object v3, v2, v0

    invoke-virtual {v3}, Lorg/apache/commons/httpclient/Header;->toExternalForm()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/apache/commons/httpclient/Wire;->HEADER_WIRE:Lorg/apache/commons/httpclient/Wire;

    invoke-virtual {v4}, Lorg/apache/commons/httpclient/Wire;->enabled()Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lorg/apache/commons/httpclient/Wire;->HEADER_WIRE:Lorg/apache/commons/httpclient/Wire;

    invoke-virtual {v4, v3}, Lorg/apache/commons/httpclient/Wire;->output(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p2, v3, v1}, Lorg/apache/commons/httpclient/HttpConnection;->print(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected writeRequestLine(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V
    .locals 2

    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpMethodBase.writeRequestLine(HttpState, HttpConnection)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    invoke-direct {p0, p2}, Lorg/apache/commons/httpclient/HttpMethodBase;->getRequestLine(Lorg/apache/commons/httpclient/HttpConnection;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/httpclient/Wire;->HEADER_WIRE:Lorg/apache/commons/httpclient/Wire;

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/Wire;->enabled()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/apache/commons/httpclient/Wire;->HEADER_WIRE:Lorg/apache/commons/httpclient/Wire;

    invoke-virtual {v1, v0}, Lorg/apache/commons/httpclient/Wire;->output(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->getHttpElementCharset()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/apache/commons/httpclient/HttpConnection;->print(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
