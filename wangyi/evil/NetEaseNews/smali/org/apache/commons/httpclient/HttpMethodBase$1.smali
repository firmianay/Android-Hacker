.class Lorg/apache/commons/httpclient/HttpMethodBase$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/commons/httpclient/ResponseConsumedWatcher;


# instance fields
.field private final this$0:Lorg/apache/commons/httpclient/HttpMethodBase;


# direct methods
.method constructor <init>(Lorg/apache/commons/httpclient/HttpMethodBase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/httpclient/HttpMethodBase$1;->this$0:Lorg/apache/commons/httpclient/HttpMethodBase;

    return-void
.end method


# virtual methods
.method public responseConsumed()V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase$1;->this$0:Lorg/apache/commons/httpclient/HttpMethodBase;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpMethodBase;->responseBodyConsumed()V

    return-void
.end method