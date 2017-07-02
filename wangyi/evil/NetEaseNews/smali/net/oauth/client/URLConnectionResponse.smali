.class public Lnet/oauth/client/URLConnectionResponse;
.super Lnet/oauth/http/HttpResponseMessage;


# instance fields
.field private final connection:Ljava/net/URLConnection;

.field private final requestEncoding:Ljava/lang/String;

.field private final requestExcerpt:[B

.field private final requestHeaders:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnet/oauth/http/HttpMessage;Ljava/lang/String;[BLjava/net/URLConnection;)V
    .locals 2

    iget-object v0, p1, Lnet/oauth/http/HttpMessage;->method:Ljava/lang/String;

    iget-object v1, p1, Lnet/oauth/http/HttpMessage;->url:Ljava/net/URL;

    invoke-direct {p0, v0, v1}, Lnet/oauth/http/HttpResponseMessage;-><init>(Ljava/lang/String;Ljava/net/URL;)V

    iput-object p2, p0, Lnet/oauth/client/URLConnectionResponse;->requestHeaders:Ljava/lang/String;

    iput-object p3, p0, Lnet/oauth/client/URLConnectionResponse;->requestExcerpt:[B

    invoke-virtual {p1}, Lnet/oauth/http/HttpMessage;->getContentCharset()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/oauth/client/URLConnectionResponse;->requestEncoding:Ljava/lang/String;

    iput-object p4, p0, Lnet/oauth/client/URLConnectionResponse;->connection:Ljava/net/URLConnection;

    iget-object v0, p0, Lnet/oauth/client/URLConnectionResponse;->headers:Ljava/util/List;

    invoke-direct {p0}, Lnet/oauth/client/URLConnectionResponse;->getHeaders()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private getHeaders()Ljava/util/List;
    .locals 6

    const/4 v0, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v1, v0

    :goto_0
    iget-object v3, p0, Lnet/oauth/client/URLConnectionResponse;->connection:Ljava/net/URLConnection;

    invoke-virtual {p0, v3, v0}, Lnet/oauth/client/URLConnectionResponse;->getHeaderField(Ljava/net/URLConnection;I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v4, p0, Lnet/oauth/client/URLConnectionResponse;->connection:Ljava/net/URLConnection;

    invoke-virtual {p0, v4, v0}, Lnet/oauth/client/URLConnectionResponse;->getHeaderFieldKey(Ljava/net/URLConnection;I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    new-instance v5, Lnet/oauth/OAuth$Parameter;

    invoke-direct {v5, v4, v3}, Lnet/oauth/OAuth$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "Content-Type"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    new-instance v0, Lnet/oauth/OAuth$Parameter;

    const-string v1, "Content-Type"

    iget-object v3, p0, Lnet/oauth/client/URLConnectionResponse;->connection:Ljava/net/URLConnection;

    invoke-virtual {v3}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lnet/oauth/OAuth$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v2
.end method


# virtual methods
.method public dump(Ljava/util/Map;)V
    .locals 8

    invoke-super {p0, p1}, Lnet/oauth/http/HttpResponseMessage;->dump(Ljava/util/Map;)V

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/oauth/client/URLConnectionResponse;->requestHeaders:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/oauth/client/URLConnectionResponse;->requestExcerpt:[B

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lnet/oauth/client/URLConnectionResponse;->requestExcerpt:[B

    iget-object v3, p0, Lnet/oauth/client/URLConnectionResponse;->requestEncoding:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, "HTTP request"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lnet/oauth/client/URLConnectionResponse;->connection:Ljava/net/URLConnection;

    instance-of v0, v0, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lnet/oauth/client/URLConnectionResponse;->connection:Ljava/net/URLConnection;

    check-cast v0, Ljava/net/HttpURLConnection;

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lnet/oauth/client/URLConnectionResponse;->connection:Ljava/net/URLConnection;

    invoke-virtual {p0, v2, v1}, Lnet/oauth/client/URLConnectionResponse;->getHeaderField(Ljava/net/URLConnection;I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v2, p0, Lnet/oauth/client/URLConnectionResponse;->connection:Ljava/net/URLConnection;

    invoke-virtual {p0, v2, v1}, Lnet/oauth/client/URLConnectionResponse;->getHeaderFieldKey(Ljava/net/URLConnection;I)Ljava/lang/String;

    move-result-object v5

    if-nez v1, :cond_2

    if-eqz v5, :cond_2

    if-eqz v0, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HTTP "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lnet/oauth/client/URLConnectionResponse;->getStatusCode()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "\r\n"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    if-eqz v5, :cond_3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ": "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    :cond_3
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\r\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    const-string v0, "\r\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lnet/oauth/client/URLConnectionResponse;->body:Ljava/io/InputStream;

    if-eqz v0, :cond_6

    new-instance v1, Ljava/lang/String;

    iget-object v0, p0, Lnet/oauth/client/URLConnectionResponse;->body:Ljava/io/InputStream;

    check-cast v0, Lnet/oauth/client/ExcerptInputStream;

    invoke-virtual {v0}, Lnet/oauth/client/ExcerptInputStream;->getExcerpt()[B

    move-result-object v0

    invoke-virtual {p0}, Lnet/oauth/client/URLConnectionResponse;->getContentCharset()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    const-string v0, "HTTP response"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected getHeaderField(Ljava/net/URLConnection;I)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-virtual {p1, p2}, Ljava/net/URLConnection;->getHeaderField(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getHeaderFieldKey(Ljava/net/URLConnection;I)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-virtual {p1, p2}, Ljava/net/URLConnection;->getHeaderFieldKey(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStatusCode()I
    .locals 1

    iget-object v0, p0, Lnet/oauth/client/URLConnectionResponse;->connection:Ljava/net/URLConnection;

    instance-of v0, v0, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oauth/client/URLConnectionResponse;->connection:Ljava/net/URLConnection;

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xc8

    goto :goto_0
.end method

.method public openBody()Ljava/io/InputStream;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lnet/oauth/client/URLConnectionResponse;->connection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
