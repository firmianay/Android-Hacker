.class public Lcom/netease/b/h;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/netease/b/c;->a(Ljava/lang/String;)[B

    move-result-object v2

    const-string v3, "MobileUserSystem"

    invoke-static {v1, v2, v3}, Lcom/netease/b/h;->b([B[BLjava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private static a([B[BLjava/lang/String;)[B
    .locals 7

    const/4 v5, 0x1

    const-string v0, "AES/CBC/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v6

    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    const/16 v0, 0x10

    invoke-virtual {v6}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    move-object v3, p0

    invoke-static/range {v0 .. v5}, Lcom/netease/b/h;->a(IILjava/security/MessageDigest;[B[BI)[[B

    move-result-object v0

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    const-string v3, "AES"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    aget-object v0, v0, v5

    invoke-direct {v2, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v6, v5, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v6, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    return-object v0
.end method

.method private static a(IILjava/security/MessageDigest;[B[BI)[[B
    .locals 12

    const/4 v1, 0x2

    new-array v6, v1, [[B

    new-array v8, p0, [B

    const/4 v4, 0x0

    new-array v9, p1, [B

    const/4 v3, 0x0

    const/4 v1, 0x0

    aput-object v8, v6, v1

    const/4 v1, 0x1

    aput-object v9, v6, v1

    const/4 v2, 0x0

    if-nez p4, :cond_0

    move-object v1, v6

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    move v5, v4

    move v4, v3

    move-object v3, v2

    :goto_1
    invoke-virtual {p2}, Ljava/security/MessageDigest;->reset()V

    add-int/lit8 v2, v1, 0x1

    if-lez v1, :cond_1

    invoke-virtual {p2, v3}, Ljava/security/MessageDigest;->update([B)V

    :cond_1
    move-object/from16 v0, p4

    invoke-virtual {p2, v0}, Ljava/security/MessageDigest;->update([B)V

    if-eqz p3, :cond_2

    const/4 v1, 0x0

    const/16 v3, 0x8

    invoke-virtual {p2, p3, v1, v3}, Ljava/security/MessageDigest;->update([BII)V

    :cond_2
    invoke-virtual {p2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    const/4 v1, 0x1

    move v11, v1

    move-object v1, v3

    move v3, v11

    :goto_2
    move/from16 v0, p5

    if-lt v3, v0, :cond_4

    const/4 v3, 0x0

    if-lez p0, :cond_3

    :goto_3
    if-nez p0, :cond_5

    :cond_3
    if-lez p1, :cond_a

    array-length v7, v1

    if-eq v3, v7, :cond_a

    :goto_4
    if-nez p1, :cond_6

    move v3, v4

    :goto_5
    if-nez p0, :cond_9

    if-nez p1, :cond_9

    const/4 v2, 0x0

    :goto_6
    array-length v3, v1

    if-lt v2, v3, :cond_8

    move-object v1, v6

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Ljava/security/MessageDigest;->reset()V

    invoke-virtual {p2, v1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {p2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v7

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move-object v1, v7

    goto :goto_2

    :cond_5
    array-length v7, v1

    if-eq v3, v7, :cond_3

    add-int/lit8 v7, v5, 0x1

    aget-byte v10, v1, v3

    aput-byte v10, v8, v5

    add-int/lit8 p0, p0, -0x1

    add-int/lit8 v3, v3, 0x1

    move v5, v7

    goto :goto_3

    :cond_6
    array-length v7, v1

    if-ne v3, v7, :cond_7

    move v3, v4

    goto :goto_5

    :cond_7
    add-int/lit8 v7, v4, 0x1

    aget-byte v10, v1, v3

    aput-byte v10, v9, v4

    add-int/lit8 p1, p1, -0x1

    add-int/lit8 v3, v3, 0x1

    move v4, v7

    goto :goto_4

    :cond_8
    const/4 v3, 0x0

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_9
    move v4, v3

    move-object v3, v1

    move v1, v2

    goto :goto_1

    :cond_a
    move v3, v4

    goto :goto_5
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string v2, "MobileUserSystem"

    invoke-static {v0, v1, v2}, Lcom/netease/b/h;->a([B[BLjava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/netease/b/c;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b([B[BLjava/lang/String;)[B
    .locals 7

    const/4 v5, 0x1

    const-string v0, "AES/CBC/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v6

    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    const/16 v0, 0x10

    invoke-virtual {v6}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    move-object v3, p0

    invoke-static/range {v0 .. v5}, Lcom/netease/b/h;->a(IILjava/security/MessageDigest;[B[BI)[[B

    move-result-object v0

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    const-string v3, "AES"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    aget-object v0, v0, v5

    invoke-direct {v2, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v0, 0x2

    invoke-virtual {v6, v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v6, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    return-object v0
.end method
