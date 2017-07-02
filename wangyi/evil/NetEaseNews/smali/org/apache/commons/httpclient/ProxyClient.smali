.class public Lorg/apache/commons/httpclient/ProxyClient;
.super Ljava/lang/Object;


# instance fields
.field private hostConfiguration:Lorg/apache/commons/httpclient/HostConfiguration;

.field private params:Lorg/apache/commons/httpclient/params/HttpClientParams;

.field private state:Lorg/apache/commons/httpclient/HttpState;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lorg/apache/commons/httpclient/params/HttpClientParams;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/params/HttpClientParams;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/commons/httpclient/ProxyClient;-><init>(Lorg/apache/commons/httpclient/params/HttpClientParams;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/httpclient/params/HttpClientParams;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/commons/httpclient/HttpState;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/HttpState;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/ProxyClient;->state:Lorg/apache/commons/httpclient/HttpState;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/ProxyClient;->params:Lorg/apache/commons/httpclient/params/HttpClientParams;

    new-instance v0, Lorg/apache/commons/httpclient/HostConfiguration;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/HostConfiguration;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/ProxyClient;->hostConfiguration:Lorg/apache/commons/httpclient/HostConfiguration;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Params may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/apache/commons/httpclient/ProxyClient;->params:Lorg/apache/commons/httpclient/params/HttpClientParams;

    return-void
.end method


# virtual methods
.method public connect()Lorg/apache/commons/httpclient/ProxyClient$ConnectResponse;
    .locals 6

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/ProxyClient;->getHostConfiguration()Lorg/apache/commons/httpclient/HostConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HostConfiguration;->getProxyHost()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "proxy host must be configured"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HostConfiguration;->getHost()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "destination host must be configured"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HostConfiguration;->getProtocol()Lorg/apache/commons/httpclient/protocol/Protocol;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/protocol/Protocol;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "secure protocol socket factory may not be used"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v1, Lorg/apache/commons/httpclient/ConnectMethod;

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/ProxyClient;->getHostConfiguration()Lorg/apache/commons/httpclient/HostConfiguration;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/httpclient/ConnectMethod;-><init>(Lorg/apache/commons/httpclient/HostConfiguration;)V

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/ConnectMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/ProxyClient;->getParams()Lorg/apache/commons/httpclient/params/HttpClientParams;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->setDefaults(Lorg/apache/commons/httpclient/params/HttpParams;)V

    new-instance v2, Lorg/apache/commons/httpclient/ProxyClient$DummyConnectionManager;

    invoke-direct {v2}, Lorg/apache/commons/httpclient/ProxyClient$DummyConnectionManager;-><init>()V

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/ProxyClient;->getParams()Lorg/apache/commons/httpclient/params/HttpClientParams;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/commons/httpclient/ProxyClient$DummyConnectionManager;->setConnectionParams(Lorg/apache/commons/httpclient/params/HttpParams;)V

    new-instance v3, Lorg/apache/commons/httpclient/HttpMethodDirector;

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/ProxyClient;->getParams()Lorg/apache/commons/httpclient/params/HttpClientParams;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/ProxyClient;->getState()Lorg/apache/commons/httpclient/HttpState;

    move-result-object v5

    invoke-direct {v3, v2, v0, v4, v5}, Lorg/apache/commons/httpclient/HttpMethodDirector;-><init>(Lorg/apache/commons/httpclient/HttpConnectionManager;Lorg/apache/commons/httpclient/HostConfiguration;Lorg/apache/commons/httpclient/params/HttpClientParams;Lorg/apache/commons/httpclient/HttpState;)V

    invoke-virtual {v3, v1}, Lorg/apache/commons/httpclient/HttpMethodDirector;->executeMethod(Lorg/apache/commons/httpclient/HttpMethod;)V

    new-instance v0, Lorg/apache/commons/httpclient/ProxyClient$ConnectResponse;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lorg/apache/commons/httpclient/ProxyClient$ConnectResponse;-><init>(Lorg/apache/commons/httpclient/ProxyClient$1;)V

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/ProxyClient$ConnectResponse;->access$100(Lorg/apache/commons/httpclient/ProxyClient$ConnectResponse;Lorg/apache/commons/httpclient/ConnectMethod;)V

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/ConnectMethod;->getStatusCode()I

    move-result v1

    const/16 v3, 0xc8

    if-ne v1, v3, :cond_3

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/ProxyClient$DummyConnectionManager;->getConnection()Lorg/apache/commons/httpclient/HttpConnection;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/HttpConnection;->getSocket()Ljava/net/Socket;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/ProxyClient$ConnectResponse;->access$200(Lorg/apache/commons/httpclient/ProxyClient$ConnectResponse;Ljava/net/Socket;)V

    :goto_0
    return-object v0

    :cond_3
    invoke-virtual {v2}, Lorg/apache/commons/httpclient/ProxyClient$DummyConnectionManager;->getConnection()Lorg/apache/commons/httpclient/HttpConnection;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/HttpConnection;->close()V

    goto :goto_0
.end method

.method public declared-synchronized getHostConfiguration()Lorg/apache/commons/httpclient/HostConfiguration;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/httpclient/ProxyClient;->hostConfiguration:Lorg/apache/commons/httpclient/HostConfiguration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getParams()Lorg/apache/commons/httpclient/params/HttpClientParams;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/httpclient/ProxyClient;->params:Lorg/apache/commons/httpclient/params/HttpClientParams;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getState()Lorg/apache/commons/httpclient/HttpState;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/httpclient/ProxyClient;->state:Lorg/apache/commons/httpclient/HttpState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setHostConfiguration(Lorg/apache/commons/httpclient/HostConfiguration;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/apache/commons/httpclient/ProxyClient;->hostConfiguration:Lorg/apache/commons/httpclient/HostConfiguration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setParams(Lorg/apache/commons/httpclient/params/HttpClientParams;)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iput-object p1, p0, Lorg/apache/commons/httpclient/ProxyClient;->params:Lorg/apache/commons/httpclient/params/HttpClientParams;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setState(Lorg/apache/commons/httpclient/HttpState;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/apache/commons/httpclient/ProxyClient;->state:Lorg/apache/commons/httpclient/HttpState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
