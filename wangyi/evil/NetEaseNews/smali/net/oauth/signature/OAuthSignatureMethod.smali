.class public abstract Lnet/oauth/signature/OAuthSignatureMethod;
.super Ljava/lang/Object;


# static fields
.field private static final BASE64:Lnet/oauth/signature/Base64;

.field private static final BASE64_ENCODING:Ljava/lang/String; = "ISO-8859-1"

.field private static final NAME_TO_CLASS:Ljava/util/Map;

.field public static final _ACCESSOR:Ljava/lang/String; = "-Accessor"


# instance fields
.field private consumerSecret:Ljava/lang/String;

.field private tokenSecret:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnet/oauth/signature/Base64;

    invoke-direct {v0}, Lnet/oauth/signature/Base64;-><init>()V

    sput-object v0, Lnet/oauth/signature/OAuthSignatureMethod;->BASE64:Lnet/oauth/signature/Base64;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lnet/oauth/signature/OAuthSignatureMethod;->NAME_TO_CLASS:Ljava/util/Map;

    const-string v0, "HMAC-SHA1"

    const-class v1, Lnet/oauth/signature/HMAC_SHA1;

    invoke-static {v0, v1}, Lnet/oauth/signature/OAuthSignatureMethod;->registerMethodClass(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "PLAINTEXT"

    const-class v1, Lnet/oauth/signature/PLAINTEXT;

    invoke-static {v0, v1}, Lnet/oauth/signature/OAuthSignatureMethod;->registerMethodClass(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "RSA-SHA1"

    const-class v1, Lnet/oauth/signature/RSA_SHA1;

    invoke-static {v0, v1}, Lnet/oauth/signature/OAuthSignatureMethod;->registerMethodClass(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "HMAC-SHA1-Accessor"

    const-class v1, Lnet/oauth/signature/HMAC_SHA1;

    invoke-static {v0, v1}, Lnet/oauth/signature/OAuthSignatureMethod;->registerMethodClass(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "PLAINTEXT-Accessor"

    const-class v1, Lnet/oauth/signature/PLAINTEXT;

    invoke-static {v0, v1}, Lnet/oauth/signature/OAuthSignatureMethod;->registerMethodClass(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static base64Encode([B)Ljava/lang/String;
    .locals 4

    sget-object v0, Lnet/oauth/signature/OAuthSignatureMethod;->BASE64:Lnet/oauth/signature/Base64;

    invoke-virtual {v0, p0}, Lnet/oauth/signature/Base64;->encode([B)[B

    move-result-object v1

    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v2, "ISO-8859-1"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public static decodeBase64(Ljava/lang/String;)[B
    .locals 3

    :try_start_0
    const-string v0, "ISO-8859-1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    sget-object v1, Lnet/oauth/signature/OAuthSignatureMethod;->BASE64:Lnet/oauth/signature/Base64;

    invoke-virtual {v1, v0}, Lnet/oauth/signature/Base64;->decode([B)[B

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0
.end method

.method public static equals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    array-length v2, v5

    array-length v3, v6

    if-ne v2, v3, :cond_5

    move v2, v1

    :goto_1
    int-to-char v2, v2

    move v3, v1

    move v4, v2

    move v2, v1

    :goto_2
    array-length v7, v5

    if-ge v2, v7, :cond_6

    aget-char v7, v5, v2

    aget-char v8, v6, v3

    xor-int/2addr v7, v8

    or-int/2addr v4, v7

    int-to-char v4, v4

    add-int/lit8 v3, v3, 0x1

    array-length v7, v6

    rem-int/2addr v3, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    move v2, v0

    goto :goto_1

    :cond_6
    if-eqz v4, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static equals([B[B)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    array-length v2, p1

    if-gtz v2, :cond_4

    array-length v2, p0

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_4
    array-length v2, p0

    array-length v3, p1

    if-ne v2, v3, :cond_5

    move v2, v1

    :goto_1
    int-to-byte v2, v2

    move v3, v1

    move v4, v2

    move v2, v1

    :goto_2
    array-length v5, p0

    if-ge v2, v5, :cond_6

    aget-byte v5, p0, v2

    aget-byte v6, p1, v3

    xor-int/2addr v5, v6

    or-int/2addr v4, v5

    int-to-byte v4, v4

    add-int/lit8 v3, v3, 0x1

    array-length v5, p1

    rem-int/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    move v2, v0

    goto :goto_1

    :cond_6
    if-eqz v4, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static getBaseString(Lnet/oauth/OAuthMessage;)Ljava/lang/String;
    .locals 6

    const/16 v5, 0x26

    iget-object v0, p0, Lnet/oauth/OAuthMessage;->URL:Ljava/lang/String;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_0

    invoke-virtual {p0}, Lnet/oauth/OAuthMessage;->getParameters()Ljava/util/List;

    move-result-object v1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lnet/oauth/OAuthMessage;->method:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnet/oauth/OAuth;->percentEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lnet/oauth/signature/OAuthSignatureMethod;->normalizeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/oauth/OAuth;->percentEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Lnet/oauth/signature/OAuthSignatureMethod;->normalizeParameters(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/oauth/OAuth;->percentEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lnet/oauth/OAuthMessage;->URL:Ljava/lang/String;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnet/oauth/OAuth;->decodeForm(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lnet/oauth/OAuthMessage;->getParameters()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getParameters(Ljava/util/Collection;)Ljava/util/List;
    .locals 3

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oauth/signature/OAuthSignatureMethod$ComparableParameter;

    iget-object v0, v0, Lnet/oauth/signature/OAuthSignatureMethod$ComparableParameter;->value:Ljava/util/Map$Entry;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static newMethod(Ljava/lang/String;Lnet/oauth/OAuthAccessor;)Lnet/oauth/signature/OAuthSignatureMethod;
    .locals 3

    :try_start_0
    sget-object v0, Lnet/oauth/signature/OAuthSignatureMethod;->NAME_TO_CLASS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oauth/signature/OAuthSignatureMethod;

    invoke-virtual {v0, p0, p1}, Lnet/oauth/signature/OAuthSignatureMethod;->initialize(Ljava/lang/String;Lnet/oauth/OAuthAccessor;)V

    return-object v0

    :cond_0
    new-instance v0, Lnet/oauth/OAuthProblemException;

    const-string v1, "signature_method_rejected"

    invoke-direct {v0, v1}, Lnet/oauth/OAuthProblemException;-><init>(Ljava/lang/String;)V

    sget-object v1, Lnet/oauth/signature/OAuthSignatureMethod;->NAME_TO_CLASS:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lnet/oauth/OAuth;->percentEncode(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    const-string v2, "oauth_acceptable_signature_methods"

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lnet/oauth/OAuthProblemException;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    throw v0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    new-instance v1, Lnet/oauth/OAuthException;

    invoke-direct {v1, v0}, Lnet/oauth/OAuthException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lnet/oauth/OAuthException;

    invoke-direct {v1, v0}, Lnet/oauth/OAuthException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static newSigner(Lnet/oauth/OAuthMessage;Lnet/oauth/OAuthAccessor;)Lnet/oauth/signature/OAuthSignatureMethod;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "oauth_signature_method"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lnet/oauth/OAuthMessage;->requireParameters([Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/oauth/OAuthMessage;->getSignatureMethod()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lnet/oauth/signature/OAuthSignatureMethod;->newMethod(Ljava/lang/String;Lnet/oauth/OAuthAccessor;)Lnet/oauth/signature/OAuthSignatureMethod;

    move-result-object v0

    iget-object v1, p1, Lnet/oauth/OAuthAccessor;->tokenSecret:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnet/oauth/signature/OAuthSignatureMethod;->setTokenSecret(Ljava/lang/String;)V

    return-object v0
.end method

.method protected static normalizeParameters(Ljava/util/Collection;)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    const-string v3, "oauth_signature"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Lnet/oauth/signature/OAuthSignatureMethod$ComparableParameter;

    invoke-direct {v3, v0}, Lnet/oauth/signature/OAuthSignatureMethod$ComparableParameter;-><init>(Ljava/util/Map$Entry;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-static {v1}, Lnet/oauth/signature/OAuthSignatureMethod;->getParameters(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lnet/oauth/OAuth;->formEncode(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected static normalizeUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v2, 0x0

    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v3}, Ljava/net/URI;->getPort()I

    move-result v1

    const/16 v5, 0x50

    if-eq v1, v5, :cond_1

    :cond_0
    const-string v1, "https"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v3}, Ljava/net/URI;->getPort()I

    move-result v1

    const/16 v5, 0x1bb

    if-ne v1, v5, :cond_5

    :cond_1
    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_2

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {v3}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_4

    :cond_3
    const-string v1, "/"

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    move v1, v2

    goto :goto_0
.end method

.method public static registerMethodClass(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1

    if-nez p1, :cond_0

    invoke-static {p0}, Lnet/oauth/signature/OAuthSignatureMethod;->unregisterMethod(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lnet/oauth/signature/OAuthSignatureMethod;->NAME_TO_CLASS:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static unregisterMethod(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lnet/oauth/signature/OAuthSignatureMethod;->NAME_TO_CLASS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected getConsumerSecret()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/oauth/signature/OAuthSignatureMethod;->consumerSecret:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract getSignature(Ljava/lang/String;)Ljava/lang/String;
.end method

.method protected getSignature(Lnet/oauth/OAuthMessage;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lnet/oauth/signature/OAuthSignatureMethod;->getBaseString(Lnet/oauth/OAuthMessage;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/oauth/signature/OAuthSignatureMethod;->getSignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTokenSecret()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/oauth/signature/OAuthSignatureMethod;->tokenSecret:Ljava/lang/String;

    return-object v0
.end method

.method protected initialize(Ljava/lang/String;Lnet/oauth/OAuthAccessor;)V
    .locals 3

    iget-object v0, p2, Lnet/oauth/OAuthAccessor;->consumer:Lnet/oauth/OAuthConsumer;

    iget-object v0, v0, Lnet/oauth/OAuthConsumer;->consumerSecret:Ljava/lang/String;

    const-string v1, "-Accessor"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "oauth_accessor_secret"

    const-string v1, "oauth_accessor_secret"

    invoke-virtual {p2, v1}, Lnet/oauth/OAuthAccessor;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p2, Lnet/oauth/OAuthAccessor;->consumer:Lnet/oauth/OAuthConsumer;

    const-string v2, "oauth_accessor_secret"

    invoke-virtual {v1, v2}, Lnet/oauth/OAuthConsumer;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    const-string v0, ""

    :cond_2
    invoke-virtual {p0, v0}, Lnet/oauth/signature/OAuthSignatureMethod;->setConsumerSecret(Ljava/lang/String;)V

    return-void
.end method

.method protected abstract isValid(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method protected setConsumerSecret(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/oauth/signature/OAuthSignatureMethod;->consumerSecret:Ljava/lang/String;

    return-void
.end method

.method public setTokenSecret(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/oauth/signature/OAuthSignatureMethod;->tokenSecret:Ljava/lang/String;

    return-void
.end method

.method public sign(Lnet/oauth/OAuthMessage;)V
    .locals 3

    new-instance v0, Lnet/oauth/OAuth$Parameter;

    const-string v1, "oauth_signature"

    invoke-virtual {p0, p1}, Lnet/oauth/signature/OAuthSignatureMethod;->getSignature(Lnet/oauth/OAuthMessage;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lnet/oauth/OAuth$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lnet/oauth/OAuthMessage;->addParameter(Ljava/util/Map$Entry;)V

    return-void
.end method

.method public validate(Lnet/oauth/OAuthMessage;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "oauth_signature"

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Lnet/oauth/OAuthMessage;->requireParameters([Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/oauth/OAuthMessage;->getSignature()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lnet/oauth/signature/OAuthSignatureMethod;->getBaseString(Lnet/oauth/OAuthMessage;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnet/oauth/signature/OAuthSignatureMethod;->isValid(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lnet/oauth/OAuthProblemException;

    const-string v3, "signature_invalid"

    invoke-direct {v2, v3}, Lnet/oauth/OAuthProblemException;-><init>(Ljava/lang/String;)V

    const-string v3, "oauth_signature"

    invoke-virtual {v2, v3, v0}, Lnet/oauth/OAuthProblemException;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "oauth_signature_base_string"

    invoke-virtual {v2, v0, v1}, Lnet/oauth/OAuthProblemException;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "oauth_signature_method"

    invoke-virtual {p1}, Lnet/oauth/OAuthMessage;->getSignatureMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lnet/oauth/OAuthProblemException;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    throw v2

    :cond_0
    return-void
.end method
