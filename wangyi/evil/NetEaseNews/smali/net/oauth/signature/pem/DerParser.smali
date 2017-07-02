.class Lnet/oauth/signature/pem/DerParser;
.super Ljava/lang/Object;


# static fields
.field public static final ANY:I = 0x0

.field public static final APPLICATION:I = 0x40

.field public static final BIT_STRING:I = 0x3

.field public static final BMP_STRING:I = 0x1e

.field public static final BOOLEAN:I = 0x1

.field public static final CONSTRUCTED:I = 0x20

.field public static final CONTEXT:I = 0x80

.field public static final ENUMERATED:I = 0xa

.field public static final GENERALIZED_TIME:I = 0x18

.field public static final GENERAL_STRING:I = 0x1b

.field public static final GRAPHIC_STRING:I = 0x19

.field public static final IA5_STRING:I = 0x16

.field public static final INTEGER:I = 0x2

.field public static final ISO646_STRING:I = 0x1a

.field public static final NULL:I = 0x5

.field public static final NUMERIC_STRING:I = 0x12

.field public static final OBJECT_IDENTIFIER:I = 0x6

.field public static final OCTET_STRING:I = 0x4

.field public static final PRINTABLE_STRING:I = 0x13

.field public static final PRIVATE:I = 0xc0

.field public static final REAL:I = 0x9

.field public static final RELATIVE_OID:I = 0xd

.field public static final SEQUENCE:I = 0x10

.field public static final SET:I = 0x11

.field public static final T61_STRING:I = 0x14

.field public static final UNIVERSAL:I = 0x0

.field public static final UNIVERSAL_STRING:I = 0x1c

.field public static final UTC_TIME:I = 0x17

.field public static final UTF8_STRING:I = 0xc

.field public static final VIDEOTEX_STRING:I = 0x15


# instance fields
.field protected in:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/oauth/signature/pem/DerParser;->in:Ljava/io/InputStream;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Lnet/oauth/signature/pem/DerParser;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method private getLength()I
    .locals 4

    iget-object v0, p0, Lnet/oauth/signature/pem/DerParser;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid DER: length missing"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    and-int/lit8 v1, v0, -0x80

    if-nez v1, :cond_1

    :goto_0
    return v0

    :cond_1
    and-int/lit8 v1, v0, 0x7f

    const/16 v2, 0xff

    if-ge v0, v2, :cond_2

    const/4 v2, 0x4

    if-le v1, v2, :cond_3

    :cond_2
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid DER: length field too big ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-array v0, v1, [B

    iget-object v2, p0, Lnet/oauth/signature/pem/DerParser;->in:Ljava/io/InputStream;

    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-ge v2, v1, :cond_4

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid DER: length too short"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public read()Lnet/oauth/signature/pem/Asn1Object;
    .locals 4

    iget-object v0, p0, Lnet/oauth/signature/pem/DerParser;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid DER: stream too short, missing tag"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Lnet/oauth/signature/pem/DerParser;->getLength()I

    move-result v1

    new-array v2, v1, [B

    iget-object v3, p0, Lnet/oauth/signature/pem/DerParser;->in:Ljava/io/InputStream;

    invoke-virtual {v3, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-ge v3, v1, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid DER: stream too short, missing value"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v3, Lnet/oauth/signature/pem/Asn1Object;

    invoke-direct {v3, v0, v1, v2}, Lnet/oauth/signature/pem/Asn1Object;-><init>(II[B)V

    return-object v3
.end method
