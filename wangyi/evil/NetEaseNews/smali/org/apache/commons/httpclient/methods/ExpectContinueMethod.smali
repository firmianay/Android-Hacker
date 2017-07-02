.class public abstract Lorg/apache/commons/httpclient/methods/ExpectContinueMethod;
.super Lorg/apache/commons/httpclient/HttpMethodBase;


# static fields
.field private static final LOG:Lorg/apache/commons/logging/Log;

.field static class$org$apache$commons$httpclient$methods$ExpectContinueMethod:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/commons/httpclient/methods/ExpectContinueMethod;->class$org$apache$commons$httpclient$methods$ExpectContinueMethod:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.commons.httpclient.methods.ExpectContinueMethod"

    invoke-static {v0}, Lorg/apache/commons/httpclient/methods/ExpectContinueMethod;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/methods/ExpectContinueMethod;->class$org$apache$commons$httpclient$methods$ExpectContinueMethod:Ljava/lang/Class;

    :goto_0
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/methods/ExpectContinueMethod;->LOG:Lorg/apache/commons/logging/Log;

    return-void

    :cond_0
    sget-object v0, Lorg/apache/commons/httpclient/methods/ExpectContinueMethod;->class$org$apache$commons$httpclient$methods$ExpectContinueMethod:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/HttpMethodBase;-><init>(Ljava/lang/String;)V

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
.method protected addRequestHeaders(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V
    .locals 3

    sget-object v0, Lorg/apache/commons/httpclient/methods/ExpectContinueMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter ExpectContinueMethod.addRequestHeaders(HttpState, HttpConnection)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    invoke-super {p0, p1, p2}, Lorg/apache/commons/httpclient/HttpMethodBase;->addRequestHeaders(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V

    const-string v0, "Expect"

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/methods/ExpectContinueMethod;->getRequestHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/ExpectContinueMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v1

    const-string v2, "http.protocol.expect-continue"

    invoke-virtual {v1, v2}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->isParameterTrue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/ExpectContinueMethod;->getEffectiveVersion()Lorg/apache/commons/httpclient/HttpVersion;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/httpclient/HttpVersion;->HTTP_1_1:Lorg/apache/commons/httpclient/HttpVersion;

    invoke-virtual {v1, v2}, Lorg/apache/commons/httpclient/HttpVersion;->greaterEquals(Lorg/apache/commons/httpclient/HttpVersion;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/ExpectContinueMethod;->hasRequestContent()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    const-string v0, "Expect"

    const-string v1, "100-continue"

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/httpclient/methods/ExpectContinueMethod;->setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_0

    const-string v0, "Expect"

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/methods/ExpectContinueMethod;->removeRequestHeader(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getUseExpectHeader()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/ExpectContinueMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v0

    const-string v1, "http.protocol.expect-continue"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->getBooleanParameter(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected abstract hasRequestContent()Z
.end method

.method public setUseExpectHeader(Z)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/ExpectContinueMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v0

    const-string v1, "http.protocol.expect-continue"

    invoke-virtual {v0, v1, p1}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->setBooleanParameter(Ljava/lang/String;Z)V

    return-void
.end method
