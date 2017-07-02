.class public Lnet/oauth/http/HttpMessage;
.super Ljava/lang/Object;


# static fields
.field public static final ACCEPT_ENCODING:Ljava/lang/String; = "Accept-Encoding"

.field private static final CHARSET:Ljava/util/regex/Pattern;

.field public static final CONTENT_ENCODING:Ljava/lang/String; = "Content-Encoding"

.field public static final CONTENT_LENGTH:Ljava/lang/String; = "Content-Length"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field public static final DEFAULT_CHARSET:Ljava/lang/String; = "ISO-8859-1"

.field public static final REQUEST:Ljava/lang/String; = "HTTP request"

.field public static final RESPONSE:Ljava/lang/String; = "HTTP response"

.field public static final STATUS_CODE:Ljava/lang/String; = "HTTP status"


# instance fields
.field protected body:Ljava/io/InputStream;

.field public final headers:Ljava/util/List;

.field public method:Ljava/lang/String;

.field public url:Ljava/net/URL;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "; *charset *= *([^;\"]*|\"([^\"]|\\\\\")*\")(;|$)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lnet/oauth/http/HttpMessage;->CHARSET:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lnet/oauth/http/HttpMessage;-><init>(Ljava/lang/String;Ljava/net/URL;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/net/URL;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/oauth/http/HttpMessage;-><init>(Ljava/lang/String;Ljava/net/URL;Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/net/URL;Ljava/io/InputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/oauth/http/HttpMessage;->headers:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/oauth/http/HttpMessage;->body:Ljava/io/InputStream;

    iput-object p1, p0, Lnet/oauth/http/HttpMessage;->method:Ljava/lang/String;

    iput-object p2, p0, Lnet/oauth/http/HttpMessage;->url:Ljava/net/URL;

    iput-object p3, p0, Lnet/oauth/http/HttpMessage;->body:Ljava/io/InputStream;

    return-void
.end method

.method private static equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private static final getCharset(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/16 v4, 0x22

    const/4 v3, 0x1

    if-eqz p0, :cond_1

    sget-object v0, Lnet/oauth/http/HttpMessage;->CHARSET:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\\""

    const-string v2, "\""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v0, "ISO-8859-1"

    goto :goto_0
.end method

.method public static newRequest(Lnet/oauth/OAuthMessage;Lnet/oauth/ParameterStyle;)Lnet/oauth/http/HttpMessage;
    .locals 9

    const-string v0, "POST"

    iget-object v1, p0, Lnet/oauth/OAuthMessage;->method:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p0}, Lnet/oauth/OAuthMessage;->getBodyAsStream()Ljava/io/InputStream;

    move-result-object v2

    sget-object v0, Lnet/oauth/ParameterStyle;->BODY:Lnet/oauth/ParameterStyle;

    if-ne p1, v0, :cond_1

    if-eqz v3, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    sget-object p1, Lnet/oauth/ParameterStyle;->QUERY_STRING:Lnet/oauth/ParameterStyle;

    :cond_1
    iget-object v1, p0, Lnet/oauth/OAuthMessage;->URL:Ljava/lang/String;

    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lnet/oauth/OAuthMessage;->getHeaders()Ljava/util/List;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v0, Lnet/oauth/http/HttpMessage$1;->$SwitchMap$net$oauth$ParameterStyle:[I

    invoke-virtual {p1}, Lnet/oauth/ParameterStyle;->ordinal()I

    move-result v5

    aget v0, v0, v5

    packed-switch v0, :pswitch_data_0

    :cond_2
    move-object v0, v1

    move-object v1, v2

    :goto_0
    new-instance v2, Lnet/oauth/http/HttpMessage;

    iget-object v3, p0, Lnet/oauth/OAuthMessage;->method:Ljava/lang/String;

    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v5, v1}, Lnet/oauth/http/HttpMessage;-><init>(Ljava/lang/String;Ljava/net/URL;Ljava/io/InputStream;)V

    iget-object v0, v2, Lnet/oauth/http/HttpMessage;->headers:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v2

    :pswitch_0
    invoke-virtual {p0}, Lnet/oauth/OAuthMessage;->getParameters()Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Lnet/oauth/OAuth;->addParameters(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v2

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lnet/oauth/OAuthMessage;->getParameters()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lnet/oauth/OAuth;->formEncode(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lnet/oauth/OAuthMessage;->getBodyEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    new-instance v0, Lnet/oauth/OAuth$Parameter;

    const-string v3, "Content-Type"

    const-string v5, "application/x-www-form-urlencoded"

    invoke-direct {v0, v3, v5}, Lnet/oauth/OAuth$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lnet/oauth/OAuth$Parameter;

    const-string v3, "Content-Length"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    array-length v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3, v5}, Lnet/oauth/OAuth$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_0

    :pswitch_2
    new-instance v0, Lnet/oauth/OAuth$Parameter;

    const-string v5, "Authorization"

    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lnet/oauth/OAuthMessage;->getAuthorizationHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lnet/oauth/OAuth$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lnet/oauth/OAuthMessage;->getParameters()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v7, "oauth_"

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_5

    if-nez v2, :cond_5

    invoke-static {v5}, Lnet/oauth/OAuth;->formEncode(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lnet/oauth/OAuthMessage;->getBodyEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    new-instance v0, Lnet/oauth/OAuth$Parameter;

    const-string v3, "Content-Type"

    const-string v5, "application/x-www-form-urlencoded"

    invoke-direct {v0, v3, v5}, Lnet/oauth/OAuth$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lnet/oauth/OAuth$Parameter;

    const-string v3, "Content-Length"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    array-length v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3, v5}, Lnet/oauth/OAuth$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto/16 :goto_0

    :cond_5
    invoke-static {v1, v5}, Lnet/oauth/OAuth;->addParameters(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v2

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public dump(Ljava/util/Map;)V
    .locals 0

    return-void
.end method

.method public final getBody()Ljava/io/InputStream;
    .locals 2

    iget-object v0, p0, Lnet/oauth/http/HttpMessage;->body:Ljava/io/InputStream;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/oauth/http/HttpMessage;->openBody()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lnet/oauth/client/ExcerptInputStream;

    invoke-direct {v1, v0}, Lnet/oauth/client/ExcerptInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lnet/oauth/http/HttpMessage;->body:Ljava/io/InputStream;

    :cond_0
    iget-object v0, p0, Lnet/oauth/http/HttpMessage;->body:Ljava/io/InputStream;

    return-object v0
.end method

.method public final getContentCharset()Ljava/lang/String;
    .locals 1

    const-string v0, "Content-Type"

    invoke-virtual {p0, v0}, Lnet/oauth/http/HttpMessage;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/oauth/http/HttpMessage;->getCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lnet/oauth/http/HttpMessage;->headers:Ljava/util/List;

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

    invoke-static {p1, v1}, Lnet/oauth/http/HttpMessage;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

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

.method protected openBody()Ljava/io/InputStream;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public removeHeaders(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lnet/oauth/http/HttpMessage;->headers:Ljava/util/List;

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

    invoke-static {p1, v1}, Lnet/oauth/http/HttpMessage;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    :goto_1
    move-object v2, v0

    goto :goto_0

    :cond_0
    return-object v2

    :cond_1
    move-object v0, v2

    goto :goto_1
.end method
