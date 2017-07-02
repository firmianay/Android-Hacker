.class public Lorg/apache/commons/httpclient/ChunkedInputStream;
.super Ljava/io/InputStream;


# static fields
.field private static final LOG:Lorg/apache/commons/logging/Log;

.field static class$org$apache$commons$httpclient$ChunkedInputStream:Ljava/lang/Class;


# instance fields
.field private bof:Z

.field private chunkSize:I

.field private closed:Z

.field private eof:Z

.field private in:Ljava/io/InputStream;

.field private method:Lorg/apache/commons/httpclient/HttpMethod;

.field private pos:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/commons/httpclient/ChunkedInputStream;->class$org$apache$commons$httpclient$ChunkedInputStream:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.commons.httpclient.ChunkedInputStream"

    invoke-static {v0}, Lorg/apache/commons/httpclient/ChunkedInputStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/ChunkedInputStream;->class$org$apache$commons$httpclient$ChunkedInputStream:Ljava/lang/Class;

    :goto_0
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/ChunkedInputStream;->LOG:Lorg/apache/commons/logging/Log;

    return-void

    :cond_0
    sget-object v0, Lorg/apache/commons/httpclient/ChunkedInputStream;->class$org$apache$commons$httpclient$ChunkedInputStream:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/httpclient/ChunkedInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/commons/httpclient/HttpMethod;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/commons/httpclient/HttpMethod;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->bof:Z

    iput-boolean v1, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->eof:Z

    iput-boolean v1, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->closed:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->method:Lorg/apache/commons/httpclient/HttpMethod;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "InputStream parameter may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->in:Ljava/io/InputStream;

    iput-object p2, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->method:Lorg/apache/commons/httpclient/HttpMethod;

    iput v1, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->pos:I

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

.method static exhaustInputStream(Ljava/io/InputStream;)V
    .locals 2

    const/16 v0, 0x400

    new-array v0, v0, [B

    :cond_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-gez v1, :cond_0

    return-void
.end method

.method private static getChunkSizeFromInputStream(Ljava/io/InputStream;)I
    .locals 5

    const/4 v1, 0x0

    const/4 v2, -0x1

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move v0, v1

    :goto_0
    if-eq v0, v2, :cond_2

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v4

    if-ne v4, v2, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "chunked stream ended unexpectedly"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "assertion failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sparse-switch v4, :sswitch_data_0

    :goto_1
    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x2

    goto :goto_1

    :pswitch_1
    const/16 v0, 0xa

    if-ne v4, v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Protocol violation: Unexpected single newline character in chunk size"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    sparse-switch v4, :sswitch_data_1

    :goto_2
    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    :sswitch_3
    move v0, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getAsciiString([B)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x3b

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_3
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :catch_0
    move-exception v1

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Bad chunk size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_0
        0x22 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x22 -> :sswitch_3
        0x5c -> :sswitch_2
    .end sparse-switch
.end method

.method private nextChunk()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->bof:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/apache/commons/httpclient/ChunkedInputStream;->readCRLF()V

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->in:Ljava/io/InputStream;

    invoke-static {v0}, Lorg/apache/commons/httpclient/ChunkedInputStream;->getChunkSizeFromInputStream(Ljava/io/InputStream;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->chunkSize:I

    iput-boolean v1, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->bof:Z

    iput v1, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->pos:I

    iget v0, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->chunkSize:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->eof:Z

    invoke-direct {p0}, Lorg/apache/commons/httpclient/ChunkedInputStream;->parseTrailerHeaders()V

    :cond_1
    return-void
.end method

.method private parseTrailerHeaders()V
    .locals 4

    :try_start_0
    const-string v0, "US-ASCII"

    iget-object v1, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->method:Lorg/apache/commons/httpclient/HttpMethod;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->method:Lorg/apache/commons/httpclient/HttpMethod;

    invoke-interface {v0}, Lorg/apache/commons/httpclient/HttpMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->getHttpElementCharset()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->in:Ljava/io/InputStream;

    invoke-static {v1, v0}, Lorg/apache/commons/httpclient/HttpParser;->parseHeaders(Ljava/io/InputStream;Ljava/lang/String;)[Lorg/apache/commons/httpclient/Header;
    :try_end_0
    .catch Lorg/apache/commons/httpclient/HttpException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    iget-object v0, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->method:Lorg/apache/commons/httpclient/HttpMethod;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->method:Lorg/apache/commons/httpclient/HttpMethod;

    aget-object v3, v1, v0

    invoke-interface {v2, v3}, Lorg/apache/commons/httpclient/HttpMethod;->addResponseFooter(Lorg/apache/commons/httpclient/Header;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lorg/apache/commons/httpclient/ChunkedInputStream;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "Error parsing trailer headers"

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0}, Lorg/apache/commons/httpclient/util/ExceptionUtil;->initCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    return-void
.end method

.method private readCRLF()V
    .locals 5

    iget-object v0, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/16 v2, 0xd

    if-ne v0, v2, :cond_0

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    :cond_0
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "CRLF expected at end of chunk: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->closed:Z

    if-nez v0, :cond_1

    :try_start_0
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->eof:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/apache/commons/httpclient/ChunkedInputStream;->exhaustInputStream(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iput-boolean v1, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->eof:Z

    iput-boolean v1, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->closed:Z

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->eof:Z

    iput-boolean v1, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->closed:Z

    throw v0
.end method

.method public read()I
    .locals 3

    const/4 v0, -0x1

    iget-boolean v1, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->closed:Z

    if-eqz v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attempted read from closed stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v1, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->eof:Z

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget v1, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->pos:I

    iget v2, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->chunkSize:I

    if-lt v1, v2, :cond_3

    invoke-direct {p0}, Lorg/apache/commons/httpclient/ChunkedInputStream;->nextChunk()V

    iget-boolean v1, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->eof:Z

    if-nez v1, :cond_1

    :cond_3
    iget v0, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->pos:I

    iget-object v0, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_0
.end method

.method public read([B)I
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/httpclient/ChunkedInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 3

    const/4 v0, -0x1

    iget-boolean v1, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->closed:Z

    if-eqz v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attempted read from closed stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v1, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->eof:Z

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget v1, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->pos:I

    iget v2, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->chunkSize:I

    if-lt v1, v2, :cond_3

    invoke-direct {p0}, Lorg/apache/commons/httpclient/ChunkedInputStream;->nextChunk()V

    iget-boolean v1, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->eof:Z

    if-nez v1, :cond_1

    :cond_3
    iget v0, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->chunkSize:I

    iget v1, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->pos:I

    sub-int/2addr v0, v1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    iget v1, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/commons/httpclient/ChunkedInputStream;->pos:I

    goto :goto_0
.end method
