.class public Lorg/apache/commons/httpclient/methods/PostMethod;
.super Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;


# static fields
.field public static final FORM_URL_ENCODED_CONTENT_TYPE:Ljava/lang/String; = "application/x-www-form-urlencoded"

.field private static final LOG:Lorg/apache/commons/logging/Log;

.field static class$org$apache$commons$httpclient$methods$PostMethod:Ljava/lang/Class;


# instance fields
.field private params:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/commons/httpclient/methods/PostMethod;->class$org$apache$commons$httpclient$methods$PostMethod:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.commons.httpclient.methods.PostMethod"

    invoke-static {v0}, Lorg/apache/commons/httpclient/methods/PostMethod;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/methods/PostMethod;->class$org$apache$commons$httpclient$methods$PostMethod:Ljava/lang/Class;

    :goto_0
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/methods/PostMethod;->LOG:Lorg/apache/commons/logging/Log;

    return-void

    :cond_0
    sget-object v0, Lorg/apache/commons/httpclient/methods/PostMethod;->class$org$apache$commons$httpclient$methods$PostMethod:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/methods/PostMethod;->params:Ljava/util/Vector;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/methods/PostMethod;->params:Ljava/util/Vector;

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
.method public addParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lorg/apache/commons/httpclient/methods/PostMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter PostMethod.addParameter(String, String)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Arguments to addParameter(String, String) cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-super {p0}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->clearRequestBody()V

    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/PostMethod;->params:Ljava/util/Vector;

    new-instance v1, Lorg/apache/commons/httpclient/NameValuePair;

    invoke-direct {v1, p1, p2}, Lorg/apache/commons/httpclient/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addParameter(Lorg/apache/commons/httpclient/NameValuePair;)V
    .locals 2

    sget-object v0, Lorg/apache/commons/httpclient/methods/PostMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter PostMethod.addParameter(NameValuePair)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "NameValuePair may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/httpclient/methods/PostMethod;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addParameters([Lorg/apache/commons/httpclient/NameValuePair;)V
    .locals 3

    sget-object v0, Lorg/apache/commons/httpclient/methods/PostMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter PostMethod.addParameters(NameValuePair[])"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    if-nez p1, :cond_1

    sget-object v0, Lorg/apache/commons/httpclient/methods/PostMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "Attempt to addParameters(null) ignored"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    invoke-super {p0}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->clearRequestBody()V

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/httpclient/methods/PostMethod;->params:Ljava/util/Vector;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected clearRequestBody()V
    .locals 2

    sget-object v0, Lorg/apache/commons/httpclient/methods/PostMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter PostMethod.clearRequestBody()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/PostMethod;->params:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    invoke-super {p0}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->clearRequestBody()V

    return-void
.end method

.method protected generateRequestEntity()Lorg/apache/commons/httpclient/methods/RequestEntity;
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/PostMethod;->params:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/PostMethod;->getParameters()[Lorg/apache/commons/httpclient/NameValuePair;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/PostMethod;->getRequestCharSet()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/util/EncodingUtil;->formUrlEncode([Lorg/apache/commons/httpclient/NameValuePair;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lorg/apache/commons/httpclient/methods/ByteArrayRequestEntity;

    invoke-static {v1}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "application/x-www-form-urlencoded"

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/httpclient/methods/ByteArrayRequestEntity;-><init>([BLjava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->generateRequestEntity()Lorg/apache/commons/httpclient/methods/RequestEntity;

    move-result-object v0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "POST"

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Lorg/apache/commons/httpclient/NameValuePair;
    .locals 4

    const/4 v1, 0x0

    sget-object v0, Lorg/apache/commons/httpclient/methods/PostMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "enter PostMethod.getParameter(String)"

    invoke-interface {v0, v2}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    if-nez p1, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/PostMethod;->params:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/httpclient/NameValuePair;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public getParameters()[Lorg/apache/commons/httpclient/NameValuePair;
    .locals 5

    sget-object v0, Lorg/apache/commons/httpclient/methods/PostMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter PostMethod.getParameters()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/PostMethod;->params:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/PostMethod;->params:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->toArray()[Ljava/lang/Object;

    move-result-object v3

    new-array v4, v2, [Lorg/apache/commons/httpclient/NameValuePair;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, v3, v1

    check-cast v0, Lorg/apache/commons/httpclient/NameValuePair;

    aput-object v0, v4, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-object v4
.end method

.method protected hasRequestContent()Z
    .locals 2

    sget-object v0, Lorg/apache/commons/httpclient/methods/PostMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter PostMethod.hasRequestContent()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/PostMethod;->params:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->hasRequestContent()Z

    move-result v0

    goto :goto_0
.end method

.method public removeParameter(Ljava/lang/String;)Z
    .locals 3

    sget-object v0, Lorg/apache/commons/httpclient/methods/PostMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter PostMethod.removeParameter(String)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument passed to removeParameter(String) cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/apache/commons/httpclient/methods/PostMethod;->params:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/httpclient/NameValuePair;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public removeParameter(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    sget-object v0, Lorg/apache/commons/httpclient/methods/PostMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter PostMethod.removeParameter(String, String)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter name may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter value may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/PostMethod;->params:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/httpclient/NameValuePair;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lorg/apache/commons/httpclient/methods/PostMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter PostMethod.setParameter(String, String)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lorg/apache/commons/httpclient/methods/PostMethod;->removeParameter(Ljava/lang/String;)Z

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/httpclient/methods/PostMethod;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRequestBody([Lorg/apache/commons/httpclient/NameValuePair;)V
    .locals 2

    sget-object v0, Lorg/apache/commons/httpclient/methods/PostMethod;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter PostMethod.setRequestBody(NameValuePair[])"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array of parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/PostMethod;->clearRequestBody()V

    invoke-virtual {p0, p1}, Lorg/apache/commons/httpclient/methods/PostMethod;->addParameters([Lorg/apache/commons/httpclient/NameValuePair;)V

    return-void
.end method
