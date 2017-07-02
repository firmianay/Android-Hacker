.class public abstract Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;
.super Lorg/apache/commons/httpclient/methods/ExpectContinueMethod;


# static fields
.field public static final CONTENT_LENGTH_AUTO:J = -0x2L

.field public static final CONTENT_LENGTH_CHUNKED:J = -0x1L

.field private static final LOG:Lorg/apache/commons/logging/Log;

.field static class$org$apache$commons$httpclient$methods$EntityEnclosingMethod:Ljava/lang/Class;


# instance fields
.field private chunked:Z

.field private repeatCount:I

.field private requestContentLength:J

.field private requestEntity:Lorg/apache/commons/httpclient/methods/RequestEntity;

.field private requestStream:Ljava/io/InputStream;

.field private requestString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->class$org$apache$commons$httpclient$methods$EntityEnclosingMethod:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.commons.httpclient.methods.EntityEnclosingMethod"

    invoke-static {v0}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->class$org$apache$commons$httpclient$methods$EntityEnclosingMethod:Ljava/lang/Class;

    :goto_0
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->LOG:Lorg/apache/commons/logging/Log;

    return-void

    :cond_0
    sget-object v0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->class$org$apache$commons$httpclient$methods$EntityEnclosingMethod:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lorg/apache/commons/httpclient/methods/ExpectContinueMethod;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestStream:Ljava/io/InputStream;

    iput-object v0, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestString:Ljava/lang/String;

    iput v2, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->repeatCount:I

    const-wide/16 v0, -0x2

    iput-wide v0, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestContentLength:J

    iput-boolean v2, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->chunked:Z

    invoke-virtual {p0, v2}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->setFollowRedirects(Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/methods/ExpectContinueMethod;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestStream:Ljava/io/InputStream;

    iput-object v0, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestString:Ljava/lang/String;

    iput v2, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->repeatCount:I

    const-wide/16 v0, -0x2

    iput-wide v0, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestContentLength:J

    iput-boolean v2, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->chunked:Z

    invoke-virtual {p0, v2}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->setFollowRedirects(Z)V

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
    .locals 4

    sget-object v0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter EntityEnclosingMethod.addContentLengthRequestHeader(HttpState, HttpConnection)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    const-string v0, "content-length"

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->getRequestHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Transfer-Encoding"

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->getRequestHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->getRequestContentLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->getEffectiveVersion()Lorg/apache/commons/httpclient/HttpVersion;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/httpclient/HttpVersion;->HTTP_1_1:Lorg/apache/commons/httpclient/HttpVersion;

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/HttpVersion;->greaterEquals(Lorg/apache/commons/httpclient/HttpVersion;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Transfer-Encoding"

    const-string v1, "chunked"

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lorg/apache/commons/httpclient/ProtocolException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->getEffectiveVersion()Lorg/apache/commons/httpclient/HttpVersion;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " does not support chunk encoding"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string v2, "Content-Length"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected addRequestHeaders(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V
    .locals 2

    sget-object v0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter EntityEnclosingMethod.addRequestHeaders(HttpState, HttpConnection)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    invoke-super {p0, p1, p2}, Lorg/apache/commons/httpclient/methods/ExpectContinueMethod;->addRequestHeaders(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->addContentLengthRequestHeader(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V

    const-string v0, "Content-Type"

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->getRequestHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->getRequestEntity()Lorg/apache/commons/httpclient/methods/RequestEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/commons/httpclient/methods/RequestEntity;->getContentType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "Content-Type"

    invoke-interface {v0}, Lorg/apache/commons/httpclient/methods/RequestEntity;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected clearRequestBody()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter EntityEnclosingMethod.clearRequestBody()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    iput-object v2, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestStream:Ljava/io/InputStream;

    iput-object v2, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestString:Ljava/lang/String;

    iput-object v2, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestEntity:Lorg/apache/commons/httpclient/methods/RequestEntity;

    return-void
.end method

.method protected generateRequestBody()[B
    .locals 2

    sget-object v0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter EntityEnclosingMethod.renerateRequestBody()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected generateRequestEntity()Lorg/apache/commons/httpclient/methods/RequestEntity;
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->generateRequestBody()[B

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lorg/apache/commons/httpclient/methods/ByteArrayRequestEntity;

    invoke-direct {v1, v0}, Lorg/apache/commons/httpclient/methods/ByteArrayRequestEntity;-><init>([B)V

    iput-object v1, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestEntity:Lorg/apache/commons/httpclient/methods/RequestEntity;

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestEntity:Lorg/apache/commons/httpclient/methods/RequestEntity;

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestStream:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    new-instance v0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;

    iget-object v1, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestStream:Ljava/io/InputStream;

    iget-wide v2, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestContentLength:J

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;-><init>(Ljava/io/InputStream;J)V

    iput-object v0, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestEntity:Lorg/apache/commons/httpclient/methods/RequestEntity;

    iput-object v4, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestStream:Ljava/io/InputStream;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestString:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->getRequestCharSet()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Lorg/apache/commons/httpclient/methods/StringRequestEntity;

    iget-object v2, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestString:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Lorg/apache/commons/httpclient/methods/StringRequestEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestEntity:Lorg/apache/commons/httpclient/methods/RequestEntity;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v1, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, " not supported"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    :cond_3
    :try_start_1
    new-instance v0, Lorg/apache/commons/httpclient/methods/StringRequestEntity;

    iget-object v1, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestString:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/httpclient/methods/StringRequestEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestEntity:Lorg/apache/commons/httpclient/methods/RequestEntity;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public getFollowRedirects()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getRequestCharSet()Ljava/lang/String;
    .locals 3

    const-string v0, "Content-Type"

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->getRequestHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestEntity:Lorg/apache/commons/httpclient/methods/RequestEntity;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/commons/httpclient/Header;

    const-string v1, "Content-Type"

    iget-object v2, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestEntity:Lorg/apache/commons/httpclient/methods/RequestEntity;

    invoke-interface {v2}, Lorg/apache/commons/httpclient/methods/RequestEntity;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/httpclient/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->getContentCharSet(Lorg/apache/commons/httpclient/Header;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lorg/apache/commons/httpclient/methods/ExpectContinueMethod;->getRequestCharSet()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-super {p0}, Lorg/apache/commons/httpclient/methods/ExpectContinueMethod;->getRequestCharSet()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getRequestContentLength()J
    .locals 4

    const-wide/16 v0, 0x0

    sget-object v2, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v3, "enter EntityEnclosingMethod.getRequestContentLength()"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->hasRequestContent()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    iget-boolean v2, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->chunked:Z

    if-eqz v2, :cond_2

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestEntity:Lorg/apache/commons/httpclient/methods/RequestEntity;

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->generateRequestEntity()Lorg/apache/commons/httpclient/methods/RequestEntity;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestEntity:Lorg/apache/commons/httpclient/methods/RequestEntity;

    :cond_3
    iget-object v2, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestEntity:Lorg/apache/commons/httpclient/methods/RequestEntity;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestEntity:Lorg/apache/commons/httpclient/methods/RequestEntity;

    invoke-interface {v0}, Lorg/apache/commons/httpclient/methods/RequestEntity;->getContentLength()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getRequestEntity()Lorg/apache/commons/httpclient/methods/RequestEntity;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->generateRequestEntity()Lorg/apache/commons/httpclient/methods/RequestEntity;

    move-result-object v0

    return-object v0
.end method

.method protected hasRequestContent()Z
    .locals 2

    sget-object v0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter EntityEnclosingMethod.hasRequestContent()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestEntity:Lorg/apache/commons/httpclient/methods/RequestEntity;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestStream:Ljava/io/InputStream;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestString:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public recycle()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter EntityEnclosingMethod.recycle()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->clearRequestBody()V

    const-wide/16 v0, -0x2

    iput-wide v0, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestContentLength:J

    iput v2, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->repeatCount:I

    iput-boolean v2, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->chunked:Z

    invoke-super {p0}, Lorg/apache/commons/httpclient/methods/ExpectContinueMethod;->recycle()V

    return-void
.end method

.method public setContentChunked(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->chunked:Z

    return-void
.end method

.method public setFollowRedirects(Z)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Entity enclosing requests cannot be redirected without user intervention"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lorg/apache/commons/httpclient/methods/ExpectContinueMethod;->setFollowRedirects(Z)V

    return-void
.end method

.method public setRequestBody(Ljava/io/InputStream;)V
    .locals 2

    sget-object v0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter EntityEnclosingMethod.setRequestBody(InputStream)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->clearRequestBody()V

    iput-object p1, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestStream:Ljava/io/InputStream;

    return-void
.end method

.method public setRequestBody(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter EntityEnclosingMethod.setRequestBody(String)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->clearRequestBody()V

    iput-object p1, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestString:Ljava/lang/String;

    return-void
.end method

.method public setRequestContentLength(I)V
    .locals 2

    sget-object v0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter EntityEnclosingMethod.setRequestContentLength(int)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    int-to-long v0, p1

    iput-wide v0, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestContentLength:J

    return-void
.end method

.method public setRequestContentLength(J)V
    .locals 2

    sget-object v0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter EntityEnclosingMethod.setRequestContentLength(int)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    iput-wide p1, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestContentLength:J

    return-void
.end method

.method public setRequestEntity(Lorg/apache/commons/httpclient/methods/RequestEntity;)V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->clearRequestBody()V

    iput-object p1, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestEntity:Lorg/apache/commons/httpclient/methods/RequestEntity;

    return-void
.end method

.method protected writeRequestBody(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)Z
    .locals 6

    const/4 v5, 0x1

    sget-object v0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter EntityEnclosingMethod.writeRequestBody(HttpState, HttpConnection)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->hasRequestContent()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "Request body has not been specified"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :goto_0
    return v5

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestEntity:Lorg/apache/commons/httpclient/methods/RequestEntity;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->generateRequestEntity()Lorg/apache/commons/httpclient/methods/RequestEntity;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestEntity:Lorg/apache/commons/httpclient/methods/RequestEntity;

    :cond_1
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestEntity:Lorg/apache/commons/httpclient/methods/RequestEntity;

    if-nez v0, :cond_2

    sget-object v0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "Request body is empty"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->getRequestContentLength()J

    move-result-wide v1

    iget v0, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->repeatCount:I

    if-lez v0, :cond_3

    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestEntity:Lorg/apache/commons/httpclient/methods/RequestEntity;

    invoke-interface {v0}, Lorg/apache/commons/httpclient/methods/RequestEntity;->isRepeatable()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lorg/apache/commons/httpclient/ProtocolException;

    const-string v1, "Unbuffered entity enclosing request can not be repeated."

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget v0, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->repeatCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->repeatCount:I

    invoke-virtual {p2}, Lorg/apache/commons/httpclient/HttpConnection;->getRequestOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_5

    new-instance v1, Lorg/apache/commons/httpclient/ChunkedOutputStream;

    invoke-direct {v1, v0}, Lorg/apache/commons/httpclient/ChunkedOutputStream;-><init>(Ljava/io/OutputStream;)V

    :goto_1
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->requestEntity:Lorg/apache/commons/httpclient/methods/RequestEntity;

    invoke-interface {v0, v1}, Lorg/apache/commons/httpclient/methods/RequestEntity;->writeRequest(Ljava/io/OutputStream;)V

    instance-of v0, v1, Lorg/apache/commons/httpclient/ChunkedOutputStream;

    if-eqz v0, :cond_4

    move-object v0, v1

    check-cast v0, Lorg/apache/commons/httpclient/ChunkedOutputStream;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/ChunkedOutputStream;->finish()V

    :cond_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    sget-object v0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "Request body sent"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    move-object v1, v0

    goto :goto_1
.end method
