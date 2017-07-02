.class Lnet/oauth/client/httpclient4/HttpClient4$SingleClient;
.super Ljava/lang/Object;

# interfaces
.implements Lnet/oauth/client/httpclient4/HttpClientPool;


# instance fields
.field private final client:Lorg/apache/http/client/HttpClient;


# direct methods
.method constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    instance-of v2, v1, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    if-nez v2, :cond_0

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v3, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v1

    invoke-direct {v3, v2, v1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    invoke-direct {v0, v3, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    :cond_0
    iput-object v0, p0, Lnet/oauth/client/httpclient4/HttpClient4$SingleClient;->client:Lorg/apache/http/client/HttpClient;

    return-void
.end method


# virtual methods
.method public getHttpClient(Ljava/net/URL;)Lorg/apache/http/client/HttpClient;
    .locals 1

    iget-object v0, p0, Lnet/oauth/client/httpclient4/HttpClient4$SingleClient;->client:Lorg/apache/http/client/HttpClient;

    return-object v0
.end method
