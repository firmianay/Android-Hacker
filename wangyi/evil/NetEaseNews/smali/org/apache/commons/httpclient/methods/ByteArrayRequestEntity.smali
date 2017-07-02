.class public Lorg/apache/commons/httpclient/methods/ByteArrayRequestEntity;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/commons/httpclient/methods/RequestEntity;


# instance fields
.field private content:[B

.field private contentType:Ljava/lang/String;


# direct methods
.method public constructor <init>([B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/httpclient/methods/ByteArrayRequestEntity;-><init>([BLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>([BLjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The content cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/apache/commons/httpclient/methods/ByteArrayRequestEntity;->content:[B

    iput-object p2, p0, Lorg/apache/commons/httpclient/methods/ByteArrayRequestEntity;->contentType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getContent()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/ByteArrayRequestEntity;->content:[B

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/ByteArrayRequestEntity;->content:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/ByteArrayRequestEntity;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public isRepeatable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public writeRequest(Ljava/io/OutputStream;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/ByteArrayRequestEntity;->content:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
