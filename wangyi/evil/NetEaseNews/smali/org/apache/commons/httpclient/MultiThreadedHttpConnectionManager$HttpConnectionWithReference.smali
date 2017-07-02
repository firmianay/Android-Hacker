.class Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionWithReference;
.super Lorg/apache/commons/httpclient/HttpConnection;


# instance fields
.field public reference:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lorg/apache/commons/httpclient/HostConfiguration;)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/HttpConnection;-><init>(Lorg/apache/commons/httpclient/HostConfiguration;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$1500()Ljava/lang/ref/ReferenceQueue;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    iput-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionWithReference;->reference:Ljava/lang/ref/WeakReference;

    return-void
.end method
