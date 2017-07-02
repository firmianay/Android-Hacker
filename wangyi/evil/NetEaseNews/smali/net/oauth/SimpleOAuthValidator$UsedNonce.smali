.class Lnet/oauth/SimpleOAuthValidator$UsedNonce;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final sortKey:Ljava/lang/String;


# direct methods
.method varargs constructor <init>(J[Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v1, "%20d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, p3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, p3, v1

    const-string v4, "&"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v0, :cond_0

    const-string v0, " "

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lnet/oauth/OAuth;->percentEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/oauth/SimpleOAuthValidator$UsedNonce;->sortKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lnet/oauth/SimpleOAuthValidator$UsedNonce;

    invoke-virtual {p0, p1}, Lnet/oauth/SimpleOAuthValidator$UsedNonce;->compareTo(Lnet/oauth/SimpleOAuthValidator$UsedNonce;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lnet/oauth/SimpleOAuthValidator$UsedNonce;)I
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lnet/oauth/SimpleOAuthValidator$UsedNonce;->sortKey:Ljava/lang/String;

    iget-object v1, p1, Lnet/oauth/SimpleOAuthValidator$UsedNonce;->sortKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ne p1, p0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lnet/oauth/SimpleOAuthValidator$UsedNonce;->sortKey:Ljava/lang/String;

    check-cast p1, Lnet/oauth/SimpleOAuthValidator$UsedNonce;

    iget-object v1, p1, Lnet/oauth/SimpleOAuthValidator$UsedNonce;->sortKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method getTimestamp()J
    .locals 3

    iget-object v0, p0, Lnet/oauth/SimpleOAuthValidator$UsedNonce;->sortKey:Ljava/lang/String;

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lnet/oauth/SimpleOAuthValidator$UsedNonce;->sortKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :cond_0
    iget-object v1, p0, Lnet/oauth/SimpleOAuthValidator$UsedNonce;->sortKey:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lnet/oauth/SimpleOAuthValidator$UsedNonce;->sortKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/oauth/SimpleOAuthValidator$UsedNonce;->sortKey:Ljava/lang/String;

    return-object v0
.end method
