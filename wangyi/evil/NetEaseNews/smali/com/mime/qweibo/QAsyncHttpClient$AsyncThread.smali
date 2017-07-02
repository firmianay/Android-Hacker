.class Lcom/mime/qweibo/QAsyncHttpClient$AsyncThread;
.super Ljava/lang/Thread;


# instance fields
.field private mAsyncHandler:Lcom/mime/qweibo/QAsyncHandler;

.field private mCookie:Ljava/lang/Object;

.field private mHttpMedthod:Lorg/apache/commons/httpclient/HttpMethod;

.field final synthetic this$0:Lcom/mime/qweibo/QAsyncHttpClient;


# direct methods
.method public constructor <init>(Lcom/mime/qweibo/QAsyncHttpClient;Lorg/apache/commons/httpclient/HttpMethod;Lcom/mime/qweibo/QAsyncHandler;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/mime/qweibo/QAsyncHttpClient$AsyncThread;->this$0:Lcom/mime/qweibo/QAsyncHttpClient;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/mime/qweibo/QAsyncHttpClient$AsyncThread;->mHttpMedthod:Lorg/apache/commons/httpclient/HttpMethod;

    iput-object p3, p0, Lcom/mime/qweibo/QAsyncHttpClient$AsyncThread;->mAsyncHandler:Lcom/mime/qweibo/QAsyncHandler;

    iput-object p4, p0, Lcom/mime/qweibo/QAsyncHttpClient$AsyncThread;->mCookie:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Lorg/apache/commons/httpclient/HttpClient;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/HttpClient;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/mime/qweibo/QAsyncHttpClient$AsyncThread;->mHttpMedthod:Lorg/apache/commons/httpclient/HttpMethod;

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/HttpClient;->executeMethod(Lorg/apache/commons/httpclient/HttpMethod;)I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "HttpMethod failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mime/qweibo/QAsyncHttpClient$AsyncThread;->mHttpMedthod:Lorg/apache/commons/httpclient/HttpMethod;

    invoke-interface {v3}, Lorg/apache/commons/httpclient/HttpMethod;->getStatusLine()Lorg/apache/commons/httpclient/StatusLine;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/mime/qweibo/QAsyncHttpClient$AsyncThread;->mHttpMedthod:Lorg/apache/commons/httpclient/HttpMethod;

    invoke-interface {v1}, Lorg/apache/commons/httpclient/HttpMethod;->getResponseBodyAsString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/commons/httpclient/HttpException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    iget-object v2, p0, Lcom/mime/qweibo/QAsyncHttpClient$AsyncThread;->mHttpMedthod:Lorg/apache/commons/httpclient/HttpMethod;

    invoke-interface {v2}, Lorg/apache/commons/httpclient/HttpMethod;->releaseConnection()V

    iget-object v2, p0, Lcom/mime/qweibo/QAsyncHttpClient$AsyncThread;->mAsyncHandler:Lcom/mime/qweibo/QAsyncHandler;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/mime/qweibo/QAsyncHttpClient$AsyncThread;->mAsyncHandler:Lcom/mime/qweibo/QAsyncHandler;

    iget-object v3, p0, Lcom/mime/qweibo/QAsyncHttpClient$AsyncThread;->mCookie:Ljava/lang/Object;

    invoke-interface {v2, v0, v1, v3}, Lcom/mime/qweibo/QAsyncHandler;->onCompleted(ILjava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpException;->printStackTrace()V

    iget-object v1, p0, Lcom/mime/qweibo/QAsyncHttpClient$AsyncThread;->mAsyncHandler:Lcom/mime/qweibo/QAsyncHandler;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/mime/qweibo/QAsyncHttpClient$AsyncThread;->mAsyncHandler:Lcom/mime/qweibo/QAsyncHandler;

    iget-object v2, p0, Lcom/mime/qweibo/QAsyncHttpClient$AsyncThread;->mCookie:Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Lcom/mime/qweibo/QAsyncHandler;->onThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    iget-object v0, p0, Lcom/mime/qweibo/QAsyncHttpClient$AsyncThread;->mHttpMedthod:Lorg/apache/commons/httpclient/HttpMethod;

    invoke-interface {v0}, Lorg/apache/commons/httpclient/HttpMethod;->releaseConnection()V

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    iget-object v1, p0, Lcom/mime/qweibo/QAsyncHttpClient$AsyncThread;->mAsyncHandler:Lcom/mime/qweibo/QAsyncHandler;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/mime/qweibo/QAsyncHttpClient$AsyncThread;->mAsyncHandler:Lcom/mime/qweibo/QAsyncHandler;

    iget-object v2, p0, Lcom/mime/qweibo/QAsyncHttpClient$AsyncThread;->mCookie:Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Lcom/mime/qweibo/QAsyncHandler;->onThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    iget-object v0, p0, Lcom/mime/qweibo/QAsyncHttpClient$AsyncThread;->mHttpMedthod:Lorg/apache/commons/httpclient/HttpMethod;

    invoke-interface {v0}, Lorg/apache/commons/httpclient/HttpMethod;->releaseConnection()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/mime/qweibo/QAsyncHttpClient$AsyncThread;->mHttpMedthod:Lorg/apache/commons/httpclient/HttpMethod;

    invoke-interface {v1}, Lorg/apache/commons/httpclient/HttpMethod;->releaseConnection()V

    throw v0
.end method
