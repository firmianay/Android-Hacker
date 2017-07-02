.class public Lcom/netease/netstat/a/c;
.super Ljava/lang/Object;


# static fields
.field private static a:I

.field private static b:I

.field private static c:Ljava/lang/String;

.field private static d:Lcom/a/a;

.field private static e:I

.field private static f:J

.field private static g:Lorg/apache/http/impl/client/DefaultHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xa

    sput v0, Lcom/netease/netstat/a/c;->a:I

    const/16 v0, 0x14

    sput v0, Lcom/netease/netstat/a/c;->b:I

    const-string v0, "NeteaseHttpClient"

    sput-object v0, Lcom/netease/netstat/a/c;->c:Ljava/lang/String;

    const/4 v0, 0x1

    sput v0, Lcom/netease/netstat/a/c;->e:I

    const-wide/32 v0, 0xea60

    sput-wide v0, Lcom/netease/netstat/a/c;->f:J

    const/4 v0, 0x0

    sput-object v0, Lcom/netease/netstat/a/c;->g:Lorg/apache/http/impl/client/DefaultHttpClient;

    return-void
.end method

.method static synthetic a()I
    .locals 1

    sget v0, Lcom/netease/netstat/a/c;->e:I

    return v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    sget-object v1, Lcom/netease/netstat/a/a;->a:Ljava/nio/charset/Charset;

    invoke-static {p0, v1}, Lcom/netease/netstat/a/i;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netease/netstat/a/i;->a([BZ)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static a(Lorg/apache/http/client/methods/HttpGet;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/netease/netstat/a/c;->b(Lorg/apache/http/client/methods/HttpGet;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized a(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 6

    const-class v1, Lcom/netease/netstat/a/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/netease/netstat/a/c;->g:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v4

    const/16 v5, 0x50

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v4

    const/16 v5, 0x1bb

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    sget-wide v2, Lcom/netease/netstat/a/c;->f:J

    invoke-static {p0, v2, v3}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    new-instance v2, Lorg/apache/http/conn/params/ConnPerRouteBean;

    sget v3, Lcom/netease/netstat/a/c;->b:I

    invoke-direct {v2, v3}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    invoke-static {p0, v2}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    sget v2, Lcom/netease/netstat/a/c;->a:I

    invoke-static {p0, v2}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    sget-object v2, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {p0, v2}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    new-instance v2, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v2, p0, v0}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v2, p0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    sput-object v0, Lcom/netease/netstat/a/c;->g:Lorg/apache/http/impl/client/DefaultHttpClient;

    sget-object v0, Lcom/netease/netstat/a/c;->g:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v2, Lcom/netease/netstat/a/d;

    invoke-direct {v2}, Lcom/netease/netstat/a/d;-><init>()V

    invoke-virtual {v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    sget-object v0, Lcom/netease/netstat/a/c;->g:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v2, Lcom/netease/netstat/a/e;

    invoke-direct {v2}, Lcom/netease/netstat/a/e;-><init>()V

    invoke-virtual {v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    new-instance v0, Lcom/netease/netstat/a/f;

    invoke-direct {v0}, Lcom/netease/netstat/a/f;-><init>()V

    sget-object v2, Lcom/netease/netstat/a/c;->g:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v2, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    sget-object v0, Lcom/netease/netstat/a/c;->g:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v2, Lcom/netease/netstat/a/g;

    invoke-direct {v2}, Lcom/netease/netstat/a/g;-><init>()V

    invoke-virtual {v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->setKeepAliveStrategy(Lorg/apache/http/conn/ConnectionKeepAliveStrategy;)V

    :goto_0
    sget-object v0, Lcom/netease/netstat/a/c;->g:Lorg/apache/http/impl/client/DefaultHttpClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/netease/netstat/a/c;->g:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0, p0}, Lorg/apache/http/impl/client/DefaultHttpClient;->setParams(Lorg/apache/http/params/HttpParams;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 5

    :try_start_0
    sget-object v0, Lcom/netease/netstat/a/c;->d:Lcom/a/a;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    const v1, 0x311f2

    const/4 v2, 0x2

    const-wide/32 v3, 0xa00000

    invoke-static {v0, v1, v2, v3, v4}, Lcom/a/a;->a(Ljava/io/File;IIJ)Lcom/a/a;

    move-result-object v0

    sput-object v0, Lcom/netease/netstat/a/c;->d:Lcom/a/a;

    :cond_0
    sget-object v0, Lcom/netease/netstat/a/c;->d:Lcom/a/a;

    invoke-virtual {v0}, Lcom/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    const v1, 0x311f2

    const/4 v2, 0x2

    const-wide/32 v3, 0xa00000

    invoke-static {v0, v1, v2, v3, v4}, Lcom/a/a;->a(Ljava/io/File;IIJ)Lcom/a/a;

    move-result-object v0

    sput-object v0, Lcom/netease/netstat/a/c;->d:Lcom/a/a;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private static b(Lorg/apache/http/client/methods/HttpGet;)Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/http/client/methods/HttpGet;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/netstat/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/netease/netstat/a/c;->d:Lcom/a/a;

    invoke-virtual {v0, v2}, Lcom/a/a;->a(Ljava/lang/String;)Lcom/a/f;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/a/f;->b(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, "If-Modified-Since"

    invoke-virtual {p0, v4, v3}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v3, Lcom/netease/netstat/a/c;->g:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v3, p0}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_1
    move-object v0, v1

    :goto_0
    return-object v0

    :sswitch_0
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v4, "UTF-8"

    invoke-static {v0, v4}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    :try_start_1
    sget-object v4, Lcom/netease/netstat/a/c;->d:Lcom/a/a;

    invoke-virtual {v4, v2}, Lcom/a/a;->b(Ljava/lang/String;)Lcom/a/c;

    move-result-object v4

    const-string v5, "Last-Modified"

    invoke-interface {v3, v5}, Lorg/apache/http/HttpResponse;->getLastHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    if-nez v3, :cond_3

    sget-object v3, Lcom/netease/netstat/a/c;->d:Lcom/a/a;

    invoke-virtual {v3, v2}, Lcom/a/a;->c(Ljava/lang/String;)Z

    :cond_2
    :goto_1
    sget-object v2, Lcom/netease/netstat/a/c;->d:Lcom/a/a;

    invoke-virtual {v2}, Lcom/a/a;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    :goto_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    :try_start_3
    const-string v5, ""

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    if-eqz v4, :cond_2

    const/4 v2, 0x0

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Lcom/a/c;->a(ILjava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v4, v2, v0}, Lcom/a/c;->a(ILjava/lang/String;)V

    invoke-virtual {v4}, Lcom/a/c;->a()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :cond_4
    :try_start_4
    sget-object v3, Lcom/netease/netstat/a/c;->d:Lcom/a/a;

    invoke-virtual {v3, v2}, Lcom/a/a;->c(Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :sswitch_1
    if-eqz v0, :cond_5

    const/4 v2, 0x1

    :try_start_5
    invoke-virtual {v0, v2}, Lcom/a/f;->b(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/netease/netstat/a/c;->d:Lcom/a/a;

    invoke-virtual {v0, v2}, Lcom/a/a;->c(Ljava/lang/String;)Z

    sget-object v0, Lcom/netease/netstat/a/c;->d:Lcom/a/a;

    invoke-virtual {v0}, Lcom/a/a;->b()V
    :try_end_5
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    move-object v0, v1

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x130 -> :sswitch_1
    .end sparse-switch
.end method
