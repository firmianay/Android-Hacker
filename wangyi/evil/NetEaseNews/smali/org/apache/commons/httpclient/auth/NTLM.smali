.class final Lorg/apache/commons/httpclient/auth/NTLM;
.super Ljava/lang/Object;


# static fields
.field public static final DEFAULT_CHARSET:Ljava/lang/String; = "ASCII"


# instance fields
.field private credentialCharset:Ljava/lang/String;

.field private currentPosition:I

.field private currentResponse:[B


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/httpclient/auth/NTLM;->currentPosition:I

    const-string v0, "ASCII"

    iput-object v0, p0, Lorg/apache/commons/httpclient/auth/NTLM;->credentialCharset:Ljava/lang/String;

    return-void
.end method

.method private addByte(B)V
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/httpclient/auth/NTLM;->currentResponse:[B

    iget v1, p0, Lorg/apache/commons/httpclient/auth/NTLM;->currentPosition:I

    aput-byte p1, v0, v1

    iget v0, p0, Lorg/apache/commons/httpclient/auth/NTLM;->currentPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/httpclient/auth/NTLM;->currentPosition:I

    return-void
.end method

.method private addBytes([B)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/httpclient/auth/NTLM;->currentResponse:[B

    iget v2, p0, Lorg/apache/commons/httpclient/auth/NTLM;->currentPosition:I

    aget-byte v3, p1, v0

    aput-byte v3, v1, v2

    iget v1, p0, Lorg/apache/commons/httpclient/auth/NTLM;->currentPosition:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/httpclient/auth/NTLM;->currentPosition:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private calcResp([B[B[B)V
    .locals 8

    const/16 v7, 0x8

    const/4 v6, 0x7

    const/4 v0, 0x0

    new-array v2, v6, [B

    new-array v3, v6, [B

    new-array v4, v6, [B

    move v1, v0

    :goto_0
    if-ge v1, v6, :cond_0

    aget-byte v5, p1, v1

    aput-byte v5, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_1
    if-ge v1, v6, :cond_1

    add-int/lit8 v5, v1, 0x7

    aget-byte v5, p1, v5

    aput-byte v5, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_2
    if-ge v1, v6, :cond_2

    add-int/lit8 v5, v1, 0xe

    aget-byte v5, p1, v5

    aput-byte v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    invoke-direct {p0, v2, p2}, Lorg/apache/commons/httpclient/auth/NTLM;->encrypt([B[B)[B

    move-result-object v2

    invoke-direct {p0, v3, p2}, Lorg/apache/commons/httpclient/auth/NTLM;->encrypt([B[B)[B

    move-result-object v3

    invoke-direct {p0, v4, p2}, Lorg/apache/commons/httpclient/auth/NTLM;->encrypt([B[B)[B

    move-result-object v4

    move v1, v0

    :goto_3
    if-ge v1, v7, :cond_3

    aget-byte v5, v2, v1

    aput-byte v5, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    move v1, v0

    :goto_4
    if-ge v1, v7, :cond_4

    add-int/lit8 v2, v1, 0x8

    aget-byte v5, v3, v1

    aput-byte v5, p3, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    if-ge v0, v7, :cond_5

    add-int/lit8 v1, v0, 0x10

    aget-byte v2, v4, v0

    aput-byte v2, p3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method private convertShort(I)[B
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x0

    const/16 v5, 0x10

    const/4 v4, 0x2

    new-array v1, v4, [B

    invoke-static {p1, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v7, :cond_0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v6

    const/4 v2, 0x1

    invoke-static {v0, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    return-object v1
.end method

.method private encrypt([B[B)[B
    .locals 3

    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/auth/NTLM;->getCipher([B)Ljavax/crypto/Cipher;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/commons/httpclient/auth/AuthenticationException;

    const-string v2, "Invalid block size for DES encryption."

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/httpclient/auth/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lorg/apache/commons/httpclient/auth/AuthenticationException;

    const-string v2, "Data not padded correctly for DES encryption."

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/httpclient/auth/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getCipher([B)Ljavax/crypto/Cipher;
    .locals 5

    :try_start_0
    const-string v0, "DES/ECB/NoPadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/auth/NTLM;->setupKey([B)[B

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "DES"

    invoke-direct {v3, v1, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_2

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/commons/httpclient/auth/AuthenticationException;

    const-string v2, "DES encryption is not available."

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/httpclient/auth/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lorg/apache/commons/httpclient/auth/AuthenticationException;

    const-string v2, "Invalid key for DES encryption."

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/httpclient/auth/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Lorg/apache/commons/httpclient/auth/AuthenticationException;

    const-string v2, "NoPadding option for DES is not available."

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/httpclient/auth/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getResponse()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/httpclient/auth/NTLM;->currentResponse:[B

    array-length v0, v0

    iget v1, p0, Lorg/apache/commons/httpclient/auth/NTLM;->currentPosition:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lorg/apache/commons/httpclient/auth/NTLM;->currentPosition:I

    new-array v1, v0, [B

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lorg/apache/commons/httpclient/auth/NTLM;->currentPosition:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/apache/commons/httpclient/auth/NTLM;->currentResponse:[B

    aget-byte v2, v2, v0

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_1
    invoke-static {v0}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getAsciiString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/apache/commons/httpclient/auth/NTLM;->currentResponse:[B

    goto :goto_1
.end method

.method private hashPassword(Ljava/lang/String;[B)[B
    .locals 9

    const/16 v2, 0xe

    const/4 v1, 0x7

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lorg/apache/commons/httpclient/auth/NTLM;->credentialCharset:Ljava/lang/String;

    invoke-static {v0, v4}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v5

    new-array v6, v1, [B

    new-array v7, v1, [B

    array-length v0, v5

    if-le v0, v1, :cond_0

    move v0, v1

    :cond_0
    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_8

    aget-byte v8, v5, v4

    aput-byte v8, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :goto_1
    if-ge v0, v1, :cond_1

    aput-byte v3, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    array-length v0, v5

    if-le v0, v2, :cond_2

    move v0, v2

    :cond_2
    :goto_2
    if-ge v1, v0, :cond_7

    add-int/lit8 v4, v1, -0x7

    aget-byte v8, v5, v1

    aput-byte v8, v7, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :goto_3
    if-ge v0, v2, :cond_3

    add-int/lit8 v1, v0, -0x7

    aput-byte v3, v7, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    invoke-direct {p0, v6, v0}, Lorg/apache/commons/httpclient/auth/NTLM;->encrypt([B[B)[B

    move-result-object v1

    invoke-direct {p0, v7, v0}, Lorg/apache/commons/httpclient/auth/NTLM;->encrypt([B[B)[B

    move-result-object v2

    const/16 v0, 0x15

    new-array v4, v0, [B

    move v0, v3

    :goto_4
    array-length v5, v1

    if-ge v0, v5, :cond_4

    aget-byte v5, v1, v0

    aput-byte v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    move v0, v3

    :goto_5
    array-length v1, v2

    if-ge v0, v1, :cond_5

    add-int/lit8 v1, v0, 0x8

    aget-byte v5, v2, v0

    aput-byte v5, v4, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_5
    move v0, v3

    :goto_6
    const/4 v1, 0x5

    if-ge v0, v1, :cond_6

    add-int/lit8 v1, v0, 0x10

    aput-byte v3, v4, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_6
    const/16 v0, 0x18

    new-array v0, v0, [B

    invoke-direct {p0, v4, p2, v0}, Lorg/apache/commons/httpclient/auth/NTLM;->calcResp([B[B[B)V

    return-object v0

    :cond_7
    move v0, v1

    goto :goto_3

    :cond_8
    move v0, v4

    goto :goto_1

    nop

    :array_0
    .array-data 1
        0x4bt
        0x47t
        0x53t
        0x21t
        0x40t
        0x23t
        0x24t
        0x25t
    .end array-data
.end method

.method private prepareResponse(I)V
    .locals 1

    new-array v0, p1, [B

    iput-object v0, p0, Lorg/apache/commons/httpclient/auth/NTLM;->currentResponse:[B

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/httpclient/auth/NTLM;->currentPosition:I

    return-void
.end method

.method private setupKey([B)[B
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v0, 0x0

    const/16 v1, 0x8

    new-array v1, v1, [B

    aget-byte v2, p1, v0

    shr-int/lit8 v2, v2, 0x1

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    aget-byte v2, p1, v0

    and-int/lit8 v2, v2, 0x1

    shl-int/lit8 v2, v2, 0x6

    aget-byte v3, p1, v4

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v3, v3, 0x2

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    aget-byte v2, p1, v4

    and-int/lit8 v2, v2, 0x3

    shl-int/lit8 v2, v2, 0x5

    aget-byte v3, p1, v5

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v3, v3, 0x3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v5

    aget-byte v2, p1, v5

    and-int/lit8 v2, v2, 0x7

    shl-int/lit8 v2, v2, 0x4

    aget-byte v3, p1, v6

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v3, v3, 0x4

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v6

    aget-byte v2, p1, v6

    and-int/lit8 v2, v2, 0xf

    shl-int/lit8 v2, v2, 0x3

    aget-byte v3, p1, v7

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v3, v3, 0x5

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v7

    const/4 v2, 0x5

    aget-byte v3, p1, v7

    and-int/lit8 v3, v3, 0x1f

    shl-int/lit8 v3, v3, 0x2

    const/4 v4, 0x5

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shr-int/lit8 v4, v4, 0x6

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/4 v2, 0x6

    const/4 v3, 0x5

    aget-byte v3, p1, v3

    and-int/lit8 v3, v3, 0x3f

    shl-int/lit8 v3, v3, 0x1

    const/4 v4, 0x6

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shr-int/lit8 v4, v4, 0x7

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/4 v2, 0x7

    const/4 v3, 0x6

    aget-byte v3, p1, v3

    and-int/lit8 v3, v3, 0x7f

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-byte v2, v1, v0

    shl-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public getCredentialCharset()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/httpclient/auth/NTLM;->credentialCharset:Ljava/lang/String;

    return-object v0
.end method

.method public final getResponseFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0, p4, p5}, Lorg/apache/commons/httpclient/auth/NTLM;->getType1Message(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/commons/httpclient/auth/NTLM;->parseType2Message(Ljava/lang/String;)[B

    move-result-object v5

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/httpclient/auth/NTLM;->getType3Message(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getType1Message(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ASCII"

    invoke-static {v0, v2}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    const-string v2, "ASCII"

    invoke-static {v1, v2}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    array-length v2, v0

    add-int/lit8 v2, v2, 0x20

    array-length v3, v1

    add-int/2addr v2, v3

    invoke-direct {p0, v2}, Lorg/apache/commons/httpclient/auth/NTLM;->prepareResponse(I)V

    const-string v2, "NTLMSSP"

    const-string v3, "ASCII"

    invoke-static {v2, v3}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/commons/httpclient/auth/NTLM;->addBytes([B)V

    invoke-direct {p0, v4}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    invoke-direct {p0, v5}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    invoke-direct {p0, v4}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    invoke-direct {p0, v4}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    invoke-direct {p0, v4}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    const/4 v2, 0x6

    invoke-direct {p0, v2}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    const/16 v2, 0x52

    invoke-direct {p0, v2}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    invoke-direct {p0, v4}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    invoke-direct {p0, v4}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    array-length v2, v1

    invoke-direct {p0, v2}, Lorg/apache/commons/httpclient/auth/NTLM;->convertShort(I)[B

    move-result-object v2

    aget-byte v3, v2, v4

    invoke-direct {p0, v3}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    aget-byte v3, v2, v5

    invoke-direct {p0, v3}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    aget-byte v3, v2, v4

    invoke-direct {p0, v3}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    aget-byte v2, v2, v5

    invoke-direct {p0, v2}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    array-length v2, v0

    add-int/lit8 v2, v2, 0x20

    invoke-direct {p0, v2}, Lorg/apache/commons/httpclient/auth/NTLM;->convertShort(I)[B

    move-result-object v2

    aget-byte v3, v2, v4

    invoke-direct {p0, v3}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    aget-byte v2, v2, v5

    invoke-direct {p0, v2}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    invoke-direct {p0, v4}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    invoke-direct {p0, v4}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    array-length v2, v0

    invoke-direct {p0, v2}, Lorg/apache/commons/httpclient/auth/NTLM;->convertShort(I)[B

    move-result-object v2

    aget-byte v3, v2, v4

    invoke-direct {p0, v3}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    aget-byte v3, v2, v5

    invoke-direct {p0, v3}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    aget-byte v3, v2, v4

    invoke-direct {p0, v3}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    aget-byte v2, v2, v5

    invoke-direct {p0, v2}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    const/16 v2, 0x20

    invoke-direct {p0, v2}, Lorg/apache/commons/httpclient/auth/NTLM;->convertShort(I)[B

    move-result-object v2

    aget-byte v3, v2, v4

    invoke-direct {p0, v3}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    aget-byte v2, v2, v5

    invoke-direct {p0, v2}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    invoke-direct {p0, v4}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    invoke-direct {p0, v4}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    invoke-direct {p0, v0}, Lorg/apache/commons/httpclient/auth/NTLM;->addBytes([B)V

    invoke-direct {p0, v1}, Lorg/apache/commons/httpclient/auth/NTLM;->addBytes([B)V

    invoke-direct {p0}, Lorg/apache/commons/httpclient/auth/NTLM;->getResponse()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType3Message(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;
    .locals 9

    invoke-virtual {p4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ASCII"

    invoke-static {v0, v3}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    const-string v0, "ASCII"

    invoke-static {v1, v0}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    iget-object v0, p0, Lorg/apache/commons/httpclient/auth/NTLM;->credentialCharset:Ljava/lang/String;

    invoke-static {v2, v0}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    array-length v0, v3

    array-length v4, v1

    array-length v5, v2

    add-int/lit8 v6, v0, 0x58

    add-int/2addr v6, v5

    add-int/2addr v6, v4

    invoke-direct {p0, v6}, Lorg/apache/commons/httpclient/auth/NTLM;->prepareResponse(I)V

    const-string v7, "NTLMSSP"

    const-string v8, "ASCII"

    invoke-static {v7, v8}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v7

    invoke-direct {p0, v7}, Lorg/apache/commons/httpclient/auth/NTLM;->addBytes([B)V

    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    const/4 v7, 0x3

    invoke-direct {p0, v7}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    const/16 v7, 0x18

    invoke-direct {p0, v7}, Lorg/apache/commons/httpclient/auth/NTLM;->convertShort(I)[B

    move-result-object v7

    invoke-direct {p0, v7}, Lorg/apache/commons/httpclient/auth/NTLM;->addBytes([B)V

    const/16 v7, 0x18

    invoke-direct {p0, v7}, Lorg/apache/commons/httpclient/auth/NTLM;->convertShort(I)[B

    move-result-object v7

    invoke-direct {p0, v7}, Lorg/apache/commons/httpclient/auth/NTLM;->addBytes([B)V

    add-int/lit8 v7, v6, -0x18

    invoke-direct {p0, v7}, Lorg/apache/commons/httpclient/auth/NTLM;->convertShort(I)[B

    move-result-object v7

    invoke-direct {p0, v7}, Lorg/apache/commons/httpclient/auth/NTLM;->addBytes([B)V

    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lorg/apache/commons/httpclient/auth/NTLM;->convertShort(I)[B

    move-result-object v7

    invoke-direct {p0, v7}, Lorg/apache/commons/httpclient/auth/NTLM;->addBytes([B)V

    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lorg/apache/commons/httpclient/auth/NTLM;->convertShort(I)[B

    move-result-object v7

    invoke-direct {p0, v7}, Lorg/apache/commons/httpclient/auth/NTLM;->addBytes([B)V

    invoke-direct {p0, v6}, Lorg/apache/commons/httpclient/auth/NTLM;->convertShort(I)[B

    move-result-object v7

    invoke-direct {p0, v7}, Lorg/apache/commons/httpclient/auth/NTLM;->addBytes([B)V

    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    invoke-direct {p0, v0}, Lorg/apache/commons/httpclient/auth/NTLM;->convertShort(I)[B

    move-result-object v7

    invoke-direct {p0, v7}, Lorg/apache/commons/httpclient/auth/NTLM;->addBytes([B)V

    invoke-direct {p0, v0}, Lorg/apache/commons/httpclient/auth/NTLM;->convertShort(I)[B

    move-result-object v7

    invoke-direct {p0, v7}, Lorg/apache/commons/httpclient/auth/NTLM;->addBytes([B)V

    const/16 v7, 0x40

    invoke-direct {p0, v7}, Lorg/apache/commons/httpclient/auth/NTLM;->convertShort(I)[B

    move-result-object v7

    invoke-direct {p0, v7}, Lorg/apache/commons/httpclient/auth/NTLM;->addBytes([B)V

    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    invoke-direct {p0, v5}, Lorg/apache/commons/httpclient/auth/NTLM;->convertShort(I)[B

    move-result-object v7

    invoke-direct {p0, v7}, Lorg/apache/commons/httpclient/auth/NTLM;->addBytes([B)V

    invoke-direct {p0, v5}, Lorg/apache/commons/httpclient/auth/NTLM;->convertShort(I)[B

    move-result-object v7

    invoke-direct {p0, v7}, Lorg/apache/commons/httpclient/auth/NTLM;->addBytes([B)V

    add-int/lit8 v7, v0, 0x40

    invoke-direct {p0, v7}, Lorg/apache/commons/httpclient/auth/NTLM;->convertShort(I)[B

    move-result-object v7

    invoke-direct {p0, v7}, Lorg/apache/commons/httpclient/auth/NTLM;->addBytes([B)V

    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    invoke-direct {p0, v4}, Lorg/apache/commons/httpclient/auth/NTLM;->convertShort(I)[B

    move-result-object v7

    invoke-direct {p0, v7}, Lorg/apache/commons/httpclient/auth/NTLM;->addBytes([B)V

    invoke-direct {p0, v4}, Lorg/apache/commons/httpclient/auth/NTLM;->convertShort(I)[B

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/apache/commons/httpclient/auth/NTLM;->addBytes([B)V

    add-int/lit8 v0, v0, 0x40

    add-int/2addr v0, v5

    invoke-direct {p0, v0}, Lorg/apache/commons/httpclient/auth/NTLM;->convertShort(I)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/httpclient/auth/NTLM;->addBytes([B)V

    const/4 v0, 0x0

    :goto_0
    const/4 v4, 0x6

    if-ge v0, v4, :cond_0

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v6}, Lorg/apache/commons/httpclient/auth/NTLM;->convertShort(I)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/httpclient/auth/NTLM;->addBytes([B)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    const/16 v0, 0x52

    invoke-direct {p0, v0}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/httpclient/auth/NTLM;->addByte(B)V

    invoke-direct {p0, v3}, Lorg/apache/commons/httpclient/auth/NTLM;->addBytes([B)V

    invoke-direct {p0, v2}, Lorg/apache/commons/httpclient/auth/NTLM;->addBytes([B)V

    invoke-direct {p0, v1}, Lorg/apache/commons/httpclient/auth/NTLM;->addBytes([B)V

    invoke-direct {p0, p2, p5}, Lorg/apache/commons/httpclient/auth/NTLM;->hashPassword(Ljava/lang/String;[B)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/httpclient/auth/NTLM;->addBytes([B)V

    invoke-direct {p0}, Lorg/apache/commons/httpclient/auth/NTLM;->getResponse()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public parseType2Message(Ljava/lang/String;)[B
    .locals 5

    const/16 v4, 0x8

    const-string v0, "ASCII"

    invoke-static {p1, v0}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/binary/Base64;->decodeBase64([B)[B

    move-result-object v1

    new-array v2, v4, [B

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    add-int/lit8 v3, v0, 0x18

    aget-byte v3, v1, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public setCredentialCharset(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/httpclient/auth/NTLM;->credentialCharset:Ljava/lang/String;

    return-void
.end method
