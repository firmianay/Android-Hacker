.class public Lnet/oauth/OAuthMessage;
.super Ljava/lang/Object;


# static fields
.field private static final AUTHORIZATION:Ljava/util/regex/Pattern;

.field public static final AUTH_SCHEME:Ljava/lang/String; = "OAuth"

.field public static final DELETE:Ljava/lang/String; = "DELETE"

.field public static final GET:Ljava/lang/String; = "GET"

.field private static final NVP:Ljava/util/regex/Pattern;

.field public static final POST:Ljava/lang/String; = "POST"

.field public static final PUT:Ljava/lang/String; = "PUT"


# instance fields
.field public URL:Ljava/lang/String;

.field private final bodyAsStream:Ljava/io/InputStream;

.field private final headers:Ljava/util/List;

.field public method:Ljava/lang/String;

.field private parameterMap:Ljava/util/Map;

.field private final parameters:Ljava/util/List;

.field private parametersAreComplete:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\\s*(\\w*)\\s+(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lnet/oauth/OAuthMessage;->AUTHORIZATION:Ljava/util/regex/Pattern;

    const-string v0, "(\\S*)\\s*\\=\\s*\"([^\"]*)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lnet/oauth/OAuthMessage;->NVP:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lnet/oauth/OAuthMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/io/InputStream;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/oauth/OAuthMessage;->parametersAreComplete:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/oauth/OAuthMessage;->headers:Ljava/util/List;

    iput-object p1, p0, Lnet/oauth/OAuthMessage;->method:Ljava/lang/String;

    iput-object p2, p0, Lnet/oauth/OAuthMessage;->URL:Ljava/lang/String;

    iput-object p4, p0, Lnet/oauth/OAuthMessage;->bodyAsStream:Ljava/io/InputStream;

    if-nez p3, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/oauth/OAuthMessage;->parameters:Ljava/util/List;

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lnet/oauth/OAuthMessage;->parameters:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v2, p0, Lnet/oauth/OAuthMessage;->parameters:Ljava/util/List;

    new-instance v3, Lnet/oauth/OAuth$Parameter;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lnet/oauth/OAuthMessage;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lnet/oauth/OAuthMessage;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lnet/oauth/OAuth$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private beforeGetParameter()V
    .locals 1

    iget-boolean v0, p0, Lnet/oauth/OAuthMessage;->parametersAreComplete:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/oauth/OAuthMessage;->completeParameters()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/oauth/OAuthMessage;->parametersAreComplete:Z

    :cond_0
    return-void
.end method

.method public static decodeAuthorization(Ljava/lang/String;)Ljava/util/List;
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    sget-object v0, Lnet/oauth/OAuthMessage;->AUTHORIZATION:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "OAuth"

    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\\s*,\\s*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    sget-object v5, Lnet/oauth/OAuthMessage;->NVP:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lnet/oauth/OAuth;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnet/oauth/OAuth;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lnet/oauth/OAuth$Parameter;

    invoke-direct {v6, v5, v4}, Lnet/oauth/OAuth$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static readAll(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v2, 0x200

    new-array v2, v2, [C

    :goto_1
    invoke-virtual {v1, v2}, Ljava/io/Reader;->read([C)I

    move-result v3

    if-lez v3, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    throw v0

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    goto :goto_0
.end method

.method private static final toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public addParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lnet/oauth/OAuth$Parameter;

    invoke-direct {v0, p1, p2}, Lnet/oauth/OAuth$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/oauth/OAuthMessage;->addParameter(Ljava/util/Map$Entry;)V

    return-void
.end method

.method public addParameter(Ljava/util/Map$Entry;)V
    .locals 1

    iget-object v0, p0, Lnet/oauth/OAuthMessage;->parameters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/oauth/OAuthMessage;->parameterMap:Ljava/util/Map;

    return-void
.end method

.method public addParameters(Ljava/util/Collection;)V
    .locals 1

    iget-object v0, p0, Lnet/oauth/OAuthMessage;->parameters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/oauth/OAuthMessage;->parameterMap:Ljava/util/Map;

    return-void
.end method

.method public addRequiredParameters(Lnet/oauth/OAuthAccessor;)V
    .locals 7

    iget-object v0, p0, Lnet/oauth/OAuthMessage;->parameters:Ljava/util/List;

    invoke-static {v0}, Lnet/oauth/OAuth;->newMap(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v1

    const-string v0, "oauth_token"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lnet/oauth/OAuthAccessor;->accessToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "oauth_token"

    iget-object v2, p1, Lnet/oauth/OAuthAccessor;->accessToken:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lnet/oauth/OAuthMessage;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v2, p1, Lnet/oauth/OAuthAccessor;->consumer:Lnet/oauth/OAuthConsumer;

    const-string v0, "oauth_consumer_key"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "oauth_consumer_key"

    iget-object v3, v2, Lnet/oauth/OAuthConsumer;->consumerKey:Ljava/lang/String;

    invoke-virtual {p0, v0, v3}, Lnet/oauth/OAuthMessage;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v0, "oauth_signature_method"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v0, "oauth_signature_method"

    invoke-virtual {v2, v0}, Lnet/oauth/OAuthConsumer;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, "HMAC-SHA1"

    :cond_2
    const-string v2, "oauth_signature_method"

    invoke-virtual {p0, v2, v0}, Lnet/oauth/OAuthMessage;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v0, "oauth_timestamp"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, "oauth_timestamp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lnet/oauth/OAuthMessage;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v0, "oauth_nonce"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5

    const-string v0, "oauth_nonce"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lnet/oauth/OAuthMessage;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string v0, "oauth_version"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_6

    const-string v0, "oauth_version"

    const-string v1, "1.0"

    invoke-virtual {p0, v0, v1}, Lnet/oauth/OAuthMessage;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p0, p1}, Lnet/oauth/OAuthMessage;->sign(Lnet/oauth/OAuthAccessor;)V

    return-void
.end method

.method protected completeParameters()V
    .locals 0

    return-void
.end method

.method protected dump(Ljava/util/Map;)V
    .locals 2

    const-string v0, "URL"

    iget-object v1, p0, Lnet/oauth/OAuthMessage;->URL:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lnet/oauth/OAuthMessage;->parametersAreComplete:Z

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lnet/oauth/OAuthMessage;->getParameterMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getAuthorizationHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/16 v5, 0x22

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    const-string v0, " realm=\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lnet/oauth/OAuth;->percentEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-direct {p0}, Lnet/oauth/OAuthMessage;->beforeGetParameter()V

    iget-object v0, p0, Lnet/oauth/OAuthMessage;->parameters:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnet/oauth/OAuthMessage;->parameters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lnet/oauth/OAuthMessage;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "oauth_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_2

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lnet/oauth/OAuth;->percentEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lnet/oauth/OAuthMessage;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/oauth/OAuth;->percentEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OAuth"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBodyAsStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lnet/oauth/OAuthMessage;->bodyAsStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getBodyEncoding()Ljava/lang/String;
    .locals 1

    const-string v0, "ISO-8859-1"

    return-object v0
.end method

.method public getBodyType()Ljava/lang/String;
    .locals 1

    const-string v0, "Content-Type"

    invoke-virtual {p0, v0}, Lnet/oauth/OAuthMessage;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConsumerKey()Ljava/lang/String;
    .locals 1

    const-string v0, "oauth_consumer_key"

    invoke-virtual {p0, v0}, Lnet/oauth/OAuthMessage;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDump()Ljava/util/Map;
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, v0}, Lnet/oauth/OAuthMessage;->dump(Ljava/util/Map;)V

    return-object v0
.end method

.method public final getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Lnet/oauth/OAuthMessage;->getHeaders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_1
    move-object v2, v0

    goto :goto_0

    :cond_0
    return-object v2

    :cond_1
    move-object v0, v2

    goto :goto_1
.end method

.method public final getHeaders()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lnet/oauth/OAuthMessage;->headers:Ljava/util/List;

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lnet/oauth/OAuthMessage;->getParameterMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected getParameterMap()Ljava/util/Map;
    .locals 1

    invoke-direct {p0}, Lnet/oauth/OAuthMessage;->beforeGetParameter()V

    iget-object v0, p0, Lnet/oauth/OAuthMessage;->parameterMap:Ljava/util/Map;

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/oauth/OAuthMessage;->parameters:Ljava/util/List;

    invoke-static {v0}, Lnet/oauth/OAuth;->newMap(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lnet/oauth/OAuthMessage;->parameterMap:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lnet/oauth/OAuthMessage;->parameterMap:Ljava/util/Map;

    return-object v0
.end method

.method public getParameters()Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lnet/oauth/OAuthMessage;->beforeGetParameter()V

    iget-object v0, p0, Lnet/oauth/OAuthMessage;->parameters:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    const-string v0, "oauth_signature"

    invoke-virtual {p0, v0}, Lnet/oauth/OAuthMessage;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSignatureMethod()Ljava/lang/String;
    .locals 1

    const-string v0, "oauth_signature_method"

    invoke-virtual {p0, v0}, Lnet/oauth/OAuthMessage;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    const-string v0, "oauth_token"

    invoke-virtual {p0, v0}, Lnet/oauth/OAuthMessage;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final readBodyAsString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lnet/oauth/OAuthMessage;->getBodyAsStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0}, Lnet/oauth/OAuthMessage;->getBodyEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/oauth/OAuthMessage;->readAll(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs requireParameters([Ljava/lang/String;)V
    .locals 6

    invoke-virtual {p0}, Lnet/oauth/OAuthMessage;->getParameterMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    array-length v3, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, p1, v0

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lnet/oauth/OAuthProblemException;

    const-string v1, "parameter_absent"

    invoke-direct {v0, v1}, Lnet/oauth/OAuthProblemException;-><init>(Ljava/lang/String;)V

    const-string v1, "oauth_parameters_absent"

    invoke-static {v2}, Lnet/oauth/OAuth;->percentEncode(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/oauth/OAuthProblemException;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    throw v0

    :cond_2
    return-void
.end method

.method public sign(Lnet/oauth/OAuthAccessor;)V
    .locals 1

    invoke-static {p0, p1}, Lnet/oauth/signature/OAuthSignatureMethod;->newSigner(Lnet/oauth/OAuthMessage;Lnet/oauth/OAuthAccessor;)Lnet/oauth/signature/OAuthSignatureMethod;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/oauth/signature/OAuthSignatureMethod;->sign(Lnet/oauth/OAuthMessage;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OAuthMessage("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/oauth/OAuthMessage;->method:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/oauth/OAuthMessage;->URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/oauth/OAuthMessage;->parameters:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
