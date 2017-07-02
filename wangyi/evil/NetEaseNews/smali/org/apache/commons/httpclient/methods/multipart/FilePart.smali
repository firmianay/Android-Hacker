.class public Lorg/apache/commons/httpclient/methods/multipart/FilePart;
.super Lorg/apache/commons/httpclient/methods/multipart/PartBase;


# static fields
.field public static final DEFAULT_CHARSET:Ljava/lang/String; = "ISO-8859-1"

.field public static final DEFAULT_CONTENT_TYPE:Ljava/lang/String; = "application/octet-stream"

.field public static final DEFAULT_TRANSFER_ENCODING:Ljava/lang/String; = "binary"

.field protected static final FILE_NAME:Ljava/lang/String; = "; filename="

.field private static final FILE_NAME_BYTES:[B

.field private static final LOG:Lorg/apache/commons/logging/Log;

.field static class$org$apache$commons$httpclient$methods$multipart$FilePart:Ljava/lang/Class;


# instance fields
.field private source:Lorg/apache/commons/httpclient/methods/multipart/PartSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/commons/httpclient/methods/multipart/FilePart;->class$org$apache$commons$httpclient$methods$multipart$FilePart:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.commons.httpclient.methods.multipart.FilePart"

    invoke-static {v0}, Lorg/apache/commons/httpclient/methods/multipart/FilePart;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/methods/multipart/FilePart;->class$org$apache$commons$httpclient$methods$multipart$FilePart:Ljava/lang/Class;

    :goto_0
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/methods/multipart/FilePart;->LOG:Lorg/apache/commons/logging/Log;

    const-string v0, "; filename="

    invoke-static {v0}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/methods/multipart/FilePart;->FILE_NAME_BYTES:[B

    return-void

    :cond_0
    sget-object v0, Lorg/apache/commons/httpclient/methods/multipart/FilePart;->class$org$apache$commons$httpclient$methods$multipart$FilePart:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lorg/apache/commons/httpclient/methods/multipart/FilePartSource;

    invoke-direct {v0, p2}, Lorg/apache/commons/httpclient/methods/multipart/FilePartSource;-><init>(Ljava/io/File;)V

    invoke-direct {p0, p1, v0, v1, v1}, Lorg/apache/commons/httpclient/methods/multipart/FilePart;-><init>(Ljava/lang/String;Lorg/apache/commons/httpclient/methods/multipart/PartSource;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lorg/apache/commons/httpclient/methods/multipart/FilePartSource;

    invoke-direct {v0, p2}, Lorg/apache/commons/httpclient/methods/multipart/FilePartSource;-><init>(Ljava/io/File;)V

    invoke-direct {p0, p1, v0, p3, p4}, Lorg/apache/commons/httpclient/methods/multipart/FilePart;-><init>(Ljava/lang/String;Lorg/apache/commons/httpclient/methods/multipart/PartSource;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lorg/apache/commons/httpclient/methods/multipart/FilePartSource;

    invoke-direct {v0, p2, p3}, Lorg/apache/commons/httpclient/methods/multipart/FilePartSource;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-direct {p0, p1, v0, v1, v1}, Lorg/apache/commons/httpclient/methods/multipart/FilePart;-><init>(Ljava/lang/String;Lorg/apache/commons/httpclient/methods/multipart/PartSource;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lorg/apache/commons/httpclient/methods/multipart/FilePartSource;

    invoke-direct {v0, p2, p3}, Lorg/apache/commons/httpclient/methods/multipart/FilePartSource;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-direct {p0, p1, v0, p4, p5}, Lorg/apache/commons/httpclient/methods/multipart/FilePart;-><init>(Ljava/lang/String;Lorg/apache/commons/httpclient/methods/multipart/PartSource;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/commons/httpclient/methods/multipart/PartSource;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lorg/apache/commons/httpclient/methods/multipart/FilePart;-><init>(Ljava/lang/String;Lorg/apache/commons/httpclient/methods/multipart/PartSource;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/commons/httpclient/methods/multipart/PartSource;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-nez p3, :cond_0

    const-string p3, "application/octet-stream"

    :cond_0
    if-nez p4, :cond_1

    const-string p4, "ISO-8859-1"

    :cond_1
    const-string v0, "binary"

    invoke-direct {p0, p1, p3, p4, v0}, Lorg/apache/commons/httpclient/methods/multipart/PartBase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Source may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p2, p0, Lorg/apache/commons/httpclient/methods/multipart/FilePart;->source:Lorg/apache/commons/httpclient/methods/multipart/PartSource;

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
.method protected getSource()Lorg/apache/commons/httpclient/methods/multipart/PartSource;
    .locals 2

    sget-object v0, Lorg/apache/commons/httpclient/methods/multipart/FilePart;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter getSource()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/multipart/FilePart;->source:Lorg/apache/commons/httpclient/methods/multipart/PartSource;

    return-object v0
.end method

.method protected lengthOfData()J
    .locals 2

    sget-object v0, Lorg/apache/commons/httpclient/methods/multipart/FilePart;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter lengthOfData()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/multipart/FilePart;->source:Lorg/apache/commons/httpclient/methods/multipart/PartSource;

    invoke-interface {v0}, Lorg/apache/commons/httpclient/methods/multipart/PartSource;->getLength()J

    move-result-wide v0

    return-wide v0
.end method

.method protected sendData(Ljava/io/OutputStream;)V
    .locals 4

    sget-object v0, Lorg/apache/commons/httpclient/methods/multipart/FilePart;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter sendData(OutputStream out)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/multipart/FilePart;->lengthOfData()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/commons/httpclient/methods/multipart/FilePart;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "No data to send."

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/apache/commons/httpclient/methods/multipart/FilePart;->source:Lorg/apache/commons/httpclient/methods/multipart/PartSource;

    invoke-interface {v1}, Lorg/apache/commons/httpclient/methods/multipart/PartSource;->createInputStream()Ljava/io/InputStream;

    move-result-object v1

    :goto_1
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-ltz v2, :cond_1

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0

    :cond_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_0
.end method

.method protected sendDispositionHeader(Ljava/io/OutputStream;)V
    .locals 2

    sget-object v0, Lorg/apache/commons/httpclient/methods/multipart/FilePart;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter sendDispositionHeader(OutputStream out)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    invoke-super {p0, p1}, Lorg/apache/commons/httpclient/methods/multipart/PartBase;->sendDispositionHeader(Ljava/io/OutputStream;)V

    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/multipart/FilePart;->source:Lorg/apache/commons/httpclient/methods/multipart/PartSource;

    invoke-interface {v0}, Lorg/apache/commons/httpclient/methods/multipart/PartSource;->getFileName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lorg/apache/commons/httpclient/methods/multipart/FilePart;->FILE_NAME_BYTES:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    sget-object v1, Lorg/apache/commons/httpclient/methods/multipart/FilePart;->QUOTE_BYTES:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-static {v0}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    sget-object v0, Lorg/apache/commons/httpclient/methods/multipart/FilePart;->QUOTE_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    :cond_0
    return-void
.end method
