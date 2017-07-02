.class public Lcom/mime/qweibo/QAsyncHttpClient;
.super Ljava/lang/Object;


# static fields
.field private static final CONNECTION_TIMEOUT:I = 0x4e20


# instance fields
.field private mThreadPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/mime/qweibo/QAsyncHttpClient;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public httpGet(Ljava/lang/String;Ljava/lang/String;Lcom/mime/qweibo/QAsyncHandler;Ljava/lang/Object;)Z
    .locals 5

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    if-eqz p2, :cond_2

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    new-instance v0, Lorg/apache/commons/httpclient/methods/GetMethod;

    invoke-direct {v0, p1}, Lorg/apache/commons/httpclient/methods/GetMethod;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/methods/GetMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v1

    const-string v2, "http.socket.timeout"

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x4e20

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/mime/qweibo/QAsyncHttpClient;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/mime/qweibo/QAsyncHttpClient$AsyncThread;

    invoke-direct {v2, p0, v0, p3, p4}, Lcom/mime/qweibo/QAsyncHttpClient$AsyncThread;-><init>(Lcom/mime/qweibo/QAsyncHttpClient;Lorg/apache/commons/httpclient/HttpMethod;Lcom/mime/qweibo/QAsyncHandler;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public httpPost(Ljava/lang/String;Ljava/lang/String;Lcom/mime/qweibo/QAsyncHandler;Ljava/lang/Object;)Z
    .locals 5

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    new-instance v0, Lorg/apache/commons/httpclient/methods/PostMethod;

    invoke-direct {v0, p1}, Lorg/apache/commons/httpclient/methods/PostMethod;-><init>(Ljava/lang/String;)V

    const-string v1, "Content-Type"

    const-string v2, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/httpclient/methods/PostMethod;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/methods/PostMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v1

    const-string v2, "http.socket.timeout"

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x4e20

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p2, :cond_2

    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lorg/apache/commons/httpclient/methods/ByteArrayRequestEntity;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/httpclient/methods/ByteArrayRequestEntity;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/methods/PostMethod;->setRequestEntity(Lorg/apache/commons/httpclient/methods/RequestEntity;)V

    :cond_2
    iget-object v1, p0, Lcom/mime/qweibo/QAsyncHttpClient;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/mime/qweibo/QAsyncHttpClient$AsyncThread;

    invoke-direct {v2, p0, v0, p3, p4}, Lcom/mime/qweibo/QAsyncHttpClient$AsyncThread;-><init>(Lcom/mime/qweibo/QAsyncHttpClient;Lorg/apache/commons/httpclient/HttpMethod;Lcom/mime/qweibo/QAsyncHandler;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public httpPostWithFile(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/mime/qweibo/QAsyncHandler;Ljava/lang/Object;)Z
    .locals 13

    if-eqz p1, :cond_0

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x3f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v10, Lorg/apache/commons/httpclient/methods/PostMethod;

    invoke-direct {v10, v2}, Lorg/apache/commons/httpclient/methods/PostMethod;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/mime/qweibo/utils/QHttpUtil;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez p3, :cond_2

    const/4 v2, 0x0

    :goto_1
    add-int/2addr v2, v4

    new-array v11, v2, [Lorg/apache/commons/httpclient/methods/multipart/Part;

    const/4 v2, 0x0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v3, v2

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    :try_start_0
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move v8, v3

    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Lorg/apache/commons/httpclient/methods/multipart/MultipartRequestEntity;

    invoke-virtual {v10}, Lorg/apache/commons/httpclient/methods/PostMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v3

    invoke-direct {v2, v11, v3}, Lorg/apache/commons/httpclient/methods/multipart/MultipartRequestEntity;-><init>([Lorg/apache/commons/httpclient/methods/multipart/Part;Lorg/apache/commons/httpclient/params/HttpMethodParams;)V

    invoke-virtual {v10, v2}, Lorg/apache/commons/httpclient/methods/PostMethod;->setRequestEntity(Lorg/apache/commons/httpclient/methods/RequestEntity;)V

    iget-object v2, p0, Lcom/mime/qweibo/QAsyncHttpClient;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/mime/qweibo/QAsyncHttpClient$AsyncThread;

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-direct {v3, p0, v10, v0, v1}, Lcom/mime/qweibo/QAsyncHttpClient$AsyncThread;-><init>(Lcom/mime/qweibo/QAsyncHttpClient;Lorg/apache/commons/httpclient/HttpMethod;Lcom/mime/qweibo/QAsyncHandler;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_1

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mime/qweibo/QParameter;

    add-int/lit8 v4, v3, 0x1

    new-instance v6, Lorg/apache/commons/httpclient/methods/multipart/StringPart;

    iget-object v7, v2, Lcom/mime/qweibo/QParameter;->mName:Ljava/lang/String;

    iget-object v2, v2, Lcom/mime/qweibo/QParameter;->mValue:Ljava/lang/String;

    invoke-static {v2}, Lcom/mime/qweibo/utils/QHttpUtil;->formParamDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v8, "UTF-8"

    invoke-direct {v6, v7, v2, v8}, Lorg/apache/commons/httpclient/methods/multipart/StringPart;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v11, v3

    move v3, v4

    goto :goto_2

    :cond_4
    :try_start_1
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/mime/qweibo/QParameter;

    move-object v3, v0

    new-instance v5, Ljava/io/File;

    iget-object v2, v3, Lcom/mime/qweibo/QParameter;->mValue:Ljava/lang/String;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    add-int/lit8 v9, v8, 0x1

    new-instance v2, Lorg/apache/commons/httpclient/methods/multipart/FilePart;

    iget-object v3, v3, Lcom/mime/qweibo/QParameter;->mName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5}, Lcom/mime/qweibo/utils/QHttpUtil;->getContentType(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/httpclient/methods/multipart/FilePart;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v11, v8
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move v8, v9

    goto :goto_3

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const/4 v2, 0x0

    goto/16 :goto_0
.end method
