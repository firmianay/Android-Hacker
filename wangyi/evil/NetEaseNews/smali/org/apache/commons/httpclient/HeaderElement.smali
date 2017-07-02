.class public Lorg/apache/commons/httpclient/HeaderElement;
.super Lorg/apache/commons/httpclient/NameValuePair;


# static fields
.field private static final LOG:Lorg/apache/commons/logging/Log;

.field static class$org$apache$commons$httpclient$HeaderElement:Ljava/lang/Class;


# instance fields
.field private parameters:[Lorg/apache/commons/httpclient/NameValuePair;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/commons/httpclient/HeaderElement;->class$org$apache$commons$httpclient$HeaderElement:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.commons.httpclient.HeaderElement"

    invoke-static {v0}, Lorg/apache/commons/httpclient/HeaderElement;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/HeaderElement;->class$org$apache$commons$httpclient$HeaderElement:Ljava/lang/Class;

    :goto_0
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/HeaderElement;->LOG:Lorg/apache/commons/logging/Log;

    return-void

    :cond_0
    sget-object v0, Lorg/apache/commons/httpclient/HeaderElement;->class$org$apache$commons$httpclient$HeaderElement:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lorg/apache/commons/httpclient/HeaderElement;-><init>(Ljava/lang/String;Ljava/lang/String;[Lorg/apache/commons/httpclient/NameValuePair;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/httpclient/HeaderElement;-><init>(Ljava/lang/String;Ljava/lang/String;[Lorg/apache/commons/httpclient/NameValuePair;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Lorg/apache/commons/httpclient/NameValuePair;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/httpclient/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/HeaderElement;->parameters:[Lorg/apache/commons/httpclient/NameValuePair;

    iput-object p3, p0, Lorg/apache/commons/httpclient/HeaderElement;->parameters:[Lorg/apache/commons/httpclient/NameValuePair;

    return-void
.end method

.method public constructor <init>([C)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/httpclient/HeaderElement;-><init>([CII)V

    return-void
.end method

.method public constructor <init>([CII)V
    .locals 3

    invoke-direct {p0}, Lorg/apache/commons/httpclient/HeaderElement;-><init>()V

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lorg/apache/commons/httpclient/util/ParameterParser;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/util/ParameterParser;-><init>()V

    const/16 v1, 0x3b

    invoke-virtual {v0, p1, p2, p3, v1}, Lorg/apache/commons/httpclient/util/ParameterParser;->parse([CIIC)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/httpclient/NameValuePair;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/httpclient/HeaderElement;->setName(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/HeaderElement;->setValue(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/commons/httpclient/NameValuePair;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/httpclient/NameValuePair;

    check-cast v0, [Lorg/apache/commons/httpclient/NameValuePair;

    iput-object v0, p0, Lorg/apache/commons/httpclient/HeaderElement;->parameters:[Lorg/apache/commons/httpclient/NameValuePair;

    goto :goto_0
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

.method public static final parse(Ljava/lang/String;)[Lorg/apache/commons/httpclient/HeaderElement;
    .locals 2

    sget-object v0, Lorg/apache/commons/httpclient/HeaderElement;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HeaderElement.parse(String)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    if-nez p0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/commons/httpclient/HeaderElement;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/httpclient/HeaderElement;->parseElements([C)[Lorg/apache/commons/httpclient/HeaderElement;

    move-result-object v0

    goto :goto_0
.end method

.method public static final parseElements(Ljava/lang/String;)[Lorg/apache/commons/httpclient/HeaderElement;
    .locals 2

    sget-object v0, Lorg/apache/commons/httpclient/HeaderElement;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HeaderElement.parseElements(String)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    if-nez p0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/commons/httpclient/HeaderElement;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/httpclient/HeaderElement;->parseElements([C)[Lorg/apache/commons/httpclient/HeaderElement;

    move-result-object v0

    goto :goto_0
.end method

.method public static final parseElements([C)[Lorg/apache/commons/httpclient/HeaderElement;
    .locals 9

    const/4 v1, 0x0

    sget-object v0, Lorg/apache/commons/httpclient/HeaderElement;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "enter HeaderElement.parseElements(char[])"

    invoke-interface {v0, v2}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    if-nez p0, :cond_0

    new-array v0, v1, [Lorg/apache/commons/httpclient/HeaderElement;

    :goto_0
    return-object v0

    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    array-length v6, p0

    move v0, v1

    move v2, v1

    move v4, v1

    :goto_1
    if-ge v4, v6, :cond_5

    aget-char v7, p0, v4

    const/16 v3, 0x22

    if-ne v7, v3, :cond_6

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_2
    move v3, v0

    :goto_3
    const/4 v0, 0x0

    if-nez v3, :cond_4

    const/16 v8, 0x2c

    if-ne v7, v8, :cond_4

    new-instance v0, Lorg/apache/commons/httpclient/HeaderElement;

    invoke-direct {v0, p0, v2, v4}, Lorg/apache/commons/httpclient/HeaderElement;-><init>([CII)V

    add-int/lit8 v2, v4, 0x1

    :cond_1
    :goto_4
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v0, v3

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    add-int/lit8 v7, v6, -0x1

    if-ne v4, v7, :cond_1

    new-instance v0, Lorg/apache/commons/httpclient/HeaderElement;

    invoke-direct {v0, p0, v2, v6}, Lorg/apache/commons/httpclient/HeaderElement;-><init>([CII)V

    goto :goto_4

    :cond_5
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/commons/httpclient/HeaderElement;

    invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/httpclient/HeaderElement;

    check-cast v0, [Lorg/apache/commons/httpclient/HeaderElement;

    goto :goto_0

    :cond_6
    move v3, v0

    goto :goto_3
.end method


# virtual methods
.method public getParameterByName(Ljava/lang/String;)Lorg/apache/commons/httpclient/NameValuePair;
    .locals 5

    sget-object v0, Lorg/apache/commons/httpclient/HeaderElement;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HeaderElement.getParameterByName(String)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Name may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HeaderElement;->getParameters()[Lorg/apache/commons/httpclient/NameValuePair;

    move-result-object v3

    if-eqz v3, :cond_2

    const/4 v0, 0x0

    :goto_0
    array-length v1, v3

    if-ge v0, v1, :cond_2

    aget-object v1, v3, v0

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move-object v0, v2

    goto :goto_1
.end method

.method public getParameters()[Lorg/apache/commons/httpclient/NameValuePair;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/httpclient/HeaderElement;->parameters:[Lorg/apache/commons/httpclient/NameValuePair;

    return-object v0
.end method
