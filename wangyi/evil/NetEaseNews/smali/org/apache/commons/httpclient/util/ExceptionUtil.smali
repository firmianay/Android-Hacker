.class public Lorg/apache/commons/httpclient/util/ExceptionUtil;
.super Ljava/lang/Object;


# static fields
.field private static final INIT_CAUSE_METHOD:Ljava/lang/reflect/Method;

.field private static final LOG:Lorg/apache/commons/logging/Log;

.field private static final SOCKET_TIMEOUT_CLASS:Ljava/lang/Class;

.field static class$java$lang$Throwable:Ljava/lang/Class;

.field static class$org$apache$commons$httpclient$util$ExceptionUtil:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/commons/httpclient/util/ExceptionUtil;->class$org$apache$commons$httpclient$util$ExceptionUtil:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.commons.httpclient.util.ExceptionUtil"

    invoke-static {v0}, Lorg/apache/commons/httpclient/util/ExceptionUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/util/ExceptionUtil;->class$org$apache$commons$httpclient$util$ExceptionUtil:Ljava/lang/Class;

    :goto_0
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/util/ExceptionUtil;->LOG:Lorg/apache/commons/logging/Log;

    invoke-static {}, Lorg/apache/commons/httpclient/util/ExceptionUtil;->getInitCauseMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/util/ExceptionUtil;->INIT_CAUSE_METHOD:Ljava/lang/reflect/Method;

    invoke-static {}, Lorg/apache/commons/httpclient/util/ExceptionUtil;->SocketTimeoutExceptionClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/util/ExceptionUtil;->SOCKET_TIMEOUT_CLASS:Ljava/lang/Class;

    return-void

    :cond_0
    sget-object v0, Lorg/apache/commons/httpclient/util/ExceptionUtil;->class$org$apache$commons$httpclient$util$ExceptionUtil:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static SocketTimeoutExceptionClass()Ljava/lang/Class;
    .locals 1

    :try_start_0
    const-string v0, "java.net.SocketTimeoutException"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
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

.method private static getInitCauseMethod()Ljava/lang/reflect/Method;
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    new-array v1, v0, [Ljava/lang/Class;

    const/4 v2, 0x0

    sget-object v0, Lorg/apache/commons/httpclient/util/ExceptionUtil;->class$java$lang$Throwable:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "java.lang.Throwable"

    invoke-static {v0}, Lorg/apache/commons/httpclient/util/ExceptionUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/util/ExceptionUtil;->class$java$lang$Throwable:Ljava/lang/Class;

    :goto_0
    aput-object v0, v1, v2

    sget-object v0, Lorg/apache/commons/httpclient/util/ExceptionUtil;->class$java$lang$Throwable:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string v0, "java.lang.Throwable"

    invoke-static {v0}, Lorg/apache/commons/httpclient/util/ExceptionUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/util/ExceptionUtil;->class$java$lang$Throwable:Ljava/lang/Class;

    :goto_1
    const-string v2, "initCause"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_0
    sget-object v0, Lorg/apache/commons/httpclient/util/ExceptionUtil;->class$java$lang$Throwable:Ljava/lang/Class;

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/apache/commons/httpclient/util/ExceptionUtil;->class$java$lang$Throwable:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_2
.end method

.method public static initCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 3

    sget-object v0, Lorg/apache/commons/httpclient/util/ExceptionUtil;->INIT_CAUSE_METHOD:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lorg/apache/commons/httpclient/util/ExceptionUtil;->INIT_CAUSE_METHOD:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lorg/apache/commons/httpclient/util/ExceptionUtil;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "Exception invoking Throwable.initCause"

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static isSocketTimeoutException(Ljava/io/InterruptedIOException;)Z
    .locals 1

    sget-object v0, Lorg/apache/commons/httpclient/util/ExceptionUtil;->SOCKET_TIMEOUT_CLASS:Ljava/lang/Class;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/commons/httpclient/util/ExceptionUtil;->SOCKET_TIMEOUT_CLASS:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
