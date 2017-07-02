.class Lorg/apache/commons/httpclient/HttpMethodDirector;
.super Ljava/lang/Object;


# static fields
.field private static final LOG:Lorg/apache/commons/logging/Log;

.field public static final PROXY_AUTH_CHALLENGE:Ljava/lang/String; = "Proxy-Authenticate"

.field public static final PROXY_AUTH_RESP:Ljava/lang/String; = "Proxy-Authorization"

.field public static final WWW_AUTH_CHALLENGE:Ljava/lang/String; = "WWW-Authenticate"

.field public static final WWW_AUTH_RESP:Ljava/lang/String; = "Authorization"

.field static class$org$apache$commons$httpclient$HttpMethodDirector:Ljava/lang/Class;


# instance fields
.field private authProcessor:Lorg/apache/commons/httpclient/auth/AuthChallengeProcessor;

.field private conn:Lorg/apache/commons/httpclient/HttpConnection;

.field private connectMethod:Lorg/apache/commons/httpclient/ConnectMethod;

.field private connectionManager:Lorg/apache/commons/httpclient/HttpConnectionManager;

.field private hostConfiguration:Lorg/apache/commons/httpclient/HostConfiguration;

.field private params:Lorg/apache/commons/httpclient/params/HttpClientParams;

.field private redirectLocations:Ljava/util/Set;

.field private releaseConnection:Z

.field private state:Lorg/apache/commons/httpclient/HttpState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodDirector;->class$org$apache$commons$httpclient$HttpMethodDirector:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.commons.httpclient.HttpMethodDirector"

    invoke-static {v0}, Lorg/apache/commons/httpclient/HttpMethodDirector;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/HttpMethodDirector;->class$org$apache$commons$httpclient$HttpMethodDirector:Ljava/lang/Class;

    :goto_0
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    return-void

    :cond_0
    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodDirector;->class$org$apache$commons$httpclient$HttpMethodDirector:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/commons/httpclient/HttpConnectionManager;Lorg/apache/commons/httpclient/HostConfiguration;Lorg/apache/commons/httpclient/params/HttpClientParams;Lorg/apache/commons/httpclient/HttpState;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->releaseConnection:Z

    iput-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->authProcessor:Lorg/apache/commons/httpclient/auth/AuthChallengeProcessor;

    iput-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->redirectLocations:Ljava/util/Set;

    iput-object p1, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->connectionManager:Lorg/apache/commons/httpclient/HttpConnectionManager;

    iput-object p2, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->hostConfiguration:Lorg/apache/commons/httpclient/HostConfiguration;

    iput-object p3, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->params:Lorg/apache/commons/httpclient/params/HttpClientParams;

    iput-object p4, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->state:Lorg/apache/commons/httpclient/HttpState;

    new-instance v0, Lorg/apache/commons/httpclient/auth/AuthChallengeProcessor;

    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->params:Lorg/apache/commons/httpclient/params/HttpClientParams;

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/auth/AuthChallengeProcessor;-><init>(Lorg/apache/commons/httpclient/params/HttpParams;)V

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->authProcessor:Lorg/apache/commons/httpclient/auth/AuthChallengeProcessor;

    return-void
.end method

.method private applyConnectionParams(Lorg/apache/commons/httpclient/HttpMethod;)V
    .locals 3

    const/4 v1, 0x0

    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v0

    const-string v2, "http.socket.timeout"

    invoke-virtual {v0, v2}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->getParams()Lorg/apache/commons/httpclient/params/HttpConnectionParams;

    move-result-object v0

    const-string v2, "http.socket.timeout"

    invoke-virtual {v0, v2}, Lorg/apache/commons/httpclient/params/HttpConnectionParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v1, v0}, Lorg/apache/commons/httpclient/HttpConnection;->setSocketTimeout(I)V

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private authenticate(Lorg/apache/commons/httpclient/HttpMethod;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->isProxied()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->isSecure()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/HttpMethodDirector;->authenticateProxy(Lorg/apache/commons/httpclient/HttpMethod;)V

    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/HttpMethodDirector;->authenticateHost(Lorg/apache/commons/httpclient/HttpMethod;)V
    :try_end_0
    .catch Lorg/apache/commons/httpclient/auth/AuthenticationException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/auth/AuthenticationException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private authenticateHost(Lorg/apache/commons/httpclient/HttpMethod;)V
    .locals 6

    const-string v0, "Authorization"

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/httpclient/HttpMethodDirector;->cleanAuthHeaders(Lorg/apache/commons/httpclient/HttpMethod;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getHostAuthState()Lorg/apache/commons/httpclient/auth/AuthState;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/auth/AuthState;->getAuthScheme()Lorg/apache/commons/httpclient/auth/AuthScheme;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/auth/AuthState;->isAuthRequested()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v1}, Lorg/apache/commons/httpclient/auth/AuthScheme;->isConnectionBased()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->getVirtualHost()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->getHost()Ljava/lang/String;

    move-result-object v0

    :cond_3
    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/HttpConnection;->getPort()I

    move-result v2

    new-instance v3, Lorg/apache/commons/httpclient/auth/AuthScope;

    invoke-interface {v1}, Lorg/apache/commons/httpclient/auth/AuthScheme;->getRealm()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1}, Lorg/apache/commons/httpclient/auth/AuthScheme;->getSchemeName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v0, v2, v4, v5}, Lorg/apache/commons/httpclient/auth/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Authenticating with "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_4
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->state:Lorg/apache/commons/httpclient/HttpState;

    invoke-virtual {v0, v3}, Lorg/apache/commons/httpclient/HttpState;->getCredentials(Lorg/apache/commons/httpclient/auth/AuthScope;)Lorg/apache/commons/httpclient/Credentials;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v1, v0, p1}, Lorg/apache/commons/httpclient/auth/AuthScheme;->authenticate(Lorg/apache/commons/httpclient/Credentials;Lorg/apache/commons/httpclient/HttpMethod;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lorg/apache/commons/httpclient/Header;

    const-string v2, "Authorization"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v0, v3}, Lorg/apache/commons/httpclient/Header;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {p1, v1}, Lorg/apache/commons/httpclient/HttpMethod;->addRequestHeader(Lorg/apache/commons/httpclient/Header;)V

    goto :goto_0

    :cond_5
    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Required credentials not available for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getHostAuthState()Lorg/apache/commons/httpclient/auth/AuthState;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/auth/AuthState;->isPreemptive()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "Preemptive authentication requested but no default credentials available"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private authenticateProxy(Lorg/apache/commons/httpclient/HttpMethod;)V
    .locals 6

    const-string v0, "Proxy-Authorization"

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/httpclient/HttpMethodDirector;->cleanAuthHeaders(Lorg/apache/commons/httpclient/HttpMethod;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getProxyAuthState()Lorg/apache/commons/httpclient/auth/AuthState;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/auth/AuthState;->getAuthScheme()Lorg/apache/commons/httpclient/auth/AuthScheme;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/auth/AuthState;->isAuthRequested()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v1}, Lorg/apache/commons/httpclient/auth/AuthScheme;->isConnectionBased()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    new-instance v0, Lorg/apache/commons/httpclient/auth/AuthScope;

    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/HttpConnection;->getProxyHost()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v3}, Lorg/apache/commons/httpclient/HttpConnection;->getProxyPort()I

    move-result v3

    invoke-interface {v1}, Lorg/apache/commons/httpclient/auth/AuthScheme;->getRealm()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1}, Lorg/apache/commons/httpclient/auth/AuthScheme;->getSchemeName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/apache/commons/httpclient/auth/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Authenticating with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_3
    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->state:Lorg/apache/commons/httpclient/HttpState;

    invoke-virtual {v2, v0}, Lorg/apache/commons/httpclient/HttpState;->getProxyCredentials(Lorg/apache/commons/httpclient/auth/AuthScope;)Lorg/apache/commons/httpclient/Credentials;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {v1, v2, p1}, Lorg/apache/commons/httpclient/auth/AuthScheme;->authenticate(Lorg/apache/commons/httpclient/Credentials;Lorg/apache/commons/httpclient/HttpMethod;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lorg/apache/commons/httpclient/Header;

    const-string v2, "Proxy-Authorization"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v0, v3}, Lorg/apache/commons/httpclient/Header;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {p1, v1}, Lorg/apache/commons/httpclient/HttpMethod;->addRequestHeader(Lorg/apache/commons/httpclient/Header;)V

    goto :goto_0

    :cond_4
    sget-object v1, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Required proxy credentials not available for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getProxyAuthState()Lorg/apache/commons/httpclient/auth/AuthState;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/auth/AuthState;->isPreemptive()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "Preemptive authentication requested but no default proxy credentials available"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    goto/16 :goto_0
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

.method private cleanAuthHeaders(Lorg/apache/commons/httpclient/HttpMethod;Ljava/lang/String;)Z
    .locals 6

    const/4 v1, 0x0

    invoke-interface {p1, p2}, Lorg/apache/commons/httpclient/HttpMethod;->getRequestHeaders(Ljava/lang/String;)[Lorg/apache/commons/httpclient/Header;

    move-result-object v3

    const/4 v0, 0x1

    move v2, v0

    move v0, v1

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_1

    aget-object v4, v3, v0

    invoke-virtual {v4}, Lorg/apache/commons/httpclient/Header;->isAutogenerated()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {p1, v4}, Lorg/apache/commons/httpclient/HttpMethod;->removeRequestHeader(Lorg/apache/commons/httpclient/Header;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    return v2
.end method

.method private executeConnect()Z
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-instance v0, Lorg/apache/commons/httpclient/ConnectMethod;

    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->hostConfiguration:Lorg/apache/commons/httpclient/HostConfiguration;

    invoke-direct {v0, v3}, Lorg/apache/commons/httpclient/ConnectMethod;-><init>(Lorg/apache/commons/httpclient/HostConfiguration;)V

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->connectMethod:Lorg/apache/commons/httpclient/ConnectMethod;

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->connectMethod:Lorg/apache/commons/httpclient/ConnectMethod;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/ConnectMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->hostConfiguration:Lorg/apache/commons/httpclient/HostConfiguration;

    invoke-virtual {v3}, Lorg/apache/commons/httpclient/HostConfiguration;->getParams()Lorg/apache/commons/httpclient/params/HostParams;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->setDefaults(Lorg/apache/commons/httpclient/params/HttpParams;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->open()V

    :cond_1
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->params:Lorg/apache/commons/httpclient/params/HttpClientParams;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/params/HttpClientParams;->isAuthenticationPreemptive()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->state:Lorg/apache/commons/httpclient/HttpState;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpState;->isAuthenticationPreemptive()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    const-string v3, "Preemptively sending default basic credentials"

    invoke-interface {v0, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->connectMethod:Lorg/apache/commons/httpclient/ConnectMethod;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/ConnectMethod;->getProxyAuthState()Lorg/apache/commons/httpclient/auth/AuthState;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/auth/AuthState;->setPreemptive()V

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->connectMethod:Lorg/apache/commons/httpclient/ConnectMethod;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/ConnectMethod;->getProxyAuthState()Lorg/apache/commons/httpclient/auth/AuthState;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/auth/AuthState;->setAuthAttempted(Z)V

    :cond_3
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->connectMethod:Lorg/apache/commons/httpclient/ConnectMethod;

    invoke-direct {p0, v0}, Lorg/apache/commons/httpclient/HttpMethodDirector;->authenticateProxy(Lorg/apache/commons/httpclient/HttpMethod;)V
    :try_end_0
    .catch Lorg/apache/commons/httpclient/auth/AuthenticationException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->connectMethod:Lorg/apache/commons/httpclient/ConnectMethod;

    invoke-direct {p0, v0}, Lorg/apache/commons/httpclient/HttpMethodDirector;->applyConnectionParams(Lorg/apache/commons/httpclient/HttpMethod;)V

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->connectMethod:Lorg/apache/commons/httpclient/ConnectMethod;

    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->state:Lorg/apache/commons/httpclient/HttpState;

    iget-object v4, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0, v3, v4}, Lorg/apache/commons/httpclient/ConnectMethod;->execute(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)I

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->connectMethod:Lorg/apache/commons/httpclient/ConnectMethod;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/ConnectMethod;->getStatusCode()I

    move-result v3

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->connectMethod:Lorg/apache/commons/httpclient/ConnectMethod;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/ConnectMethod;->getProxyAuthState()Lorg/apache/commons/httpclient/auth/AuthState;

    move-result-object v4

    const/16 v0, 0x197

    if-ne v3, v0, :cond_4

    move v0, v1

    :goto_2
    invoke-virtual {v4, v0}, Lorg/apache/commons/httpclient/auth/AuthState;->setAuthRequested(Z)V

    invoke-virtual {v4}, Lorg/apache/commons/httpclient/auth/AuthState;->isAuthRequested()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->connectMethod:Lorg/apache/commons/httpclient/ConnectMethod;

    invoke-direct {p0, v0}, Lorg/apache/commons/httpclient/HttpMethodDirector;->processAuthenticationResponse(Lorg/apache/commons/httpclient/HttpMethod;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_3
    if-nez v0, :cond_5

    const/16 v0, 0xc8

    if-lt v3, v0, :cond_6

    const/16 v0, 0x12c

    if-ge v3, v0, :cond_6

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->tunnelCreated()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->connectMethod:Lorg/apache/commons/httpclient/ConnectMethod;

    :goto_4
    return v1

    :catch_0
    move-exception v0

    sget-object v3, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/auth/AuthenticationException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->connectMethod:Lorg/apache/commons/httpclient/ConnectMethod;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/ConnectMethod;->getResponseBodyAsStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->connectMethod:Lorg/apache/commons/httpclient/ConnectMethod;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/ConnectMethod;->getResponseBodyAsStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->close()V

    move v1, v2

    goto :goto_4

    :cond_7
    move v0, v2

    goto :goto_3
.end method

.method private executeWithRetry(Lorg/apache/commons/httpclient/HttpMethod;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v5, 0x0

    :goto_0
    add-int/lit8 v5, v5, 0x1

    :try_start_0
    sget-object v1, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Attempt number "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " to process request"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/HttpConnection;->getParams()Lorg/apache/commons/httpclient/params/HttpConnectionParams;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/params/HttpConnectionParams;->isStaleCheckingEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/HttpConnection;->closeIfStale()Z

    :cond_1
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/HttpConnection;->isOpen()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/HttpConnection;->open()V

    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/HttpConnection;->isProxied()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/HttpConnection;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_2

    instance-of v1, p1, Lorg/apache/commons/httpclient/ConnectMethod;

    if-nez v1, :cond_2

    invoke-direct {p0}, Lorg/apache/commons/httpclient/HttpMethodDirector;->executeConnect()Z

    move-result v1

    if-nez v1, :cond_2

    :goto_1
    return-void

    :cond_2
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/HttpMethodDirector;->applyConnectionParams(Lorg/apache/commons/httpclient/HttpMethod;)V

    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->state:Lorg/apache/commons/httpclient/HttpState;

    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-interface {p1, v1, v2}, Lorg/apache/commons/httpclient/HttpMethod;->execute(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)I
    :try_end_0
    .catch Lorg/apache/commons/httpclient/HttpException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    throw v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3

    :catch_1
    move-exception v1

    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/HttpConnection;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    const-string v3, "Closing the connection."

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/HttpConnection;->close()V

    :cond_3
    iput-boolean v8, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->releaseConnection:Z

    throw v1

    :catch_2
    move-exception v1

    move-object v7, v1

    :try_start_2
    sget-object v1, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "Closing the connection."

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/HttpConnection;->close()V

    instance-of v1, p1, Lorg/apache/commons/httpclient/HttpMethodBase;

    if-eqz v1, :cond_5

    move-object v0, p1

    check-cast v0, Lorg/apache/commons/httpclient/HttpMethodBase;

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/HttpMethodBase;->getMethodRetryHandler()Lorg/apache/commons/httpclient/MethodRetryHandler;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    new-instance v4, Lorg/apache/commons/httpclient/HttpRecoverableException;

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Lorg/apache/commons/httpclient/HttpRecoverableException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->isRequestSent()Z

    move-result v6

    move-object v2, p1

    invoke-interface/range {v1 .. v6}, Lorg/apache/commons/httpclient/MethodRetryHandler;->retryMethod(Lorg/apache/commons/httpclient/HttpMethod;Lorg/apache/commons/httpclient/HttpConnection;Lorg/apache/commons/httpclient/HttpRecoverableException;IZ)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "Method retry handler returned false. Automatic recovery will not be attempted"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    throw v7
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3

    :catch_3
    move-exception v1

    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/HttpConnection;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    const-string v3, "Closing the connection."

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/HttpConnection;->close()V

    :cond_4
    iput-boolean v8, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->releaseConnection:Z

    throw v1

    :cond_5
    :try_start_3
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v1

    const-string v2, "http.method.retry-handler"

    invoke-virtual {v1, v2}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/httpclient/HttpMethodRetryHandler;

    if-nez v1, :cond_6

    new-instance v1, Lorg/apache/commons/httpclient/DefaultHttpMethodRetryHandler;

    invoke-direct {v1}, Lorg/apache/commons/httpclient/DefaultHttpMethodRetryHandler;-><init>()V

    :cond_6
    invoke-interface {v1, p1, v7, v5}, Lorg/apache/commons/httpclient/HttpMethodRetryHandler;->retryMethod(Lorg/apache/commons/httpclient/HttpMethod;Ljava/io/IOException;I)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "Method retry handler returned false. Automatic recovery will not be attempted"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    throw v7

    :cond_7
    sget-object v1, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isInfoEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v1, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "I/O exception ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ") caught when processing request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_8
    sget-object v1, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v1, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v7}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_9
    sget-object v1, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "Retrying request"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0
.end method

.method private fakeResponse(Lorg/apache/commons/httpclient/HttpMethod;)V
    .locals 4

    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "CONNECT failed, fake the response for the original method"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    instance-of v0, p1, Lorg/apache/commons/httpclient/HttpMethodBase;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/apache/commons/httpclient/HttpMethodBase;

    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->connectMethod:Lorg/apache/commons/httpclient/ConnectMethod;

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/ConnectMethod;->getStatusLine()Lorg/apache/commons/httpclient/StatusLine;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->connectMethod:Lorg/apache/commons/httpclient/ConnectMethod;

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/ConnectMethod;->getResponseHeaderGroup()Lorg/apache/commons/httpclient/HeaderGroup;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->connectMethod:Lorg/apache/commons/httpclient/ConnectMethod;

    invoke-virtual {v3}, Lorg/apache/commons/httpclient/ConnectMethod;->getResponseBodyAsStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/httpclient/HttpMethodBase;->fakeResponse(Lorg/apache/commons/httpclient/StatusLine;Lorg/apache/commons/httpclient/HeaderGroup;Ljava/io/InputStream;)V

    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getProxyAuthState()Lorg/apache/commons/httpclient/auth/AuthState;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->connectMethod:Lorg/apache/commons/httpclient/ConnectMethod;

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/ConnectMethod;->getProxyAuthState()Lorg/apache/commons/httpclient/auth/AuthState;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/auth/AuthState;->getAuthScheme()Lorg/apache/commons/httpclient/auth/AuthScheme;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/auth/AuthState;->setAuthScheme(Lorg/apache/commons/httpclient/auth/AuthScheme;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->connectMethod:Lorg/apache/commons/httpclient/ConnectMethod;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->releaseConnection:Z

    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "Unable to fake response on method as it is not derived from HttpMethodBase."

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private isAuthenticationNeeded(Lorg/apache/commons/httpclient/HttpMethod;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getHostAuthState()Lorg/apache/commons/httpclient/auth/AuthState;

    move-result-object v3

    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getStatusCode()I

    move-result v0

    const/16 v4, 0x191

    if-ne v0, v4, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lorg/apache/commons/httpclient/auth/AuthState;->setAuthRequested(Z)V

    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getProxyAuthState()Lorg/apache/commons/httpclient/auth/AuthState;

    move-result-object v3

    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getStatusCode()I

    move-result v0

    const/16 v4, 0x197

    if-ne v0, v4, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lorg/apache/commons/httpclient/auth/AuthState;->setAuthRequested(Z)V

    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getHostAuthState()Lorg/apache/commons/httpclient/auth/AuthState;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/auth/AuthState;->isAuthRequested()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getProxyAuthState()Lorg/apache/commons/httpclient/auth/AuthState;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/auth/AuthState;->isAuthRequested()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    const-string v3, "Authorization required"

    invoke-interface {v0, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getDoAuthentication()Z

    move-result v0

    if-eqz v0, :cond_4

    move v2, v1

    :cond_1
    :goto_2
    return v2

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "Authentication requested but doAuthentication is disabled"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto :goto_2
.end method

.method private isRedirectNeeded(Lorg/apache/commons/httpclient/HttpMethod;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getStatusCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    sget-object v1, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "Redirect required"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getFollowRedirects()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x12d
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private processAuthenticationResponse(Lorg/apache/commons/httpclient/HttpMethod;)Z
    .locals 4

    const/4 v0, 0x0

    sget-object v1, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "enter HttpMethodBase.processAuthenticationResponse(HttpState, HttpConnection)"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    :try_start_0
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getStatusCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    return v0

    :sswitch_0
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/HttpMethodDirector;->processWWWAuthChallenge(Lorg/apache/commons/httpclient/HttpMethod;)Z

    move-result v0

    goto :goto_0

    :sswitch_1
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/HttpMethodDirector;->processProxyAuthChallenge(Lorg/apache/commons/httpclient/HttpMethod;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isErrorEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x191 -> :sswitch_0
        0x197 -> :sswitch_1
    .end sparse-switch
.end method

.method private processProxyAuthChallenge(Lorg/apache/commons/httpclient/HttpMethod;)Z
    .locals 9

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getProxyAuthState()Lorg/apache/commons/httpclient/auth/AuthState;

    move-result-object v4

    const-string v2, "Proxy-Authenticate"

    invoke-interface {p1, v2}, Lorg/apache/commons/httpclient/HttpMethod;->getResponseHeaders(Ljava/lang/String;)[Lorg/apache/commons/httpclient/Header;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/httpclient/auth/AuthChallengeParser;->parseChallenges([Lorg/apache/commons/httpclient/Header;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v1, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "Proxy authentication challenge(s) not found"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v3, 0x0

    :try_start_0
    iget-object v5, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->authProcessor:Lorg/apache/commons/httpclient/auth/AuthChallengeProcessor;

    invoke-virtual {v5, v4, v2}, Lorg/apache/commons/httpclient/auth/AuthChallengeProcessor;->processChallenge(Lorg/apache/commons/httpclient/auth/AuthState;Ljava/util/Map;)Lorg/apache/commons/httpclient/auth/AuthScheme;
    :try_end_0
    .catch Lorg/apache/commons/httpclient/auth/AuthChallengeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v3, v2

    :cond_2
    :goto_1
    if-eqz v3, :cond_0

    new-instance v5, Lorg/apache/commons/httpclient/auth/AuthScope;

    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/HttpConnection;->getProxyHost()Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v6}, Lorg/apache/commons/httpclient/HttpConnection;->getProxyPort()I

    move-result v6

    invoke-interface {v3}, Lorg/apache/commons/httpclient/auth/AuthScheme;->getRealm()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3}, Lorg/apache/commons/httpclient/auth/AuthScheme;->getSchemeName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v2, v6, v7, v8}, Lorg/apache/commons/httpclient/auth/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Proxy authentication scope: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {v4}, Lorg/apache/commons/httpclient/auth/AuthState;->isAuthAttempted()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v3}, Lorg/apache/commons/httpclient/auth/AuthScheme;->isComplete()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v2

    invoke-direct {p0, v3, v2, v5}, Lorg/apache/commons/httpclient/HttpMethodDirector;->promptForProxyCredentials(Lorg/apache/commons/httpclient/auth/AuthScheme;Lorg/apache/commons/httpclient/params/HttpParams;Lorg/apache/commons/httpclient/auth/AuthScope;)Lorg/apache/commons/httpclient/Credentials;

    move-result-object v2

    if-nez v2, :cond_4

    sget-object v1, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isInfoEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Failure authenticating with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v5, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v5}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/auth/AuthChallengeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_4
    move v0, v1

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v4, v1}, Lorg/apache/commons/httpclient/auth/AuthState;->setAuthAttempted(Z)V

    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->state:Lorg/apache/commons/httpclient/HttpState;

    invoke-virtual {v2, v5}, Lorg/apache/commons/httpclient/HttpState;->getProxyCredentials(Lorg/apache/commons/httpclient/auth/AuthScope;)Lorg/apache/commons/httpclient/Credentials;

    move-result-object v2

    if-nez v2, :cond_6

    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v2

    invoke-direct {p0, v3, v2, v5}, Lorg/apache/commons/httpclient/HttpMethodDirector;->promptForProxyCredentials(Lorg/apache/commons/httpclient/auth/AuthScheme;Lorg/apache/commons/httpclient/params/HttpParams;Lorg/apache/commons/httpclient/auth/AuthScope;)Lorg/apache/commons/httpclient/Credentials;

    move-result-object v2

    :cond_6
    if-nez v2, :cond_7

    sget-object v1, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isInfoEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "No credentials available for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_7
    move v0, v1

    goto/16 :goto_0
.end method

.method private processRedirectResponse(Lorg/apache/commons/httpclient/HttpMethod;)Z
    .locals 9

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v0, "location"

    invoke-interface {p1, v0}, Lorg/apache/commons/httpclient/HttpMethod;->getResponseHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Received redirect response "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getStatusCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " but no location header"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    move v0, v6

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v8

    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Redirect requested to location \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_1
    :try_start_0
    new-instance v0, Lorg/apache/commons/httpclient/URI;

    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/HttpConnection;->getProtocol()Lorg/apache/commons/httpclient/protocol/Protocol;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/protocol/Protocol;->getScheme()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v3}, Lorg/apache/commons/httpclient/HttpConnection;->getHost()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v4}, Lorg/apache/commons/httpclient/HttpConnection;->getPort()I

    move-result v4

    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/httpclient/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->getUriCharset()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/apache/commons/httpclient/URI;

    const/4 v3, 0x1

    invoke-direct {v2, v8, v3, v1}, Lorg/apache/commons/httpclient/URI;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/URI;->isRelativeURI()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->params:Lorg/apache/commons/httpclient/params/HttpClientParams;

    const-string v3, "http.protocol.reject-relative-redirect"

    invoke-virtual {v1, v3}, Lorg/apache/commons/httpclient/params/HttpClientParams;->isParameterTrue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Relative redirect location \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\' not allowed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    move v0, v6

    goto/16 :goto_0

    :cond_2
    sget-object v1, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    const-string v3, "Redirect URI is not absolute - parsing as relative"

    invoke-interface {v1, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    new-instance v1, Lorg/apache/commons/httpclient/URI;

    invoke-direct {v1, v0, v2}, Lorg/apache/commons/httpclient/URI;-><init>(Lorg/apache/commons/httpclient/URI;Lorg/apache/commons/httpclient/URI;)V

    :goto_1
    invoke-interface {p1, v1}, Lorg/apache/commons/httpclient/HttpMethod;->setURI(Lorg/apache/commons/httpclient/URI;)V

    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->hostConfiguration:Lorg/apache/commons/httpclient/HostConfiguration;

    invoke-virtual {v2, v1}, Lorg/apache/commons/httpclient/HostConfiguration;->setHost(Lorg/apache/commons/httpclient/URI;)V
    :try_end_0
    .catch Lorg/apache/commons/httpclient/URIException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->params:Lorg/apache/commons/httpclient/params/HttpClientParams;

    const-string v3, "http.protocol.allow-circular-redirects"

    invoke-virtual {v2, v3}, Lorg/apache/commons/httpclient/params/HttpClientParams;->isParameterFalse(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->redirectLocations:Ljava/util/Set;

    if-nez v2, :cond_3

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->redirectLocations:Ljava/util/Set;

    :cond_3
    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->redirectLocations:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :try_start_1
    invoke-virtual {v1}, Lorg/apache/commons/httpclient/URI;->hasQuery()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/apache/commons/httpclient/URI;->setQuery(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/apache/commons/httpclient/URIException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->redirectLocations:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v0, Lorg/apache/commons/httpclient/CircularRedirectException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Circular redirect to \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/CircularRedirectException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :try_start_2
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->params:Lorg/apache/commons/httpclient/params/HttpClientParams;

    invoke-virtual {v1, v3}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->setDefaults(Lorg/apache/commons/httpclient/params/HttpParams;)V
    :try_end_2
    .catch Lorg/apache/commons/httpclient/URIException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/commons/httpclient/InvalidRedirectLocationException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Invalid redirect location: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v8, v0}, Lorg/apache/commons/httpclient/InvalidRedirectLocationException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    move v0, v6

    goto/16 :goto_0

    :cond_6
    sget-object v2, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Redirecting from \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/URI;->getEscapedURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, "\' to \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/URI;->getEscapedURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_7
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getHostAuthState()Lorg/apache/commons/httpclient/auth/AuthState;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/auth/AuthState;->invalidate()V

    move v0, v7

    goto/16 :goto_0
.end method

.method private processWWWAuthChallenge(Lorg/apache/commons/httpclient/HttpMethod;)Z
    .locals 9

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getHostAuthState()Lorg/apache/commons/httpclient/auth/AuthState;

    move-result-object v4

    const-string v0, "WWW-Authenticate"

    invoke-interface {p1, v0}, Lorg/apache/commons/httpclient/HttpMethod;->getResponseHeaders(Ljava/lang/String;)[Lorg/apache/commons/httpclient/Header;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/httpclient/auth/AuthChallengeParser;->parseChallenges([Lorg/apache/commons/httpclient/Header;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "Authentication challenge(s) not found"

    invoke-interface {v0, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v3, 0x0

    :try_start_0
    iget-object v5, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->authProcessor:Lorg/apache/commons/httpclient/auth/AuthChallengeProcessor;

    invoke-virtual {v5, v4, v0}, Lorg/apache/commons/httpclient/auth/AuthChallengeProcessor;->processChallenge(Lorg/apache/commons/httpclient/auth/AuthState;Ljava/util/Map;)Lorg/apache/commons/httpclient/auth/AuthScheme;
    :try_end_0
    .catch Lorg/apache/commons/httpclient/auth/AuthChallengeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v3, v0

    :cond_1
    :goto_1
    if-nez v3, :cond_2

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v5, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v5}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/auth/AuthChallengeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->getVirtualHost()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->getHost()Ljava/lang/String;

    move-result-object v0

    :cond_3
    iget-object v5, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v5}, Lorg/apache/commons/httpclient/HttpConnection;->getPort()I

    move-result v5

    new-instance v6, Lorg/apache/commons/httpclient/auth/AuthScope;

    invoke-interface {v3}, Lorg/apache/commons/httpclient/auth/AuthScheme;->getRealm()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3}, Lorg/apache/commons/httpclient/auth/AuthScheme;->getSchemeName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v0, v5, v7, v8}, Lorg/apache/commons/httpclient/auth/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Authentication scope: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_4
    invoke-virtual {v4}, Lorg/apache/commons/httpclient/auth/AuthState;->isAuthAttempted()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Lorg/apache/commons/httpclient/auth/AuthScheme;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v0

    invoke-direct {p0, v3, v0, v6}, Lorg/apache/commons/httpclient/HttpMethodDirector;->promptForCredentials(Lorg/apache/commons/httpclient/auth/AuthScheme;Lorg/apache/commons/httpclient/params/HttpParams;Lorg/apache/commons/httpclient/auth/AuthScope;)Lorg/apache/commons/httpclient/Credentials;

    move-result-object v0

    if-nez v0, :cond_6

    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Failure authenticating with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_5
    move v0, v1

    goto/16 :goto_0

    :cond_6
    move v0, v2

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v4, v2}, Lorg/apache/commons/httpclient/auth/AuthState;->setAuthAttempted(Z)V

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->state:Lorg/apache/commons/httpclient/HttpState;

    invoke-virtual {v0, v6}, Lorg/apache/commons/httpclient/HttpState;->getCredentials(Lorg/apache/commons/httpclient/auth/AuthScope;)Lorg/apache/commons/httpclient/Credentials;

    move-result-object v0

    if-nez v0, :cond_8

    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v0

    invoke-direct {p0, v3, v0, v6}, Lorg/apache/commons/httpclient/HttpMethodDirector;->promptForCredentials(Lorg/apache/commons/httpclient/auth/AuthScheme;Lorg/apache/commons/httpclient/params/HttpParams;Lorg/apache/commons/httpclient/auth/AuthScope;)Lorg/apache/commons/httpclient/Credentials;

    move-result-object v0

    :cond_8
    if-nez v0, :cond_a

    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "No credentials available for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_9
    move v0, v1

    goto/16 :goto_0

    :cond_a
    move v0, v2

    goto/16 :goto_0
.end method

.method private promptForCredentials(Lorg/apache/commons/httpclient/auth/AuthScheme;Lorg/apache/commons/httpclient/params/HttpParams;Lorg/apache/commons/httpclient/auth/AuthScope;)Lorg/apache/commons/httpclient/Credentials;
    .locals 5

    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "Credentials required"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    const/4 v1, 0x0

    const-string v0, "http.authentication.credential-provider"

    invoke-interface {p2, v0}, Lorg/apache/commons/httpclient/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/httpclient/auth/CredentialsProvider;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {p3}, Lorg/apache/commons/httpclient/auth/AuthScope;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lorg/apache/commons/httpclient/auth/AuthScope;->getPort()I

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v0, p1, v2, v3, v4}, Lorg/apache/commons/httpclient/auth/CredentialsProvider;->getCredentials(Lorg/apache/commons/httpclient/auth/AuthScheme;Ljava/lang/String;IZ)Lorg/apache/commons/httpclient/Credentials;
    :try_end_0
    .catch Lorg/apache/commons/httpclient/auth/CredentialsNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->state:Lorg/apache/commons/httpclient/HttpState;

    invoke-virtual {v1, p3, v0}, Lorg/apache/commons/httpclient/HttpState;->setCredentials(Lorg/apache/commons/httpclient/auth/AuthScope;Lorg/apache/commons/httpclient/Credentials;)V

    sget-object v1, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " new credentials given"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_0
    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    sget-object v2, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/auth/CredentialsNotAvailableException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "Credentials provider not available"

    invoke-interface {v0, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_1
.end method

.method private promptForProxyCredentials(Lorg/apache/commons/httpclient/auth/AuthScheme;Lorg/apache/commons/httpclient/params/HttpParams;Lorg/apache/commons/httpclient/auth/AuthScope;)Lorg/apache/commons/httpclient/Credentials;
    .locals 5

    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "Proxy credentials required"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    const/4 v1, 0x0

    const-string v0, "http.authentication.credential-provider"

    invoke-interface {p2, v0}, Lorg/apache/commons/httpclient/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/httpclient/auth/CredentialsProvider;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {p3}, Lorg/apache/commons/httpclient/auth/AuthScope;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lorg/apache/commons/httpclient/auth/AuthScope;->getPort()I

    move-result v3

    const/4 v4, 0x1

    invoke-interface {v0, p1, v2, v3, v4}, Lorg/apache/commons/httpclient/auth/CredentialsProvider;->getCredentials(Lorg/apache/commons/httpclient/auth/AuthScheme;Ljava/lang/String;IZ)Lorg/apache/commons/httpclient/Credentials;
    :try_end_0
    .catch Lorg/apache/commons/httpclient/auth/CredentialsNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->state:Lorg/apache/commons/httpclient/HttpState;

    invoke-virtual {v1, p3, v0}, Lorg/apache/commons/httpclient/HttpState;->setProxyCredentials(Lorg/apache/commons/httpclient/auth/AuthScope;Lorg/apache/commons/httpclient/Credentials;)V

    sget-object v1, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " new credentials given"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_0
    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    sget-object v2, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/auth/CredentialsNotAvailableException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "Proxy credentials provider not available"

    invoke-interface {v0, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method public executeMethod(Lorg/apache/commons/httpclient/HttpMethod;)V
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Method may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->hostConfiguration:Lorg/apache/commons/httpclient/HostConfiguration;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HostConfiguration;->getParams()Lorg/apache/commons/httpclient/params/HostParams;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->params:Lorg/apache/commons/httpclient/params/HttpClientParams;

    invoke-virtual {v0, v3}, Lorg/apache/commons/httpclient/params/HostParams;->setDefaults(Lorg/apache/commons/httpclient/params/HttpParams;)V

    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->hostConfiguration:Lorg/apache/commons/httpclient/HostConfiguration;

    invoke-virtual {v3}, Lorg/apache/commons/httpclient/HostConfiguration;->getParams()Lorg/apache/commons/httpclient/params/HostParams;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->setDefaults(Lorg/apache/commons/httpclient/params/HttpParams;)V

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->hostConfiguration:Lorg/apache/commons/httpclient/HostConfiguration;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HostConfiguration;->getParams()Lorg/apache/commons/httpclient/params/HostParams;

    move-result-object v0

    const-string v3, "http.default-headers"

    invoke-virtual {v0, v3}, Lorg/apache/commons/httpclient/params/HostParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/httpclient/Header;

    invoke-interface {p1, v0}, Lorg/apache/commons/httpclient/HttpMethod;->addRequestHeader(Lorg/apache/commons/httpclient/Header;)V

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->params:Lorg/apache/commons/httpclient/params/HttpClientParams;

    const-string v3, "http.protocol.max-redirects"

    const/16 v4, 0x64

    invoke-virtual {v0, v3, v4}, Lorg/apache/commons/httpclient/params/HttpClientParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v4

    move v0, v2

    :goto_1
    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->hostConfiguration:Lorg/apache/commons/httpclient/HostConfiguration;

    iget-object v5, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v3, v5}, Lorg/apache/commons/httpclient/HostConfiguration;->hostEquals(Lorg/apache/commons/httpclient/HttpConnection;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lorg/apache/commons/httpclient/HttpConnection;->setLocked(Z)V

    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v3}, Lorg/apache/commons/httpclient/HttpConnection;->releaseConnection()V

    const/4 v3, 0x0

    iput-object v3, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    :cond_2
    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    if-nez v3, :cond_4

    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->connectionManager:Lorg/apache/commons/httpclient/HttpConnectionManager;

    iget-object v5, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->hostConfiguration:Lorg/apache/commons/httpclient/HostConfiguration;

    iget-object v6, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->params:Lorg/apache/commons/httpclient/params/HttpClientParams;

    invoke-virtual {v6}, Lorg/apache/commons/httpclient/params/HttpClientParams;->getConnectionManagerTimeout()J

    move-result-wide v6

    invoke-interface {v3, v5, v6, v7}, Lorg/apache/commons/httpclient/HttpConnectionManager;->getConnectionWithTimeout(Lorg/apache/commons/httpclient/HostConfiguration;J)Lorg/apache/commons/httpclient/HttpConnection;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lorg/apache/commons/httpclient/HttpConnection;->setLocked(Z)V

    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->params:Lorg/apache/commons/httpclient/params/HttpClientParams;

    invoke-virtual {v3}, Lorg/apache/commons/httpclient/params/HttpClientParams;->isAuthenticationPreemptive()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->state:Lorg/apache/commons/httpclient/HttpState;

    invoke-virtual {v3}, Lorg/apache/commons/httpclient/HttpState;->isAuthenticationPreemptive()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    sget-object v3, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    const-string v5, "Preemptively sending default basic credentials"

    invoke-interface {v3, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getHostAuthState()Lorg/apache/commons/httpclient/auth/AuthState;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/httpclient/auth/AuthState;->setPreemptive()V

    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getHostAuthState()Lorg/apache/commons/httpclient/auth/AuthState;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lorg/apache/commons/httpclient/auth/AuthState;->setAuthAttempted(Z)V

    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v3}, Lorg/apache/commons/httpclient/HttpConnection;->isProxied()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v3}, Lorg/apache/commons/httpclient/HttpConnection;->isSecure()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getProxyAuthState()Lorg/apache/commons/httpclient/auth/AuthState;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/httpclient/auth/AuthState;->setPreemptive()V

    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getProxyAuthState()Lorg/apache/commons/httpclient/auth/AuthState;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lorg/apache/commons/httpclient/auth/AuthState;->setAuthAttempted(Z)V

    :cond_4
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/HttpMethodDirector;->authenticate(Lorg/apache/commons/httpclient/HttpMethod;)V

    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/HttpMethodDirector;->executeWithRetry(Lorg/apache/commons/httpclient/HttpMethod;)V

    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->connectMethod:Lorg/apache/commons/httpclient/ConnectMethod;

    if-eqz v3, :cond_9

    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/HttpMethodDirector;->fakeResponse(Lorg/apache/commons/httpclient/HttpMethod;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0, v2}, Lorg/apache/commons/httpclient/HttpConnection;->setLocked(Z)V

    :cond_6
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->releaseConnection:Z

    if-nez v0, :cond_7

    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getResponseBodyAsStream()Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_8

    :cond_7
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->releaseConnection()V

    :cond_8
    return-void

    :cond_9
    :try_start_1
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/HttpMethodDirector;->isRedirectNeeded(Lorg/apache/commons/httpclient/HttpMethod;)Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/HttpMethodDirector;->processRedirectResponse(Lorg/apache/commons/httpclient/HttpMethod;)Z

    move-result v3

    if-eqz v3, :cond_11

    add-int/lit8 v0, v0, 0x1

    if-lt v0, v4, :cond_d

    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "Narrowly avoided an infinite loop in execute"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    new-instance v0, Lorg/apache/commons/httpclient/RedirectException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Maximum redirects ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, ") exceeded"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/RedirectException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v1, v2}, Lorg/apache/commons/httpclient/HttpConnection;->setLocked(Z)V

    :cond_a
    iget-boolean v1, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->releaseConnection:Z

    if-nez v1, :cond_b

    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getResponseBodyAsStream()Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_c

    :cond_b
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/HttpConnection;->releaseConnection()V

    :cond_c
    throw v0

    :cond_d
    :try_start_2
    sget-object v3, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_e

    sget-object v3, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Execute redirect "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_e
    move v3, v0

    move v0, v1

    :goto_2
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/HttpMethodDirector;->isAuthenticationNeeded(Lorg/apache/commons/httpclient/HttpMethod;)Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/HttpMethodDirector;->processAuthenticationResponse(Lorg/apache/commons/httpclient/HttpMethod;)Z

    move-result v5

    if-eqz v5, :cond_f

    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    const-string v5, "Retry authentication"

    invoke-interface {v0, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    move v0, v1

    :cond_f
    if-eqz v0, :cond_5

    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getResponseBodyAsStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getResponseBodyAsStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_10
    move v0, v3

    goto/16 :goto_1

    :cond_11
    move v3, v0

    move v0, v2

    goto :goto_2
.end method

.method public getConnectionManager()Lorg/apache/commons/httpclient/HttpConnectionManager;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->connectionManager:Lorg/apache/commons/httpclient/HttpConnectionManager;

    return-object v0
.end method

.method public getHostConfiguration()Lorg/apache/commons/httpclient/HostConfiguration;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->hostConfiguration:Lorg/apache/commons/httpclient/HostConfiguration;

    return-object v0
.end method

.method public getParams()Lorg/apache/commons/httpclient/params/HttpParams;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->params:Lorg/apache/commons/httpclient/params/HttpClientParams;

    return-object v0
.end method

.method public getState()Lorg/apache/commons/httpclient/HttpState;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->state:Lorg/apache/commons/httpclient/HttpState;

    return-object v0
.end method
