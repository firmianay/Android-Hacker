.class public Lorg/apache/james/mime4j/codec/Base64InputStream;
.super Ljava/io/InputStream;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final BASE64_DECODE:[I

.field private static final BASE64_PAD:B = 0x3dt

.field private static final ENCODED_BUFFER_SIZE:I = 0x600

.field private static final EOF:I = -0x1

.field private static log:Lorg/apache/commons/logging/Log;


# instance fields
.field private closed:Z

.field private final encoded:[B

.field private eof:Z

.field private final in:Ljava/io/InputStream;

.field private position:I

.field private final q:Lorg/apache/james/mime4j/codec/ByteQueue;

.field private final singleByte:[B

.field private size:I

.field private strict:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v4, 0x100

    const/4 v1, 0x0

    const-class v0, Lorg/apache/james/mime4j/codec/Base64InputStream;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->$assertionsDisabled:Z

    const-class v0, Lorg/apache/james/mime4j/codec/Base64InputStream;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->log:Lorg/apache/commons/logging/Log;

    new-array v0, v4, [I

    sput-object v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->BASE64_DECODE:[I

    move v0, v1

    :goto_1
    if-ge v0, v4, :cond_1

    sget-object v2, Lorg/apache/james/mime4j/codec/Base64InputStream;->BASE64_DECODE:[I

    const/4 v3, -0x1

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    :goto_2
    sget-object v0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->BASE64_TABLE:[B

    array-length v0, v0

    if-ge v1, v0, :cond_2

    sget-object v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->BASE64_DECODE:[I

    sget-object v2, Lorg/apache/james/mime4j/codec/Base64OutputStream;->BASE64_TABLE:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    aput v1, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/codec/Base64InputStream;-><init>(Ljava/io/InputStream;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->singleByte:[B

    iput-boolean v1, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->closed:Z

    const/16 v0, 0x600

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->encoded:[B

    iput v1, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->position:I

    iput v1, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->size:I

    new-instance v0, Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-direct {v0}, Lorg/apache/james/mime4j/codec/ByteQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->q:Lorg/apache/james/mime4j/codec/ByteQueue;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->in:Ljava/io/InputStream;

    iput-boolean p2, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->strict:Z

    return-void
.end method

.method private decodePad(II[BII)I
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->eof:Z

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    ushr-int/lit8 v0, p1, 0x4

    int-to-byte v1, v0

    if-ge p4, p5, :cond_0

    add-int/lit8 v0, p4, 0x1

    aput-byte v1, p3, p4

    move p4, v0

    :goto_0
    return p4

    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->q:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/codec/ByteQueue;->enqueue(B)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p2, v0, :cond_4

    ushr-int/lit8 v0, p1, 0xa

    int-to-byte v1, v0

    ushr-int/lit8 v0, p1, 0x2

    and-int/lit16 v0, v0, 0xff

    int-to-byte v2, v0

    add-int/lit8 v0, p5, -0x1

    if-ge p4, v0, :cond_2

    add-int/lit8 v0, p4, 0x1

    aput-byte v1, p3, p4

    add-int/lit8 p4, v0, 0x1

    aput-byte v2, p3, v0

    goto :goto_0

    :cond_2
    if-ge p4, p5, :cond_3

    add-int/lit8 v0, p4, 0x1

    aput-byte v1, p3, p4

    iget-object v1, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->q:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/codec/ByteQueue;->enqueue(B)V

    move p4, v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->q:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/codec/ByteQueue;->enqueue(B)V

    iget-object v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->q:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v0, v2}, Lorg/apache/james/mime4j/codec/ByteQueue;->enqueue(B)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, p2}, Lorg/apache/james/mime4j/codec/Base64InputStream;->handleUnexpecedPad(I)V

    goto :goto_0
.end method

.method private handleUnexpecedPad(I)V
    .locals 3

    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->strict:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "unexpected padding character"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected padding character; dropping "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sextet(s)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    return-void
.end method

.method private handleUnexpectedEof(I)V
    .locals 3

    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->strict:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "unexpected end of file"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected end of file; dropping "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sextet(s)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    return-void
.end method

.method private read0([BII)I
    .locals 8

    const/4 v0, -0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->q:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/codec/ByteQueue;->count()I

    move-result v1

    move v4, p2

    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_0

    if-ge v4, p3, :cond_0

    add-int/lit8 v1, v4, 0x1

    iget-object v5, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->q:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v5}, Lorg/apache/james/mime4j/codec/ByteQueue;->dequeue()B

    move-result v5

    aput-byte v5, p1, v4

    move v4, v1

    move v1, v2

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->eof:Z

    if-eqz v1, :cond_3

    if-ne v4, p2, :cond_2

    :cond_1
    :goto_1
    return v0

    :cond_2
    sub-int v0, v4, p2

    goto :goto_1

    :cond_3
    move v2, v3

    move v1, v3

    :cond_4
    if-ge v4, p3, :cond_10

    :cond_5
    :goto_2
    iget v5, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->position:I

    iget v6, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->size:I

    if-ne v5, v6, :cond_a

    iget-object v5, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->in:Ljava/io/InputStream;

    iget-object v6, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->encoded:[B

    iget-object v7, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->encoded:[B

    array-length v7, v7

    invoke-virtual {v5, v6, v3, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-ne v5, v0, :cond_7

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->eof:Z

    if-eqz v2, :cond_6

    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/codec/Base64InputStream;->handleUnexpectedEof(I)V

    :cond_6
    if-eq v4, p2, :cond_1

    sub-int v0, v4, p2

    goto :goto_1

    :cond_7
    if-lez v5, :cond_8

    iput v3, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->position:I

    iput v5, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->size:I

    goto :goto_2

    :cond_8
    sget-boolean v6, Lorg/apache/james/mime4j/codec/Base64InputStream;->$assertionsDisabled:Z

    if-nez v6, :cond_5

    if-eqz v5, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_9
    sget-object v6, Lorg/apache/james/mime4j/codec/Base64InputStream;->BASE64_DECODE:[I

    aget v5, v6, v5

    if-gez v5, :cond_b

    :cond_a
    :goto_3
    iget v5, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->position:I

    iget v6, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->size:I

    if-ge v5, v6, :cond_4

    if-ge v4, p3, :cond_4

    iget-object v5, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->encoded:[B

    iget v6, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->position:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->position:I

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0x3d

    if-ne v5, v6, :cond_9

    move-object v0, p0

    move-object v3, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/james/mime4j/codec/Base64InputStream;->decodePad(II[BII)I

    move-result v0

    sub-int/2addr v0, p2

    goto :goto_1

    :cond_b
    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v5

    add-int/lit8 v2, v2, 0x1

    const/4 v5, 0x4

    if-ne v2, v5, :cond_a

    ushr-int/lit8 v2, v1, 0x10

    int-to-byte v2, v2

    ushr-int/lit8 v5, v1, 0x8

    int-to-byte v5, v5

    int-to-byte v6, v1

    add-int/lit8 v7, p3, -0x2

    if-ge v4, v7, :cond_c

    add-int/lit8 v7, v4, 0x1

    aput-byte v2, p1, v4

    add-int/lit8 v2, v7, 0x1

    aput-byte v5, p1, v7

    add-int/lit8 v4, v2, 0x1

    aput-byte v6, p1, v2

    move v2, v3

    goto :goto_3

    :cond_c
    add-int/lit8 v0, p3, -0x1

    if-ge v4, v0, :cond_d

    add-int/lit8 v0, v4, 0x1

    aput-byte v2, p1, v4

    add-int/lit8 v4, v0, 0x1

    aput-byte v5, p1, v0

    iget-object v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->q:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v0, v6}, Lorg/apache/james/mime4j/codec/ByteQueue;->enqueue(B)V

    :goto_4
    sget-boolean v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->$assertionsDisabled:Z

    if-nez v0, :cond_f

    if-eq v4, p3, :cond_f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_d
    if-ge v4, p3, :cond_e

    add-int/lit8 v0, v4, 0x1

    aput-byte v2, p1, v4

    iget-object v1, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->q:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v1, v5}, Lorg/apache/james/mime4j/codec/ByteQueue;->enqueue(B)V

    iget-object v1, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->q:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v1, v6}, Lorg/apache/james/mime4j/codec/ByteQueue;->enqueue(B)V

    move v4, v0

    goto :goto_4

    :cond_e
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->q:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v0, v2}, Lorg/apache/james/mime4j/codec/ByteQueue;->enqueue(B)V

    iget-object v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->q:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v0, v5}, Lorg/apache/james/mime4j/codec/ByteQueue;->enqueue(B)V

    iget-object v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->q:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v0, v6}, Lorg/apache/james/mime4j/codec/ByteQueue;->enqueue(B)V

    goto :goto_4

    :cond_f
    sub-int v0, p3, p2

    goto/16 :goto_1

    :cond_10
    sget-boolean v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->$assertionsDisabled:Z

    if-nez v0, :cond_11

    if-eqz v2, :cond_11

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_11
    sget-boolean v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->$assertionsDisabled:Z

    if-nez v0, :cond_12

    if-eq v4, p3, :cond_12

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_12
    sub-int v0, p3, p2

    goto/16 :goto_1
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->closed:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->closed:Z

    goto :goto_0
.end method

.method public read()I
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, -0x1

    iget-boolean v1, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->closed:Z

    if-eqz v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Base64InputStream has been closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->singleByte:[B

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/james/mime4j/codec/Base64InputStream;->read0([BII)I

    move-result v1

    if-ne v1, v0, :cond_1

    :goto_0
    return v0

    :cond_1
    if-ne v1, v3, :cond_0

    iget-object v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->singleByte:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public read([B)I
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->closed:Z

    if-eqz v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Base64InputStream has been closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    array-length v1, p1

    if-nez v1, :cond_2

    :goto_0
    return v0

    :cond_2
    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/james/mime4j/codec/Base64InputStream;->read0([BII)I

    move-result v0

    goto :goto_0
.end method

.method public read([BII)I
    .locals 2

    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Base64InputStream has been closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    if-ltz p2, :cond_2

    if-ltz p3, :cond_2

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_3
    if-nez p3, :cond_4

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_4
    add-int v0, p2, p3

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/james/mime4j/codec/Base64InputStream;->read0([BII)I

    move-result v0

    goto :goto_0
.end method
