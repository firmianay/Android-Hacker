.class public Lorg/apache/commons/httpclient/params/DefaultHttpParams;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/commons/httpclient/params/HttpParams;


# static fields
.field private static final LOG:Lorg/apache/commons/logging/Log;

.field static class$org$apache$commons$httpclient$params$DefaultHttpParams:Ljava/lang/Class;

.field private static httpParamsFactory:Lorg/apache/commons/httpclient/params/HttpParamsFactory;


# instance fields
.field private defaults:Lorg/apache/commons/httpclient/params/HttpParams;

.field private parameters:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->class$org$apache$commons$httpclient$params$DefaultHttpParams:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.commons.httpclient.params.DefaultHttpParams"

    invoke-static {v0}, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->class$org$apache$commons$httpclient$params$DefaultHttpParams:Ljava/lang/Class;

    :goto_0
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v0, Lorg/apache/commons/httpclient/params/DefaultHttpParamsFactory;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/params/DefaultHttpParamsFactory;-><init>()V

    sput-object v0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->httpParamsFactory:Lorg/apache/commons/httpclient/params/HttpParamsFactory;

    return-void

    :cond_0
    sget-object v0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->class$org$apache$commons$httpclient$params$DefaultHttpParams:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->getDefaultParams()Lorg/apache/commons/httpclient/params/HttpParams;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/httpclient/params/DefaultHttpParams;-><init>(Lorg/apache/commons/httpclient/params/HttpParams;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/httpclient/params/HttpParams;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->defaults:Lorg/apache/commons/httpclient/params/HttpParams;

    iput-object v0, p0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->parameters:Ljava/util/HashMap;

    iput-object p1, p0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->defaults:Lorg/apache/commons/httpclient/params/HttpParams;

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

.method public static getDefaultParams()Lorg/apache/commons/httpclient/params/HttpParams;
    .locals 1

    sget-object v0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->httpParamsFactory:Lorg/apache/commons/httpclient/params/HttpParamsFactory;

    invoke-interface {v0}, Lorg/apache/commons/httpclient/params/HttpParamsFactory;->getDefaultParams()Lorg/apache/commons/httpclient/params/HttpParams;

    move-result-object v0

    return-object v0
.end method

.method public static setHttpParamsFactory(Lorg/apache/commons/httpclient/params/HttpParamsFactory;)V
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "httpParamsFactory may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sput-object p0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->httpParamsFactory:Lorg/apache/commons/httpclient/params/HttpParamsFactory;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->parameters:Ljava/util/HashMap;

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;

    iget-object v1, p0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->parameters:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->parameters:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    iput-object v1, v0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->parameters:Ljava/util/HashMap;

    :cond_0
    iget-object v1, p0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->defaults:Lorg/apache/commons/httpclient/params/HttpParams;

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->setDefaults(Lorg/apache/commons/httpclient/params/HttpParams;)V

    return-object v0
.end method

.method public getBooleanParameter(Ljava/lang/String;Z)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return p2

    :cond_0
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_0
.end method

.method public declared-synchronized getDefaults()Lorg/apache/commons/httpclient/params/HttpParams;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->defaults:Lorg/apache/commons/httpclient/params/HttpParams;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDoubleParameter(Ljava/lang/String;D)D
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-wide p2

    :cond_0
    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p2

    goto :goto_0
.end method

.method public getIntParameter(Ljava/lang/String;I)I
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return p2

    :cond_0
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_0
.end method

.method public getLongParameter(Ljava/lang/String;J)J
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-wide p2

    :cond_0
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    goto :goto_0
.end method

.method public declared-synchronized getParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->parameters:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->parameters:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    :goto_1
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->defaults:Lorg/apache/commons/httpclient/params/HttpParams;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->defaults:Lorg/apache/commons/httpclient/params/HttpParams;

    invoke-interface {v0, p1}, Lorg/apache/commons/httpclient/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public isParameterFalse(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->getBooleanParameter(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isParameterSet(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isParameterSetLocally(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->parameters:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->parameters:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isParameterTrue(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->getBooleanParameter(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setBooleanParameter(Ljava/lang/String;Z)V
    .locals 1

    if-eqz p2, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public declared-synchronized setDefaults(Lorg/apache/commons/httpclient/params/HttpParams;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->defaults:Lorg/apache/commons/httpclient/params/HttpParams;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDoubleParameter(Ljava/lang/String;D)V
    .locals 1

    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p2, p3}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setIntParameter(Ljava/lang/String;I)V
    .locals 1

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setLongParameter(Ljava/lang/String;J)V
    .locals 1

    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p2, p3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public declared-synchronized setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->parameters:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->parameters:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->parameters:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Set parameter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setParameters([Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-object v1, p1, v0

    invoke-virtual {p0, v1, p2}, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
