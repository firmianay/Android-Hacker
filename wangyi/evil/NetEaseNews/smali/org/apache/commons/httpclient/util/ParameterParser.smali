.class public Lorg/apache/commons/httpclient/util/ParameterParser;
.super Ljava/lang/Object;


# instance fields
.field private chars:[C

.field private i1:I

.field private i2:I

.field private len:I

.field private pos:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->chars:[C

    iput v1, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->pos:I

    iput v1, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->len:I

    iput v1, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i1:I

    iput v1, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i2:I

    return-void
.end method

.method private getToken(Z)Ljava/lang/String;
    .locals 5

    const/16 v2, 0x22

    :goto_0
    iget v0, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i1:I

    iget v1, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i2:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->chars:[C

    iget v1, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i1:I

    aget-char v0, v0, v1

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i1:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i1:I

    goto :goto_0

    :cond_0
    :goto_1
    iget v0, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i2:I

    iget v1, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i1:I

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->chars:[C

    iget v1, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i2:I

    add-int/lit8 v1, v1, -0x1

    aget-char v0, v0, v1

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i2:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i2:I

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    iget v0, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i2:I

    iget v1, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i1:I

    sub-int/2addr v0, v1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->chars:[C

    iget v1, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i1:I

    aget-char v0, v0, v1

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->chars:[C

    iget v1, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i2:I

    add-int/lit8 v1, v1, -0x1

    aget-char v0, v0, v1

    if-ne v0, v2, :cond_2

    iget v0, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i1:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i1:I

    iget v0, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i2:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i2:I

    :cond_2
    const/4 v0, 0x0

    iget v1, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i2:I

    iget v2, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i1:I

    if-lt v1, v2, :cond_3

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->chars:[C

    iget v2, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i1:I

    iget v3, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i2:I

    iget v4, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i1:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    :cond_3
    return-object v0
.end method

.method private hasChar()Z
    .locals 2

    iget v0, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->pos:I

    iget v1, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->len:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isOneOf(C[C)Z
    .locals 3

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_0

    aget-char v2, p2, v0

    if-ne p1, v2, :cond_1

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private parseQuotedToken([C)Ljava/lang/String;
    .locals 6

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->pos:I

    iput v0, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i1:I

    iget v0, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->pos:I

    iput v0, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i2:I

    move v0, v1

    move v2, v1

    :goto_0
    invoke-direct {p0}, Lorg/apache/commons/httpclient/util/ParameterParser;->hasChar()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->chars:[C

    iget v5, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->pos:I

    aget-char v4, v4, v5

    if-nez v2, :cond_1

    invoke-direct {p0, v4, p1}, Lorg/apache/commons/httpclient/util/ParameterParser;->isOneOf(C[C)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    invoke-direct {p0, v3}, Lorg/apache/commons/httpclient/util/ParameterParser;->getToken(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    if-nez v0, :cond_2

    const/16 v5, 0x22

    if-ne v4, v5, :cond_2

    if-nez v2, :cond_3

    move v2, v3

    :cond_2
    :goto_1
    if-nez v0, :cond_4

    const/16 v0, 0x5c

    if-ne v4, v0, :cond_4

    move v0, v3

    :goto_2
    iget v4, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i2:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i2:I

    iget v4, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->pos:I

    goto :goto_0

    :cond_3
    move v2, v1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method private parseToken([C)Ljava/lang/String;
    .locals 2

    iget v0, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->pos:I

    iput v0, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i1:I

    iget v0, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->pos:I

    iput v0, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i2:I

    :goto_0
    invoke-direct {p0}, Lorg/apache/commons/httpclient/util/ParameterParser;->hasChar()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->chars:[C

    iget v1, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->pos:I

    aget-char v0, v0, v1

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/httpclient/util/ParameterParser;->isOneOf(C[C)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/httpclient/util/ParameterParser;->getToken(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget v0, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i2:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i2:I

    iget v0, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->pos:I

    goto :goto_0
.end method


# virtual methods
.method public parse(Ljava/lang/String;C)Ljava/util/List;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/httpclient/util/ParameterParser;->parse([CC)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public parse([CC)Ljava/util/List;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/apache/commons/httpclient/util/ParameterParser;->parse([CIIC)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public parse([CIIC)Ljava/util/List;
    .locals 7

    const/16 v6, 0x3d

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->chars:[C

    iput p2, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->pos:I

    iput p3, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->len:I

    :cond_1
    :goto_1
    invoke-direct {p0}, Lorg/apache/commons/httpclient/util/ParameterParser;->hasChar()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x2

    new-array v0, v0, [C

    aput-char v6, v0, v4

    aput-char p4, v0, v5

    invoke-direct {p0, v0}, Lorg/apache/commons/httpclient/util/ParameterParser;->parseToken([C)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/apache/commons/httpclient/util/ParameterParser;->hasChar()Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->pos:I

    aget-char v3, p1, v3

    if-ne v3, v6, :cond_2

    iget v0, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->pos:I

    new-array v0, v5, [C

    aput-char p4, v0, v4

    invoke-direct {p0, v0}, Lorg/apache/commons/httpclient/util/ParameterParser;->parseQuotedToken([C)Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-direct {p0}, Lorg/apache/commons/httpclient/util/ParameterParser;->hasChar()Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->pos:I

    aget-char v3, p1, v3

    if-ne v3, p4, :cond_3

    iget v3, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->pos:I

    :cond_3
    if-eqz v2, :cond_1

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v0, :cond_1

    :cond_4
    new-instance v3, Lorg/apache/commons/httpclient/NameValuePair;

    invoke-direct {v3, v2, v0}, Lorg/apache/commons/httpclient/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method
