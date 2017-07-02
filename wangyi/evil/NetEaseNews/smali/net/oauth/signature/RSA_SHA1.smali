.class public Lnet/oauth/signature/RSA_SHA1;
.super Lnet/oauth/signature/OAuthSignatureMethod;


# static fields
.field public static final PRIVATE_KEY:Ljava/lang/String; = "RSA-SHA1.PrivateKey"

.field public static final PUBLIC_KEY:Ljava/lang/String; = "RSA-SHA1.PublicKey"

.field public static final X509_CERTIFICATE:Ljava/lang/String; = "RSA-SHA1.X509Certificate"


# instance fields
.field private privateKey:Ljava/security/PrivateKey;

.field private publicKey:Ljava/security/PublicKey;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lnet/oauth/signature/OAuthSignatureMethod;-><init>()V

    iput-object v0, p0, Lnet/oauth/signature/RSA_SHA1;->privateKey:Ljava/security/PrivateKey;

    iput-object v0, p0, Lnet/oauth/signature/RSA_SHA1;->publicKey:Ljava/security/PublicKey;

    return-void
.end method

.method private getPrivateKeyFromDer([B)Ljava/security/PrivateKey;
    .locals 2

    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v1, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v0

    return-object v0
.end method

.method private getPrivateKeyFromPem(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 4

    new-instance v0, Ljava/io/ByteArrayInputStream;

    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v1, Lnet/oauth/signature/pem/PEMReader;

    invoke-direct {v1, v0}, Lnet/oauth/signature/pem/PEMReader;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Lnet/oauth/signature/pem/PEMReader;->getDerBytes()[B

    move-result-object v2

    const-string v0, "-----BEGIN RSA PRIVATE KEY-----"

    invoke-virtual {v1}, Lnet/oauth/signature/pem/PEMReader;->getBeginMarker()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lnet/oauth/signature/pem/PKCS1EncodedKeySpec;

    invoke-direct {v0, v2}, Lnet/oauth/signature/pem/PKCS1EncodedKeySpec;-><init>([B)V

    invoke-virtual {v0}, Lnet/oauth/signature/pem/PKCS1EncodedKeySpec;->getKeySpec()Ljava/security/spec/RSAPrivateCrtKeySpec;

    move-result-object v0

    :goto_0
    const-string v1, "RSA"

    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "-----BEGIN PRIVATE KEY-----"

    invoke-virtual {v1}, Lnet/oauth/signature/pem/PEMReader;->getBeginMarker()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v0, v2}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid PEM file: Unknown marker for private key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lnet/oauth/signature/pem/PEMReader;->getBeginMarker()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getPublicKeyFromDer([B)Ljava/security/PublicKey;
    .locals 2

    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, p1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    return-object v0
.end method

.method private getPublicKeyFromDerCert([B)Ljava/security/PublicKey;
    .locals 2

    const-string v0, "X509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    return-object v0
.end method

.method private getPublicKeyFromPem(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 4

    new-instance v0, Ljava/io/ByteArrayInputStream;

    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v1, Lnet/oauth/signature/pem/PEMReader;

    invoke-direct {v1, v0}, Lnet/oauth/signature/pem/PEMReader;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Lnet/oauth/signature/pem/PEMReader;->getDerBytes()[B

    move-result-object v0

    const-string v2, "-----BEGIN PUBLIC KEY-----"

    invoke-virtual {v1}, Lnet/oauth/signature/pem/PEMReader;->getBeginMarker()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v2, "-----BEGIN CERTIFICATE-----"

    invoke-virtual {v1}, Lnet/oauth/signature/pem/PEMReader;->getBeginMarker()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v0}, Lnet/oauth/signature/RSA_SHA1;->getPublicKeyFromDerCert([B)Ljava/security/PublicKey;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid PEM fileL: Unknown marker for  public key or cert "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lnet/oauth/signature/pem/PEMReader;->getBeginMarker()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private loadPrivateKey(Ljava/lang/Object;)Ljava/security/PrivateKey;
    .locals 4

    instance-of v1, p1, Ljava/security/PrivateKey;

    if-eqz v1, :cond_0

    check-cast p1, Ljava/security/PrivateKey;

    :goto_0
    return-object p1

    :cond_0
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_1

    :try_start_0
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    invoke-direct {p0, v1}, Lnet/oauth/signature/RSA_SHA1;->getPrivateKeyFromPem(Ljava/lang/String;)Ljava/security/PrivateKey;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception v1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lnet/oauth/signature/RSA_SHA1;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {p0, v1}, Lnet/oauth/signature/RSA_SHA1;->getPrivateKeyFromDer([B)Ljava/security/PrivateKey;

    move-result-object p1

    goto :goto_0

    :cond_1
    instance-of v1, p1, [B

    if-eqz v1, :cond_2

    check-cast p1, [B

    check-cast p1, [B

    invoke-direct {p0, p1}, Lnet/oauth/signature/RSA_SHA1;->getPrivateKeyFromDer([B)Ljava/security/PrivateKey;

    move-result-object p1

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Private key set through RSA_SHA1.PRIVATE_KEY must be of type PrivateKey, String or byte[] and not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private loadPublicKey(Ljava/lang/Object;Z)Ljava/security/PublicKey;
    .locals 5

    instance-of v1, p1, Ljava/security/PublicKey;

    if-eqz v1, :cond_0

    check-cast p1, Ljava/security/PublicKey;

    :goto_0
    return-object p1

    :cond_0
    instance-of v1, p1, Ljava/security/cert/X509Certificate;

    if-eqz v1, :cond_1

    check-cast p1, Ljava/security/cert/X509Certificate;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p1

    goto :goto_0

    :cond_1
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_3

    :try_start_0
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    invoke-direct {p0, v1}, Lnet/oauth/signature/RSA_SHA1;->getPublicKeyFromPem(Ljava/lang/String;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception v1

    if-eqz p2, :cond_2

    throw v1

    :cond_2
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lnet/oauth/signature/RSA_SHA1;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {p0, v1}, Lnet/oauth/signature/RSA_SHA1;->getPublicKeyFromDer([B)Ljava/security/PublicKey;

    move-result-object p1

    goto :goto_0

    :cond_3
    instance-of v1, p1, [B

    if-eqz v1, :cond_5

    if-eqz p2, :cond_4

    check-cast p1, [B

    check-cast p1, [B

    invoke-direct {p0, p1}, Lnet/oauth/signature/RSA_SHA1;->getPublicKeyFromDerCert([B)Ljava/security/PublicKey;

    move-result-object p1

    goto :goto_0

    :cond_4
    check-cast p1, [B

    check-cast p1, [B

    invoke-direct {p0, p1}, Lnet/oauth/signature/RSA_SHA1;->getPublicKeyFromDer([B)Ljava/security/PublicKey;

    move-result-object p1

    goto :goto_0

    :cond_5
    if-eqz p2, :cond_6

    const-string v1, "RSA_SHA1.X509_CERTIFICATE"

    :goto_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Public key or certificate set through "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " must be of "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "type PublicKey, String or byte[], and not "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6
    const-string v1, "RSA_SHA1.PUBLIC_KEY"

    goto :goto_1
.end method

.method private sign([B)[B
    .locals 2

    iget-object v0, p0, Lnet/oauth/signature/RSA_SHA1;->privateKey:Ljava/security/PrivateKey;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "need to set private key with OAuthConsumer.setProperty when generating RSA-SHA1 signatures."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "SHA1withRSA"

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    iget-object v1, p0, Lnet/oauth/signature/RSA_SHA1;->privateKey:Ljava/security/PrivateKey;

    invoke-virtual {v0, v1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    invoke-virtual {v0, p1}, Ljava/security/Signature;->update([B)V

    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object v0

    return-object v0
.end method

.method private verify([B[B)Z
    .locals 2

    iget-object v0, p0, Lnet/oauth/signature/RSA_SHA1;->publicKey:Ljava/security/PublicKey;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "need to set public key with  OAuthConsumer.setProperty when verifying RSA-SHA1 signatures."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "SHA1withRSA"

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    iget-object v1, p0, Lnet/oauth/signature/RSA_SHA1;->publicKey:Ljava/security/PublicKey;

    invoke-virtual {v0, v1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    invoke-virtual {v0, p2}, Ljava/security/Signature;->update([B)V

    invoke-virtual {v0, p1}, Ljava/security/Signature;->verify([B)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected getSignature(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/oauth/signature/RSA_SHA1;->sign([B)[B

    move-result-object v0

    invoke-static {v0}, Lnet/oauth/signature/RSA_SHA1;->base64Encode([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1

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

.method protected initialize(Ljava/lang/String;Lnet/oauth/OAuthAccessor;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lnet/oauth/signature/OAuthSignatureMethod;->initialize(Ljava/lang/String;Lnet/oauth/OAuthAccessor;)V

    :try_start_0
    iget-object v0, p2, Lnet/oauth/OAuthAccessor;->consumer:Lnet/oauth/OAuthConsumer;

    const-string v1, "RSA-SHA1.PrivateKey"

    invoke-virtual {v0, v1}, Lnet/oauth/OAuthConsumer;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lnet/oauth/signature/RSA_SHA1;->loadPrivateKey(Ljava/lang/Object;)Ljava/security/PrivateKey;

    move-result-object v0

    iput-object v0, p0, Lnet/oauth/signature/RSA_SHA1;->privateKey:Ljava/security/PrivateKey;

    :cond_0
    iget-object v0, p2, Lnet/oauth/OAuthAccessor;->consumer:Lnet/oauth/OAuthConsumer;

    const-string v1, "RSA-SHA1.PublicKey"

    invoke-virtual {v0, v1}, Lnet/oauth/OAuthConsumer;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lnet/oauth/signature/RSA_SHA1;->loadPublicKey(Ljava/lang/Object;Z)Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Lnet/oauth/signature/RSA_SHA1;->publicKey:Ljava/security/PublicKey;

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p2, Lnet/oauth/OAuthAccessor;->consumer:Lnet/oauth/OAuthConsumer;

    const-string v1, "RSA-SHA1.X509Certificate"

    invoke-virtual {v0, v1}, Lnet/oauth/OAuthConsumer;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lnet/oauth/signature/RSA_SHA1;->loadPublicKey(Ljava/lang/Object;Z)Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Lnet/oauth/signature/RSA_SHA1;->publicKey:Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

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
    invoke-static {p1}, Lnet/oauth/signature/RSA_SHA1;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/oauth/signature/RSA_SHA1;->verify([B[B)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1

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
