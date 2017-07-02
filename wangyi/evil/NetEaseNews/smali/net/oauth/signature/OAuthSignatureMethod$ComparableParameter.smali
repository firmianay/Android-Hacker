.class Lnet/oauth/signature/OAuthSignatureMethod$ComparableParameter;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final key:Ljava/lang/String;

.field final value:Ljava/util/Map$Entry;


# direct methods
.method constructor <init>(Ljava/util/Map$Entry;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/oauth/signature/OAuthSignatureMethod$ComparableParameter;->value:Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lnet/oauth/signature/OAuthSignatureMethod$ComparableParameter;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lnet/oauth/signature/OAuthSignatureMethod$ComparableParameter;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lnet/oauth/OAuth;->percentEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Lnet/oauth/OAuth;->percentEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/oauth/signature/OAuthSignatureMethod$ComparableParameter;->key:Ljava/lang/String;

    return-void
.end method

.method private static toString(Ljava/lang/Object;)Ljava/lang/String;
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
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lnet/oauth/signature/OAuthSignatureMethod$ComparableParameter;

    invoke-virtual {p0, p1}, Lnet/oauth/signature/OAuthSignatureMethod$ComparableParameter;->compareTo(Lnet/oauth/signature/OAuthSignatureMethod$ComparableParameter;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lnet/oauth/signature/OAuthSignatureMethod$ComparableParameter;)I
    .locals 2

    iget-object v0, p0, Lnet/oauth/signature/OAuthSignatureMethod$ComparableParameter;->key:Ljava/lang/String;

    iget-object v1, p1, Lnet/oauth/signature/OAuthSignatureMethod$ComparableParameter;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/oauth/signature/OAuthSignatureMethod$ComparableParameter;->key:Ljava/lang/String;

    return-object v0
.end method
