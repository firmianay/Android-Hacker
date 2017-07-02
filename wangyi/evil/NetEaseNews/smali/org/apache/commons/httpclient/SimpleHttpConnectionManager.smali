.class public Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/commons/httpclient/HttpConnectionManager;


# static fields
.field private static final LOG:Lorg/apache/commons/logging/Log;

.field private static final MISUSE_MESSAGE:Ljava/lang/String; = "SimpleHttpConnectionManager being used incorrectly.  Be sure that HttpMethod.releaseConnection() is always called and that only one thread and/or method is using this connection manager at a time."

.field static class$org$apache$commons$httpclient$SimpleHttpConnectionManager:Ljava/lang/Class;


# instance fields
.field private alwaysClose:Z

.field protected httpConnection:Lorg/apache/commons/httpclient/HttpConnection;

.field private idleStartTime:J

.field private volatile inUse:Z

.field private params:Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->class$org$apache$commons$httpclient$SimpleHttpConnectionManager:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.commons.httpclient.SimpleHttpConnectionManager"

    invoke-static {v0}, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->class$org$apache$commons$httpclient$SimpleHttpConnectionManager:Ljava/lang/Class;

    :goto_0
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->LOG:Lorg/apache/commons/logging/Log;

    return-void

    :cond_0
    sget-object v0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->class$org$apache$commons$httpclient$SimpleHttpConnectionManager:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->params:Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->idleStartTime:J

    iput-boolean v2, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->inUse:Z

    iput-boolean v2, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->alwaysClose:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->params:Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->idleStartTime:J

    iput-boolean v2, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->inUse:Z

    iput-boolean v2, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->alwaysClose:Z

    iput-boolean p1, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->alwaysClose:Z

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

.method static finishLastResponse(Lorg/apache/commons/httpclient/HttpConnection;)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpConnection;->getLastResponseInputStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/apache/commons/httpclient/HttpConnection;->setLastResponseInputStream(Ljava/io/InputStream;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpConnection;->close()V

    goto :goto_0
.end method


# virtual methods
.method public closeIdleConnections(J)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    iget-wide v2, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->idleStartTime:J

    cmp-long v0, v2, v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->httpConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->close()V

    :cond_0
    return-void
.end method

.method public getConnection(Lorg/apache/commons/httpclient/HostConfiguration;)Lorg/apache/commons/httpclient/HttpConnection;
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->getConnection(Lorg/apache/commons/httpclient/HostConfiguration;J)Lorg/apache/commons/httpclient/HttpConnection;

    move-result-object v0

    return-object v0
.end method

.method public getConnection(Lorg/apache/commons/httpclient/HostConfiguration;J)Lorg/apache/commons/httpclient/HttpConnection;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->getConnectionWithTimeout(Lorg/apache/commons/httpclient/HostConfiguration;J)Lorg/apache/commons/httpclient/HttpConnection;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionWithTimeout(Lorg/apache/commons/httpclient/HostConfiguration;J)Lorg/apache/commons/httpclient/HttpConnection;
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->httpConnection:Lorg/apache/commons/httpclient/HttpConnection;

    if-nez v0, :cond_1

    new-instance v0, Lorg/apache/commons/httpclient/HttpConnection;

    invoke-direct {v0, p1}, Lorg/apache/commons/httpclient/HttpConnection;-><init>(Lorg/apache/commons/httpclient/HostConfiguration;)V

    iput-object v0, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->httpConnection:Lorg/apache/commons/httpclient/HttpConnection;

    iget-object v0, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->httpConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0, p0}, Lorg/apache/commons/httpclient/HttpConnection;->setHttpConnectionManager(Lorg/apache/commons/httpclient/HttpConnectionManager;)V

    iget-object v0, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->httpConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->getParams()Lorg/apache/commons/httpclient/params/HttpConnectionParams;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->params:Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/params/HttpConnectionParams;->setDefaults(Lorg/apache/commons/httpclient/params/HttpParams;)V

    :goto_0
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->idleStartTime:J

    iget-boolean v0, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->inUse:Z

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "SimpleHttpConnectionManager being used incorrectly.  Be sure that HttpMethod.releaseConnection() is always called and that only one thread and/or method is using this connection manager at a time."

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->inUse:Z

    iget-object v0, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->httpConnection:Lorg/apache/commons/httpclient/HttpConnection;

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->httpConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {p1, v0}, Lorg/apache/commons/httpclient/HostConfiguration;->hostEquals(Lorg/apache/commons/httpclient/HttpConnection;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->httpConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {p1, v0}, Lorg/apache/commons/httpclient/HostConfiguration;->proxyEquals(Lorg/apache/commons/httpclient/HttpConnection;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    iget-object v0, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->httpConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->httpConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->close()V

    :cond_3
    iget-object v0, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->httpConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HostConfiguration;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/HttpConnection;->setHost(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->httpConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HostConfiguration;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/HttpConnection;->setPort(I)V

    iget-object v0, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->httpConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HostConfiguration;->getProtocol()Lorg/apache/commons/httpclient/protocol/Protocol;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/HttpConnection;->setProtocol(Lorg/apache/commons/httpclient/protocol/Protocol;)V

    iget-object v0, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->httpConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HostConfiguration;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/HttpConnection;->setLocalAddress(Ljava/net/InetAddress;)V

    iget-object v0, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->httpConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HostConfiguration;->getProxyHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/HttpConnection;->setProxyHost(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->httpConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HostConfiguration;->getProxyPort()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/HttpConnection;->setProxyPort(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->httpConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-static {v0}, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->finishLastResponse(Lorg/apache/commons/httpclient/HttpConnection;)V

    goto :goto_0
.end method

.method public getParams()Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->params:Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    return-object v0
.end method

.method public isConnectionStaleCheckingEnabled()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->params:Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->isStaleCheckingEnabled()Z

    move-result v0

    return v0
.end method

.method public releaseConnection(Lorg/apache/commons/httpclient/HttpConnection;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->httpConnection:Lorg/apache/commons/httpclient/HttpConnection;

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected release of an unknown connection."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->alwaysClose:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->httpConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->close()V

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->inUse:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->idleStartTime:J

    return-void

    :cond_1
    iget-object v0, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->httpConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-static {v0}, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->finishLastResponse(Lorg/apache/commons/httpclient/HttpConnection;)V

    goto :goto_0
.end method

.method public setConnectionStaleCheckingEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->params:Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    invoke-virtual {v0, p1}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->setStaleCheckingEnabled(Z)V

    return-void
.end method

.method public setParams(Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->params:Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    return-void
.end method

.method public shutdown()V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->httpConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->close()V

    return-void
.end method
