.class public Lorg/apache/commons/httpclient/cookie/RFC2965Spec;
.super Lorg/apache/commons/httpclient/cookie/CookieSpecBase;

# interfaces
.implements Lorg/apache/commons/httpclient/cookie/CookieVersionSupport;


# static fields
.field private static final PATH_COMPOARATOR:Ljava/util/Comparator;

.field public static final SET_COOKIE2_KEY:Ljava/lang/String; = "set-cookie2"


# instance fields
.field private final attribHandlerList:Ljava/util/List;

.field private final attribHandlerMap:Ljava/util/Map;

.field private final formatter:Lorg/apache/commons/httpclient/util/ParameterFormatter;

.field private final rfc2109:Lorg/apache/commons/httpclient/cookie/CookieSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/commons/httpclient/cookie/CookiePathComparator;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/cookie/CookiePathComparator;-><init>()V

    sput-object v0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->PATH_COMPOARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/16 v3, 0xa

    const/4 v2, 0x0

    invoke-direct {p0}, Lorg/apache/commons/httpclient/cookie/CookieSpecBase;-><init>()V

    new-instance v0, Lorg/apache/commons/httpclient/util/ParameterFormatter;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/util/ParameterFormatter;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->formatter:Lorg/apache/commons/httpclient/util/ParameterFormatter;

    iget-object v0, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->formatter:Lorg/apache/commons/httpclient/util/ParameterFormatter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/util/ParameterFormatter;->setAlwaysUseQuotes(Z)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->attribHandlerMap:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->attribHandlerList:Ljava/util/List;

    new-instance v0, Lorg/apache/commons/httpclient/cookie/RFC2109Spec;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/cookie/RFC2109Spec;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->rfc2109:Lorg/apache/commons/httpclient/cookie/CookieSpec;

    const-string v0, "path"

    new-instance v1, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$Cookie2PathAttributeHandler;

    invoke-direct {v1, p0, v2}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$Cookie2PathAttributeHandler;-><init>(Lorg/apache/commons/httpclient/cookie/RFC2965Spec;Lorg/apache/commons/httpclient/cookie/RFC2965Spec$1;)V

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/commons/httpclient/cookie/CookieAttributeHandler;)V

    const-string v0, "domain"

    new-instance v1, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$Cookie2DomainAttributeHandler;

    invoke-direct {v1, p0, v2}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$Cookie2DomainAttributeHandler;-><init>(Lorg/apache/commons/httpclient/cookie/RFC2965Spec;Lorg/apache/commons/httpclient/cookie/RFC2965Spec$1;)V

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/commons/httpclient/cookie/CookieAttributeHandler;)V

    const-string v0, "port"

    new-instance v1, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$Cookie2PortAttributeHandler;

    invoke-direct {v1, p0, v2}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$Cookie2PortAttributeHandler;-><init>(Lorg/apache/commons/httpclient/cookie/RFC2965Spec;Lorg/apache/commons/httpclient/cookie/RFC2965Spec$1;)V

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/commons/httpclient/cookie/CookieAttributeHandler;)V

    const-string v0, "max-age"

    new-instance v1, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$Cookie2MaxageAttributeHandler;

    invoke-direct {v1, p0, v2}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$Cookie2MaxageAttributeHandler;-><init>(Lorg/apache/commons/httpclient/cookie/RFC2965Spec;Lorg/apache/commons/httpclient/cookie/RFC2965Spec$1;)V

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/commons/httpclient/cookie/CookieAttributeHandler;)V

    const-string v0, "secure"

    new-instance v1, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$CookieSecureAttributeHandler;

    invoke-direct {v1, p0, v2}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$CookieSecureAttributeHandler;-><init>(Lorg/apache/commons/httpclient/cookie/RFC2965Spec;Lorg/apache/commons/httpclient/cookie/RFC2965Spec$1;)V

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/commons/httpclient/cookie/CookieAttributeHandler;)V

    const-string v0, "comment"

    new-instance v1, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$CookieCommentAttributeHandler;

    invoke-direct {v1, p0, v2}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$CookieCommentAttributeHandler;-><init>(Lorg/apache/commons/httpclient/cookie/RFC2965Spec;Lorg/apache/commons/httpclient/cookie/RFC2965Spec$1;)V

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/commons/httpclient/cookie/CookieAttributeHandler;)V

    const-string v0, "commenturl"

    new-instance v1, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$CookieCommentUrlAttributeHandler;

    invoke-direct {v1, p0, v2}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$CookieCommentUrlAttributeHandler;-><init>(Lorg/apache/commons/httpclient/cookie/RFC2965Spec;Lorg/apache/commons/httpclient/cookie/RFC2965Spec$1;)V

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/commons/httpclient/cookie/CookieAttributeHandler;)V

    const-string v0, "discard"

    new-instance v1, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$CookieDiscardAttributeHandler;

    invoke-direct {v1, p0, v2}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$CookieDiscardAttributeHandler;-><init>(Lorg/apache/commons/httpclient/cookie/RFC2965Spec;Lorg/apache/commons/httpclient/cookie/RFC2965Spec$1;)V

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/commons/httpclient/cookie/CookieAttributeHandler;)V

    const-string v0, "version"

    new-instance v1, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$Cookie2VersionAttributeHandler;

    invoke-direct {v1, p0, v2}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$Cookie2VersionAttributeHandler;-><init>(Lorg/apache/commons/httpclient/cookie/RFC2965Spec;Lorg/apache/commons/httpclient/cookie/RFC2965Spec$1;)V

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/commons/httpclient/cookie/CookieAttributeHandler;)V

    return-void
.end method

.method static access$1000(Lorg/apache/commons/httpclient/cookie/RFC2965Spec;I[I)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->portMatch(I[I)Z

    move-result v0

    return v0
.end method

.method static access$900(Lorg/apache/commons/httpclient/cookie/RFC2965Spec;Ljava/lang/String;)[I
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->parsePortAttribute(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method private createPortAttribute([I)Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    array-length v2, p1

    :goto_0
    if-ge v0, v2, :cond_1

    if-lez v0, :cond_0

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    aget v3, p1, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private doFormatCookie2(Lorg/apache/commons/httpclient/cookie/Cookie2;Ljava/lang/StringBuffer;)V
    .locals 4

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/cookie/Cookie2;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/cookie/Cookie2;->getValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    iget-object v2, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->formatter:Lorg/apache/commons/httpclient/util/ParameterFormatter;

    new-instance v3, Lorg/apache/commons/httpclient/NameValuePair;

    invoke-direct {v3, v1, v0}, Lorg/apache/commons/httpclient/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, p2, v3}, Lorg/apache/commons/httpclient/util/ParameterFormatter;->format(Ljava/lang/StringBuffer;Lorg/apache/commons/httpclient/NameValuePair;)V

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/cookie/Cookie2;->getDomain()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/cookie/Cookie2;->isDomainAttributeSpecified()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "; "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->formatter:Lorg/apache/commons/httpclient/util/ParameterFormatter;

    new-instance v1, Lorg/apache/commons/httpclient/NameValuePair;

    const-string v2, "$Domain"

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/cookie/Cookie2;->getDomain()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/httpclient/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p2, v1}, Lorg/apache/commons/httpclient/util/ParameterFormatter;->format(Ljava/lang/StringBuffer;Lorg/apache/commons/httpclient/NameValuePair;)V

    :cond_1
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/cookie/Cookie2;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/cookie/Cookie2;->isPathAttributeSpecified()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "; "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->formatter:Lorg/apache/commons/httpclient/util/ParameterFormatter;

    new-instance v1, Lorg/apache/commons/httpclient/NameValuePair;

    const-string v2, "$Path"

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/cookie/Cookie2;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/httpclient/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p2, v1}, Lorg/apache/commons/httpclient/util/ParameterFormatter;->format(Ljava/lang/StringBuffer;Lorg/apache/commons/httpclient/NameValuePair;)V

    :cond_2
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/cookie/Cookie2;->isPortAttributeSpecified()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, ""

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/cookie/Cookie2;->isPortAttributeBlank()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/cookie/Cookie2;->getPorts()[I

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->createPortAttribute([I)Ljava/lang/String;

    move-result-object v0

    :cond_3
    const-string v1, "; "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->formatter:Lorg/apache/commons/httpclient/util/ParameterFormatter;

    new-instance v2, Lorg/apache/commons/httpclient/NameValuePair;

    const-string v3, "$Port"

    invoke-direct {v2, v3, v0}, Lorg/apache/commons/httpclient/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p2, v2}, Lorg/apache/commons/httpclient/util/ParameterFormatter;->format(Ljava/lang/StringBuffer;Lorg/apache/commons/httpclient/NameValuePair;)V

    :cond_4
    return-void
.end method

.method private static getEffectiveHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".local"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private parsePortAttribute(Ljava/lang/String;)[I
    .locals 4

    new-instance v1, Ljava/util/StringTokenizer;

    const-string v0, ","

    invoke-direct {v1, p1, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v0

    new-array v2, v0, [I

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v0

    aget v3, v2, v0

    if-gez v3, :cond_0

    new-instance v0, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;

    const-string v1, "Invalid Port attribute."

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Invalid Port attribute: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method private portMatch(I[I)Z
    .locals 4

    const/4 v0, 0x0

    array-length v2, p2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget v3, p2, v1

    if-ne p1, v3, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public domainMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected findAttribHandler(Ljava/lang/String;)Lorg/apache/commons/httpclient/cookie/CookieAttributeHandler;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->attribHandlerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/httpclient/cookie/CookieAttributeHandler;

    return-object v0
.end method

.method public formatCookie(Lorg/apache/commons/httpclient/Cookie;)Ljava/lang/String;
    .locals 5

    sget-object v0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter RFC2965Spec.formatCookie(Cookie)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    instance-of v0, p1, Lorg/apache/commons/httpclient/cookie/Cookie2;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/apache/commons/httpclient/cookie/Cookie2;

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/cookie/Cookie2;->getVersion()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->formatter:Lorg/apache/commons/httpclient/util/ParameterFormatter;

    new-instance v3, Lorg/apache/commons/httpclient/NameValuePair;

    const-string v4, "$Version"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lorg/apache/commons/httpclient/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v1, v3}, Lorg/apache/commons/httpclient/util/ParameterFormatter;->format(Ljava/lang/StringBuffer;Lorg/apache/commons/httpclient/NameValuePair;)V

    const-string v0, "; "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0, p1, v1}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->doFormatCookie2(Lorg/apache/commons/httpclient/cookie/Cookie2;Ljava/lang/StringBuffer;)V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->rfc2109:Lorg/apache/commons/httpclient/cookie/CookieSpec;

    invoke-interface {v0, p1}, Lorg/apache/commons/httpclient/cookie/CookieSpec;->formatCookie(Lorg/apache/commons/httpclient/Cookie;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public formatCookies([Lorg/apache/commons/httpclient/Cookie;)Ljava/lang/String;
    .locals 6

    const/4 v3, 0x1

    const/4 v1, 0x0

    sget-object v0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "enter RFC2965Spec.formatCookieHeader(Cookie[])"

    invoke-interface {v0, v2}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookies may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, -0x1

    move v2, v0

    move v0, v1

    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_7

    aget-object v4, p1, v0

    instance-of v5, v4, Lorg/apache/commons/httpclient/cookie/Cookie2;

    if-nez v5, :cond_3

    move v0, v3

    :goto_1
    if-gez v2, :cond_1

    move v2, v1

    :cond_1
    if-nez v0, :cond_2

    if-ge v2, v3, :cond_5

    :cond_2
    iget-object v0, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->rfc2109:Lorg/apache/commons/httpclient/cookie/CookieSpec;

    invoke-interface {v0, p1}, Lorg/apache/commons/httpclient/cookie/CookieSpec;->formatCookies([Lorg/apache/commons/httpclient/Cookie;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_3
    invoke-virtual {v4}, Lorg/apache/commons/httpclient/Cookie;->getVersion()I

    move-result v5

    if-le v5, v2, :cond_4

    invoke-virtual {v4}, Lorg/apache/commons/httpclient/Cookie;->getVersion()I

    move-result v2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    sget-object v0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->PATH_COMPOARATOR:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v0, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->formatter:Lorg/apache/commons/httpclient/util/ParameterFormatter;

    new-instance v4, Lorg/apache/commons/httpclient/NameValuePair;

    const-string v5, "$Version"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v5, v2}, Lorg/apache/commons/httpclient/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Lorg/apache/commons/httpclient/util/ParameterFormatter;->format(Ljava/lang/StringBuffer;Lorg/apache/commons/httpclient/NameValuePair;)V

    :goto_3
    array-length v0, p1

    if-ge v1, v0, :cond_6

    const-string v0, "; "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v0, p1, v1

    check-cast v0, Lorg/apache/commons/httpclient/cookie/Cookie2;

    invoke-direct {p0, v0, v3}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->doFormatCookie2(Lorg/apache/commons/httpclient/cookie/Cookie2;Ljava/lang/StringBuffer;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_7
    move v0, v1

    goto :goto_1
.end method

.method protected getAttribHandler(Ljava/lang/String;)Lorg/apache/commons/httpclient/cookie/CookieAttributeHandler;
    .locals 3

    invoke-virtual {p0, p1}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->findAttribHandler(Ljava/lang/String;)Lorg/apache/commons/httpclient/cookie/CookieAttributeHandler;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Handler not registered for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " attribute."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object v0
.end method

.method protected getAttribHandlerIterator()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->attribHandlerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getVersionHeader()Lorg/apache/commons/httpclient/Header;
    .locals 5

    new-instance v0, Lorg/apache/commons/httpclient/util/ParameterFormatter;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/util/ParameterFormatter;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Lorg/apache/commons/httpclient/NameValuePair;

    const-string v3, "$Version"

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->getVersion()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/httpclient/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/httpclient/util/ParameterFormatter;->format(Ljava/lang/StringBuffer;Lorg/apache/commons/httpclient/NameValuePair;)V

    new-instance v0, Lorg/apache/commons/httpclient/Header;

    const-string v2, "Cookie2"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-direct {v0, v2, v1, v3}, Lorg/apache/commons/httpclient/Header;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public match(Ljava/lang/String;ILjava/lang/String;ZLorg/apache/commons/httpclient/Cookie;)Z
    .locals 6

    const/4 v1, 0x0

    sget-object v0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "enter RFC2965.match(String, int, String, boolean, Cookie"

    invoke-interface {v0, v2}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    if-nez p5, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    instance-of v0, p5, Lorg/apache/commons/httpclient/cookie/Cookie2;

    if-eqz v0, :cond_4

    invoke-virtual {p5}, Lorg/apache/commons/httpclient/Cookie;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p5}, Lorg/apache/commons/httpclient/Cookie;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    return v0

    :cond_1
    new-instance v2, Lorg/apache/commons/httpclient/cookie/CookieOrigin;

    invoke-static {p1}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->getEffectiveHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, p2, p3, p4}, Lorg/apache/commons/httpclient/cookie/CookieOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->getAttribHandlerIterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/httpclient/cookie/CookieAttributeHandler;

    invoke-interface {v0, p5, v2}, Lorg/apache/commons/httpclient/cookie/CookieAttributeHandler;->match(Lorg/apache/commons/httpclient/Cookie;Lorg/apache/commons/httpclient/cookie/CookieOrigin;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->rfc2109:Lorg/apache/commons/httpclient/cookie/CookieSpec;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lorg/apache/commons/httpclient/cookie/CookieSpec;->match(Ljava/lang/String;ILjava/lang/String;ZLorg/apache/commons/httpclient/Cookie;)Z

    move-result v0

    goto :goto_0
.end method

.method public parse(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)[Lorg/apache/commons/httpclient/Cookie;
    .locals 13

    sget-object v0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter RFC2965Spec.parse(String, int, String, boolean, String)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Host of origin may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Host of origin may not be blank"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-gez p2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid port: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-nez p3, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Path of origin may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-nez p5, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Header may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v4, "/"

    :goto_0
    invoke-static {p1}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->getEffectiveHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/httpclient/HeaderElement;->parseElements([C)[Lorg/apache/commons/httpclient/HeaderElement;

    move-result-object v9

    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    const/4 v0, 0x0

    move v8, v0

    :goto_1
    array-length v0, v9

    if-ge v8, v0, :cond_7

    aget-object v11, v9, v8

    :try_start_0
    new-instance v0, Lorg/apache/commons/httpclient/cookie/Cookie2;

    invoke-virtual {v11}, Lorg/apache/commons/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11}, Lorg/apache/commons/httpclient/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    new-array v7, v7, [I

    const/4 v12, 0x0

    aput p2, v7, v12

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/httpclient/cookie/Cookie2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Z[I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v11}, Lorg/apache/commons/httpclient/HeaderElement;->getParameters()[Lorg/apache/commons/httpclient/NameValuePair;

    move-result-object v3

    if-eqz v3, :cond_6

    new-instance v5, Ljava/util/HashMap;

    array-length v2, v3

    invoke-direct {v5, v2}, Ljava/util/HashMap;-><init>(I)V

    array-length v2, v3

    add-int/lit8 v2, v2, -0x1

    :goto_2
    if-ltz v2, :cond_5

    aget-object v6, v3, v2

    invoke-virtual {v6}, Lorg/apache/commons/httpclient/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/httpclient/NameValuePair;

    invoke-virtual {p0, v2, v0}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->parseAttribute(Lorg/apache/commons/httpclient/NameValuePair;Lorg/apache/commons/httpclient/Cookie;)V

    goto :goto_3

    :cond_6
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_1

    :cond_7
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/commons/httpclient/Cookie;

    invoke-interface {v10, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/httpclient/Cookie;

    check-cast v0, [Lorg/apache/commons/httpclient/Cookie;

    return-object v0

    :cond_8
    move-object/from16 v4, p3

    goto/16 :goto_0
.end method

.method public parse(Ljava/lang/String;ILjava/lang/String;ZLorg/apache/commons/httpclient/Header;)[Lorg/apache/commons/httpclient/Cookie;
    .locals 6

    sget-object v0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter RFC2965.parse(String, int, String, boolean, Header)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    if-nez p5, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Header may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p5}, Lorg/apache/commons/httpclient/Header;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Header name may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p5}, Lorg/apache/commons/httpclient/Header;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "set-cookie2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p5}, Lorg/apache/commons/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->parse(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)[Lorg/apache/commons/httpclient/Cookie;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_2
    invoke-virtual {p5}, Lorg/apache/commons/httpclient/Header;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "set-cookie"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->rfc2109:Lorg/apache/commons/httpclient/cookie/CookieSpec;

    invoke-virtual {p5}, Lorg/apache/commons/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lorg/apache/commons/httpclient/cookie/CookieSpec;->parse(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)[Lorg/apache/commons/httpclient/Cookie;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance v0, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;

    const-string v1, "Header name is not valid. RFC 2965 supports \"set-cookie\" and \"set-cookie2\" headers."

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parseAttribute(Lorg/apache/commons/httpclient/NameValuePair;Lorg/apache/commons/httpclient/Cookie;)V
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attribute may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attribute Name may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->findAttribHandler(Ljava/lang/String;)Lorg/apache/commons/httpclient/cookie/CookieAttributeHandler;

    move-result-object v0

    if-nez v0, :cond_4

    sget-object v0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Unrecognized cookie attribute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/NameValuePair;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    invoke-interface {v0, p2, v1}, Lorg/apache/commons/httpclient/cookie/CookieAttributeHandler;->parse(Lorg/apache/commons/httpclient/Cookie;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected registerAttribHandler(Ljava/lang/String;Lorg/apache/commons/httpclient/cookie/CookieAttributeHandler;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attribute name may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attribute handler may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->attribHandlerList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->attribHandlerList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->attribHandlerMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public validate(Ljava/lang/String;ILjava/lang/String;ZLorg/apache/commons/httpclient/Cookie;)V
    .locals 6

    sget-object v0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter RFC2965Spec.validate(String, int, String, boolean, Cookie)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    instance-of v0, p5, Lorg/apache/commons/httpclient/cookie/Cookie2;

    if-eqz v0, :cond_2

    invoke-virtual {p5}, Lorg/apache/commons/httpclient/Cookie;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;

    const-string v1, "Cookie name may not contain blanks"

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p5}, Lorg/apache/commons/httpclient/Cookie;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;

    const-string v1, "Cookie name may not start with $"

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v1, Lorg/apache/commons/httpclient/cookie/CookieOrigin;

    invoke-static {p1}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->getEffectiveHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p2, p3, p4}, Lorg/apache/commons/httpclient/cookie/CookieOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->getAttribHandlerIterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/httpclient/cookie/CookieAttributeHandler;

    invoke-interface {v0, p5, v1}, Lorg/apache/commons/httpclient/cookie/CookieAttributeHandler;->validate(Lorg/apache/commons/httpclient/Cookie;Lorg/apache/commons/httpclient/cookie/CookieOrigin;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->rfc2109:Lorg/apache/commons/httpclient/cookie/CookieSpec;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lorg/apache/commons/httpclient/cookie/CookieSpec;->validate(Ljava/lang/String;ILjava/lang/String;ZLorg/apache/commons/httpclient/Cookie;)V

    :cond_3
    return-void
.end method
