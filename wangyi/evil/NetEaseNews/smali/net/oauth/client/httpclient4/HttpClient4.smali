.class public Lnet/oauth/client/httpclient4/HttpClient4;
.super Ljava/lang/Object;

# interfaces
.implements Lnet/oauth/http/HttpClient;


# static fields
.field private static final SHARED_CLIENT:Lnet/oauth/client/httpclient4/HttpClientPool;


# instance fields
.field private final clientPool:Lnet/oauth/client/httpclient4/HttpClientPool;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/oauth/client/httpclient4/HttpClient4$SingleClient;

    invoke-direct {v0}, Lnet/oauth/client/httpclient4/HttpClient4$SingleClient;-><init>()V

    sput-object v0, Lnet/oauth/client/httpclient4/HttpClient4;->SHARED_CLIENT:Lnet/oauth/client/httpclient4/HttpClientPool;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lnet/oauth/client/httpclient4/HttpClient4;->SHARED_CLIENT:Lnet/oauth/client/httpclient4/HttpClientPool;

    invoke-direct {p0, v0}, Lnet/oauth/client/httpclient4/HttpClient4;-><init>(Lnet/oauth/client/httpclient4/HttpClientPool;)V

    return-void
.end method

.method public constructor <init>(Lnet/oauth/client/httpclient4/HttpClientPool;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/oauth/client/httpclient4/HttpClient4;->clientPool:Lnet/oauth/client/httpclient4/HttpClientPool;

    return-void
.end method


# virtual methods
.method public execute(Lnet/oauth/http/HttpMessage;Ljava/util/Map;)Lnet/oauth/http/HttpResponseMessage;
    .locals 7

    iget-object v0, p1, Lnet/oauth/http/HttpMessage;->method:Ljava/lang/String;

    iget-object v1, p1, Lnet/oauth/http/HttpMessage;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lnet/oauth/http/HttpMessage;->getBody()Ljava/io/InputStream;

    move-result-object v1

    const-string v3, "DELETE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "POST"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "PUT"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    const/4 v0, 0x0

    if-nez v4, :cond_0

    if-eqz v5, :cond_4

    :cond_0
    if-eqz v4, :cond_2

    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    :goto_0
    if-eqz v1, :cond_1

    new-instance v4, Lnet/oauth/client/ExcerptInputStream;

    invoke-direct {v4, v1}, Lnet/oauth/client/ExcerptInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v4}, Lnet/oauth/client/ExcerptInputStream;->getExcerpt()[B

    move-result-object v2

    const-string v0, "Content-Length"

    invoke-virtual {p1, v0}, Lnet/oauth/http/HttpMessage;->removeHeaders(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Lorg/apache/http/entity/InputStreamEntity;

    if-nez v0, :cond_3

    const-wide/16 v0, -0x1

    :goto_1
    invoke-direct {v5, v4, v0, v1}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    invoke-virtual {v3, v5}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    move-object v0, v2

    :cond_1
    move-object v2, v3

    move-object v3, v0

    :goto_2
    iget-object v0, p1, Lnet/oauth/http/HttpMessage;->headers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    new-instance v3, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v3, v2}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_5

    new-instance v1, Lorg/apache/http/client/methods/HttpDelete;

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    move-object v2, v1

    move-object v3, v0

    goto :goto_2

    :cond_5
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    move-object v2, v1

    move-object v3, v0

    goto :goto_2

    :cond_6
    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpRequestBase;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v4

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "followRedirects"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v1, "http.protocol.handle-redirects"

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-interface {v4, v1, v0}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    goto :goto_4

    :cond_8
    const-string v6, "readTimeout"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    const-string v1, "http.socket.timeout"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v1, v0}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    goto :goto_4

    :cond_9
    const-string v6, "connectTimeout"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "http.connection.timeout"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v1, v0}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    goto :goto_4

    :cond_a
    const-string v0, "http.protocol.expect-continue"

    const/4 v1, 0x0

    invoke-interface {v4, v0, v1}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    iget-object v0, p0, Lnet/oauth/client/httpclient4/HttpClient4;->clientPool:Lnet/oauth/client/httpclient4/HttpClientPool;

    new-instance v1, Ljava/net/URL;

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lnet/oauth/client/httpclient4/HttpClientPool;->getHttpClient(Ljava/net/URL;)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    invoke-interface {v0, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    new-instance v1, Lnet/oauth/client/httpclient4/HttpMethodResponse;

    invoke-virtual {p1}, Lnet/oauth/http/HttpMessage;->getContentCharset()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v0, v3, v4}, Lnet/oauth/client/httpclient4/HttpMethodResponse;-><init>(Lorg/apache/http/client/methods/HttpRequestBase;Lorg/apache/http/HttpResponse;[BLjava/lang/String;)V

    return-object v1
.end method
