.class public Lnet/oauth/http/HttpMessageDecoder;
.super Lnet/oauth/http/HttpResponseMessage;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final ACCEPTED:Ljava/lang/String; = "gzip,deflate"

.field public static final DEFLATE:Ljava/lang/String; = "deflate"

.field public static final GZIP:Ljava/lang/String; = "gzip"


# instance fields
.field private final in:Lnet/oauth/http/HttpResponseMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lnet/oauth/http/HttpMessageDecoder;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lnet/oauth/http/HttpMessageDecoder;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lnet/oauth/http/HttpResponseMessage;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p1, Lnet/oauth/http/HttpResponseMessage;->method:Ljava/lang/String;

    iget-object v1, p1, Lnet/oauth/http/HttpResponseMessage;->url:Ljava/net/URL;

    invoke-direct {p0, v0, v1}, Lnet/oauth/http/HttpResponseMessage;-><init>(Ljava/lang/String;Ljava/net/URL;)V

    iget-object v0, p0, Lnet/oauth/http/HttpMessageDecoder;->headers:Ljava/util/List;

    iget-object v1, p1, Lnet/oauth/http/HttpResponseMessage;->headers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-string v0, "Content-Encoding"

    invoke-virtual {p0, v0}, Lnet/oauth/http/HttpMessageDecoder;->removeHeaders(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "Content-Length"

    invoke-virtual {p0, v0}, Lnet/oauth/http/HttpMessageDecoder;->removeHeaders(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Lnet/oauth/http/HttpResponseMessage;->getBody()Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v0, "gzip"

    if-ne p2, v0, :cond_0

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_0
    iput-object v0, p0, Lnet/oauth/http/HttpMessageDecoder;->body:Ljava/io/InputStream;

    iput-object p1, p0, Lnet/oauth/http/HttpMessageDecoder;->in:Lnet/oauth/http/HttpResponseMessage;

    return-void

    :cond_0
    const-string v0, "deflate"

    if-ne p2, v0, :cond_1

    new-instance v0, Ljava/util/zip/InflaterInputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    :cond_1
    sget-boolean v0, Lnet/oauth/http/HttpMessageDecoder;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public static decode(Lnet/oauth/http/HttpResponseMessage;)Lnet/oauth/http/HttpResponseMessage;
    .locals 2

    if-eqz p0, :cond_0

    invoke-static {p0}, Lnet/oauth/http/HttpMessageDecoder;->getEncoding(Lnet/oauth/http/HttpMessage;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lnet/oauth/http/HttpMessageDecoder;

    invoke-direct {v0, p0, v1}, Lnet/oauth/http/HttpMessageDecoder;-><init>(Lnet/oauth/http/HttpResponseMessage;Ljava/lang/String;)V

    move-object p0, v0

    :cond_0
    return-object p0
.end method

.method private static getEncoding(Lnet/oauth/http/HttpMessage;)Ljava/lang/String;
    .locals 2

    const-string v0, "Content-Encoding"

    invoke-virtual {p0, v0}, Lnet/oauth/http/HttpMessage;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const-string v1, "gzip"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "x-gzip"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const-string v0, "gzip"

    goto :goto_0

    :cond_3
    const-string v1, "deflate"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "deflate"

    goto :goto_0
.end method


# virtual methods
.method public dump(Ljava/util/Map;)V
    .locals 1

    iget-object v0, p0, Lnet/oauth/http/HttpMessageDecoder;->in:Lnet/oauth/http/HttpResponseMessage;

    invoke-virtual {v0, p1}, Lnet/oauth/http/HttpResponseMessage;->dump(Ljava/util/Map;)V

    return-void
.end method

.method public getStatusCode()I
    .locals 1

    iget-object v0, p0, Lnet/oauth/http/HttpMessageDecoder;->in:Lnet/oauth/http/HttpResponseMessage;

    invoke-virtual {v0}, Lnet/oauth/http/HttpResponseMessage;->getStatusCode()I

    move-result v0

    return v0
.end method
