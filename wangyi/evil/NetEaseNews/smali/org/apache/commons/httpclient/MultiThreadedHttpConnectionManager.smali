.class public Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/commons/httpclient/HttpConnectionManager;


# static fields
.field private static ALL_CONNECTION_MANAGERS:Ljava/util/WeakHashMap; = null

.field public static final DEFAULT_MAX_HOST_CONNECTIONS:I = 0x2

.field public static final DEFAULT_MAX_TOTAL_CONNECTIONS:I = 0x14

.field private static final LOG:Lorg/apache/commons/logging/Log;

.field private static final REFERENCE_QUEUE:Ljava/lang/ref/ReferenceQueue;

.field private static REFERENCE_QUEUE_THREAD:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ReferenceQueueThread;

.field private static final REFERENCE_TO_CONNECTION_SOURCE:Ljava/util/Map;

.field static class$org$apache$commons$httpclient$MultiThreadedHttpConnectionManager:Ljava/lang/Class;


# instance fields
.field private connectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

.field private params:Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

.field private volatile shutdown:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->class$org$apache$commons$httpclient$MultiThreadedHttpConnectionManager:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.commons.httpclient.MultiThreadedHttpConnectionManager"

    invoke-static {v0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->class$org$apache$commons$httpclient$MultiThreadedHttpConnectionManager:Ljava/lang/Class;

    :goto_0
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->REFERENCE_TO_CONNECTION_SOURCE:Ljava/util/Map;

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->REFERENCE_QUEUE:Ljava/lang/ref/ReferenceQueue;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->ALL_CONNECTION_MANAGERS:Ljava/util/WeakHashMap;

    return-void

    :cond_0
    sget-object v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->class$org$apache$commons$httpclient$MultiThreadedHttpConnectionManager:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->params:Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->shutdown:Z

    new-instance v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;-><init>(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$1;)V

    iput-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->connectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    sget-object v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->ALL_CONNECTION_MANAGERS:Ljava/util/WeakHashMap;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->ALL_CONNECTION_MANAGERS:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static access$1100(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;Lorg/apache/commons/httpclient/HttpConnection;)Lorg/apache/commons/httpclient/HostConfiguration;
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->configurationForConnection(Lorg/apache/commons/httpclient/HttpConnection;)Lorg/apache/commons/httpclient/HostConfiguration;

    move-result-object v0

    return-object v0
.end method

.method static access$1200(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->shutdown:Z

    return v0
.end method

.method static access$1300(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionWithReference;)V
    .locals 0

    invoke-static {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->removeReferenceToConnection(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionWithReference;)V

    return-void
.end method

.method static access$1400()Ljava/util/Map;
    .locals 1

    sget-object v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->REFERENCE_TO_CONNECTION_SOURCE:Ljava/util/Map;

    return-object v0
.end method

.method static access$1500()Ljava/lang/ref/ReferenceQueue;
    .locals 1

    sget-object v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->REFERENCE_QUEUE:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method static access$600(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;)V
    .locals 0

    invoke-static {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->shutdownCheckedOutConnections(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;)V

    return-void
.end method

.method static access$700()Lorg/apache/commons/logging/Log;
    .locals 1

    sget-object v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->LOG:Lorg/apache/commons/logging/Log;

    return-object v0
.end method

.method static access$800(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;)Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->params:Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    return-object v0
.end method

.method static access$900(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionWithReference;Lorg/apache/commons/httpclient/HostConfiguration;Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->storeReferenceToConnection(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionWithReference;Lorg/apache/commons/httpclient/HostConfiguration;Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;)V

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

.method private configurationForConnection(Lorg/apache/commons/httpclient/HttpConnection;)Lorg/apache/commons/httpclient/HostConfiguration;
    .locals 4

    new-instance v0, Lorg/apache/commons/httpclient/HostConfiguration;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/HostConfiguration;-><init>()V

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpConnection;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpConnection;->getPort()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpConnection;->getProtocol()Lorg/apache/commons/httpclient/protocol/Protocol;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/httpclient/HostConfiguration;->setHost(Ljava/lang/String;ILorg/apache/commons/httpclient/protocol/Protocol;)V

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpConnection;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpConnection;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/HostConfiguration;->setLocalAddress(Ljava/net/InetAddress;)V

    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpConnection;->getProxyHost()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpConnection;->getProxyHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpConnection;->getProxyPort()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/httpclient/HostConfiguration;->setProxy(Ljava/lang/String;I)V

    :cond_1
    return-object v0
.end method

.method private doGetConnection(Lorg/apache/commons/httpclient/HostConfiguration;J)Lorg/apache/commons/httpclient/HttpConnection;
    .locals 18

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->params:Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->getMaxConnectionsPerHost(Lorg/apache/commons/httpclient/HostConfiguration;)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->params:Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->getMaxTotalConnections()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->connectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    monitor-enter v12

    :try_start_0
    new-instance v13, Lorg/apache/commons/httpclient/HostConfiguration;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lorg/apache/commons/httpclient/HostConfiguration;-><init>(Lorg/apache/commons/httpclient/HostConfiguration;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->connectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    const/4 v3, 0x1

    invoke-virtual {v1, v13, v3}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->getHostPool(Lorg/apache/commons/httpclient/HostConfiguration;Z)Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;

    move-result-object v14

    const/4 v6, 0x0

    const-wide/16 v3, 0x0

    cmp-long v1, p2, v3

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    const-wide/16 v7, 0x0

    move-wide/from16 v4, p2

    move-object v9, v2

    :goto_1
    if-nez v9, :cond_e

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->shutdown:Z

    if-eqz v2, :cond_1

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Connection factory has been shutdown."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v2, v14, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->freeConnections:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->connectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    invoke-virtual {v2, v13}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->getFreeConnection(Lorg/apache/commons/httpclient/HostConfiguration;)Lorg/apache/commons/httpclient/HttpConnection;

    move-result-object v2

    move-object v9, v2

    goto :goto_1

    :cond_2
    iget v2, v14, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->numConnections:I

    if-ge v2, v10, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->connectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    invoke-static {v2}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->access$200(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;)I

    move-result v2

    if-ge v2, v11, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->connectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    invoke-virtual {v2, v13}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->createConnection(Lorg/apache/commons/httpclient/HostConfiguration;)Lorg/apache/commons/httpclient/HttpConnection;

    move-result-object v2

    move-object v9, v2

    goto :goto_1

    :cond_3
    iget v2, v14, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->numConnections:I

    if-ge v2, v10, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->connectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    invoke-static {v2}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->access$300(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->connectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->deleteLeastUsedConnection()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->connectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    invoke-virtual {v2, v13}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->createConnection(Lorg/apache/commons/httpclient/HostConfiguration;)Lorg/apache/commons/httpclient/HttpConnection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    move-object v9, v2

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_7

    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-gtz v2, :cond_7

    :try_start_2
    new-instance v2, Lorg/apache/commons/httpclient/ConnectionPoolTimeoutException;

    const-string v3, "Timeout waiting for connection"

    invoke-direct {v2, v3}, Lorg/apache/commons/httpclient/ConnectionPoolTimeoutException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catch_0
    move-exception v2

    move-object/from16 v16, v2

    move-wide v2, v7

    move-object/from16 v7, v16

    :goto_2
    :try_start_3
    iget-boolean v8, v6, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;->interruptedByConnectionPool:Z

    if-nez v8, :cond_c

    sget-object v8, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->LOG:Lorg/apache/commons/logging/Log;

    const-string v9, "Interrupted while waiting for connection"

    invoke-interface {v8, v9, v7}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    new-instance v7, Ljava/lang/IllegalThreadStateException;

    const-string v8, "Interrupted while waiting in MultiThreadedHttpConnectionManager"

    invoke-direct {v7, v8}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v7

    move-object/from16 v16, v7

    move-wide v7, v2

    move-object/from16 v2, v16

    :goto_3
    :try_start_4
    iget-boolean v3, v6, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;->interruptedByConnectionPool:Z

    if-nez v3, :cond_5

    iget-object v3, v14, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->waitingThreads:Ljava/util/LinkedList;

    invoke-virtual {v3, v6}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->connectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    invoke-static {v3}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->access$500(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    :cond_5
    if-eqz v1, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long v6, v9, v7

    sub-long v3, v4, v6

    :cond_6
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_7
    :try_start_5
    sget-object v2, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v15, "Unable to get a connection, waiting..., hostConfig="

    invoke-virtual {v3, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_8
    if-nez v6, :cond_b

    new-instance v3, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;

    const/4 v2, 0x0

    invoke-direct {v3, v2}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;-><init>(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$1;)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    iput-object v14, v3, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;->hostConnectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, v3, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;->thread:Ljava/lang/Thread;
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-object v6, v3

    :goto_4
    if-eqz v1, :cond_f

    :try_start_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result-wide v2

    :goto_5
    :try_start_8
    iget-object v7, v14, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->waitingThreads:Ljava/util/LinkedList;

    invoke-virtual {v7, v6}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->connectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    invoke-static {v7}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->access$500(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;)Ljava/util/LinkedList;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->connectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    invoke-virtual {v7, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    iget-boolean v7, v6, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;->interruptedByConnectionPool:Z

    if-nez v7, :cond_9

    iget-object v7, v14, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->waitingThreads:Ljava/util/LinkedList;

    invoke-virtual {v7, v6}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->connectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    invoke-static {v7}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->access$500(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;)Ljava/util/LinkedList;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    :cond_9
    if-eqz v1, :cond_a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result-wide v7

    sub-long/2addr v7, v2

    sub-long/2addr v4, v7

    :cond_a
    :goto_6
    move-wide v7, v2

    goto/16 :goto_1

    :cond_b
    const/4 v2, 0x0

    :try_start_a
    iput-boolean v2, v6, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;->interruptedByConnectionPool:Z
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v2

    goto/16 :goto_3

    :cond_c
    :try_start_b
    iget-boolean v7, v6, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;->interruptedByConnectionPool:Z

    if-nez v7, :cond_d

    iget-object v7, v14, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->waitingThreads:Ljava/util/LinkedList;

    invoke-virtual {v7, v6}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->connectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    invoke-static {v7}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->access$500(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;)Ljava/util/LinkedList;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    :cond_d
    if-eqz v1, :cond_a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v2

    sub-long/2addr v4, v7

    goto :goto_6

    :cond_e
    monitor-exit v12
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    return-object v9

    :catchall_3
    move-exception v2

    move-object v6, v3

    goto/16 :goto_3

    :catch_1
    move-exception v2

    move-object v6, v3

    move-wide/from16 v16, v7

    move-object v7, v2

    move-wide/from16 v2, v16

    goto/16 :goto_2

    :catch_2
    move-exception v7

    goto/16 :goto_2

    :cond_f
    move-wide v2, v7

    goto :goto_5
.end method

.method private static removeReferenceToConnection(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionWithReference;)V
    .locals 3

    sget-object v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->REFERENCE_TO_CONNECTION_SOURCE:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->REFERENCE_TO_CONNECTION_SOURCE:Ljava/util/Map;

    iget-object v2, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionWithReference;->reference:Ljava/lang/ref/WeakReference;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static shutdownAll()V
    .locals 5

    sget-object v2, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->REFERENCE_TO_CONNECTION_SOURCE:Ljava/util/Map;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->ALL_CONNECTION_MANAGERS:Ljava/util/WeakHashMap;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->ALL_CONNECTION_MANAGERS:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->ALL_CONNECTION_MANAGERS:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;

    check-cast v0, [Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;

    const/4 v1, 0x0

    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_1

    aget-object v4, v0, v1

    if-eqz v4, :cond_0

    aget-object v4, v0, v1

    invoke-virtual {v4}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->shutdown()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->REFERENCE_QUEUE_THREAD:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ReferenceQueueThread;

    if-eqz v0, :cond_2

    sget-object v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->REFERENCE_QUEUE_THREAD:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ReferenceQueueThread;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ReferenceQueueThread;->shutdown()V

    const/4 v0, 0x0

    sput-object v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->REFERENCE_QUEUE_THREAD:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ReferenceQueueThread;

    :cond_2
    sget-object v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->REFERENCE_TO_CONNECTION_SOURCE:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method private static shutdownCheckedOutConnections(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;)V
    .locals 5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v3, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->REFERENCE_TO_CONNECTION_SOURCE:Ljava/util/Map;

    monitor-enter v3

    :try_start_0
    sget-object v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->REFERENCE_TO_CONNECTION_SOURCE:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/Reference;

    sget-object v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->REFERENCE_TO_CONNECTION_SOURCE:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionSource;

    iget-object v1, v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionSource;->connectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    if-ne v1, p0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/httpclient/HttpConnection;

    if-eqz v0, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->close()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/apache/commons/httpclient/HttpConnection;->setHttpConnectionManager(Lorg/apache/commons/httpclient/HttpConnectionManager;)V

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->releaseConnection()V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private static storeReferenceToConnection(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionWithReference;Lorg/apache/commons/httpclient/HostConfiguration;Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;)V
    .locals 4

    new-instance v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionSource;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionSource;-><init>(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$1;)V

    iput-object p2, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionSource;->connectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    iput-object p1, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionSource;->hostConfiguration:Lorg/apache/commons/httpclient/HostConfiguration;

    sget-object v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->REFERENCE_TO_CONNECTION_SOURCE:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->REFERENCE_QUEUE_THREAD:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ReferenceQueueThread;

    if-nez v2, :cond_0

    new-instance v2, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ReferenceQueueThread;

    invoke-direct {v2}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ReferenceQueueThread;-><init>()V

    sput-object v2, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->REFERENCE_QUEUE_THREAD:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ReferenceQueueThread;

    sget-object v2, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->REFERENCE_QUEUE_THREAD:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ReferenceQueueThread;

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ReferenceQueueThread;->start()V

    :cond_0
    sget-object v2, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->REFERENCE_TO_CONNECTION_SOURCE:Ljava/util/Map;

    iget-object v3, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionWithReference;->reference:Ljava/lang/ref/WeakReference;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public closeIdleConnections(J)V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->connectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->closeIdleConnections(J)V

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->deleteClosedConnections()V

    return-void
.end method

.method public deleteClosedConnections()V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->connectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->deleteClosedConnections()V

    return-void
.end method

.method public getConnection(Lorg/apache/commons/httpclient/HostConfiguration;)Lorg/apache/commons/httpclient/HttpConnection;
    .locals 3

    :goto_0
    const-wide/16 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->getConnectionWithTimeout(Lorg/apache/commons/httpclient/HostConfiguration;J)Lorg/apache/commons/httpclient/HttpConnection;
    :try_end_0
    .catch Lorg/apache/commons/httpclient/ConnectionPoolTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "Unexpected exception while waiting for connection"

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getConnection(Lorg/apache/commons/httpclient/HostConfiguration;J)Lorg/apache/commons/httpclient/HttpConnection;
    .locals 2

    sget-object v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpConnectionManager.getConnection(HostConfiguration, long)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->getConnectionWithTimeout(Lorg/apache/commons/httpclient/HostConfiguration;J)Lorg/apache/commons/httpclient/HttpConnection;
    :try_end_0
    .catch Lorg/apache/commons/httpclient/ConnectionPoolTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/commons/httpclient/HttpException;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/ConnectionPoolTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/commons/httpclient/HttpException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getConnectionWithTimeout(Lorg/apache/commons/httpclient/HostConfiguration;J)Lorg/apache/commons/httpclient/HttpConnection;
    .locals 3

    sget-object v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpConnectionManager.getConnectionWithTimeout(HostConfiguration, long)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "hostConfiguration is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "HttpConnectionManager.getConnection:  config = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", timeout = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->doGetConnection(Lorg/apache/commons/httpclient/HostConfiguration;J)Lorg/apache/commons/httpclient/HttpConnection;

    move-result-object v0

    new-instance v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;

    invoke-direct {v1, v0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;-><init>(Lorg/apache/commons/httpclient/HttpConnection;)V

    return-object v1
.end method

.method public getConnectionsInPool()I
    .locals 2

    iget-object v1, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->connectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->connectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    invoke-static {v0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->access$200(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;)I

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getConnectionsInPool(Lorg/apache/commons/httpclient/HostConfiguration;)I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->connectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->connectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->getHostPool(Lorg/apache/commons/httpclient/HostConfiguration;Z)Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v0, v2, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->numConnections:I

    :cond_0
    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getConnectionsInUse()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->getConnectionsInPool()I

    move-result v0

    return v0
.end method

.method public getConnectionsInUse(Lorg/apache/commons/httpclient/HostConfiguration;)I
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->getConnectionsInPool(Lorg/apache/commons/httpclient/HostConfiguration;)I

    move-result v0

    return v0
.end method

.method public getMaxConnectionsPerHost()I
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->params:Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->getDefaultMaxConnectionsPerHost()I

    move-result v0

    return v0
.end method

.method public getMaxTotalConnections()I
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->params:Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->getMaxTotalConnections()I

    move-result v0

    return v0
.end method

.method public getParams()Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->params:Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    return-object v0
.end method

.method public isConnectionStaleCheckingEnabled()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->params:Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->isStaleCheckingEnabled()Z

    move-result v0

    return v0
.end method

.method public releaseConnection(Lorg/apache/commons/httpclient/HttpConnection;)V
    .locals 2

    sget-object v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpConnectionManager.releaseConnection(HttpConnection)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    instance-of v0, p1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->getWrappedConnection()Lorg/apache/commons/httpclient/HttpConnection;

    move-result-object p1

    :cond_0
    invoke-static {p1}, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->finishLastResponse(Lorg/apache/commons/httpclient/HttpConnection;)V

    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->connectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    invoke-virtual {v0, p1}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->freeConnection(Lorg/apache/commons/httpclient/HttpConnection;)V

    return-void
.end method

.method public setConnectionStaleCheckingEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->params:Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    invoke-virtual {v0, p1}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->setStaleCheckingEnabled(Z)V

    return-void
.end method

.method public setMaxConnectionsPerHost(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->params:Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    invoke-virtual {v0, p1}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->setDefaultMaxConnectionsPerHost(I)V

    return-void
.end method

.method public setMaxTotalConnections(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->params:Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    invoke-virtual {v0, p1}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->setMaxTotalConnections(I)V

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
    iput-object p1, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->params:Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    return-void
.end method

.method public declared-synchronized shutdown()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->connectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->shutdown:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->shutdown:Z

    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->connectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->shutdown()V

    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
