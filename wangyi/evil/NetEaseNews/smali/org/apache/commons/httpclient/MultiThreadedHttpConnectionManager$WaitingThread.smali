.class Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;
.super Ljava/lang/Object;


# instance fields
.field public hostConnectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;

.field public interruptedByConnectionPool:Z

.field public thread:Ljava/lang/Thread;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;->interruptedByConnectionPool:Z

    return-void
.end method

.method constructor <init>(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$1;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;-><init>()V

    return-void
.end method
