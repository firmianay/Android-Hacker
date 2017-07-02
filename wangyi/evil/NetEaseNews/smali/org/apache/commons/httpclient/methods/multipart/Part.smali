.class public abstract Lorg/apache/commons/httpclient/methods/multipart/Part;
.super Ljava/lang/Object;


# static fields
.field protected static final BOUNDARY:Ljava/lang/String; = "----------------314159265358979323846"

.field protected static final BOUNDARY_BYTES:[B

.field protected static final CHARSET:Ljava/lang/String; = "; charset="

.field protected static final CHARSET_BYTES:[B

.field protected static final CONTENT_DISPOSITION:Ljava/lang/String; = "Content-Disposition: form-data; name="

.field protected static final CONTENT_DISPOSITION_BYTES:[B

.field protected static final CONTENT_TRANSFER_ENCODING:Ljava/lang/String; = "Content-Transfer-Encoding: "

.field protected static final CONTENT_TRANSFER_ENCODING_BYTES:[B

.field protected static final CONTENT_TYPE:Ljava/lang/String; = "Content-Type: "

.field protected static final CONTENT_TYPE_BYTES:[B

.field protected static final CRLF:Ljava/lang/String; = "\r\n"

.field protected static final CRLF_BYTES:[B

.field private static final DEFAULT_BOUNDARY_BYTES:[B

.field protected static final EXTRA:Ljava/lang/String; = "--"

.field protected static final EXTRA_BYTES:[B

.field private static final LOG:Lorg/apache/commons/logging/Log;

.field protected static final QUOTE:Ljava/lang/String; = "\""

.field protected static final QUOTE_BYTES:[B

.field static class$org$apache$commons$httpclient$methods$multipart$Part:Ljava/lang/Class;


# instance fields
.field private boundaryBytes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/commons/httpclient/methods/multipart/Part;->class$org$apache$commons$httpclient$methods$multipart$Part:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.commons.httpclient.methods.multipart.Part"

    invoke-static {v0}, Lorg/apache/commons/httpclient/methods/multipart/Part;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/methods/multipart/Part;->class$org$apache$commons$httpclient$methods$multipart$Part:Ljava/lang/Class;

    :goto_0
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/methods/multipart/Part;->LOG:Lorg/apache/commons/logging/Log;

    const-string v0, "----------------314159265358979323846"

    invoke-static {v0}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/methods/multipart/Part;->BOUNDARY_BYTES:[B

    sget-object v0, Lorg/apache/commons/httpclient/methods/multipart/Part;->BOUNDARY_BYTES:[B

    sput-object v0, Lorg/apache/commons/httpclient/methods/multipart/Part;->DEFAULT_BOUNDARY_BYTES:[B

    const-string v0, "\r\n"

    invoke-static {v0}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/methods/multipart/Part;->CRLF_BYTES:[B

    const-string v0, "\""

    invoke-static {v0}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/methods/multipart/Part;->QUOTE_BYTES:[B

    const-string v0, "--"

    invoke-static {v0}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/methods/multipart/Part;->EXTRA_BYTES:[B

    const-string v0, "Content-Disposition: form-data; name="

    invoke-static {v0}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/methods/multipart/Part;->CONTENT_DISPOSITION_BYTES:[B

    const-string v0, "Content-Type: "

    invoke-static {v0}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/methods/multipart/Part;->CONTENT_TYPE_BYTES:[B

    const-string v0, "; charset="

    invoke-static {v0}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/methods/multipart/Part;->CHARSET_BYTES:[B

    const-string v0, "Content-Transfer-Encoding: "

    invoke-static {v0}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/methods/multipart/Part;->CONTENT_TRANSFER_ENCODING_BYTES:[B

    return-void

    :cond_0
    sget-object v0, Lorg/apache/commons/httpclient/methods/multipart/Part;->class$org$apache$commons$httpclient$methods$multipart$Part:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

.method public static getBoundary()Ljava/lang/String;
    .locals 1

    const-string v0, "----------------314159265358979323846"

    return-object v0
.end method

.method public static getLengthOfParts([Lorg/apache/commons/httpclient/methods/multipart/Part;)J
    .locals 2

    sget-object v0, Lorg/apache/commons/httpclient/methods/multipart/Part;->DEFAULT_BOUNDARY_BYTES:[B

    invoke-static {p0, v0}, Lorg/apache/commons/httpclient/methods/multipart/Part;->getLengthOfParts([Lorg/apache/commons/httpclient/methods/multipart/Part;[B)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLengthOfParts([Lorg/apache/commons/httpclient/methods/multipart/Part;[B)J
    .locals 8

    const-wide/16 v3, 0x0

    sget-object v0, Lorg/apache/commons/httpclient/methods/multipart/Part;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "getLengthOfParts(Parts[])"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parts may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    move-wide v1, v3

    :goto_0
    array-length v5, p0

    if-ge v0, v5, :cond_2

    aget-object v5, p0, v0

    invoke-virtual {v5, p1}, Lorg/apache/commons/httpclient/methods/multipart/Part;->setPartBoundary([B)V

    aget-object v5, p0, v0

    invoke-virtual {v5}, Lorg/apache/commons/httpclient/methods/multipart/Part;->length()J

    move-result-wide v5

    cmp-long v7, v5, v3

    if-gez v7, :cond_1

    const-wide/16 v0, -0x1

    :goto_1
    return-wide v0

    :cond_1
    add-long/2addr v1, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    sget-object v0, Lorg/apache/commons/httpclient/methods/multipart/Part;->EXTRA_BYTES:[B

    array-length v0, v0

    int-to-long v3, v0

    add-long v0, v1, v3

    array-length v2, p1

    int-to-long v2, v2

    add-long/2addr v0, v2

    sget-object v2, Lorg/apache/commons/httpclient/methods/multipart/Part;->EXTRA_BYTES:[B

    array-length v2, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    sget-object v2, Lorg/apache/commons/httpclient/methods/multipart/Part;->CRLF_BYTES:[B

    array-length v2, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_1
.end method

.method public static sendParts(Ljava/io/OutputStream;[Lorg/apache/commons/httpclient/methods/multipart/Part;)V
    .locals 1

    sget-object v0, Lorg/apache/commons/httpclient/methods/multipart/Part;->DEFAULT_BOUNDARY_BYTES:[B

    invoke-static {p0, p1, v0}, Lorg/apache/commons/httpclient/methods/multipart/Part;->sendParts(Ljava/io/OutputStream;[Lorg/apache/commons/httpclient/methods/multipart/Part;[B)V

    return-void
.end method

.method public static sendParts(Ljava/io/OutputStream;[Lorg/apache/commons/httpclient/methods/multipart/Part;[B)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parts may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p2, :cond_1

    array-length v0, p2

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "partBoundary may not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    aget-object v1, p1, v0

    invoke-virtual {v1, p2}, Lorg/apache/commons/httpclient/methods/multipart/Part;->setPartBoundary([B)V

    aget-object v1, p1, v0

    invoke-virtual {v1, p0}, Lorg/apache/commons/httpclient/methods/multipart/Part;->send(Ljava/io/OutputStream;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    sget-object v0, Lorg/apache/commons/httpclient/methods/multipart/Part;->EXTRA_BYTES:[B

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0, p2}, Ljava/io/OutputStream;->write([B)V

    sget-object v0, Lorg/apache/commons/httpclient/methods/multipart/Part;->EXTRA_BYTES:[B

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    sget-object v0, Lorg/apache/commons/httpclient/methods/multipart/Part;->CRLF_BYTES:[B

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method


# virtual methods
.method public abstract getCharSet()Ljava/lang/String;
.end method

.method public abstract getContentType()Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method protected getPartBoundary()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/multipart/Part;->boundaryBytes:[B

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/commons/httpclient/methods/multipart/Part;->DEFAULT_BOUNDARY_BYTES:[B

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/multipart/Part;->boundaryBytes:[B

    goto :goto_0
.end method

.method public abstract getTransferEncoding()Ljava/lang/String;
.end method

.method public isRepeatable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public length()J
    .locals 4

    sget-object v0, Lorg/apache/commons/httpclient/methods/multipart/Part;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter length()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/multipart/Part;->lengthOfData()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/methods/multipart/Part;->sendStart(Ljava/io/OutputStream;)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/methods/multipart/Part;->sendDispositionHeader(Ljava/io/OutputStream;)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/methods/multipart/Part;->sendContentTypeHeader(Ljava/io/OutputStream;)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/methods/multipart/Part;->sendTransferEncodingHeader(Ljava/io/OutputStream;)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/methods/multipart/Part;->sendEndOfHeader(Ljava/io/OutputStream;)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/methods/multipart/Part;->sendEnd(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/multipart/Part;->lengthOfData()J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method protected abstract lengthOfData()J
.end method

.method public send(Ljava/io/OutputStream;)V
    .locals 2

    sget-object v0, Lorg/apache/commons/httpclient/methods/multipart/Part;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter send(OutputStream out)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lorg/apache/commons/httpclient/methods/multipart/Part;->sendStart(Ljava/io/OutputStream;)V

    invoke-virtual {p0, p1}, Lorg/apache/commons/httpclient/methods/multipart/Part;->sendDispositionHeader(Ljava/io/OutputStream;)V

    invoke-virtual {p0, p1}, Lorg/apache/commons/httpclient/methods/multipart/Part;->sendContentTypeHeader(Ljava/io/OutputStream;)V

    invoke-virtual {p0, p1}, Lorg/apache/commons/httpclient/methods/multipart/Part;->sendTransferEncodingHeader(Ljava/io/OutputStream;)V

    invoke-virtual {p0, p1}, Lorg/apache/commons/httpclient/methods/multipart/Part;->sendEndOfHeader(Ljava/io/OutputStream;)V

    invoke-virtual {p0, p1}, Lorg/apache/commons/httpclient/methods/multipart/Part;->sendData(Ljava/io/OutputStream;)V

    invoke-virtual {p0, p1}, Lorg/apache/commons/httpclient/methods/multipart/Part;->sendEnd(Ljava/io/OutputStream;)V

    return-void
.end method

.method protected sendContentTypeHeader(Ljava/io/OutputStream;)V
    .locals 2

    sget-object v0, Lorg/apache/commons/httpclient/methods/multipart/Part;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter sendContentTypeHeader(OutputStream out)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/multipart/Part;->getContentType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lorg/apache/commons/httpclient/methods/multipart/Part;->CRLF_BYTES:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    sget-object v1, Lorg/apache/commons/httpclient/methods/multipart/Part;->CONTENT_TYPE_BYTES:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-static {v0}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/multipart/Part;->getCharSet()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lorg/apache/commons/httpclient/methods/multipart/Part;->CHARSET_BYTES:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-static {v0}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    :cond_0
    return-void
.end method

.method protected abstract sendData(Ljava/io/OutputStream;)V
.end method

.method protected sendDispositionHeader(Ljava/io/OutputStream;)V
    .locals 2

    sget-object v0, Lorg/apache/commons/httpclient/methods/multipart/Part;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter sendDispositionHeader(OutputStream out)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    sget-object v0, Lorg/apache/commons/httpclient/methods/multipart/Part;->CONTENT_DISPOSITION_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    sget-object v0, Lorg/apache/commons/httpclient/methods/multipart/Part;->QUOTE_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/multipart/Part;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    sget-object v0, Lorg/apache/commons/httpclient/methods/multipart/Part;->QUOTE_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method protected sendEnd(Ljava/io/OutputStream;)V
    .locals 2

    sget-object v0, Lorg/apache/commons/httpclient/methods/multipart/Part;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter sendEnd(OutputStream out)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    sget-object v0, Lorg/apache/commons/httpclient/methods/multipart/Part;->CRLF_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method protected sendEndOfHeader(Ljava/io/OutputStream;)V
    .locals 2

    sget-object v0, Lorg/apache/commons/httpclient/methods/multipart/Part;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter sendEndOfHeader(OutputStream out)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    sget-object v0, Lorg/apache/commons/httpclient/methods/multipart/Part;->CRLF_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    sget-object v0, Lorg/apache/commons/httpclient/methods/multipart/Part;->CRLF_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method protected sendStart(Ljava/io/OutputStream;)V
    .locals 2

    sget-object v0, Lorg/apache/commons/httpclient/methods/multipart/Part;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter sendStart(OutputStream out)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    sget-object v0, Lorg/apache/commons/httpclient/methods/multipart/Part;->EXTRA_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/multipart/Part;->getPartBoundary()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    sget-object v0, Lorg/apache/commons/httpclient/methods/multipart/Part;->CRLF_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method protected sendTransferEncodingHeader(Ljava/io/OutputStream;)V
    .locals 2

    sget-object v0, Lorg/apache/commons/httpclient/methods/multipart/Part;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter sendTransferEncodingHeader(OutputStream out)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/multipart/Part;->getTransferEncoding()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lorg/apache/commons/httpclient/methods/multipart/Part;->CRLF_BYTES:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    sget-object v1, Lorg/apache/commons/httpclient/methods/multipart/Part;->CONTENT_TRANSFER_ENCODING_BYTES:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-static {v0}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    :cond_0
    return-void
.end method

.method setPartBoundary([B)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/httpclient/methods/multipart/Part;->boundaryBytes:[B

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/multipart/Part;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
