.class public final Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;
.super Ljava/lang/Object;


# static fields
.field private static INETSOCKETADDRESS_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

.field private static REFLECTION_FAILED:Z

.field private static SOCKETBIND_METHOD:Ljava/lang/reflect/Method;

.field private static SOCKETCONNECT_METHOD:Ljava/lang/reflect/Method;

.field private static SOCKETTIMEOUTEXCEPTION_CLASS:Ljava/lang/Class;

.field static class$java$net$InetAddress:Ljava/lang/Class;

.field static class$java$net$Socket:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-boolean v0, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->REFLECTION_FAILED:Z

    sput-object v1, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->INETSOCKETADDRESS_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    sput-object v1, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->SOCKETCONNECT_METHOD:Ljava/lang/reflect/Method;

    sput-object v1, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->SOCKETBIND_METHOD:Ljava/lang/reflect/Method;

    sput-object v1, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->SOCKETTIMEOUTEXCEPTION_CLASS:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

.method public static createSocket(Ljava/lang/String;Ljava/lang/String;ILjava/net/InetAddress;II)Ljava/net/Socket;
    .locals 10

    const/4 v1, 0x0

    const/4 v9, 0x1

    sget-boolean v0, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->REFLECTION_FAILED:Z

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "getDefault"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "createSocket"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Socket;

    sget-object v2, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->INETSOCKETADDRESS_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    if-nez v2, :cond_1

    const-string v2, "java.net.InetSocketAddress"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v2, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->class$java$net$InetAddress:Ljava/lang/Class;

    if-nez v2, :cond_5

    const-string v2, "java.net.InetAddress"

    invoke-static {v2}, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->class$java$net$InetAddress:Ljava/lang/Class;

    :goto_1
    aput-object v2, v4, v5

    const/4 v2, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    sput-object v2, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->INETSOCKETADDRESS_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    :cond_1
    sget-object v2, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->INETSOCKETADDRESS_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v2, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->INETSOCKETADDRESS_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p3, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v2, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->SOCKETCONNECT_METHOD:Ljava/lang/reflect/Method;

    if-nez v2, :cond_2

    sget-object v2, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->class$java$net$Socket:Ljava/lang/Class;

    if-nez v2, :cond_6

    const-string v2, "java.net.Socket"

    invoke-static {v2}, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->class$java$net$Socket:Ljava/lang/Class;

    :goto_2
    const-string v5, "connect"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-string v8, "java.net.SocketAddress"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->SOCKETCONNECT_METHOD:Ljava/lang/reflect/Method;

    :cond_2
    sget-object v2, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->SOCKETBIND_METHOD:Ljava/lang/reflect/Method;

    if-nez v2, :cond_3

    sget-object v2, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->class$java$net$Socket:Ljava/lang/Class;

    if-nez v2, :cond_7

    const-string v2, "java.net.Socket"

    invoke-static {v2}, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->class$java$net$Socket:Ljava/lang/Class;

    :goto_3
    const-string v5, "bind"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-string v8, "java.net.SocketAddress"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->SOCKETBIND_METHOD:Ljava/lang/reflect/Method;

    :cond_3
    sget-object v2, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->SOCKETBIND_METHOD:Ljava/lang/reflect/Method;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-virtual {v2, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->SOCKETCONNECT_METHOD:Ljava/lang/reflect/Method;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v3, 0x1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v4, v3

    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    sget-object v2, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->SOCKETTIMEOUTEXCEPTION_CLASS:Ljava/lang/Class;

    if-nez v2, :cond_4

    :try_start_1
    const-string v2, "java.net.SocketTimeoutException"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->SOCKETTIMEOUTEXCEPTION_CLASS:Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    sget-object v2, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->SOCKETTIMEOUTEXCEPTION_CLASS:Ljava/lang/Class;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v1, Lorg/apache/commons/httpclient/ConnectTimeoutException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "The host did not accept the connection within timeout of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/httpclient/ConnectTimeoutException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_5
    :try_start_2
    sget-object v2, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->class$java$net$InetAddress:Ljava/lang/Class;

    goto/16 :goto_1

    :cond_6
    sget-object v2, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->class$java$net$Socket:Ljava/lang/Class;

    goto/16 :goto_2

    :cond_7
    sget-object v2, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->class$java$net$Socket:Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_1
    move-exception v0

    sput-boolean v9, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->REFLECTION_FAILED:Z

    move-object v0, v1

    goto/16 :goto_0

    :cond_8
    instance-of v2, v0, Ljava/io/IOException;

    if-eqz v2, :cond_9

    check-cast v0, Ljava/io/IOException;

    throw v0

    :cond_9
    move-object v0, v1

    goto/16 :goto_0

    :catch_2
    move-exception v0

    sput-boolean v9, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->REFLECTION_FAILED:Z

    move-object v0, v1

    goto/16 :goto_0
.end method
