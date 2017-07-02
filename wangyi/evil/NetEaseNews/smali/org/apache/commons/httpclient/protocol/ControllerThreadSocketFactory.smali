.class public final Lorg/apache/commons/httpclient/protocol/ControllerThreadSocketFactory;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createSocket(Lorg/apache/commons/httpclient/protocol/ControllerThreadSocketFactory$SocketTask;I)Ljava/net/Socket;
    .locals 3

    int-to-long v0, p1

    :try_start_0
    invoke-static {p0, v0, v1}, Lorg/apache/commons/httpclient/util/TimeoutController;->execute(Ljava/lang/Runnable;J)V
    :try_end_0
    .catch Lorg/apache/commons/httpclient/util/TimeoutController$TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/protocol/ControllerThreadSocketFactory$SocketTask;->getSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-static {p0}, Lorg/apache/commons/httpclient/protocol/ControllerThreadSocketFactory$SocketTask;->access$000(Lorg/apache/commons/httpclient/protocol/ControllerThreadSocketFactory$SocketTask;)Ljava/io/IOException;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lorg/apache/commons/httpclient/protocol/ControllerThreadSocketFactory$SocketTask;->access$000(Lorg/apache/commons/httpclient/protocol/ControllerThreadSocketFactory$SocketTask;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :catch_0
    move-exception v0

    new-instance v0, Lorg/apache/commons/httpclient/ConnectTimeoutException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "The host did not accept the connection within timeout of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/ConnectTimeoutException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object v0
.end method

.method public static createSocket(Lorg/apache/commons/httpclient/protocol/ProtocolSocketFactory;Ljava/lang/String;ILjava/net/InetAddress;II)Ljava/net/Socket;
    .locals 6

    new-instance v0, Lorg/apache/commons/httpclient/protocol/ControllerThreadSocketFactory$1;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/httpclient/protocol/ControllerThreadSocketFactory$1;-><init>(Lorg/apache/commons/httpclient/protocol/ProtocolSocketFactory;Ljava/lang/String;ILjava/net/InetAddress;I)V

    int-to-long v1, p5

    :try_start_0
    invoke-static {v0, v1, v2}, Lorg/apache/commons/httpclient/util/TimeoutController;->execute(Ljava/lang/Runnable;J)V
    :try_end_0
    .catch Lorg/apache/commons/httpclient/util/TimeoutController$TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/protocol/ControllerThreadSocketFactory$SocketTask;->getSocket()Ljava/net/Socket;

    move-result-object v1

    invoke-static {v0}, Lorg/apache/commons/httpclient/protocol/ControllerThreadSocketFactory$SocketTask;->access$000(Lorg/apache/commons/httpclient/protocol/ControllerThreadSocketFactory$SocketTask;)Ljava/io/IOException;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Lorg/apache/commons/httpclient/protocol/ControllerThreadSocketFactory$SocketTask;->access$000(Lorg/apache/commons/httpclient/protocol/ControllerThreadSocketFactory$SocketTask;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :catch_0
    move-exception v0

    new-instance v0, Lorg/apache/commons/httpclient/ConnectTimeoutException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "The host did not accept the connection within timeout of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/ConnectTimeoutException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object v1
.end method
