.class public Lorg/apache/commons/codec/binary/Base64;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/commons/codec/BinaryDecoder;
.implements Lorg/apache/commons/codec/BinaryEncoder;


# static fields
.field static final BASELENGTH:I = 0xff

.field static final CHUNK_SEPARATOR:[B

.field static final CHUNK_SIZE:I = 0x4c

.field static final EIGHTBIT:I = 0x8

.field static final FOURBYTE:I = 0x4

.field static final LOOKUPLENGTH:I = 0x40

.field static final PAD:B = 0x3dt

.field static final SIGN:I = -0x80

.field static final SIXTEENBIT:I = 0x10

.field static final TWENTYFOURBITGROUP:I = 0x18

.field private static base64Alphabet:[B

.field private static lookUpBase64Alphabet:[B


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/16 v8, 0x3f

    const/16 v7, 0x3e

    const/16 v6, 0x2f

    const/16 v5, 0x2b

    const/4 v0, 0x0

    const-string v1, "\r\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    sput-object v1, Lorg/apache/commons/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    const/16 v1, 0xff

    new-array v1, v1, [B

    sput-object v1, Lorg/apache/commons/codec/binary/Base64;->base64Alphabet:[B

    const/16 v1, 0x40

    new-array v1, v1, [B

    sput-object v1, Lorg/apache/commons/codec/binary/Base64;->lookUpBase64Alphabet:[B

    move v1, v0

    :goto_0
    const/16 v2, 0xff

    if-ge v1, v2, :cond_0

    sget-object v2, Lorg/apache/commons/codec/binary/Base64;->base64Alphabet:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0x5a

    :goto_1
    const/16 v2, 0x41

    if-lt v1, v2, :cond_1

    sget-object v2, Lorg/apache/commons/codec/binary/Base64;->base64Alphabet:[B

    add-int/lit8 v3, v1, -0x41

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    const/16 v1, 0x7a

    :goto_2
    const/16 v2, 0x61

    if-lt v1, v2, :cond_2

    sget-object v2, Lorg/apache/commons/codec/binary/Base64;->base64Alphabet:[B

    add-int/lit8 v3, v1, -0x61

    add-int/lit8 v3, v3, 0x1a

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_2
    const/16 v1, 0x39

    :goto_3
    const/16 v2, 0x30

    if-lt v1, v2, :cond_3

    sget-object v2, Lorg/apache/commons/codec/binary/Base64;->base64Alphabet:[B

    add-int/lit8 v3, v1, -0x30

    add-int/lit8 v3, v3, 0x34

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_3
    sget-object v1, Lorg/apache/commons/codec/binary/Base64;->base64Alphabet:[B

    aput-byte v7, v1, v5

    sget-object v1, Lorg/apache/commons/codec/binary/Base64;->base64Alphabet:[B

    aput-byte v8, v1, v6

    move v1, v0

    :goto_4
    const/16 v2, 0x19

    if-gt v1, v2, :cond_4

    sget-object v2, Lorg/apache/commons/codec/binary/Base64;->lookUpBase64Alphabet:[B

    add-int/lit8 v3, v1, 0x41

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    const/16 v1, 0x1a

    move v2, v1

    move v1, v0

    :goto_5
    const/16 v3, 0x33

    if-gt v2, v3, :cond_5

    sget-object v3, Lorg/apache/commons/codec/binary/Base64;->lookUpBase64Alphabet:[B

    add-int/lit8 v4, v1, 0x61

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_5
    const/16 v1, 0x34

    :goto_6
    const/16 v2, 0x3d

    if-gt v1, v2, :cond_6

    sget-object v2, Lorg/apache/commons/codec/binary/Base64;->lookUpBase64Alphabet:[B

    add-int/lit8 v3, v0, 0x30

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_6
    sget-object v0, Lorg/apache/commons/codec/binary/Base64;->lookUpBase64Alphabet:[B

    aput-byte v5, v0, v7

    sget-object v0, Lorg/apache/commons/codec/binary/Base64;->lookUpBase64Alphabet:[B

    aput-byte v6, v0, v8

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeBase64([B)[B
    .locals 11

    const/4 v1, 0x0

    const/16 v10, 0x3d

    invoke-static {p0}, Lorg/apache/commons/codec/binary/Base64;->discardNonBase64([B)[B

    move-result-object v3

    array-length v0, v3

    if-nez v0, :cond_1

    new-array v0, v1, [B

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    array-length v0, v3

    div-int/lit8 v4, v0, 0x4

    array-length v0, v3

    :cond_2
    add-int/lit8 v2, v0, -0x1

    aget-byte v2, v3, v2

    if-ne v2, v10, :cond_3

    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_2

    new-array v0, v1, [B

    goto :goto_0

    :cond_3
    sub-int/2addr v0, v4

    new-array v0, v0, [B

    move v2, v1

    :goto_1
    if-ge v1, v4, :cond_0

    mul-int/lit8 v5, v1, 0x4

    add-int/lit8 v6, v5, 0x2

    aget-byte v6, v3, v6

    add-int/lit8 v7, v5, 0x3

    aget-byte v7, v3, v7

    sget-object v8, Lorg/apache/commons/codec/binary/Base64;->base64Alphabet:[B

    aget-byte v9, v3, v5

    aget-byte v8, v8, v9

    sget-object v9, Lorg/apache/commons/codec/binary/Base64;->base64Alphabet:[B

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, v3, v5

    aget-byte v5, v9, v5

    if-eq v6, v10, :cond_5

    if-eq v7, v10, :cond_5

    sget-object v9, Lorg/apache/commons/codec/binary/Base64;->base64Alphabet:[B

    aget-byte v6, v9, v6

    sget-object v9, Lorg/apache/commons/codec/binary/Base64;->base64Alphabet:[B

    aget-byte v7, v9, v7

    shl-int/lit8 v8, v8, 0x2

    shr-int/lit8 v9, v5, 0x4

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v0, v2

    add-int/lit8 v8, v2, 0x1

    and-int/lit8 v5, v5, 0xf

    shl-int/lit8 v5, v5, 0x4

    shr-int/lit8 v9, v6, 0x2

    and-int/lit8 v9, v9, 0xf

    or-int/2addr v5, v9

    int-to-byte v5, v5

    aput-byte v5, v0, v8

    add-int/lit8 v5, v2, 0x2

    shl-int/lit8 v6, v6, 0x6

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    if-ne v6, v10, :cond_6

    shl-int/lit8 v6, v8, 0x2

    shr-int/lit8 v5, v5, 0x4

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v0, v2

    goto :goto_2

    :cond_6
    if-ne v7, v10, :cond_4

    sget-object v7, Lorg/apache/commons/codec/binary/Base64;->base64Alphabet:[B

    aget-byte v6, v7, v6

    shl-int/lit8 v7, v8, 0x2

    shr-int/lit8 v8, v5, 0x4

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v0, v2

    add-int/lit8 v7, v2, 0x1

    and-int/lit8 v5, v5, 0xf

    shl-int/lit8 v5, v5, 0x4

    shr-int/lit8 v6, v6, 0x2

    and-int/lit8 v6, v6, 0xf

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v0, v7

    goto :goto_2
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

    invoke-static {v3}, Lorg/apache/commons/codec/binary/Base64;->isBase64(B)Z

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

.method static discardWhitespace([B)[B
    .locals 6

    const/4 v1, 0x0

    array-length v0, p0

    new-array v4, v0, [B

    move v0, v1

    move v2, v1

    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_0

    aget-byte v3, p0, v0

    sparse-switch v3, :sswitch_data_0

    add-int/lit8 v3, v2, 0x1

    aget-byte v5, p0, v0

    aput-byte v5, v4, v2

    move v2, v3

    :sswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-array v0, v2, [B

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public static encodeBase64([B)[B
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64([BZ)[B
    .locals 17

    move-object/from16 v0, p0

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x8

    rem-int/lit8 v10, v1, 0x18

    div-int/lit8 v11, v1, 0x18

    const/4 v1, 0x0

    if-eqz v10, :cond_1

    add-int/lit8 v2, v11, 0x1

    mul-int/lit8 v2, v2, 0x4

    :goto_0
    if-eqz p1, :cond_0

    sget-object v1, Lorg/apache/commons/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    array-length v1, v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    :goto_1
    sget-object v3, Lorg/apache/commons/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    array-length v3, v3

    mul-int/2addr v3, v1

    add-int/2addr v2, v3

    :cond_0
    new-array v12, v2, [B

    const/4 v6, 0x0

    const/16 v5, 0x4c

    const/4 v4, 0x0

    const/4 v3, 0x0

    move v8, v3

    move v9, v6

    :goto_2
    if-ge v8, v11, :cond_6

    mul-int/lit8 v3, v8, 0x3

    aget-byte v6, p0, v3

    add-int/lit8 v7, v3, 0x1

    aget-byte v13, p0, v7

    add-int/lit8 v3, v3, 0x2

    aget-byte v14, p0, v3

    and-int/lit8 v3, v13, 0xf

    int-to-byte v15, v3

    and-int/lit8 v3, v6, 0x3

    int-to-byte v0, v3

    move/from16 v16, v0

    and-int/lit8 v3, v6, -0x80

    if-nez v3, :cond_3

    shr-int/lit8 v3, v6, 0x2

    int-to-byte v3, v3

    move v7, v3

    :goto_3
    and-int/lit8 v3, v13, -0x80

    if-nez v3, :cond_4

    shr-int/lit8 v3, v13, 0x4

    int-to-byte v3, v3

    move v6, v3

    :goto_4
    and-int/lit8 v3, v14, -0x80

    if-nez v3, :cond_5

    shr-int/lit8 v3, v14, 0x6

    int-to-byte v3, v3

    :goto_5
    sget-object v13, Lorg/apache/commons/codec/binary/Base64;->lookUpBase64Alphabet:[B

    aget-byte v7, v13, v7

    aput-byte v7, v12, v9

    add-int/lit8 v7, v9, 0x1

    sget-object v13, Lorg/apache/commons/codec/binary/Base64;->lookUpBase64Alphabet:[B

    shl-int/lit8 v16, v16, 0x4

    or-int v6, v6, v16

    aget-byte v6, v13, v6

    aput-byte v6, v12, v7

    add-int/lit8 v6, v9, 0x2

    sget-object v7, Lorg/apache/commons/codec/binary/Base64;->lookUpBase64Alphabet:[B

    shl-int/lit8 v13, v15, 0x2

    or-int/2addr v3, v13

    aget-byte v3, v7, v3

    aput-byte v3, v12, v6

    add-int/lit8 v3, v9, 0x3

    sget-object v6, Lorg/apache/commons/codec/binary/Base64;->lookUpBase64Alphabet:[B

    and-int/lit8 v7, v14, 0x3f

    aget-byte v6, v6, v7

    aput-byte v6, v12, v3

    add-int/lit8 v6, v9, 0x4

    if-eqz p1, :cond_d

    if-ne v6, v5, :cond_d

    sget-object v3, Lorg/apache/commons/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    const/4 v5, 0x0

    sget-object v7, Lorg/apache/commons/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    array-length v7, v7

    invoke-static {v3, v5, v12, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v4, 0x1

    add-int/lit8 v4, v3, 0x1

    mul-int/lit8 v4, v4, 0x4c

    sget-object v5, Lorg/apache/commons/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    array-length v5, v5

    mul-int/2addr v5, v3

    add-int/2addr v4, v5

    sget-object v5, Lorg/apache/commons/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    array-length v5, v5

    add-int/2addr v5, v6

    :goto_6
    add-int/lit8 v6, v8, 0x1

    move v8, v6

    move v9, v5

    move v5, v4

    move v4, v3

    goto :goto_2

    :cond_1
    mul-int/lit8 v2, v11, 0x4

    goto/16 :goto_0

    :cond_2
    int-to-float v1, v2

    const/high16 v3, 0x42980000    # 76.0f

    div-float/2addr v1, v3

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v1, v3

    goto/16 :goto_1

    :cond_3
    shr-int/lit8 v3, v6, 0x2

    xor-int/lit16 v3, v3, 0xc0

    int-to-byte v3, v3

    move v7, v3

    goto :goto_3

    :cond_4
    shr-int/lit8 v3, v13, 0x4

    xor-int/lit16 v3, v3, 0xf0

    int-to-byte v3, v3

    move v6, v3

    goto :goto_4

    :cond_5
    shr-int/lit8 v3, v14, 0x6

    xor-int/lit16 v3, v3, 0xfc

    int-to-byte v3, v3

    goto :goto_5

    :cond_6
    mul-int/lit8 v3, v8, 0x3

    const/16 v5, 0x8

    if-ne v10, v5, :cond_a

    aget-byte v3, p0, v3

    and-int/lit8 v5, v3, 0x3

    int-to-byte v5, v5

    and-int/lit8 v6, v3, -0x80

    if-nez v6, :cond_9

    shr-int/lit8 v3, v3, 0x2

    int-to-byte v3, v3

    :goto_7
    sget-object v6, Lorg/apache/commons/codec/binary/Base64;->lookUpBase64Alphabet:[B

    aget-byte v3, v6, v3

    aput-byte v3, v12, v9

    add-int/lit8 v3, v9, 0x1

    sget-object v6, Lorg/apache/commons/codec/binary/Base64;->lookUpBase64Alphabet:[B

    shl-int/lit8 v5, v5, 0x4

    aget-byte v5, v6, v5

    aput-byte v5, v12, v3

    add-int/lit8 v3, v9, 0x2

    const/16 v5, 0x3d

    aput-byte v5, v12, v3

    add-int/lit8 v3, v9, 0x3

    const/16 v5, 0x3d

    aput-byte v5, v12, v3

    :cond_7
    :goto_8
    if-eqz p1, :cond_8

    if-ge v4, v1, :cond_8

    sget-object v1, Lorg/apache/commons/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    const/4 v3, 0x0

    sget-object v4, Lorg/apache/commons/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    array-length v4, v4

    sub-int/2addr v2, v4

    sget-object v4, Lorg/apache/commons/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    array-length v4, v4

    invoke-static {v1, v3, v12, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_8
    return-object v12

    :cond_9
    shr-int/lit8 v3, v3, 0x2

    xor-int/lit16 v3, v3, 0xc0

    int-to-byte v3, v3

    goto :goto_7

    :cond_a
    const/16 v5, 0x10

    if-ne v10, v5, :cond_7

    aget-byte v5, p0, v3

    add-int/lit8 v3, v3, 0x1

    aget-byte v6, p0, v3

    and-int/lit8 v3, v6, 0xf

    int-to-byte v7, v3

    and-int/lit8 v3, v5, 0x3

    int-to-byte v8, v3

    and-int/lit8 v3, v5, -0x80

    if-nez v3, :cond_b

    shr-int/lit8 v3, v5, 0x2

    int-to-byte v3, v3

    move v5, v3

    :goto_9
    and-int/lit8 v3, v6, -0x80

    if-nez v3, :cond_c

    shr-int/lit8 v3, v6, 0x4

    int-to-byte v3, v3

    :goto_a
    sget-object v6, Lorg/apache/commons/codec/binary/Base64;->lookUpBase64Alphabet:[B

    aget-byte v5, v6, v5

    aput-byte v5, v12, v9

    add-int/lit8 v5, v9, 0x1

    sget-object v6, Lorg/apache/commons/codec/binary/Base64;->lookUpBase64Alphabet:[B

    shl-int/lit8 v8, v8, 0x4

    or-int/2addr v3, v8

    aget-byte v3, v6, v3

    aput-byte v3, v12, v5

    add-int/lit8 v3, v9, 0x2

    sget-object v5, Lorg/apache/commons/codec/binary/Base64;->lookUpBase64Alphabet:[B

    shl-int/lit8 v6, v7, 0x2

    aget-byte v5, v5, v6

    aput-byte v5, v12, v3

    add-int/lit8 v3, v9, 0x3

    const/16 v5, 0x3d

    aput-byte v5, v12, v3

    goto :goto_8

    :cond_b
    shr-int/lit8 v3, v5, 0x2

    xor-int/lit16 v3, v3, 0xc0

    int-to-byte v3, v3

    move v5, v3

    goto :goto_9

    :cond_c
    shr-int/lit8 v3, v6, 0x4

    xor-int/lit16 v3, v3, 0xf0

    int-to-byte v3, v3

    goto :goto_a

    :cond_d
    move v3, v4

    move v4, v5

    move v5, v6

    goto/16 :goto_6
.end method

.method public static encodeBase64Chunked([B)[B
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static isArrayByteBase64([B)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0}, Lorg/apache/commons/codec/binary/Base64;->discardWhitespace([B)[B

    move-result-object v3

    array-length v4, v3

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_0

    aget-byte v5, v3, v2

    invoke-static {v5}, Lorg/apache/commons/codec/binary/Base64;->isBase64(B)Z

    move-result v5

    if-nez v5, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private static isBase64(B)Z
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x3d

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lorg/apache/commons/codec/binary/Base64;->base64Alphabet:[B

    aget-byte v1, v1, p0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public decode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    instance-of v0, p1, [B

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/commons/codec/DecoderException;

    const-string v1, "Parameter supplied to Base64 decode is not a byte[]"

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/binary/Base64;->decode([B)[B

    move-result-object v0

    return-object v0
.end method

.method public decode([B)[B
    .locals 1

    invoke-static {p1}, Lorg/apache/commons/codec/binary/Base64;->decodeBase64([B)[B

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    instance-of v0, p1, [B

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/commons/codec/EncoderException;

    const-string v1, "Parameter supplied to Base64 encode is not a byte[]"

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/binary/Base64;->encode([B)[B

    move-result-object v0

    return-object v0
.end method

.method public encode([B)[B
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([BZ)[B

    move-result-object v0

    return-object v0
.end method
