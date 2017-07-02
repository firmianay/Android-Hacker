.class public Lt4j/Configuration;
.super Ljava/lang/Object;


# static fields
.field private static DALVIK:Z

.field private static defaultProperty:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lt4j/Configuration;->init()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBoolean(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lt4j/Configuration;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static getCilentVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "tblog4j.clientVersion"

    invoke-static {v0}, Lt4j/Configuration;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCilentVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "tblog4j.clientVersion"

    invoke-static {v0, p0}, Lt4j/Configuration;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getClientURL()Ljava/lang/String;
    .locals 1

    const-string v0, "tblog4j.clientURL"

    invoke-static {v0}, Lt4j/Configuration;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getClientURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "tblog4j.clientURL"

    invoke-static {v0, p0}, Lt4j/Configuration;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getConnectionTimeout()I
    .locals 1

    const-string v0, "tblog4j.http.connectionTimeout"

    invoke-static {v0}, Lt4j/Configuration;->getIntProperty(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getConnectionTimeout(I)I
    .locals 1

    const-string v0, "tblog4j.http.connectionTimeout"

    invoke-static {v0, p0}, Lt4j/Configuration;->getIntProperty(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDebug()Z
    .locals 1

    const-string v0, "tblog4j.debug"

    invoke-static {v0}, Lt4j/Configuration;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getIntProperty(Ljava/lang/String;)I
    .locals 1

    invoke-static {p0}, Lt4j/Configuration;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getIntProperty(Ljava/lang/String;I)I
    .locals 1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lt4j/Configuration;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getLongProperty(Ljava/lang/String;)J
    .locals 2

    invoke-static {p0}, Lt4j/Configuration;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public static getNumberOfAsyncThreads()I
    .locals 1

    const-string v0, "tblog4j.async.numThreads"

    invoke-static {v0}, Lt4j/Configuration;->getIntProperty(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getOAuthConsumerKey()Ljava/lang/String;
    .locals 1

    const-string v0, "tblog4j.oauth.consumerKey"

    invoke-static {v0}, Lt4j/Configuration;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOAuthConsumerKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "tblog4j.oauth.consumerKey"

    invoke-static {v0, p0}, Lt4j/Configuration;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOAuthConsumerSecret()Ljava/lang/String;
    .locals 1

    const-string v0, "tblog4j.oauth.consumerSecret"

    invoke-static {v0}, Lt4j/Configuration;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOAuthConsumerSecret(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "tblog4j.oauth.consumerSecret"

    invoke-static {v0, p0}, Lt4j/Configuration;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPassword()Ljava/lang/String;
    .locals 1

    const-string v0, "tblog4j.password"

    invoke-static {v0}, Lt4j/Configuration;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "tblog4j.password"

    invoke-static {v0, p0}, Lt4j/Configuration;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lt4j/Configuration;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lt4j/Configuration;->defaultProperty:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    sget-object v1, Lt4j/Configuration;->defaultProperty:Ljava/util/Properties;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".fallback"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lt4j/Configuration;->replace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    move-object p1, v0

    goto :goto_0
.end method

.method public static getProxyHost()Ljava/lang/String;
    .locals 1

    const-string v0, "tblog4j.http.proxyHost"

    invoke-static {v0}, Lt4j/Configuration;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProxyHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "tblog4j.http.proxyHost"

    invoke-static {v0, p0}, Lt4j/Configuration;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProxyPassword()Ljava/lang/String;
    .locals 1

    const-string v0, "tblog4j.http.proxyPassword"

    invoke-static {v0}, Lt4j/Configuration;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProxyPassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "tblog4j.http.proxyPassword"

    invoke-static {v0, p0}, Lt4j/Configuration;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProxyPort()I
    .locals 1

    const-string v0, "tblog4j.http.proxyPort"

    invoke-static {v0}, Lt4j/Configuration;->getIntProperty(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getProxyPort(I)I
    .locals 1

    const-string v0, "tblog4j.http.proxyPort"

    invoke-static {v0, p0}, Lt4j/Configuration;->getIntProperty(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getProxyUser()Ljava/lang/String;
    .locals 1

    const-string v0, "tblog4j.http.proxyUser"

    invoke-static {v0}, Lt4j/Configuration;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProxyUser(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "tblog4j.http.proxyUser"

    invoke-static {v0, p0}, Lt4j/Configuration;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getReadTimeout()I
    .locals 1

    const-string v0, "tblog4j.http.readTimeout"

    invoke-static {v0}, Lt4j/Configuration;->getIntProperty(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getReadTimeout(I)I
    .locals 1

    const-string v0, "tblog4j.http.readTimeout"

    invoke-static {v0, p0}, Lt4j/Configuration;->getIntProperty(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getRetryCount()I
    .locals 1

    const-string v0, "tblog4j.http.retryCount"

    invoke-static {v0}, Lt4j/Configuration;->getIntProperty(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getRetryCount(I)I
    .locals 1

    const-string v0, "tblog4j.http.retryCount"

    invoke-static {v0, p0}, Lt4j/Configuration;->getIntProperty(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getRetryIntervalSecs()I
    .locals 1

    const-string v0, "tblog4j.http.retryIntervalSecs"

    invoke-static {v0}, Lt4j/Configuration;->getIntProperty(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getRetryIntervalSecs(I)I
    .locals 1

    const-string v0, "tblog4j.http.retryIntervalSecs"

    invoke-static {v0, p0}, Lt4j/Configuration;->getIntProperty(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getScheme()Ljava/lang/String;
    .locals 1

    const-string v0, "http://"

    return-object v0
.end method

.method public static getUser()Ljava/lang/String;
    .locals 1

    const-string v0, "tblog4j.user"

    invoke-static {v0}, Lt4j/Configuration;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUser(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "tblog4j.user"

    invoke-static {v0, p0}, Lt4j/Configuration;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserAgent()Ljava/lang/String;
    .locals 1

    const-string v0, "tblog4j.http.userAgent"

    invoke-static {v0}, Lt4j/Configuration;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserAgent(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "tblog4j.http.userAgent"

    invoke-static {v0, p0}, Lt4j/Configuration;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static init()V
    .locals 5

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sput-object v0, Lt4j/Configuration;->defaultProperty:Ljava/util/Properties;

    sget-object v0, Lt4j/Configuration;->defaultProperty:Ljava/util/Properties;

    const-string v1, "tblog4j.debug"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Lt4j/Configuration;->defaultProperty:Ljava/util/Properties;

    const-string v1, "tblog4j.clientVersion"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Lt4j/Configuration;->defaultProperty:Ljava/util/Properties;

    const-string v1, "tblog4j.clientURL"

    const-string v2, "http://open.t.163.com"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Lt4j/Configuration;->defaultProperty:Ljava/util/Properties;

    const-string v1, "tblog4j.http.userAgent"

    const-string v2, "tblog4j http://open.t.163.com"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Lt4j/Configuration;->defaultProperty:Ljava/util/Properties;

    const-string v1, "tblog4j.http.useSSL"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Lt4j/Configuration;->defaultProperty:Ljava/util/Properties;

    const-string v1, "tblog4j.http.proxyHost.fallback"

    const-string v2, "http.proxyHost"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Lt4j/Configuration;->defaultProperty:Ljava/util/Properties;

    const-string v1, "tblog4j.http.proxyPort.fallback"

    const-string v2, "http.proxyPort"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Lt4j/Configuration;->defaultProperty:Ljava/util/Properties;

    const-string v1, "tblog4j.http.connectionTimeout"

    const-string v2, "20000"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Lt4j/Configuration;->defaultProperty:Ljava/util/Properties;

    const-string v1, "tblog4j.http.readTimeout"

    const-string v2, "120000"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Lt4j/Configuration;->defaultProperty:Ljava/util/Properties;

    const-string v1, "tblog4j.http.retryCount"

    const-string v2, "3"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Lt4j/Configuration;->defaultProperty:Ljava/util/Properties;

    const-string v1, "tblog4j.http.retryIntervalSecs"

    const-string v2, "10"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Lt4j/Configuration;->defaultProperty:Ljava/util/Properties;

    const-string v1, "tblog4j.async.numThreads"

    const-string v2, "3"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Lt4j/Configuration;->defaultProperty:Ljava/util/Properties;

    const-string v1, "tblog4j.clientVersion"

    invoke-static {}, Lt4j/Version;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_0
    const-string v0, "dalvik.system.VMRuntime"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    sget-object v0, Lt4j/Configuration;->defaultProperty:Ljava/util/Properties;

    const-string v1, "tblog4j.dalvik"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v0, "tblog4j.dalvik"

    invoke-static {v0}, Lt4j/Configuration;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lt4j/Configuration;->DALVIK:Z

    const-string v0, "t4j.properties"

    sget-object v1, Lt4j/Configuration;->defaultProperty:Ljava/util/Properties;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lt4j/Configuration;->loadProperties(Ljava/util/Properties;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lt4j/Configuration;->defaultProperty:Ljava/util/Properties;

    const-class v2, Lt4j/Configuration;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/WEB-INF/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v1, v2}, Lt4j/Configuration;->loadProperties(Ljava/util/Properties;Ljava/io/InputStream;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lt4j/Configuration;->defaultProperty:Ljava/util/Properties;

    const-class v2, Lt4j/Configuration;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v1, v0}, Lt4j/Configuration;->loadProperties(Ljava/util/Properties;Ljava/io/InputStream;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    sget-object v0, Lt4j/Configuration;->defaultProperty:Ljava/util/Properties;

    const-string v1, "tblog4j.dalvik"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static isDalvik()Z
    .locals 1

    sget-boolean v0, Lt4j/Configuration;->DALVIK:Z

    return v0
.end method

.method private static loadProperties(Ljava/util/Properties;Ljava/io/InputStream;)Z
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static loadProperties(Ljava/util/Properties;Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static replace(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    const/4 v0, -0x1

    const-string v1, "{"

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-eq v0, v1, :cond_2

    const-string v0, "}"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v2, v1, 0x1

    if-le v0, v2, :cond_2

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lt4j/Configuration;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lt4j/Configuration;->replace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    move-object v0, p0

    goto :goto_1
.end method
