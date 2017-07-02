.class Lnet/oauth/client/httpclient4/OAuthScheme;
.super Lorg/apache/http/impl/auth/RFC2617Scheme;


# instance fields
.field private complete:Z

.field private final defaultRealm:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/http/impl/auth/RFC2617Scheme;-><init>()V

    iput-object p1, p0, Lnet/oauth/client/httpclient4/OAuthScheme;->defaultRealm:Ljava/lang/String;

    return-void
.end method

.method private getAccessor(Lorg/apache/http/auth/Credentials;)Lnet/oauth/OAuthAccessor;
    .locals 5

    const/4 v4, 0x0

    instance-of v0, p1, Lnet/oauth/client/httpclient4/OAuthCredentials;

    if-eqz v0, :cond_0

    check-cast p1, Lnet/oauth/client/httpclient4/OAuthCredentials;

    invoke-virtual {p1}, Lnet/oauth/client/httpclient4/OAuthCredentials;->getAccessor()Lnet/oauth/OAuthAccessor;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lnet/oauth/OAuthAccessor;

    new-instance v1, Lnet/oauth/OAuthConsumer;

    invoke-interface {p1}, Lorg/apache/http/auth/Credentials;->getUserPrincipal()Ljava/security/Principal;

    move-result-object v2

    invoke-interface {v2}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/apache/http/auth/Credentials;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v4, v2, v3, v4}, Lnet/oauth/OAuthConsumer;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/oauth/OAuthServiceProvider;)V

    invoke-direct {v0, v1}, Lnet/oauth/OAuthAccessor;-><init>(Lnet/oauth/OAuthConsumer;)V

    goto :goto_0
.end method

.method private getHttpUriRequest(Lorg/apache/http/HttpRequest;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 2

    move-object v1, p1

    :goto_0
    instance-of v0, v1, Lorg/apache/http/impl/client/RequestWrapper;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Lorg/apache/http/impl/client/RequestWrapper;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/RequestWrapper;->getOriginal()Lorg/apache/http/HttpRequest;

    move-result-object p1

    if-ne p1, v1, :cond_1

    :cond_0
    instance-of v0, v1, Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v0, :cond_2

    check-cast v1, Lorg/apache/http/client/methods/HttpUriRequest;

    :goto_1
    return-object v1

    :cond_1
    move-object v1, p1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public authenticate(Lorg/apache/http/auth/Credentials;Lorg/apache/http/HttpRequest;)Lorg/apache/http/Header;
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0, p2}, Lnet/oauth/client/httpclient4/OAuthScheme;->getHttpUriRequest(Lorg/apache/http/HttpRequest;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    :goto_0
    :try_start_0
    new-instance v2, Lnet/oauth/OAuthMessage;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lnet/oauth/OAuthMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    invoke-direct {p0, p1}, Lnet/oauth/client/httpclient4/OAuthScheme;->getAccessor(Lorg/apache/http/auth/Credentials;)Lnet/oauth/OAuthAccessor;

    move-result-object v0

    invoke-virtual {v2, v0}, Lnet/oauth/OAuthMessage;->addRequiredParameters(Lnet/oauth/OAuthAccessor;)V

    invoke-virtual {p0}, Lnet/oauth/client/httpclient4/OAuthScheme;->getRealm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lnet/oauth/OAuthMessage;->getAuthorizationHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/http/message/BasicHeader;

    const-string v2, "Authorization"

    invoke-direct {v1, v2, v0}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_0
    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/http/auth/AuthenticationException;

    invoke-direct {v1, v4, v0}, Lorg/apache/http/auth/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lorg/apache/http/impl/auth/RFC2617Scheme;->getRealm()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/oauth/client/httpclient4/OAuthScheme;->defaultRealm:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public getSchemeName()Ljava/lang/String;
    .locals 1

    const-string v0, "OAuth"

    return-object v0
.end method

.method public isComplete()Z
    .locals 1

    iget-boolean v0, p0, Lnet/oauth/client/httpclient4/OAuthScheme;->complete:Z

    return v0
.end method

.method public isConnectionBased()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public processChallenge(Lorg/apache/http/Header;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/apache/http/impl/auth/RFC2617Scheme;->processChallenge(Lorg/apache/http/Header;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/oauth/client/httpclient4/OAuthScheme;->complete:Z

    return-void
.end method
