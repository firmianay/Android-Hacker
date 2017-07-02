.class Lnet/oauth/signature/pem/Asn1Object;
.super Ljava/lang/Object;


# instance fields
.field protected final length:I

.field protected final tag:I

.field protected final type:I

.field protected final value:[B


# direct methods
.method public constructor <init>(II[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnet/oauth/signature/pem/Asn1Object;->tag:I

    and-int/lit8 v0, p1, 0x1f

    iput v0, p0, Lnet/oauth/signature/pem/Asn1Object;->type:I

    iput p2, p0, Lnet/oauth/signature/pem/Asn1Object;->length:I

    iput-object p3, p0, Lnet/oauth/signature/pem/Asn1Object;->value:[B

    return-void
.end method


# virtual methods
.method public getInteger()Ljava/math/BigInteger;
    .locals 2

    iget v0, p0, Lnet/oauth/signature/pem/Asn1Object;->type:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid DER: object is not integer"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lnet/oauth/signature/pem/Asn1Object;->value:[B

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    return-object v0
.end method

.method public getLength()I
    .locals 1

    iget v0, p0, Lnet/oauth/signature/pem/Asn1Object;->length:I

    return v0
.end method

.method public getParser()Lnet/oauth/signature/pem/DerParser;
    .locals 2

    invoke-virtual {p0}, Lnet/oauth/signature/pem/Asn1Object;->isConstructed()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid DER: can\'t parse primitive entity"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lnet/oauth/signature/pem/DerParser;

    iget-object v1, p0, Lnet/oauth/signature/pem/Asn1Object;->value:[B

    invoke-direct {v0, v1}, Lnet/oauth/signature/pem/DerParser;-><init>([B)V

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lnet/oauth/signature/pem/Asn1Object;->type:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid DER: object is not a string"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    const-string v0, "ISO-8859-1"

    :goto_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lnet/oauth/signature/pem/Asn1Object;->value:[B

    invoke-direct {v1, v2, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1

    :pswitch_2
    const-string v0, "UTF-16BE"

    goto :goto_0

    :pswitch_3
    const-string v0, "UTF-8"

    goto :goto_0

    :pswitch_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid DER: can\'t handle UCS-4 string"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lnet/oauth/signature/pem/Asn1Object;->type:I

    return v0
.end method

.method public getValue()[B
    .locals 1

    iget-object v0, p0, Lnet/oauth/signature/pem/Asn1Object;->value:[B

    return-object v0
.end method

.method public isConstructed()Z
    .locals 2

    iget v0, p0, Lnet/oauth/signature/pem/Asn1Object;->tag:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
