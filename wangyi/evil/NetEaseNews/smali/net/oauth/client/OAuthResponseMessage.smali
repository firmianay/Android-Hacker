.class public Lnet/oauth/client/OAuthResponseMessage;
.super Lnet/oauth/OAuthMessage;


# instance fields
.field private final http:Lnet/oauth/http/HttpResponseMessage;


# direct methods
.method constructor <init>(Lnet/oauth/http/HttpResponseMessage;)V
    .locals 5

    iget-object v0, p1, Lnet/oauth/http/HttpResponseMessage;->method:Ljava/lang/String;

    iget-object v1, p1, Lnet/oauth/http/HttpResponseMessage;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lnet/oauth/OAuthMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    iput-object p1, p0, Lnet/oauth/client/OAuthResponseMessage;->http:Lnet/oauth/http/HttpResponseMessage;

    invoke-virtual {p0}, Lnet/oauth/client/OAuthResponseMessage;->getHeaders()Ljava/util/List;

    move-result-object v0

    iget-object v1, p1, Lnet/oauth/http/HttpResponseMessage;->headers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p1, Lnet/oauth/http/HttpResponseMessage;->headers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    const-string v3, "WWW-Authenticate"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lnet/oauth/client/OAuthResponseMessage;->decodeAuthorization(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oauth/OAuth$Parameter;

    const-string v3, "realm"

    invoke-virtual {v0}, Lnet/oauth/OAuth$Parameter;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0, v0}, Lnet/oauth/client/OAuthResponseMessage;->addParameter(Ljava/util/Map$Entry;)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method protected completeParameters()V
    .locals 1

    invoke-super {p0}, Lnet/oauth/OAuthMessage;->completeParameters()V

    invoke-virtual {p0}, Lnet/oauth/client/OAuthResponseMessage;->readBodyAsString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/oauth/OAuth;->decodeForm(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/oauth/client/OAuthResponseMessage;->addParameters(Ljava/util/Collection;)V

    :cond_0
    return-void
.end method

.method protected dump(Ljava/util/Map;)V
    .locals 1

    invoke-super {p0, p1}, Lnet/oauth/OAuthMessage;->dump(Ljava/util/Map;)V

    iget-object v0, p0, Lnet/oauth/client/OAuthResponseMessage;->http:Lnet/oauth/http/HttpResponseMessage;

    invoke-virtual {v0, p1}, Lnet/oauth/http/HttpResponseMessage;->dump(Ljava/util/Map;)V

    return-void
.end method

.method public getBodyAsStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lnet/oauth/client/OAuthResponseMessage;->http:Lnet/oauth/http/HttpResponseMessage;

    invoke-virtual {v0}, Lnet/oauth/http/HttpResponseMessage;->getBody()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getBodyEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/oauth/client/OAuthResponseMessage;->http:Lnet/oauth/http/HttpResponseMessage;

    invoke-virtual {v0}, Lnet/oauth/http/HttpResponseMessage;->getContentCharset()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHttpResponse()Lnet/oauth/http/HttpResponseMessage;
    .locals 1

    iget-object v0, p0, Lnet/oauth/client/OAuthResponseMessage;->http:Lnet/oauth/http/HttpResponseMessage;

    return-object v0
.end method

.method public varargs requireParameters([Ljava/lang/String;)V
    .locals 3

    :try_start_0
    invoke-super {p0, p1}, Lnet/oauth/OAuthMessage;->requireParameters([Ljava/lang/String;)V
    :try_end_0
    .catch Lnet/oauth/OAuthProblemException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lnet/oauth/OAuthProblemException;->getParameters()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Lnet/oauth/client/OAuthResponseMessage;->getDump()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    throw v0
.end method

.method public toOAuthProblemException()Lnet/oauth/OAuthProblemException;
    .locals 3

    new-instance v0, Lnet/oauth/OAuthProblemException;

    invoke-direct {v0}, Lnet/oauth/OAuthProblemException;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Lnet/oauth/client/OAuthResponseMessage;->getParameters()Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    invoke-virtual {v0}, Lnet/oauth/OAuthProblemException;->getParameters()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Lnet/oauth/client/OAuthResponseMessage;->getDump()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :try_start_1
    invoke-virtual {p0}, Lnet/oauth/client/OAuthResponseMessage;->getBodyAsStream()Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_0
    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_1
.end method
