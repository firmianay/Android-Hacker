.class public Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;
.super Lorg/apache/commons/httpclient/params/HttpConnectionParams;


# static fields
.field public static final MAX_HOST_CONNECTIONS:Ljava/lang/String; = "http.connection-manager.max-per-host"

.field public static final MAX_TOTAL_CONNECTIONS:Ljava/lang/String; = "http.connection-manager.max-total"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/httpclient/params/HttpConnectionParams;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultMaxConnectionsPerHost()I
    .locals 1

    sget-object v0, Lorg/apache/commons/httpclient/HostConfiguration;->ANY_HOST_CONFIGURATION:Lorg/apache/commons/httpclient/HostConfiguration;

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->getMaxConnectionsPerHost(Lorg/apache/commons/httpclient/HostConfiguration;)I

    move-result v0

    return v0
.end method

.method public getMaxConnectionsPerHost(Lorg/apache/commons/httpclient/HostConfiguration;)I
    .locals 3

    const/4 v1, 0x2

    const-string v0, "http.connection-manager.max-per-host"

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    sget-object v2, Lorg/apache/commons/httpclient/HostConfiguration;->ANY_HOST_CONFIGURATION:Lorg/apache/commons/httpclient/HostConfiguration;

    if-eq p1, v2, :cond_1

    sget-object v0, Lorg/apache/commons/httpclient/HostConfiguration;->ANY_HOST_CONFIGURATION:Lorg/apache/commons/httpclient/HostConfiguration;

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->getMaxConnectionsPerHost(Lorg/apache/commons/httpclient/HostConfiguration;)I

    move-result v1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1
.end method

.method public getMaxTotalConnections()I
    .locals 2

    const-string v0, "http.connection-manager.max-total"

    const/16 v1, 0x14

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public setDefaultMaxConnectionsPerHost(I)V
    .locals 1

    sget-object v0, Lorg/apache/commons/httpclient/HostConfiguration;->ANY_HOST_CONFIGURATION:Lorg/apache/commons/httpclient/HostConfiguration;

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->setMaxConnectionsPerHost(Lorg/apache/commons/httpclient/HostConfiguration;I)V

    return-void
.end method

.method public setMaxConnectionsPerHost(Lorg/apache/commons/httpclient/HostConfiguration;I)V
    .locals 2

    if-gtz p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxHostConnections must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "http.connection-manager.max-per-host"

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_0
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "http.connection-manager.max-per-host"

    invoke-virtual {p0, v1, v0}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public setMaxTotalConnections(I)V
    .locals 1

    const-string v0, "http.connection-manager.max-total"

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->setIntParameter(Ljava/lang/String;I)V

    return-void
.end method
