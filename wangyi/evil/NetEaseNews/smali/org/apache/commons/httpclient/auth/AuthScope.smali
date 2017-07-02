.class public Lorg/apache/commons/httpclient/auth/AuthScope;
.super Ljava/lang/Object;


# static fields
.field public static final ANY:Lorg/apache/commons/httpclient/auth/AuthScope;

.field public static final ANY_HOST:Ljava/lang/String;

.field public static final ANY_PORT:I = -0x1

.field public static final ANY_REALM:Ljava/lang/String;

.field public static final ANY_SCHEME:Ljava/lang/String;


# instance fields
.field private host:Ljava/lang/String;

.field private port:I

.field private realm:Ljava/lang/String;

.field private scheme:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x0

    sput-object v0, Lorg/apache/commons/httpclient/auth/AuthScope;->ANY_HOST:Ljava/lang/String;

    sput-object v0, Lorg/apache/commons/httpclient/auth/AuthScope;->ANY_REALM:Ljava/lang/String;

    sput-object v0, Lorg/apache/commons/httpclient/auth/AuthScope;->ANY_SCHEME:Ljava/lang/String;

    new-instance v0, Lorg/apache/commons/httpclient/auth/AuthScope;

    sget-object v1, Lorg/apache/commons/httpclient/auth/AuthScope;->ANY_HOST:Ljava/lang/String;

    const/4 v2, -0x1

    sget-object v3, Lorg/apache/commons/httpclient/auth/AuthScope;->ANY_REALM:Ljava/lang/String;

    sget-object v4, Lorg/apache/commons/httpclient/auth/AuthScope;->ANY_SCHEME:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/httpclient/auth/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/commons/httpclient/auth/AuthScope;->ANY:Lorg/apache/commons/httpclient/auth/AuthScope;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    sget-object v0, Lorg/apache/commons/httpclient/auth/AuthScope;->ANY_REALM:Ljava/lang/String;

    sget-object v1, Lorg/apache/commons/httpclient/auth/AuthScope;->ANY_SCHEME:Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/httpclient/auth/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    sget-object v0, Lorg/apache/commons/httpclient/auth/AuthScope;->ANY_SCHEME:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/httpclient/auth/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->scheme:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->realm:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->host:Ljava/lang/String;

    iput v1, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->port:I

    if-nez p1, :cond_2

    sget-object v0, Lorg/apache/commons/httpclient/auth/AuthScope;->ANY_HOST:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->host:Ljava/lang/String;

    if-gez p2, :cond_0

    move p2, v1

    :cond_0
    iput p2, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->port:I

    if-nez p3, :cond_1

    sget-object p3, Lorg/apache/commons/httpclient/auth/AuthScope;->ANY_REALM:Ljava/lang/String;

    :cond_1
    iput-object p3, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->realm:Ljava/lang/String;

    if-nez p4, :cond_3

    sget-object v0, Lorg/apache/commons/httpclient/auth/AuthScope;->ANY_SCHEME:Ljava/lang/String;

    :goto_1
    iput-object v0, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->scheme:Ljava/lang/String;

    return-void

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public constructor <init>(Lorg/apache/commons/httpclient/auth/AuthScope;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->scheme:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->realm:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->host:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->port:I

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Scope may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/auth/AuthScope;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->host:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/auth/AuthScope;->getPort()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->port:I

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/auth/AuthScope;->getRealm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->realm:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/auth/AuthScope;->getScheme()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->scheme:Ljava/lang/String;

    return-void
.end method

.method private static paramsEqual(II)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static paramsEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    if-nez p0, :cond_1

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eq p1, p0, :cond_0

    instance-of v2, p1, Lorg/apache/commons/httpclient/auth/AuthScope;

    if-nez v2, :cond_2

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_2
    check-cast p1, Lorg/apache/commons/httpclient/auth/AuthScope;

    iget-object v2, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->host:Ljava/lang/String;

    iget-object v3, p1, Lorg/apache/commons/httpclient/auth/AuthScope;->host:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/commons/httpclient/auth/AuthScope;->paramsEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->port:I

    iget v3, p1, Lorg/apache/commons/httpclient/auth/AuthScope;->port:I

    invoke-static {v2, v3}, Lorg/apache/commons/httpclient/auth/AuthScope;->paramsEqual(II)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->realm:Ljava/lang/String;

    iget-object v3, p1, Lorg/apache/commons/httpclient/auth/AuthScope;->realm:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/commons/httpclient/auth/AuthScope;->paramsEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->scheme:Ljava/lang/String;

    iget-object v3, p1, Lorg/apache/commons/httpclient/auth/AuthScope;->scheme:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/commons/httpclient/auth/AuthScope;->paramsEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->port:I

    return v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->realm:Ljava/lang/String;

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    const/16 v0, 0x11

    iget-object v1, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->host:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    iget v1, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->port:I

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/util/LangUtils;->hashCode(II)I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->realm:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->scheme:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public match(Lorg/apache/commons/httpclient/auth/AuthScope;)I
    .locals 4

    const/4 v1, -0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->scheme:Ljava/lang/String;

    iget-object v3, p1, Lorg/apache/commons/httpclient/auth/AuthScope;->scheme:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/commons/httpclient/auth/AuthScope;->paramsEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v0, 0x1

    :cond_0
    iget-object v2, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->realm:Ljava/lang/String;

    iget-object v3, p1, Lorg/apache/commons/httpclient/auth/AuthScope;->realm:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/commons/httpclient/auth/AuthScope;->paramsEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    add-int/lit8 v0, v0, 0x2

    :cond_1
    iget v2, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->port:I

    iget v3, p1, Lorg/apache/commons/httpclient/auth/AuthScope;->port:I

    invoke-static {v2, v3}, Lorg/apache/commons/httpclient/auth/AuthScope;->paramsEqual(II)Z

    move-result v2

    if-eqz v2, :cond_6

    add-int/lit8 v0, v0, 0x4

    :cond_2
    iget-object v2, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->host:Ljava/lang/String;

    iget-object v3, p1, Lorg/apache/commons/httpclient/auth/AuthScope;->host:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/commons/httpclient/auth/AuthScope;->paramsEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    add-int/lit8 v0, v0, 0x8

    :cond_3
    :goto_0
    return v0

    :cond_4
    iget-object v2, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->scheme:Ljava/lang/String;

    sget-object v3, Lorg/apache/commons/httpclient/auth/AuthScope;->ANY_SCHEME:Ljava/lang/String;

    if-eq v2, v3, :cond_0

    iget-object v2, p1, Lorg/apache/commons/httpclient/auth/AuthScope;->scheme:Ljava/lang/String;

    sget-object v3, Lorg/apache/commons/httpclient/auth/AuthScope;->ANY_SCHEME:Ljava/lang/String;

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->realm:Ljava/lang/String;

    sget-object v3, Lorg/apache/commons/httpclient/auth/AuthScope;->ANY_REALM:Ljava/lang/String;

    if-eq v2, v3, :cond_1

    iget-object v2, p1, Lorg/apache/commons/httpclient/auth/AuthScope;->realm:Ljava/lang/String;

    sget-object v3, Lorg/apache/commons/httpclient/auth/AuthScope;->ANY_REALM:Ljava/lang/String;

    if-eq v2, v3, :cond_1

    move v0, v1

    goto :goto_0

    :cond_6
    iget v2, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->port:I

    if-eq v2, v1, :cond_2

    iget v2, p1, Lorg/apache/commons/httpclient/auth/AuthScope;->port:I

    if-eq v2, v1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->host:Ljava/lang/String;

    sget-object v3, Lorg/apache/commons/httpclient/auth/AuthScope;->ANY_HOST:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p1, Lorg/apache/commons/httpclient/auth/AuthScope;->host:Ljava/lang/String;

    sget-object v3, Lorg/apache/commons/httpclient/auth/AuthScope;->ANY_HOST:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v2, 0x27

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->scheme:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->scheme:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v1, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->realm:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->realm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_0
    iget-object v1, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->host:Ljava/lang/String;

    if-eqz v1, :cond_1

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->port:I

    if-ltz v1, :cond_1

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v1, "<any realm>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
