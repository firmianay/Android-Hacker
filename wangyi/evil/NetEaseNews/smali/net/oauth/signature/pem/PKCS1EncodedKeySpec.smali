.class public Lnet/oauth/signature/pem/PKCS1EncodedKeySpec;
.super Ljava/lang/Object;


# instance fields
.field private keySpec:Ljava/security/spec/RSAPrivateCrtKeySpec;


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lnet/oauth/signature/pem/PKCS1EncodedKeySpec;->decode([B)V

    return-void
.end method

.method private decode([B)V
    .locals 9

    new-instance v0, Lnet/oauth/signature/pem/DerParser;

    invoke-direct {v0, p1}, Lnet/oauth/signature/pem/DerParser;-><init>([B)V

    invoke-virtual {v0}, Lnet/oauth/signature/pem/DerParser;->read()Lnet/oauth/signature/pem/Asn1Object;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oauth/signature/pem/Asn1Object;->getType()I

    move-result v1

    const/16 v2, 0x10

    if-eq v1, v2, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid DER: not a sequence"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v0}, Lnet/oauth/signature/pem/Asn1Object;->getParser()Lnet/oauth/signature/pem/DerParser;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oauth/signature/pem/DerParser;->read()Lnet/oauth/signature/pem/Asn1Object;

    invoke-virtual {v0}, Lnet/oauth/signature/pem/DerParser;->read()Lnet/oauth/signature/pem/Asn1Object;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oauth/signature/pem/Asn1Object;->getInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0}, Lnet/oauth/signature/pem/DerParser;->read()Lnet/oauth/signature/pem/Asn1Object;

    move-result-object v2

    invoke-virtual {v2}, Lnet/oauth/signature/pem/Asn1Object;->getInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0}, Lnet/oauth/signature/pem/DerParser;->read()Lnet/oauth/signature/pem/Asn1Object;

    move-result-object v3

    invoke-virtual {v3}, Lnet/oauth/signature/pem/Asn1Object;->getInteger()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0}, Lnet/oauth/signature/pem/DerParser;->read()Lnet/oauth/signature/pem/Asn1Object;

    move-result-object v4

    invoke-virtual {v4}, Lnet/oauth/signature/pem/Asn1Object;->getInteger()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0}, Lnet/oauth/signature/pem/DerParser;->read()Lnet/oauth/signature/pem/Asn1Object;

    move-result-object v5

    invoke-virtual {v5}, Lnet/oauth/signature/pem/Asn1Object;->getInteger()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v0}, Lnet/oauth/signature/pem/DerParser;->read()Lnet/oauth/signature/pem/Asn1Object;

    move-result-object v6

    invoke-virtual {v6}, Lnet/oauth/signature/pem/Asn1Object;->getInteger()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v0}, Lnet/oauth/signature/pem/DerParser;->read()Lnet/oauth/signature/pem/Asn1Object;

    move-result-object v7

    invoke-virtual {v7}, Lnet/oauth/signature/pem/Asn1Object;->getInteger()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v0}, Lnet/oauth/signature/pem/DerParser;->read()Lnet/oauth/signature/pem/Asn1Object;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oauth/signature/pem/Asn1Object;->getInteger()Ljava/math/BigInteger;

    move-result-object v8

    new-instance v0, Ljava/security/spec/RSAPrivateCrtKeySpec;

    invoke-direct/range {v0 .. v8}, Ljava/security/spec/RSAPrivateCrtKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lnet/oauth/signature/pem/PKCS1EncodedKeySpec;->keySpec:Ljava/security/spec/RSAPrivateCrtKeySpec;

    return-void
.end method


# virtual methods
.method public getKeySpec()Ljava/security/spec/RSAPrivateCrtKeySpec;
    .locals 1

    iget-object v0, p0, Lnet/oauth/signature/pem/PKCS1EncodedKeySpec;->keySpec:Ljava/security/spec/RSAPrivateCrtKeySpec;

    return-object v0
.end method
