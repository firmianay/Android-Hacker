.class public Lcom/netease/ad/c/d;
.super Lcom/netease/ad/c/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/netease/ad/c/a;-><init>()V

    return-void
.end method


# virtual methods
.method a()Lcom/netease/ad/a/a/f;
    .locals 2

    new-instance v0, Lcom/netease/ad/a/a/f;

    invoke-direct {v0}, Lcom/netease/ad/a/a/f;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/ad/a/a/f;->a(Z)V

    const-string v1, "http://ip.ws.126.net/ipquery"

    invoke-virtual {v0, v1}, Lcom/netease/ad/a/a/f;->b(Ljava/lang/String;)V

    return-object v0
.end method

.method a(Ljava/io/InputStream;)Lcom/netease/ad/e/a;
    .locals 10

    const/4 v1, -0x1

    new-instance v4, Lcom/netease/ad/e/d;

    invoke-direct {v4}, Lcom/netease/ad/e/d;-><init>()V

    invoke-static {p1}, Lcom/netease/ad/f/f;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    :try_start_0
    new-instance v5, Ljava/lang/String;

    const/4 v2, 0x0

    array-length v3, v0

    const-string v6, "gb2312"

    invoke-direct {v5, v0, v2, v3, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    const-string v0, ""

    const-string v2, ""

    const-string v6, "city:\""

    const-string v7, "province:\""

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-ltz v8, :cond_5

    const-string v3, "\""

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v9, v8

    invoke-virtual {v5, v3, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    :goto_0
    if-ltz v8, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v9, v8

    if-le v3, v9, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v8

    invoke-virtual {v5, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_1

    const-string v1, "\""

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v5, v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    :cond_1
    if-ltz v3, :cond_2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v3

    if-le v1, v6, :cond_2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v3

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-static {v2}, Lcom/netease/ad/f/f;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v4, v2}, Lcom/netease/ad/e/d;->b(Ljava/lang/String;)V

    :cond_3
    invoke-static {v0}, Lcom/netease/ad/f/f;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v4, v0}, Lcom/netease/ad/e/d;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    return-object v4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    :cond_5
    move v3, v1

    goto :goto_0
.end method
