.class Lt4j/TBlogSupport;
.super Ljava/lang/Object;


# instance fields
.field protected http:Lt4j/http/HttpClient;


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lt4j/TBlogSupport;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lt4j/http/HttpClient;

    invoke-direct {v0}, Lt4j/http/HttpClient;-><init>()V

    iput-object v0, p0, Lt4j/TBlogSupport;->http:Lt4j/http/HttpClient;

    invoke-virtual {p0, v1}, Lt4j/TBlogSupport;->setClientVersion(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lt4j/TBlogSupport;->setClientURL(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lt4j/TBlogSupport;->setUserId(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lt4j/TBlogSupport;->setPassword(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getClientURL()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lt4j/TBlogSupport;->http:Lt4j/http/HttpClient;

    const-string v1, "TBlog-Client-URL"

    invoke-virtual {v0, v1}, Lt4j/http/HttpClient;->getRequestHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClientVersion()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lt4j/TBlogSupport;->http:Lt4j/http/HttpClient;

    const-string v1, "TBlog-Client-Version"

    invoke-virtual {v0, v1}, Lt4j/http/HttpClient;->getRequestHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lt4j/TBlogSupport;->http:Lt4j/http/HttpClient;

    invoke-virtual {v0}, Lt4j/http/HttpClient;->getPassword()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lt4j/TBlogSupport;->http:Lt4j/http/HttpClient;

    invoke-virtual {v0}, Lt4j/http/HttpClient;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lt4j/TBlogSupport;->http:Lt4j/http/HttpClient;

    invoke-virtual {v0}, Lt4j/http/HttpClient;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isUsePostForced()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setClientURL(Ljava/lang/String;)V
    .locals 2

    const-string v0, "TBlog-Client-URL"

    invoke-static {p1}, Lt4j/Configuration;->getClientURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lt4j/TBlogSupport;->setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setClientVersion(Ljava/lang/String;)V
    .locals 2

    const-string v0, "TBlog-Client-Version"

    invoke-static {p1}, Lt4j/Configuration;->getCilentVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lt4j/TBlogSupport;->setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setHttp(Lt4j/http/HttpClient;)V
    .locals 0

    iput-object p1, p0, Lt4j/TBlogSupport;->http:Lt4j/http/HttpClient;

    return-void
.end method

.method public setHttpConnectionTimeout(I)V
    .locals 1

    iget-object v0, p0, Lt4j/TBlogSupport;->http:Lt4j/http/HttpClient;

    invoke-virtual {v0, p1}, Lt4j/http/HttpClient;->setConnectionTimeout(I)V

    return-void
.end method

.method public setHttpProxy(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lt4j/TBlogSupport;->http:Lt4j/http/HttpClient;

    invoke-virtual {v0, p1}, Lt4j/http/HttpClient;->setProxyHost(Ljava/lang/String;)V

    iget-object v0, p0, Lt4j/TBlogSupport;->http:Lt4j/http/HttpClient;

    invoke-virtual {v0, p2}, Lt4j/http/HttpClient;->setProxyPort(I)V

    return-void
.end method

.method public setHttpProxyAuth(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lt4j/TBlogSupport;->http:Lt4j/http/HttpClient;

    invoke-virtual {v0, p1}, Lt4j/http/HttpClient;->setProxyAuthUser(Ljava/lang/String;)V

    iget-object v0, p0, Lt4j/TBlogSupport;->http:Lt4j/http/HttpClient;

    invoke-virtual {v0, p2}, Lt4j/http/HttpClient;->setProxyAuthPassword(Ljava/lang/String;)V

    return-void
.end method

.method public setHttpReadTimeout(I)V
    .locals 1

    iget-object v0, p0, Lt4j/TBlogSupport;->http:Lt4j/http/HttpClient;

    invoke-virtual {v0, p1}, Lt4j/http/HttpClient;->setReadTimeout(I)V

    return-void
.end method

.method public declared-synchronized setPassword(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lt4j/TBlogSupport;->http:Lt4j/http/HttpClient;

    invoke-static {p1}, Lt4j/Configuration;->getPassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lt4j/http/HttpClient;->setPassword(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lt4j/TBlogSupport;->http:Lt4j/http/HttpClient;

    invoke-virtual {v0, p1, p2}, Lt4j/http/HttpClient;->setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRetryCount(I)V
    .locals 1

    iget-object v0, p0, Lt4j/TBlogSupport;->http:Lt4j/http/HttpClient;

    invoke-virtual {v0, p1}, Lt4j/http/HttpClient;->setRetryCount(I)V

    return-void
.end method

.method public setRetryIntervalSecs(I)V
    .locals 1

    iget-object v0, p0, Lt4j/TBlogSupport;->http:Lt4j/http/HttpClient;

    invoke-virtual {v0, p1}, Lt4j/http/HttpClient;->setRetryIntervalSecs(I)V

    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lt4j/TBlogSupport;->http:Lt4j/http/HttpClient;

    invoke-virtual {v0, p1}, Lt4j/http/HttpClient;->setUserAgent(Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized setUserId(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lt4j/TBlogSupport;->http:Lt4j/http/HttpClient;

    invoke-static {p1}, Lt4j/Configuration;->getUser(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lt4j/http/HttpClient;->setUserId(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
