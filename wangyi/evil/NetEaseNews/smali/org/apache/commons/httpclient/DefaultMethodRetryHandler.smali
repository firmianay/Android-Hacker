.class public Lorg/apache/commons/httpclient/DefaultMethodRetryHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/commons/httpclient/MethodRetryHandler;


# instance fields
.field private requestSentRetryEnabled:Z

.field private retryCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/commons/httpclient/DefaultMethodRetryHandler;->retryCount:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/DefaultMethodRetryHandler;->requestSentRetryEnabled:Z

    return-void
.end method


# virtual methods
.method public getRetryCount()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/httpclient/DefaultMethodRetryHandler;->retryCount:I

    return v0
.end method

.method public isRequestSentRetryEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/httpclient/DefaultMethodRetryHandler;->requestSentRetryEnabled:Z

    return v0
.end method

.method public retryMethod(Lorg/apache/commons/httpclient/HttpMethod;Lorg/apache/commons/httpclient/HttpConnection;Lorg/apache/commons/httpclient/HttpRecoverableException;IZ)Z
    .locals 1

    if-eqz p5, :cond_0

    iget-boolean v0, p0, Lorg/apache/commons/httpclient/DefaultMethodRetryHandler;->requestSentRetryEnabled:Z

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lorg/apache/commons/httpclient/DefaultMethodRetryHandler;->retryCount:I

    if-gt p4, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRequestSentRetryEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/httpclient/DefaultMethodRetryHandler;->requestSentRetryEnabled:Z

    return-void
.end method

.method public setRetryCount(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/httpclient/DefaultMethodRetryHandler;->retryCount:I

    return-void
.end method
