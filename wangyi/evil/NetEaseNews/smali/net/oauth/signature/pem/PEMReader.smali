.class public Lnet/oauth/signature/pem/PEMReader;
.super Ljava/lang/Object;


# static fields
.field private static final BEGIN_MARKER:Ljava/lang/String; = "-----BEGIN "

.field public static final CERTIFICATE_X509_MARKER:Ljava/lang/String; = "-----BEGIN CERTIFICATE-----"

.field public static final PRIVATE_PKCS1_MARKER:Ljava/lang/String; = "-----BEGIN RSA PRIVATE KEY-----"

.field public static final PRIVATE_PKCS8_MARKER:Ljava/lang/String; = "-----BEGIN PRIVATE KEY-----"

.field public static final PUBLIC_X509_MARKER:Ljava/lang/String; = "-----BEGIN PUBLIC KEY-----"


# instance fields
.field private beginMarker:Ljava/lang/String;

.field private derBytes:[B

.field private stream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/oauth/signature/pem/PEMReader;->stream:Ljava/io/InputStream;

    invoke-virtual {p0}, Lnet/oauth/signature/pem/PEMReader;->readFile()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lnet/oauth/signature/pem/PEMReader;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Lnet/oauth/signature/pem/PEMReader;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method private readBytes(Ljava/io/BufferedReader;Ljava/lang/String;)[B
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/oauth/signature/OAuthSignatureMethod;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid PEM file: No end marker"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getBeginMarker()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/oauth/signature/pem/PEMReader;->beginMarker:Ljava/lang/String;

    return-object v0
.end method

.method public getDerBytes()[B
    .locals 1

    iget-object v0, p0, Lnet/oauth/signature/pem/PEMReader;->derBytes:[B

    return-object v0
.end method

.method protected readFile()V
    .locals 4

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lnet/oauth/signature/pem/PEMReader;->stream:Ljava/io/InputStream;

    invoke-direct {v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "-----BEGIN "

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/oauth/signature/pem/PEMReader;->beginMarker:Ljava/lang/String;

    iget-object v0, p0, Lnet/oauth/signature/pem/PEMReader;->beginMarker:Ljava/lang/String;

    const-string v2, "BEGIN"

    const-string v3, "END"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lnet/oauth/signature/pem/PEMReader;->readBytes(Ljava/io/BufferedReader;Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lnet/oauth/signature/pem/PEMReader;->derBytes:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    return-void

    :cond_1
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Invalid PEM file: no begin marker"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    throw v0
.end method
