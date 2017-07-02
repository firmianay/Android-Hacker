.class public Lorg/apache/commons/httpclient/params/DefaultHttpParamsFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/commons/httpclient/params/HttpParamsFactory;


# static fields
.field static class$org$apache$commons$httpclient$SimpleHttpConnectionManager:Ljava/lang/Class;


# instance fields
.field private httpParams:Lorg/apache/commons/httpclient/params/HttpParams;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected createParams()Lorg/apache/commons/httpclient/params/HttpParams;
    .locals 6

    const/4 v1, 0x0

    new-instance v2, Lorg/apache/commons/httpclient/params/HttpClientParams;

    invoke-direct {v2, v1}, Lorg/apache/commons/httpclient/params/HttpClientParams;-><init>(Lorg/apache/commons/httpclient/params/HttpParams;)V

    const-string v0, "http.useragent"

    const-string v3, "Jakarta Commons-HttpClient/3.1"

    invoke-virtual {v2, v0, v3}, Lorg/apache/commons/httpclient/params/HttpClientParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lorg/apache/commons/httpclient/HttpVersion;->HTTP_1_1:Lorg/apache/commons/httpclient/HttpVersion;

    invoke-virtual {v2, v0}, Lorg/apache/commons/httpclient/params/HttpClientParams;->setVersion(Lorg/apache/commons/httpclient/HttpVersion;)V

    sget-object v0, Lorg/apache/commons/httpclient/params/DefaultHttpParamsFactory;->class$org$apache$commons$httpclient$SimpleHttpConnectionManager:Ljava/lang/Class;

    if-nez v0, :cond_3

    const-string v0, "org.apache.commons.httpclient.SimpleHttpConnectionManager"

    invoke-static {v0}, Lorg/apache/commons/httpclient/params/DefaultHttpParamsFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/params/DefaultHttpParamsFactory;->class$org$apache$commons$httpclient$SimpleHttpConnectionManager:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v2, v0}, Lorg/apache/commons/httpclient/params/HttpClientParams;->setConnectionManagerClass(Ljava/lang/Class;)V

    const-string v0, "default"

    invoke-virtual {v2, v0}, Lorg/apache/commons/httpclient/params/HttpClientParams;->setCookiePolicy(Ljava/lang/String;)V

    const-string v0, "US-ASCII"

    invoke-virtual {v2, v0}, Lorg/apache/commons/httpclient/params/HttpClientParams;->setHttpElementCharset(Ljava/lang/String;)V

    const-string v0, "ISO-8859-1"

    invoke-virtual {v2, v0}, Lorg/apache/commons/httpclient/params/HttpClientParams;->setContentCharset(Ljava/lang/String;)V

    const-string v0, "http.method.retry-handler"

    new-instance v3, Lorg/apache/commons/httpclient/DefaultHttpMethodRetryHandler;

    invoke-direct {v3}, Lorg/apache/commons/httpclient/DefaultHttpMethodRetryHandler;-><init>()V

    invoke-virtual {v2, v0, v3}, Lorg/apache/commons/httpclient/params/HttpClientParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v3, 0xe

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "EEE, dd MMM yyyy HH:mm:ss zzz"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "EEEE, dd-MMM-yy HH:mm:ss zzz"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "EEE MMM d HH:mm:ss yyyy"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "EEE, dd-MMM-yyyy HH:mm:ss z"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "EEE, dd-MMM-yyyy HH-mm-ss z"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "EEE, dd MMM yy HH:mm:ss z"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "EEE dd-MMM-yyyy HH:mm:ss z"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "EEE dd MMM yyyy HH:mm:ss z"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string v5, "EEE dd-MMM-yyyy HH-mm-ss z"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    const-string v5, "EEE dd-MMM-yy HH:mm:ss z"

    aput-object v5, v3, v4

    const/16 v4, 0xa

    const-string v5, "EEE dd MMM yy HH:mm:ss z"

    aput-object v5, v3, v4

    const/16 v4, 0xb

    const-string v5, "EEE,dd-MMM-yy HH:mm:ss z"

    aput-object v5, v3, v4

    const/16 v4, 0xc

    const-string v5, "EEE,dd-MMM-yyyy HH:mm:ss z"

    aput-object v5, v3, v4

    const/16 v4, 0xd

    const-string v5, "EEE, dd-MM-yyyy HH:mm:ss z"

    aput-object v5, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-string v3, "http.dateparser.patterns"

    invoke-virtual {v2, v3, v0}, Lorg/apache/commons/httpclient/params/HttpClientParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_0
    const-string v0, "httpclient.useragent"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_0

    const-string v3, "http.useragent"

    invoke-virtual {v2, v3, v0}, Lorg/apache/commons/httpclient/params/HttpClientParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    :try_start_1
    const-string v0, "httpclient.authentication.preemptive"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v0, "http.authentication.preemptive"

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v0, v3}, Lorg/apache/commons/httpclient/params/HttpClientParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_3
    :try_start_2
    const-string v0, "apache.commons.httpclient.cookiespec"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    :goto_4
    if-eqz v0, :cond_2

    const-string v1, "COMPATIBILITY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v0, "compatibility"

    invoke-virtual {v2, v0}, Lorg/apache/commons/httpclient/params/HttpClientParams;->setCookiePolicy(Ljava/lang/String;)V

    :cond_2
    :goto_5
    return-object v2

    :cond_3
    sget-object v0, Lorg/apache/commons/httpclient/params/DefaultHttpParamsFactory;->class$org$apache$commons$httpclient$SimpleHttpConnectionManager:Ljava/lang/Class;

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_2

    :cond_4
    const-string v3, "false"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "http.authentication.preemptive"

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v0, v3}, Lorg/apache/commons/httpclient/params/HttpClientParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v0, v1

    goto :goto_4

    :cond_5
    const-string v1, "NETSCAPE_DRAFT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v0, "netscape"

    invoke-virtual {v2, v0}, Lorg/apache/commons/httpclient/params/HttpClientParams;->setCookiePolicy(Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    const-string v1, "RFC2109"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "rfc2109"

    invoke-virtual {v2, v0}, Lorg/apache/commons/httpclient/params/HttpClientParams;->setCookiePolicy(Ljava/lang/String;)V

    goto :goto_5
.end method

.method public declared-synchronized getDefaultParams()Lorg/apache/commons/httpclient/params/HttpParams;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/httpclient/params/DefaultHttpParamsFactory;->httpParams:Lorg/apache/commons/httpclient/params/HttpParams;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/params/DefaultHttpParamsFactory;->createParams()Lorg/apache/commons/httpclient/params/HttpParams;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/httpclient/params/DefaultHttpParamsFactory;->httpParams:Lorg/apache/commons/httpclient/params/HttpParams;

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/httpclient/params/DefaultHttpParamsFactory;->httpParams:Lorg/apache/commons/httpclient/params/HttpParams;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
