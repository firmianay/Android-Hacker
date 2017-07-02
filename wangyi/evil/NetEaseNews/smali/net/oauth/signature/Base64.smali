.class Lnet/oauth/signature/Base64;
.super Ljava/lang/Object;


# static fields
.field static final CHUNK_SEPARATOR:[B

.field static final CHUNK_SIZE:I = 0x4c

.field private static final MASK_6BITS:I = 0x3f

.field private static final MASK_8BITS:I = 0xff

.field private static final PAD:B = 0x3dt

.field private static final base64ToInt:[B

.field private static final intToBase64:[B


# instance fields
.field private buf:[B

.field private currentLinePos:I

.field private final decodeSize:I

.field private final encodeSize:I

.field private eof:Z

.field private final lineLength:I

.field private final lineSeparator:[B

.field private modulus:I

.field private pos:I

.field private readPos:I

.field private x:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lnet/oauth/signature/Base64;->CHUNK_SEPARATOR:[B

    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lnet/oauth/signature/Base64;->intToBase64:[B

    const/16 v0, 0x7b

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lnet/oauth/signature/Base64;->base64ToInt:[B

    return-void

    nop

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data

    nop

    :array_1
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    :array_2
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x3et
        -0x1t
        -0x1t
        -0x1t
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x4c

    sget-object v1, Lnet/oauth/signature/Base64;->CHUNK_SEPARATOR:[B

    invoke-direct {p0, v0, v1}, Lnet/oauth/signature/Base64;-><init>(I[B)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    sget-object v0, Lnet/oauth/signature/Base64;->CHUNK_SEPARATOR:[B

    invoke-direct {p0, p1, v0}, Lnet/oauth/signature/Base64;-><init>(I[B)V

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnet/oauth/signature/Base64;->lineLength:I

    array-length v0, p2

    new-array v0, v0, [B

    iput-object v0, p0, Lnet/oauth/signature/Base64;->lineSeparator:[B

    iget-object v0, p0, Lnet/oauth/signature/Base64;->lineSeparator:[B

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-lez p1, :cond_0

    array-length v0, p2

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lnet/oauth/signature/Base64;->encodeSize:I

    :goto_0
    iget v0, p0, Lnet/oauth/signature/Base64;->encodeSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lnet/oauth/signature/Base64;->decodeSize:I

    invoke-static {p2}, Lnet/oauth/signature/Base64;->containsBase64Byte([B)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p2, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lineSeperator must not contain base64 characters: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const/4 v0, 0x4

    iput v0, p0, Lnet/oauth/signature/Base64;->encodeSize:I

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([B)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private static containsBase64Byte([B)Z
    .locals 3

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-byte v2, p0, v0

    invoke-static {v2}, Lnet/oauth/signature/Base64;->isBase64(B)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static decodeBase64([B)[B
    .locals 4

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    new-instance v0, Lnet/oauth/signature/Base64;

    invoke-direct {v0}, Lnet/oauth/signature/Base64;-><init>()V

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x4

    int-to-long v1, v1

    long-to-int v1, v1

    new-array v1, v1, [B

    array-length v2, v1

    invoke-virtual {v0, v1, v3, v2}, Lnet/oauth/signature/Base64;->setInitialBuffer([BII)V

    array-length v1, p0

    invoke-virtual {v0, p0, v3, v1}, Lnet/oauth/signature/Base64;->decode([BII)V

    const/4 v1, -0x1

    invoke-virtual {v0, p0, v3, v1}, Lnet/oauth/signature/Base64;->decode([BII)V

    iget v1, v0, Lnet/oauth/signature/Base64;->pos:I

    new-array p0, v1, [B

    array-length v1, p0

    invoke-virtual {v0, p0, v3, v1}, Lnet/oauth/signature/Base64;->readResults([BII)I

    goto :goto_0
.end method

.method public static decodeInteger([B)Ljava/math/BigInteger;
    .locals 3

    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-static {p0}, Lnet/oauth/signature/Base64;->decodeBase64([B)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method static discardNonBase64([B)[B
    .locals 6

    const/4 v1, 0x0

    array-length v0, p0

    new-array v4, v0, [B

    move v0, v1

    move v2, v1

    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_1

    aget-byte v3, p0, v0

    invoke-static {v3}, Lnet/oauth/signature/Base64;->isBase64(B)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v3, v2, 0x1

    aget-byte v5, p0, v0

    aput-byte v5, v4, v2

    move v2, v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-array v0, v2, [B

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static encodeBase64([B)[B
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lnet/oauth/signature/Base64;->encodeBase64([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64([BZ)[B
    .locals 10

    const-wide/16 v8, 0x4

    const/4 v7, 0x0

    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    if-eqz p1, :cond_4

    new-instance v0, Lnet/oauth/signature/Base64;

    invoke-direct {v0}, Lnet/oauth/signature/Base64;-><init>()V

    :goto_1
    array-length v1, p0

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v1, v1, 0x3

    int-to-long v1, v1

    rem-long v3, v1, v8

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-eqz v5, :cond_2

    sub-long v3, v8, v3

    add-long/2addr v1, v3

    :cond_2
    if-eqz p1, :cond_3

    const-wide/16 v3, 0x1

    const-wide/16 v5, 0x4c

    div-long v5, v1, v5

    add-long/2addr v3, v5

    sget-object v5, Lnet/oauth/signature/Base64;->CHUNK_SEPARATOR:[B

    array-length v5, v5

    int-to-long v5, v5

    mul-long/2addr v3, v5

    add-long/2addr v1, v3

    :cond_3
    const-wide/32 v3, 0x7fffffff

    cmp-long v3, v1, v3

    if-lez v3, :cond_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input array too big, output array would be bigger than Integer.MAX_VALUE=2147483647"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Lnet/oauth/signature/Base64;

    invoke-direct {v0, v7}, Lnet/oauth/signature/Base64;-><init>(I)V

    goto :goto_1

    :cond_5
    long-to-int v1, v1

    new-array v1, v1, [B

    array-length v2, v1

    invoke-virtual {v0, v1, v7, v2}, Lnet/oauth/signature/Base64;->setInitialBuffer([BII)V

    array-length v2, p0

    invoke-virtual {v0, p0, v7, v2}, Lnet/oauth/signature/Base64;->encode([BII)V

    const/4 v2, -0x1

    invoke-virtual {v0, p0, v7, v2}, Lnet/oauth/signature/Base64;->encode([BII)V

    iget-object v2, v0, Lnet/oauth/signature/Base64;->buf:[B

    if-eq v2, v1, :cond_6

    array-length v2, v1

    invoke-virtual {v0, v1, v7, v2}, Lnet/oauth/signature/Base64;->readResults([BII)I

    :cond_6
    move-object p0, v1

    goto :goto_0
.end method

.method public static encodeBase64Chunked([B)[B
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lnet/oauth/signature/Base64;->encodeBase64([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeInteger(Ljava/math/BigInteger;)[B
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encodeInteger called with null parameter"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p0}, Lnet/oauth/signature/Base64;->toIntegerBytes(Ljava/math/BigInteger;)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnet/oauth/signature/Base64;->encodeBase64([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static isArrayByteBase64([B)Z
    .locals 3

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    aget-byte v2, p0, v0

    invoke-static {v2}, Lnet/oauth/signature/Base64;->isBase64(B)Z

    move-result v2

    if-nez v2, :cond_0

    aget-byte v2, p0, v0

    invoke-static {v2}, Lnet/oauth/signature/Base64;->isWhiteSpace(B)Z

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

.method public static isBase64(B)Z
    .locals 2

    const/16 v0, 0x3d

    if-eq p0, v0, :cond_0

    if-ltz p0, :cond_1

    sget-object v0, Lnet/oauth/signature/Base64;->base64ToInt:[B

    array-length v0, v0

    if-ge p0, v0, :cond_1

    sget-object v0, Lnet/oauth/signature/Base64;->base64ToInt:[B

    aget-byte v0, v0, p0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isWhiteSpace(B)Z
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method private resizeBuf()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lnet/oauth/signature/Base64;->buf:[B

    if-nez v0, :cond_0

    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lnet/oauth/signature/Base64;->buf:[B

    iput v3, p0, Lnet/oauth/signature/Base64;->pos:I

    iput v3, p0, Lnet/oauth/signature/Base64;->readPos:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lnet/oauth/signature/Base64;->buf:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    iget-object v1, p0, Lnet/oauth/signature/Base64;->buf:[B

    iget-object v2, p0, Lnet/oauth/signature/Base64;->buf:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lnet/oauth/signature/Base64;->buf:[B

    goto :goto_0
.end method

.method static toIntegerBytes(Ljava/math/BigInteger;)[B
    .locals 5

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v0, v0, 0x3

    shl-int/lit8 v3, v0, 0x3

    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    rem-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v1, v3, 0x8

    if-ne v0, v1, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    array-length v0, v2

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    rem-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_1

    const/4 v1, 0x1

    add-int/lit8 v0, v0, -0x1

    :cond_1
    div-int/lit8 v4, v3, 0x8

    sub-int/2addr v4, v0

    div-int/lit8 v3, v3, 0x8

    new-array v3, v3, [B

    invoke-static {v2, v1, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v3

    goto :goto_0
.end method


# virtual methods
.method avail()I
    .locals 2

    iget-object v0, p0, Lnet/oauth/signature/Base64;->buf:[B

    if-eqz v0, :cond_0

    iget v0, p0, Lnet/oauth/signature/Base64;->pos:I

    iget v1, p0, Lnet/oauth/signature/Base64;->readPos:I

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method decode([BII)V
    .locals 6

    const/4 v5, 0x1

    iget-boolean v0, p0, Lnet/oauth/signature/Base64;->eof:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-gez p3, :cond_2

    iput-boolean v5, p0, Lnet/oauth/signature/Base64;->eof:Z

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_0

    iget-object v1, p0, Lnet/oauth/signature/Base64;->buf:[B

    if-eqz v1, :cond_3

    iget-object v1, p0, Lnet/oauth/signature/Base64;->buf:[B

    array-length v1, v1

    iget v2, p0, Lnet/oauth/signature/Base64;->pos:I

    sub-int/2addr v1, v2

    iget v2, p0, Lnet/oauth/signature/Base64;->decodeSize:I

    if-ge v1, v2, :cond_4

    :cond_3
    invoke-direct {p0}, Lnet/oauth/signature/Base64;->resizeBuf()V

    :cond_4
    add-int/lit8 v1, p2, 0x1

    aget-byte v2, p1, p2

    const/16 v3, 0x3d

    if-ne v2, v3, :cond_5

    iget v0, p0, Lnet/oauth/signature/Base64;->x:I

    shl-int/lit8 v0, v0, 0x6

    iput v0, p0, Lnet/oauth/signature/Base64;->x:I

    iget v0, p0, Lnet/oauth/signature/Base64;->modulus:I

    packed-switch v0, :pswitch_data_0

    :goto_2
    iput-boolean v5, p0, Lnet/oauth/signature/Base64;->eof:Z

    goto :goto_0

    :pswitch_0
    iget v0, p0, Lnet/oauth/signature/Base64;->x:I

    shl-int/lit8 v0, v0, 0x6

    iput v0, p0, Lnet/oauth/signature/Base64;->x:I

    iget-object v0, p0, Lnet/oauth/signature/Base64;->buf:[B

    iget v1, p0, Lnet/oauth/signature/Base64;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lnet/oauth/signature/Base64;->pos:I

    iget v2, p0, Lnet/oauth/signature/Base64;->x:I

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_2

    :pswitch_1
    iget-object v0, p0, Lnet/oauth/signature/Base64;->buf:[B

    iget v1, p0, Lnet/oauth/signature/Base64;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lnet/oauth/signature/Base64;->pos:I

    iget v2, p0, Lnet/oauth/signature/Base64;->x:I

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lnet/oauth/signature/Base64;->buf:[B

    iget v1, p0, Lnet/oauth/signature/Base64;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lnet/oauth/signature/Base64;->pos:I

    iget v2, p0, Lnet/oauth/signature/Base64;->x:I

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_2

    :cond_5
    if-ltz v2, :cond_6

    sget-object v3, Lnet/oauth/signature/Base64;->base64ToInt:[B

    array-length v3, v3

    if-ge v2, v3, :cond_6

    sget-object v3, Lnet/oauth/signature/Base64;->base64ToInt:[B

    aget-byte v2, v3, v2

    if-ltz v2, :cond_6

    iget v3, p0, Lnet/oauth/signature/Base64;->modulus:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lnet/oauth/signature/Base64;->modulus:I

    rem-int/lit8 v3, v3, 0x4

    iput v3, p0, Lnet/oauth/signature/Base64;->modulus:I

    iget v3, p0, Lnet/oauth/signature/Base64;->x:I

    shl-int/lit8 v3, v3, 0x6

    add-int/2addr v2, v3

    iput v2, p0, Lnet/oauth/signature/Base64;->x:I

    iget v2, p0, Lnet/oauth/signature/Base64;->modulus:I

    if-nez v2, :cond_6

    iget-object v2, p0, Lnet/oauth/signature/Base64;->buf:[B

    iget v3, p0, Lnet/oauth/signature/Base64;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lnet/oauth/signature/Base64;->pos:I

    iget v4, p0, Lnet/oauth/signature/Base64;->x:I

    shr-int/lit8 v4, v4, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    iget-object v2, p0, Lnet/oauth/signature/Base64;->buf:[B

    iget v3, p0, Lnet/oauth/signature/Base64;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lnet/oauth/signature/Base64;->pos:I

    iget v4, p0, Lnet/oauth/signature/Base64;->x:I

    shr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    iget-object v2, p0, Lnet/oauth/signature/Base64;->buf:[B

    iget v3, p0, Lnet/oauth/signature/Base64;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lnet/oauth/signature/Base64;->pos:I

    iget v4, p0, Lnet/oauth/signature/Base64;->x:I

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    :cond_6
    add-int/lit8 v0, v0, 0x1

    move p2, v1

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public decode([B)[B
    .locals 1

    invoke-static {p1}, Lnet/oauth/signature/Base64;->decodeBase64([B)[B

    move-result-object v0

    return-object v0
.end method

.method encode([BII)V
    .locals 7

    const/16 v5, 0x3d

    const/4 v2, 0x0

    iget-boolean v0, p0, Lnet/oauth/signature/Base64;->eof:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-gez p3, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/oauth/signature/Base64;->eof:Z

    iget-object v0, p0, Lnet/oauth/signature/Base64;->buf:[B

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/oauth/signature/Base64;->buf:[B

    array-length v0, v0

    iget v1, p0, Lnet/oauth/signature/Base64;->pos:I

    sub-int/2addr v0, v1

    iget v1, p0, Lnet/oauth/signature/Base64;->encodeSize:I

    if-ge v0, v1, :cond_3

    :cond_2
    invoke-direct {p0}, Lnet/oauth/signature/Base64;->resizeBuf()V

    :cond_3
    iget v0, p0, Lnet/oauth/signature/Base64;->modulus:I

    packed-switch v0, :pswitch_data_0

    :goto_1
    iget v0, p0, Lnet/oauth/signature/Base64;->lineLength:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lnet/oauth/signature/Base64;->lineSeparator:[B

    iget-object v1, p0, Lnet/oauth/signature/Base64;->buf:[B

    iget v3, p0, Lnet/oauth/signature/Base64;->pos:I

    iget-object v4, p0, Lnet/oauth/signature/Base64;->lineSeparator:[B

    array-length v4, v4

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lnet/oauth/signature/Base64;->pos:I

    iget-object v1, p0, Lnet/oauth/signature/Base64;->lineSeparator:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lnet/oauth/signature/Base64;->pos:I

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lnet/oauth/signature/Base64;->buf:[B

    iget v1, p0, Lnet/oauth/signature/Base64;->pos:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lnet/oauth/signature/Base64;->pos:I

    sget-object v3, Lnet/oauth/signature/Base64;->intToBase64:[B

    iget v4, p0, Lnet/oauth/signature/Base64;->x:I

    shr-int/lit8 v4, v4, 0x2

    and-int/lit8 v4, v4, 0x3f

    aget-byte v3, v3, v4

    aput-byte v3, v0, v1

    iget-object v0, p0, Lnet/oauth/signature/Base64;->buf:[B

    iget v1, p0, Lnet/oauth/signature/Base64;->pos:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lnet/oauth/signature/Base64;->pos:I

    sget-object v3, Lnet/oauth/signature/Base64;->intToBase64:[B

    iget v4, p0, Lnet/oauth/signature/Base64;->x:I

    shl-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0x3f

    aget-byte v3, v3, v4

    aput-byte v3, v0, v1

    iget-object v0, p0, Lnet/oauth/signature/Base64;->buf:[B

    iget v1, p0, Lnet/oauth/signature/Base64;->pos:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lnet/oauth/signature/Base64;->pos:I

    aput-byte v5, v0, v1

    iget-object v0, p0, Lnet/oauth/signature/Base64;->buf:[B

    iget v1, p0, Lnet/oauth/signature/Base64;->pos:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lnet/oauth/signature/Base64;->pos:I

    aput-byte v5, v0, v1

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lnet/oauth/signature/Base64;->buf:[B

    iget v1, p0, Lnet/oauth/signature/Base64;->pos:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lnet/oauth/signature/Base64;->pos:I

    sget-object v3, Lnet/oauth/signature/Base64;->intToBase64:[B

    iget v4, p0, Lnet/oauth/signature/Base64;->x:I

    shr-int/lit8 v4, v4, 0xa

    and-int/lit8 v4, v4, 0x3f

    aget-byte v3, v3, v4

    aput-byte v3, v0, v1

    iget-object v0, p0, Lnet/oauth/signature/Base64;->buf:[B

    iget v1, p0, Lnet/oauth/signature/Base64;->pos:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lnet/oauth/signature/Base64;->pos:I

    sget-object v3, Lnet/oauth/signature/Base64;->intToBase64:[B

    iget v4, p0, Lnet/oauth/signature/Base64;->x:I

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0x3f

    aget-byte v3, v3, v4

    aput-byte v3, v0, v1

    iget-object v0, p0, Lnet/oauth/signature/Base64;->buf:[B

    iget v1, p0, Lnet/oauth/signature/Base64;->pos:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lnet/oauth/signature/Base64;->pos:I

    sget-object v3, Lnet/oauth/signature/Base64;->intToBase64:[B

    iget v4, p0, Lnet/oauth/signature/Base64;->x:I

    shl-int/lit8 v4, v4, 0x2

    and-int/lit8 v4, v4, 0x3f

    aget-byte v3, v3, v4

    aput-byte v3, v0, v1

    iget-object v0, p0, Lnet/oauth/signature/Base64;->buf:[B

    iget v1, p0, Lnet/oauth/signature/Base64;->pos:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lnet/oauth/signature/Base64;->pos:I

    aput-byte v5, v0, v1

    goto/16 :goto_1

    :cond_4
    move v1, v2

    :goto_2
    if-ge v1, p3, :cond_0

    iget-object v0, p0, Lnet/oauth/signature/Base64;->buf:[B

    if-eqz v0, :cond_5

    iget-object v0, p0, Lnet/oauth/signature/Base64;->buf:[B

    array-length v0, v0

    iget v3, p0, Lnet/oauth/signature/Base64;->pos:I

    sub-int/2addr v0, v3

    iget v3, p0, Lnet/oauth/signature/Base64;->encodeSize:I

    if-ge v0, v3, :cond_6

    :cond_5
    invoke-direct {p0}, Lnet/oauth/signature/Base64;->resizeBuf()V

    :cond_6
    iget v0, p0, Lnet/oauth/signature/Base64;->modulus:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/oauth/signature/Base64;->modulus:I

    rem-int/lit8 v0, v0, 0x3

    iput v0, p0, Lnet/oauth/signature/Base64;->modulus:I

    add-int/lit8 v3, p2, 0x1

    aget-byte v0, p1, p2

    if-gez v0, :cond_7

    add-int/lit16 v0, v0, 0x100

    :cond_7
    iget v4, p0, Lnet/oauth/signature/Base64;->x:I

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v0, v4

    iput v0, p0, Lnet/oauth/signature/Base64;->x:I

    iget v0, p0, Lnet/oauth/signature/Base64;->modulus:I

    if-nez v0, :cond_8

    iget-object v0, p0, Lnet/oauth/signature/Base64;->buf:[B

    iget v4, p0, Lnet/oauth/signature/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lnet/oauth/signature/Base64;->pos:I

    sget-object v5, Lnet/oauth/signature/Base64;->intToBase64:[B

    iget v6, p0, Lnet/oauth/signature/Base64;->x:I

    shr-int/lit8 v6, v6, 0x12

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v0, v4

    iget-object v0, p0, Lnet/oauth/signature/Base64;->buf:[B

    iget v4, p0, Lnet/oauth/signature/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lnet/oauth/signature/Base64;->pos:I

    sget-object v5, Lnet/oauth/signature/Base64;->intToBase64:[B

    iget v6, p0, Lnet/oauth/signature/Base64;->x:I

    shr-int/lit8 v6, v6, 0xc

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v0, v4

    iget-object v0, p0, Lnet/oauth/signature/Base64;->buf:[B

    iget v4, p0, Lnet/oauth/signature/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lnet/oauth/signature/Base64;->pos:I

    sget-object v5, Lnet/oauth/signature/Base64;->intToBase64:[B

    iget v6, p0, Lnet/oauth/signature/Base64;->x:I

    shr-int/lit8 v6, v6, 0x6

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v0, v4

    iget-object v0, p0, Lnet/oauth/signature/Base64;->buf:[B

    iget v4, p0, Lnet/oauth/signature/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lnet/oauth/signature/Base64;->pos:I

    sget-object v5, Lnet/oauth/signature/Base64;->intToBase64:[B

    iget v6, p0, Lnet/oauth/signature/Base64;->x:I

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v0, v4

    iget v0, p0, Lnet/oauth/signature/Base64;->currentLinePos:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lnet/oauth/signature/Base64;->currentLinePos:I

    iget v0, p0, Lnet/oauth/signature/Base64;->lineLength:I

    if-lez v0, :cond_8

    iget v0, p0, Lnet/oauth/signature/Base64;->lineLength:I

    iget v4, p0, Lnet/oauth/signature/Base64;->currentLinePos:I

    if-gt v0, v4, :cond_8

    iget-object v0, p0, Lnet/oauth/signature/Base64;->lineSeparator:[B

    iget-object v4, p0, Lnet/oauth/signature/Base64;->buf:[B

    iget v5, p0, Lnet/oauth/signature/Base64;->pos:I

    iget-object v6, p0, Lnet/oauth/signature/Base64;->lineSeparator:[B

    array-length v6, v6

    invoke-static {v0, v2, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lnet/oauth/signature/Base64;->pos:I

    iget-object v4, p0, Lnet/oauth/signature/Base64;->lineSeparator:[B

    array-length v4, v4

    add-int/2addr v0, v4

    iput v0, p0, Lnet/oauth/signature/Base64;->pos:I

    iput v2, p0, Lnet/oauth/signature/Base64;->currentLinePos:I

    :cond_8
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move p2, v3

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public encode([B)[B
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lnet/oauth/signature/Base64;->encodeBase64([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method hasData()Z
    .locals 1

    iget-object v0, p0, Lnet/oauth/signature/Base64;->buf:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method readResults([BII)I
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lnet/oauth/signature/Base64;->buf:[B

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lnet/oauth/signature/Base64;->avail()I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lnet/oauth/signature/Base64;->buf:[B

    if-eq v1, p1, :cond_1

    iget-object v1, p0, Lnet/oauth/signature/Base64;->buf:[B

    iget v2, p0, Lnet/oauth/signature/Base64;->readPos:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lnet/oauth/signature/Base64;->readPos:I

    add-int/2addr v1, v0

    iput v1, p0, Lnet/oauth/signature/Base64;->readPos:I

    iget v1, p0, Lnet/oauth/signature/Base64;->readPos:I

    iget v2, p0, Lnet/oauth/signature/Base64;->pos:I

    if-lt v1, v2, :cond_0

    iput-object v3, p0, Lnet/oauth/signature/Base64;->buf:[B

    :cond_0
    :goto_0
    return v0

    :cond_1
    iput-object v3, p0, Lnet/oauth/signature/Base64;->buf:[B

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lnet/oauth/signature/Base64;->eof:Z

    if-eqz v0, :cond_3

    const/4 v0, -0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setInitialBuffer([BII)V
    .locals 1

    if-eqz p1, :cond_0

    array-length v0, p1

    if-ne v0, p3, :cond_0

    iput-object p1, p0, Lnet/oauth/signature/Base64;->buf:[B

    iput p2, p0, Lnet/oauth/signature/Base64;->pos:I

    iput p2, p0, Lnet/oauth/signature/Base64;->readPos:I

    :cond_0
    return-void
.end method
