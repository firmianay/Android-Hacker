.class public Lorg/apache/commons/httpclient/util/URIUtil$Coder;
.super Lorg/apache/commons/httpclient/URI;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/httpclient/URI;-><init>()V

    return-void
.end method

.method public static decode([CLjava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Lorg/apache/commons/httpclient/URI;->decode([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encode(Ljava/lang/String;Ljava/util/BitSet;Ljava/lang/String;)[C
    .locals 1

    invoke-static {p0, p1, p2}, Lorg/apache/commons/httpclient/URI;->encode(Ljava/lang/String;Ljava/util/BitSet;Ljava/lang/String;)[C

    move-result-object v0

    return-object v0
.end method

.method public static replace(Ljava/lang/String;CC)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    move v0, v1

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    if-gez v2, :cond_1

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public static replace(Ljava/lang/String;[C[C)Ljava/lang/String;
    .locals 3

    array-length v0, p1

    :goto_0
    if-lez v0, :cond_0

    aget-char v1, p1, v0

    aget-char v2, p2, v0

    invoke-static {p0, v1, v2}, Lorg/apache/commons/httpclient/util/URIUtil$Coder;->replace(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static verifyEscaped([C)Z
    .locals 6

    const/16 v5, 0x10

    const/4 v4, -0x1

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_3

    aget-char v2, p0, v0

    const/16 v3, 0x80

    if-le v2, v3, :cond_1

    :cond_0
    :goto_1
    return v1

    :cond_1
    const/16 v3, 0x25

    if-ne v2, v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    aget-char v2, p0, v0

    invoke-static {v2, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    if-eq v2, v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    aget-char v2, p0, v0

    invoke-static {v2, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    if-eq v2, v4, :cond_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_1
.end method
