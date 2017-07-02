.class public Lorg/apache/commons/httpclient/HostConfiguration;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final ANY_HOST_CONFIGURATION:Lorg/apache/commons/httpclient/HostConfiguration;


# instance fields
.field private host:Lorg/apache/commons/httpclient/HttpHost;

.field private localAddress:Ljava/net/InetAddress;

.field private params:Lorg/apache/commons/httpclient/params/HostParams;

.field private proxyHost:Lorg/apache/commons/httpclient/ProxyHost;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/commons/httpclient/HostConfiguration;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/HostConfiguration;-><init>()V

    sput-object v0, Lorg/apache/commons/httpclient/HostConfiguration;->ANY_HOST_CONFIGURATION:Lorg/apache/commons/httpclient/HostConfiguration;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->host:Lorg/apache/commons/httpclient/HttpHost;

    iput-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->proxyHost:Lorg/apache/commons/httpclient/ProxyHost;

    iput-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->localAddress:Ljava/net/InetAddress;

    new-instance v0, Lorg/apache/commons/httpclient/params/HostParams;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/params/HostParams;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->params:Lorg/apache/commons/httpclient/params/HostParams;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/httpclient/HostConfiguration;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->host:Lorg/apache/commons/httpclient/HttpHost;

    iput-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->proxyHost:Lorg/apache/commons/httpclient/ProxyHost;

    iput-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->localAddress:Ljava/net/InetAddress;

    new-instance v0, Lorg/apache/commons/httpclient/params/HostParams;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/params/HostParams;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->params:Lorg/apache/commons/httpclient/params/HostParams;

    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/HostConfiguration;->init(Lorg/apache/commons/httpclient/HostConfiguration;)V

    return-void
.end method

.method private init(Lorg/apache/commons/httpclient/HostConfiguration;)V
    .locals 2

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lorg/apache/commons/httpclient/HostConfiguration;->host:Lorg/apache/commons/httpclient/HttpHost;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/apache/commons/httpclient/HostConfiguration;->host:Lorg/apache/commons/httpclient/HttpHost;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpHost;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/httpclient/HttpHost;

    iput-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->host:Lorg/apache/commons/httpclient/HttpHost;

    :goto_0
    iget-object v0, p1, Lorg/apache/commons/httpclient/HostConfiguration;->proxyHost:Lorg/apache/commons/httpclient/ProxyHost;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lorg/apache/commons/httpclient/HostConfiguration;->proxyHost:Lorg/apache/commons/httpclient/ProxyHost;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/ProxyHost;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/httpclient/ProxyHost;

    iput-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->proxyHost:Lorg/apache/commons/httpclient/ProxyHost;

    :goto_1
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HostConfiguration;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->localAddress:Ljava/net/InetAddress;

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HostConfiguration;->getParams()Lorg/apache/commons/httpclient/params/HostParams;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/params/HostParams;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/httpclient/params/HostParams;

    iput-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->params:Lorg/apache/commons/httpclient/params/HostParams;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->host:Lorg/apache/commons/httpclient/HttpHost;
    :try_end_2
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Host configuration could not be cloned"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_1
    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->proxyHost:Lorg/apache/commons/httpclient/ProxyHost;
    :try_end_4
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/httpclient/HostConfiguration;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {v0, p0}, Lorg/apache/commons/httpclient/HostConfiguration;->init(Lorg/apache/commons/httpclient/HostConfiguration;)V

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Host configuration could not be cloned"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    instance-of v2, p1, Lorg/apache/commons/httpclient/HostConfiguration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_3

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    check-cast p1, Lorg/apache/commons/httpclient/HostConfiguration;

    iget-object v2, p0, Lorg/apache/commons/httpclient/HostConfiguration;->host:Lorg/apache/commons/httpclient/HttpHost;

    iget-object v3, p1, Lorg/apache/commons/httpclient/HostConfiguration;->host:Lorg/apache/commons/httpclient/HttpHost;

    invoke-static {v2, v3}, Lorg/apache/commons/httpclient/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/apache/commons/httpclient/HostConfiguration;->proxyHost:Lorg/apache/commons/httpclient/ProxyHost;

    iget-object v3, p1, Lorg/apache/commons/httpclient/HostConfiguration;->proxyHost:Lorg/apache/commons/httpclient/ProxyHost;

    invoke-static {v2, v3}, Lorg/apache/commons/httpclient/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/apache/commons/httpclient/HostConfiguration;->localAddress:Ljava/net/InetAddress;

    iget-object v3, p1, Lorg/apache/commons/httpclient/HostConfiguration;->localAddress:Ljava/net/InetAddress;

    invoke-static {v2, v3}, Lorg/apache/commons/httpclient/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getHost()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->host:Lorg/apache/commons/httpclient/HttpHost;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->host:Lorg/apache/commons/httpclient/HttpHost;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpHost;->getHostName()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getHostURL()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->host:Lorg/apache/commons/httpclient/HttpHost;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Host must be set to create a host URL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->host:Lorg/apache/commons/httpclient/HttpHost;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpHost;->toURI()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->localAddress:Ljava/net/InetAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getParams()Lorg/apache/commons/httpclient/params/HostParams;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->params:Lorg/apache/commons/httpclient/params/HostParams;

    return-object v0
.end method

.method public declared-synchronized getPort()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->host:Lorg/apache/commons/httpclient/HttpHost;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->host:Lorg/apache/commons/httpclient/HttpHost;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpHost;->getPort()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProtocol()Lorg/apache/commons/httpclient/protocol/Protocol;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->host:Lorg/apache/commons/httpclient/HttpHost;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->host:Lorg/apache/commons/httpclient/HttpHost;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpHost;->getProtocol()Lorg/apache/commons/httpclient/protocol/Protocol;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProxyHost()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->proxyHost:Lorg/apache/commons/httpclient/ProxyHost;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->proxyHost:Lorg/apache/commons/httpclient/ProxyHost;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/ProxyHost;->getHostName()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProxyPort()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->proxyHost:Lorg/apache/commons/httpclient/ProxyHost;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->proxyHost:Lorg/apache/commons/httpclient/ProxyHost;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/ProxyHost;->getPort()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getVirtualHost()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->params:Lorg/apache/commons/httpclient/params/HostParams;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/params/HostParams;->getVirtualHost()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hashCode()I
    .locals 2

    monitor-enter p0

    const/16 v0, 0x11

    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/httpclient/HostConfiguration;->host:Lorg/apache/commons/httpclient/HttpHost;

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/httpclient/HostConfiguration;->proxyHost:Lorg/apache/commons/httpclient/ProxyHost;

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/httpclient/HostConfiguration;->localAddress:Ljava/net/InetAddress;

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hostEquals(Lorg/apache/commons/httpclient/HttpConnection;)Z
    .locals 3

    const/4 v0, 0x0

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Connection may not be null"

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
    iget-object v1, p0, Lorg/apache/commons/httpclient/HostConfiguration;->host:Lorg/apache/commons/httpclient/HttpHost;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/commons/httpclient/HostConfiguration;->host:Lorg/apache/commons/httpclient/HttpHost;

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpConnection;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    monitor-exit p0

    return v0

    :cond_2
    :try_start_2
    iget-object v1, p0, Lorg/apache/commons/httpclient/HostConfiguration;->host:Lorg/apache/commons/httpclient/HttpHost;

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/HttpHost;->getPort()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpConnection;->getPort()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lorg/apache/commons/httpclient/HostConfiguration;->host:Lorg/apache/commons/httpclient/HttpHost;

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/HttpHost;->getProtocol()Lorg/apache/commons/httpclient/protocol/Protocol;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpConnection;->getProtocol()Lorg/apache/commons/httpclient/protocol/Protocol;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/httpclient/protocol/Protocol;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/commons/httpclient/HostConfiguration;->localAddress:Ljava/net/InetAddress;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/apache/commons/httpclient/HostConfiguration;->localAddress:Ljava/net/InetAddress;

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpConnection;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpConnection;->getLocalAddress()Ljava/net/InetAddress;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_3

    goto :goto_0
.end method

.method public declared-synchronized isHostSet()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->host:Lorg/apache/commons/httpclient/HttpHost;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isProxySet()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->proxyHost:Lorg/apache/commons/httpclient/ProxyHost;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized proxyEquals(Lorg/apache/commons/httpclient/HttpConnection;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Connection may not be null"

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
    iget-object v2, p0, Lorg/apache/commons/httpclient/HostConfiguration;->proxyHost:Lorg/apache/commons/httpclient/ProxyHost;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/apache/commons/httpclient/HostConfiguration;->proxyHost:Lorg/apache/commons/httpclient/ProxyHost;

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/ProxyHost;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpConnection;->getProxyHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/apache/commons/httpclient/HostConfiguration;->proxyHost:Lorg/apache/commons/httpclient/ProxyHost;

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/ProxyHost;->getPort()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpConnection;->getProxyPort()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-ne v2, v3, :cond_2

    :cond_1
    :goto_0
    monitor-exit p0

    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    :try_start_2
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpConnection;->getProxyHost()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method public declared-synchronized setHost(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "http"

    invoke-static {v0}, Lorg/apache/commons/httpclient/protocol/Protocol;->getProtocol(Ljava/lang/String;)Lorg/apache/commons/httpclient/protocol/Protocol;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/protocol/Protocol;->getDefaultPort()I

    move-result v1

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/httpclient/HostConfiguration;->setHost(Ljava/lang/String;ILorg/apache/commons/httpclient/protocol/Protocol;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setHost(Ljava/lang/String;I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "http"

    invoke-static {v0}, Lorg/apache/commons/httpclient/protocol/Protocol;->getProtocol(Ljava/lang/String;)Lorg/apache/commons/httpclient/protocol/Protocol;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/httpclient/HostConfiguration;->setHost(Ljava/lang/String;ILorg/apache/commons/httpclient/protocol/Protocol;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setHost(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/apache/commons/httpclient/HttpHost;

    invoke-static {p3}, Lorg/apache/commons/httpclient/protocol/Protocol;->getProtocol(Ljava/lang/String;)Lorg/apache/commons/httpclient/protocol/Protocol;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lorg/apache/commons/httpclient/HttpHost;-><init>(Ljava/lang/String;ILorg/apache/commons/httpclient/protocol/Protocol;)V

    iput-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->host:Lorg/apache/commons/httpclient/HttpHost;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setHost(Ljava/lang/String;ILorg/apache/commons/httpclient/protocol/Protocol;)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "host must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    if-nez p3, :cond_1

    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "protocol must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lorg/apache/commons/httpclient/HttpHost;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/commons/httpclient/HttpHost;-><init>(Ljava/lang/String;ILorg/apache/commons/httpclient/protocol/Protocol;)V

    iput-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->host:Lorg/apache/commons/httpclient/HttpHost;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setHost(Ljava/lang/String;Ljava/lang/String;ILorg/apache/commons/httpclient/protocol/Protocol;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p3, p4}, Lorg/apache/commons/httpclient/HostConfiguration;->setHost(Ljava/lang/String;ILorg/apache/commons/httpclient/protocol/Protocol;)V

    iget-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->params:Lorg/apache/commons/httpclient/params/HostParams;

    invoke-virtual {v0, p2}, Lorg/apache/commons/httpclient/params/HostParams;->setVirtualHost(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setHost(Lorg/apache/commons/httpclient/HttpHost;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/apache/commons/httpclient/HostConfiguration;->host:Lorg/apache/commons/httpclient/HttpHost;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setHost(Lorg/apache/commons/httpclient/URI;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/URI;->getPort()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/commons/httpclient/HostConfiguration;->setHost(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/commons/httpclient/URIException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/URIException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLocalAddress(Ljava/net/InetAddress;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/apache/commons/httpclient/HostConfiguration;->localAddress:Ljava/net/InetAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setParams(Lorg/apache/commons/httpclient/params/HostParams;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/apache/commons/httpclient/HostConfiguration;->params:Lorg/apache/commons/httpclient/params/HostParams;

    return-void
.end method

.method public declared-synchronized setProxy(Ljava/lang/String;I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/apache/commons/httpclient/ProxyHost;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/httpclient/ProxyHost;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->proxyHost:Lorg/apache/commons/httpclient/ProxyHost;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setProxyHost(Lorg/apache/commons/httpclient/ProxyHost;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/apache/commons/httpclient/HostConfiguration;->proxyHost:Lorg/apache/commons/httpclient/ProxyHost;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 5

    const/4 v1, 0x1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v3, 0x32

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v3, "HostConfiguration["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/apache/commons/httpclient/HostConfiguration;->host:Lorg/apache/commons/httpclient/HttpHost;

    if-eqz v3, :cond_0

    const-string v0, "host="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/httpclient/HostConfiguration;->host:Lorg/apache/commons/httpclient/HttpHost;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move v0, v1

    :cond_0
    iget-object v3, p0, Lorg/apache/commons/httpclient/HostConfiguration;->proxyHost:Lorg/apache/commons/httpclient/ProxyHost;

    if-eqz v3, :cond_1

    if-eqz v0, :cond_4

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    const-string v3, "proxyHost="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/commons/httpclient/HostConfiguration;->proxyHost:Lorg/apache/commons/httpclient/ProxyHost;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v3, p0, Lorg/apache/commons/httpclient/HostConfiguration;->localAddress:Ljava/net/InetAddress;

    if-eqz v3, :cond_3

    if-eqz v0, :cond_5

    const-string v1, ", "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    const-string v1, "localAddress="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/commons/httpclient/HostConfiguration;->localAddress:Ljava/net/InetAddress;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    if-eqz v0, :cond_2

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    const-string v0, "params="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/httpclient/HostConfiguration;->params:Lorg/apache/commons/httpclient/params/HostParams;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    :cond_3
    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
