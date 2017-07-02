.class public Lorg/apache/commons/httpclient/methods/MultipartPostMethod;
.super Lorg/apache/commons/httpclient/methods/ExpectContinueMethod;


# static fields
.field private static final LOG:Lorg/apache/commons/logging/Log;

.field public static final MULTIPART_FORM_CONTENT_TYPE:Ljava/lang/String; = "multipart/form-data"

.field static class$org$apache$commons$httpclient$methods$MultipartPostMethod:Ljava/lang/Class;


# instance fields
.field private final parameters:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/commons/httpclient/methods/MultipartPostMethod;->class$org$apache$commons$httpclient$methods$MultipartPostMethod:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.commons.httpclient.methods.MultipartPostMethod"

    invoke-static {v0}, Lorg/apache/commons/httpclient/methods/MultipartPostMethod;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/methods/MultipartPostMethod;->class$org$apache$commons$httpclient$methods$MultipartPostMethod:Ljava/lang/Class;

    :goto_0
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/methods/MultipartPostMethod;->LOG:Lorg/apache/commons/logging/Log;

    return-void

    :cond_0
    sget-object v0, Lorg/apache/commons/httpclient/methods/MultipartPostMethod;->class$org$apache$commons$httpclient$methods$MultipartPostMethod:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/commons/httpclient/methods/ExpectContinueMethod;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/methods/MultipartPostMethod;->parameters:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/methods/ExpectContinueMethod;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/methods/MultipartPostMethod;->parameters:Ljava/util/List;

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


# virtual methods
.method protected addContentLengthRequestHeader(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V
    .locals 3

    sget-object v0, Lorg/apache/commons/httpclient/methods/MultipartPostMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter EntityEnclosingMethod.addContentLengthRequestHeader(HttpState, HttpConnection)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    const-string v0, "Content-Length"

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/methods/MultipartPostMethod;->getRequestHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/MultipartPostMethod;->getRequestContentLength()J

    move-result-wide v0

    const-string v2, "Content-Length"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lorg/apache/commons/httpclient/methods/MultipartPostMethod;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "Transfer-Encoding"

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/methods/MultipartPostMethod;->removeRequestHeader(Ljava/lang/String;)V

    return-void
.end method

.method protected addContentTypeRequestHeader(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V
    .locals 2

    sget-object v0, Lorg/apache/commons/httpclient/methods/MultipartPostMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter EntityEnclosingMethod.addContentTypeRequestHeader(HttpState, HttpConnection)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/MultipartPostMethod;->parameters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "multipart/form-data"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/apache/commons/httpclient/methods/multipart/Part;->getBoundary()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "; boundary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lorg/apache/commons/httpclient/methods/multipart/Part;->getBoundary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const-string v1, "Content-Type"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/apache/commons/httpclient/methods/MultipartPostMethod;->setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public addParameter(Ljava/lang/String;Ljava/io/File;)V
    .locals 2

    sget-object v0, Lorg/apache/commons/httpclient/methods/MultipartPostMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter MultipartPostMethod.addParameter(String parameterName, File parameterFile)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    new-instance v0, Lorg/apache/commons/httpclient/methods/multipart/FilePart;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/httpclient/methods/multipart/FilePart;-><init>(Ljava/lang/String;Ljava/io/File;)V

    iget-object v1, p0, Lorg/apache/commons/httpclient/methods/MultipartPostMethod;->parameters:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lorg/apache/commons/httpclient/methods/MultipartPostMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter addParameter(String parameterName, String parameterValue)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    new-instance v0, Lorg/apache/commons/httpclient/methods/multipart/StringPart;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/httpclient/methods/multipart/StringPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/commons/httpclient/methods/MultipartPostMethod;->parameters:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addParameter(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 2

    sget-object v0, Lorg/apache/commons/httpclient/methods/MultipartPostMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter MultipartPostMethod.addParameter(String parameterName, String fileName, File parameterFile)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    new-instance v0, Lorg/apache/commons/httpclient/methods/multipart/FilePart;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/commons/httpclient/methods/multipart/FilePart;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    iget-object v1, p0, Lorg/apache/commons/httpclient/methods/MultipartPostMethod;->parameters:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addPart(Lorg/apache/commons/httpclient/methods/multipart/Part;)V
    .locals 2

    sget-object v0, Lorg/apache/commons/httpclient/methods/MultipartPostMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter addPart(Part part)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/MultipartPostMethod;->parameters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected addRequestHeaders(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V
    .locals 2

    sget-object v0, Lorg/apache/commons/httpclient/methods/MultipartPostMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter MultipartPostMethod.addRequestHeaders(HttpState state, HttpConnection conn)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    invoke-super {p0, p1, p2}, Lorg/apache/commons/httpclient/methods/ExpectContinueMethod;->addRequestHeaders(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/httpclient/methods/MultipartPostMethod;->addContentLengthRequestHeader(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/httpclient/methods/MultipartPostMethod;->addContentTypeRequestHeader(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "POST"

    return-object v0
.end method

.method public getParts()[Lorg/apache/commons/httpclient/methods/multipart/Part;
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/MultipartPostMethod;->parameters:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/commons/httpclient/methods/MultipartPostMethod;->parameters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/commons/httpclient/methods/multipart/Part;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/httpclient/methods/multipart/Part;

    check-cast v0, [Lorg/apache/commons/httpclient/methods/multipart/Part;

    return-object v0
.end method

.method protected getRequestContentLength()J
    .locals 2

    sget-object v0, Lorg/apache/commons/httpclient/methods/MultipartPostMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter MultipartPostMethod.getRequestContentLength()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/MultipartPostMethod;->getParts()[Lorg/apache/commons/httpclient/methods/multipart/Part;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/httpclient/methods/multipart/Part;->getLengthOfParts([Lorg/apache/commons/httpclient/methods/multipart/Part;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected hasRequestContent()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public recycle()V
    .locals 2

    sget-object v0, Lorg/apache/commons/httpclient/methods/MultipartPostMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter MultipartPostMethod.recycle()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    invoke-super {p0}, Lorg/apache/commons/httpclient/methods/ExpectContinueMethod;->recycle()V

    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/MultipartPostMethod;->parameters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method protected writeRequestBody(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)Z
    .locals 2

    sget-object v0, Lorg/apache/commons/httpclient/methods/MultipartPostMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter MultipartPostMethod.writeRequestBody(HttpState state, HttpConnection conn)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lorg/apache/commons/httpclient/HttpConnection;->getRequestOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/MultipartPostMethod;->getParts()[Lorg/apache/commons/httpclient/methods/multipart/Part;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/methods/multipart/Part;->sendParts(Ljava/io/OutputStream;[Lorg/apache/commons/httpclient/methods/multipart/Part;)V

    const/4 v0, 0x1

    return v0
.end method
