.class public Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/commons/httpclient/methods/RequestEntity;


# static fields
.field public static final CONTENT_LENGTH_AUTO:I = -0x2

.field private static final LOG:Lorg/apache/commons/logging/Log;

.field static class$org$apache$commons$httpclient$methods$InputStreamRequestEntity:Ljava/lang/Class;


# instance fields
.field private buffer:[B

.field private content:Ljava/io/InputStream;

.field private contentLength:J

.field private contentType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->class$org$apache$commons$httpclient$methods$InputStreamRequestEntity:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.commons.httpclient.methods.InputStreamRequestEntity"

    invoke-static {v0}, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->class$org$apache$commons$httpclient$methods$InputStreamRequestEntity:Ljava/lang/Class;

    :goto_0
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->LOG:Lorg/apache/commons/logging/Log;

    return-void

    :cond_0
    sget-object v0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->class$org$apache$commons$httpclient$methods$InputStreamRequestEntity:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;J)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;-><init>(Ljava/io/InputStream;JLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;JLjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->buffer:[B

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The content cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->content:Ljava/io/InputStream;

    iput-wide p2, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->contentLength:J

    iput-object p4, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->contentType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 2

    const-wide/16 v0, -0x2

    invoke-direct {p0, p1, v0, v1, p2}, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;-><init>(Ljava/io/InputStream;JLjava/lang/String;)V

    return-void
.end method

.method private bufferContent()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->buffer:[B

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->content:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x1000

    new-array v1, v1, [B

    :goto_1
    iget-object v2, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->content:Ljava/io/InputStream;

    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-ltz v2, :cond_2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v1, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->LOG:Lorg/apache/commons/logging/Log;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    iput-object v4, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->buffer:[B

    iput-object v4, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->content:Ljava/io/InputStream;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->contentLength:J

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->buffer:[B

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->content:Ljava/io/InputStream;

    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->buffer:[B

    array-length v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->contentLength:J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
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
.method public getContent()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->content:Ljava/io/InputStream;

    return-object v0
.end method

.method public getContentLength()J
    .locals 4

    iget-wide v0, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->contentLength:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->buffer:[B

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->bufferContent()V

    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->contentLength:J

    return-wide v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public isRepeatable()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->buffer:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeRequest(Ljava/io/OutputStream;)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->content:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    const/16 v0, 0x1000

    new-array v2, v0, [B

    move v0, v1

    :goto_0
    iget-object v3, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->content:Ljava/io/InputStream;

    invoke-virtual {v3, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-ltz v3, :cond_1

    invoke-virtual {p1, v2, v1, v3}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr v0, v3

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->buffer:[B

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->buffer:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Content must be set before entity is written"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
