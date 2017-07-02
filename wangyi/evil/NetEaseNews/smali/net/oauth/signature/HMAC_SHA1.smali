.class Lnet/oauth/signature/HMAC_SHA1;
.super Lnet/oauth/signature/OAuthSignatureMethod;


# static fields
.field private static final ENCODING:Ljava/lang/String; = "UTF-8"

.field private static final MAC_NAME:Ljava/lang/String; = "HmacSHA1"


# instance fields
.field private key:Ljavax/crypto/SecretKey;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/oauth/signature/OAuthSignatureMethod;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/oauth/signature/HMAC_SHA1;->key:Ljavax/crypto/SecretKey;

    return-void
.end method

.method private computeSignature(Ljava/lang/String;)[B
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/oauth/signature/HMAC_SHA1;->key:Ljavax/crypto/SecretKey;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/oauth/signature/HMAC_SHA1;->getConsumerSecret()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/oauth/OAuth;->percentEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lnet/oauth/signature/HMAC_SHA1;->getTokenSecret()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/oauth/OAuth;->percentEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "HmacSHA1"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v1, p0, Lnet/oauth/signature/HMAC_SHA1;->key:Ljavax/crypto/SecretKey;

    :cond_0
    iget-object v0, p0, Lnet/oauth/signature/HMAC_SHA1;->key:Ljavax/crypto/SecretKey;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "HmacSHA1"

    invoke-static {v1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method protected getSignature(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-direct {p0, p1}, Lnet/oauth/signature/HMAC_SHA1;->computeSignature(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lnet/oauth/signature/HMAC_SHA1;->base64Encode([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lnet/oauth/OAuthException;

    invoke-direct {v1, v0}, Lnet/oauth/OAuthException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lnet/oauth/OAuthException;

    invoke-direct {v1, v0}, Lnet/oauth/OAuthException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected isValid(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    invoke-direct {p0, p2}, Lnet/oauth/signature/HMAC_SHA1;->computeSignature(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p1}, Lnet/oauth/signature/HMAC_SHA1;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lnet/oauth/signature/HMAC_SHA1;->equals([B[B)Z
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lnet/oauth/OAuthException;

    invoke-direct {v1, v0}, Lnet/oauth/OAuthException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lnet/oauth/OAuthException;

    invoke-direct {v1, v0}, Lnet/oauth/OAuthException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setConsumerSecret(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lnet/oauth/signature/HMAC_SHA1;->key:Ljavax/crypto/SecretKey;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0, p1}, Lnet/oauth/signature/OAuthSignatureMethod;->setConsumerSecret(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setTokenSecret(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lnet/oauth/signature/HMAC_SHA1;->key:Ljavax/crypto/SecretKey;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0, p1}, Lnet/oauth/signature/OAuthSignatureMethod;->setTokenSecret(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
