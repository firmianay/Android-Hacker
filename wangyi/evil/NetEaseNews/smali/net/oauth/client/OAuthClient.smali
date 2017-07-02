.class public Lnet/oauth/client/OAuthClient;
.super Ljava/lang/Object;


# static fields
.field public static final ACCEPT_ENCODING:Ljava/lang/String; = "HTTP.header.Accept-Encoding"

.field protected static final CONTENT_LENGTH:Ljava/lang/String; = "Content-Length"

.field protected static final DELETE:Ljava/lang/String; = "DELETE"

.field public static final PARAMETER_STYLE:Ljava/lang/String; = "parameterStyle"

.field protected static final POST:Ljava/lang/String; = "POST"

.field protected static final PUT:Ljava/lang/String; = "PUT"


# instance fields
.field private http:Lnet/oauth/http/HttpClient;

.field protected final httpParameters:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lnet/oauth/http/HttpClient;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/oauth/client/OAuthClient;->httpParameters:Ljava/util/Map;

    iput-object p1, p0, Lnet/oauth/client/OAuthClient;->http:Lnet/oauth/http/HttpClient;

    iget-object v0, p0, Lnet/oauth/client/OAuthClient;->httpParameters:Ljava/util/Map;

    const-string v1, "followRedirects"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public access(Lnet/oauth/OAuthMessage;Lnet/oauth/ParameterStyle;)Lnet/oauth/client/OAuthResponseMessage;
    .locals 3

    invoke-static {p1, p2}, Lnet/oauth/http/HttpMessage;->newRequest(Lnet/oauth/OAuthMessage;Lnet/oauth/ParameterStyle;)Lnet/oauth/http/HttpMessage;

    move-result-object v0

    iget-object v1, p0, Lnet/oauth/client/OAuthClient;->http:Lnet/oauth/http/HttpClient;

    iget-object v2, p0, Lnet/oauth/client/OAuthClient;->httpParameters:Ljava/util/Map;

    invoke-interface {v1, v0, v2}, Lnet/oauth/http/HttpClient;->execute(Lnet/oauth/http/HttpMessage;Ljava/util/Map;)Lnet/oauth/http/HttpResponseMessage;

    move-result-object v0

    invoke-static {v0}, Lnet/oauth/http/HttpMessageDecoder;->decode(Lnet/oauth/http/HttpResponseMessage;)Lnet/oauth/http/HttpResponseMessage;

    move-result-object v0

    new-instance v1, Lnet/oauth/client/OAuthResponseMessage;

    invoke-direct {v1, v0}, Lnet/oauth/client/OAuthResponseMessage;-><init>(Lnet/oauth/http/HttpResponseMessage;)V

    return-object v1
.end method

.method public getAccessToken(Lnet/oauth/OAuthAccessor;Ljava/lang/String;Ljava/util/Collection;)Lnet/oauth/OAuthMessage;
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p1, Lnet/oauth/OAuthAccessor;->requestToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-nez p3, :cond_1

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "oauth_token"

    aput-object v1, v0, v4

    iget-object v1, p1, Lnet/oauth/OAuthAccessor;->requestToken:Ljava/lang/String;

    aput-object v1, v0, v5

    invoke-static {v0}, Lnet/oauth/OAuth;->newList([Ljava/lang/String;)Ljava/util/List;

    move-result-object p3

    :cond_0
    :goto_0
    iget-object v0, p1, Lnet/oauth/OAuthAccessor;->consumer:Lnet/oauth/OAuthConsumer;

    iget-object v0, v0, Lnet/oauth/OAuthConsumer;->serviceProvider:Lnet/oauth/OAuthServiceProvider;

    iget-object v0, v0, Lnet/oauth/OAuthServiceProvider;->accessTokenURL:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0, p3}, Lnet/oauth/client/OAuthClient;->invoke(Lnet/oauth/OAuthAccessor;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)Lnet/oauth/OAuthMessage;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "oauth_token"

    aput-object v2, v1, v4

    const-string v2, "oauth_token_secret"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lnet/oauth/OAuthMessage;->requireParameters([Ljava/lang/String;)V

    const-string v1, "oauth_token"

    invoke-virtual {v0, v1}, Lnet/oauth/OAuthMessage;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lnet/oauth/OAuthAccessor;->accessToken:Ljava/lang/String;

    const-string v1, "oauth_token_secret"

    invoke-virtual {v0, v1}, Lnet/oauth/OAuthMessage;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lnet/oauth/OAuthAccessor;->tokenSecret:Ljava/lang/String;

    return-object v0

    :cond_1
    invoke-static {p3}, Lnet/oauth/OAuth;->newMap(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "oauth_token"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Lnet/oauth/OAuth$Parameter;

    const-string v2, "oauth_token"

    iget-object v3, p1, Lnet/oauth/OAuthAccessor;->requestToken:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lnet/oauth/OAuth$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object p3, v0

    goto :goto_0
.end method

.method public getHttpClient()Lnet/oauth/http/HttpClient;
    .locals 1

    iget-object v0, p0, Lnet/oauth/client/OAuthClient;->http:Lnet/oauth/http/HttpClient;

    return-object v0
.end method

.method public getHttpParameters()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lnet/oauth/client/OAuthClient;->httpParameters:Ljava/util/Map;

    return-object v0
.end method

.method public getRequestToken(Lnet/oauth/OAuthAccessor;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnet/oauth/client/OAuthClient;->getRequestToken(Lnet/oauth/OAuthAccessor;Ljava/lang/String;)V

    return-void
.end method

.method public getRequestToken(Lnet/oauth/OAuthAccessor;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lnet/oauth/client/OAuthClient;->getRequestToken(Lnet/oauth/OAuthAccessor;Ljava/lang/String;Ljava/util/Collection;)V

    return-void
.end method

.method public getRequestToken(Lnet/oauth/OAuthAccessor;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lnet/oauth/client/OAuthClient;->getRequestTokenResponse(Lnet/oauth/OAuthAccessor;Ljava/lang/String;Ljava/util/Collection;)Lnet/oauth/OAuthMessage;

    return-void
.end method

.method public getRequestTokenResponse(Lnet/oauth/OAuthAccessor;Ljava/lang/String;Ljava/util/Collection;)Lnet/oauth/OAuthMessage;
    .locals 5

    const/4 v0, 0x0

    const/4 v4, 0x1

    iput-object v0, p1, Lnet/oauth/OAuthAccessor;->accessToken:Ljava/lang/String;

    iput-object v0, p1, Lnet/oauth/OAuthAccessor;->tokenSecret:Ljava/lang/String;

    const-string v0, "oauth_accessor_secret"

    invoke-virtual {p1, v0}, Lnet/oauth/OAuthAccessor;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    if-nez p3, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    new-instance v2, Lnet/oauth/OAuth$Parameter;

    const-string v3, "oauth_accessor_secret"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lnet/oauth/OAuth$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object v1, p1, Lnet/oauth/OAuthAccessor;->consumer:Lnet/oauth/OAuthConsumer;

    iget-object v1, v1, Lnet/oauth/OAuthConsumer;->serviceProvider:Lnet/oauth/OAuthServiceProvider;

    iget-object v1, v1, Lnet/oauth/OAuthServiceProvider;->requestTokenURL:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v1, v0}, Lnet/oauth/client/OAuthClient;->invoke(Lnet/oauth/OAuthAccessor;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)Lnet/oauth/OAuthMessage;

    move-result-object v0

    const-string v1, "oauth_token"

    invoke-virtual {v0, v1}, Lnet/oauth/OAuthMessage;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lnet/oauth/OAuthAccessor;->requestToken:Ljava/lang/String;

    const-string v1, "oauth_token_secret"

    invoke-virtual {v0, v1}, Lnet/oauth/OAuthMessage;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lnet/oauth/OAuthAccessor;->tokenSecret:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "oauth_token"

    aput-object v3, v1, v2

    const-string v2, "oauth_token_secret"

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lnet/oauth/OAuthMessage;->requireParameters([Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_1
    move-object v0, p3

    goto :goto_1
.end method

.method public invoke(Lnet/oauth/OAuthAccessor;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)Lnet/oauth/OAuthMessage;
    .locals 5

    invoke-virtual {p1, p2, p3, p4}, Lnet/oauth/OAuthAccessor;->newRequestMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)Lnet/oauth/OAuthMessage;

    move-result-object v1

    iget-object v0, p1, Lnet/oauth/OAuthAccessor;->consumer:Lnet/oauth/OAuthConsumer;

    const-string v2, "HTTP.header.Accept-Encoding"

    invoke-virtual {v0, v2}, Lnet/oauth/OAuthConsumer;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lnet/oauth/OAuthMessage;->getHeaders()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lnet/oauth/OAuth$Parameter;

    const-string v4, "Accept-Encoding"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lnet/oauth/OAuth$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p1, Lnet/oauth/OAuthAccessor;->consumer:Lnet/oauth/OAuthConsumer;

    const-string v2, "parameterStyle"

    invoke-virtual {v0, v2}, Lnet/oauth/OAuthConsumer;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lnet/oauth/ParameterStyle;->BODY:Lnet/oauth/ParameterStyle;

    :goto_0
    invoke-virtual {p0, v1, v0}, Lnet/oauth/client/OAuthClient;->invoke(Lnet/oauth/OAuthMessage;Lnet/oauth/ParameterStyle;)Lnet/oauth/OAuthMessage;

    move-result-object v0

    return-object v0

    :cond_1
    const-class v2, Lnet/oauth/ParameterStyle;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/oauth/ParameterStyle;

    goto :goto_0
.end method

.method public invoke(Lnet/oauth/OAuthAccessor;Ljava/lang/String;Ljava/util/Collection;)Lnet/oauth/OAuthMessage;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lnet/oauth/client/OAuthClient;->invoke(Lnet/oauth/OAuthAccessor;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)Lnet/oauth/OAuthMessage;

    move-result-object v0

    return-object v0
.end method

.method public invoke(Lnet/oauth/OAuthMessage;Lnet/oauth/ParameterStyle;)Lnet/oauth/OAuthMessage;
    .locals 3

    invoke-virtual {p0, p1, p2}, Lnet/oauth/client/OAuthClient;->access(Lnet/oauth/OAuthMessage;Lnet/oauth/ParameterStyle;)Lnet/oauth/client/OAuthResponseMessage;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oauth/client/OAuthResponseMessage;->getHttpResponse()Lnet/oauth/http/HttpResponseMessage;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oauth/http/HttpResponseMessage;->getStatusCode()I

    move-result v1

    div-int/lit8 v1, v1, 0x64

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lnet/oauth/client/OAuthResponseMessage;->toOAuthProblemException()Lnet/oauth/OAuthProblemException;

    move-result-object v0

    :try_start_0
    const-string v1, "oauth_signature base string"

    invoke-static {p1}, Lnet/oauth/signature/OAuthSignatureMethod;->getBaseString(Lnet/oauth/OAuthMessage;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/oauth/OAuthProblemException;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    throw v0

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setHttpClient(Lnet/oauth/http/HttpClient;)V
    .locals 0

    iput-object p1, p0, Lnet/oauth/client/OAuthClient;->http:Lnet/oauth/http/HttpClient;

    return-void
.end method
