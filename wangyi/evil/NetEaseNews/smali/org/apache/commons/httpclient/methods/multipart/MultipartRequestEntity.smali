.class public Lorg/apache/commons/httpclient/methods/multipart/MultipartRequestEntity;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/commons/httpclient/methods/RequestEntity;


# static fields
.field private static MULTIPART_CHARS:[B = null

.field private static final MULTIPART_FORM_CONTENT_TYPE:Ljava/lang/String; = "multipart/form-data"

.field static class$org$apache$commons$httpclient$methods$multipart$MultipartRequestEntity:Ljava/lang/Class;

.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field private multipartBoundary:[B

.field private params:Lorg/apache/commons/httpclient/params/HttpMethodParams;

.field protected parts:[Lorg/apache/commons/httpclient/methods/multipart/Part;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/commons/httpclient/methods/multipart/MultipartRequestEntity;->class$org$apache$commons$httpclient$methods$multipart$MultipartRequestEntity:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.commons.httpclient.methods.multipart.MultipartRequestEntity"

    invoke-static {v0}, Lorg/apache/commons/httpclient/methods/multipart/MultipartRequestEntity;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/methods/multipart/MultipartRequestEntity;->class$org$apache$commons$httpclient$methods$multipart$MultipartRequestEntity:Ljava/lang/Class;

    :goto_0
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/methods/multipart/MultipartRequestEntity;->log:Lorg/apache/commons/logging/Log;

    const-string v0, "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-static {v0}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/methods/multipart/MultipartRequestEntity;->MULTIPART_CHARS:[B

    return-void

    :cond_0
    sget-object v0, Lorg/apache/commons/httpclient/methods/multipart/MultipartRequestEntity;->class$org$apache$commons$httpclient$methods$multipart$MultipartRequestEntity:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>([Lorg/apache/commons/httpclient/methods/multipart/Part;Lorg/apache/commons/httpclient/params/HttpMethodParams;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "parts cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "params cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lorg/apache/commons/httpclient/methods/multipart/MultipartRequestEntity;->parts:[Lorg/apache/commons/httpclient/methods/multipart/Part;

    iput-object p2, p0, Lorg/apache/commons/httpclient/methods/multipart/MultipartRequestEntity;->params:Lorg/apache/commons/httpclient/params/HttpMethodParams;

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

.method private static generateMultipartBoundary()[B
    .locals 5

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1e

    new-array v2, v0, [B

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    sget-object v3, Lorg/apache/commons/httpclient/methods/multipart/MultipartRequestEntity;->MULTIPART_CHARS:[B

    sget-object v4, Lorg/apache/commons/httpclient/methods/multipart/MultipartRequestEntity;->MULTIPART_CHARS:[B

    array-length v4, v4

    invoke-virtual {v1, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    aget-byte v3, v3, v4

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method


# virtual methods
.method public getContentLength()J
    .locals 3

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/multipart/MultipartRequestEntity;->parts:[Lorg/apache/commons/httpclient/methods/multipart/Part;

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/multipart/MultipartRequestEntity;->getMultipartBoundary()[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/methods/multipart/Part;->getLengthOfParts([Lorg/apache/commons/httpclient/methods/multipart/Part;[B)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    sget-object v1, Lorg/apache/commons/httpclient/methods/multipart/MultipartRequestEntity;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "An exception occurred while getting the length of the parts"

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "multipart/form-data"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "; boundary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/multipart/MultipartRequestEntity;->getMultipartBoundary()[B

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getAsciiString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getMultipartBoundary()[B
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/multipart/MultipartRequestEntity;->multipartBoundary:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/multipart/MultipartRequestEntity;->params:Lorg/apache/commons/httpclient/params/HttpMethodParams;

    const-string v1, "http.method.multipart.boundary"

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/httpclient/methods/multipart/MultipartRequestEntity;->multipartBoundary:[B

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/multipart/MultipartRequestEntity;->multipartBoundary:[B

    return-object v0

    :cond_1
    invoke-static {}, Lorg/apache/commons/httpclient/methods/multipart/MultipartRequestEntity;->generateMultipartBoundary()[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/httpclient/methods/multipart/MultipartRequestEntity;->multipartBoundary:[B

    goto :goto_0
.end method

.method public isRepeatable()Z
    .locals 3

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lorg/apache/commons/httpclient/methods/multipart/MultipartRequestEntity;->parts:[Lorg/apache/commons/httpclient/methods/multipart/Part;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lorg/apache/commons/httpclient/methods/multipart/MultipartRequestEntity;->parts:[Lorg/apache/commons/httpclient/methods/multipart/Part;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/methods/multipart/Part;->isRepeatable()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public writeRequest(Ljava/io/OutputStream;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/multipart/MultipartRequestEntity;->parts:[Lorg/apache/commons/httpclient/methods/multipart/Part;

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/multipart/MultipartRequestEntity;->getMultipartBoundary()[B

    move-result-object v1

    invoke-static {p1, v0, v1}, Lorg/apache/commons/httpclient/methods/multipart/Part;->sendParts(Ljava/io/OutputStream;[Lorg/apache/commons/httpclient/methods/multipart/Part;[B)V

    return-void
.end method
