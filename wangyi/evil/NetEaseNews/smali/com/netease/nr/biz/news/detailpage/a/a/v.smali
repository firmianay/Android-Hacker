.class public Lcom/netease/nr/biz/news/detailpage/a/a/v;
.super Lcom/netease/nr/biz/news/detailpage/a/a/n;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/netease/nr/biz/news/detailpage/a/a/n;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v2, 0x0

    move v1, v2

    move v0, v2

    :goto_0
    if-ge v1, p2, :cond_1

    :try_start_0
    rem-int/lit8 v3, v1, 0x2

    if-nez v3, :cond_0

    invoke-virtual {p1, p5, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p1, v3, p3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v0, v3

    add-int/2addr v0, v2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p5, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v0, p4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {p4}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    add-int/2addr v0, v3

    add-int/2addr v0, v2

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    invoke-direct {p0, p1}, Lcom/netease/nr/biz/news/detailpage/a/a/v;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v0, "<!--@@H1-->"

    invoke-static {v1, v0}, Lcom/netease/util/h/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)I

    move-result v2

    const-string v0, "<!--@@PRE-->"

    invoke-static {v1, v0}, Lcom/netease/util/h/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)I

    move-result v6

    const-string v0, "<!--@@H2-->"

    invoke-static {v1, v0}, Lcom/netease/util/h/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)I

    move-result v7

    const-string v0, "<!--@@END-->"

    invoke-static {v1, v0}, Lcom/netease/util/h/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)I

    move-result v8

    if-lez v2, :cond_0

    rem-int/lit8 v0, v2, 0x2

    if-nez v0, :cond_0

    const-string v3, "<div class=\'h1style contentpaddingstyle\'>"

    const-string v4, "</div>"

    const-string v5, "<!--@@H1-->"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/netease/nr/biz/news/detailpage/a/a/v;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-lez v6, :cond_1

    rem-int/lit8 v0, v6, 0x2

    if-nez v0, :cond_1

    const-string v3, "<div class=\'digeststyle_start\'> <span class=\'digesttagstyle\'>\u5bfc\u8bed</span>"

    const-string v4, "</div>"

    const-string v5, "<!--@@PRE-->"

    move-object v0, p0

    move v2, v6

    invoke-direct/range {v0 .. v5}, Lcom/netease/nr/biz/news/detailpage/a/a/v;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-lez v7, :cond_2

    rem-int/lit8 v0, v7, 0x2

    if-nez v0, :cond_2

    const-string v3, "<div class=\'h2style contentpaddingstyle\'>"

    const-string v4, "</div>"

    const-string v5, "<!--@@H2-->"

    move-object v0, p0

    move v2, v7

    invoke-direct/range {v0 .. v5}, Lcom/netease/nr/biz/news/detailpage/a/a/v;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-lez v8, :cond_3

    rem-int/lit8 v0, v8, 0x2

    if-nez v0, :cond_3

    const-string v3, "<div class=\'digeststyle_end\'> <span class=\'digesttagstyle\'>\u7ed3\u8bed</span>"

    const-string v4, "</div>"

    const-string v5, "<!--@@END-->"

    move-object v0, p0

    move v2, v8

    invoke-direct/range {v0 .. v5}, Lcom/netease/nr/biz/news/detailpage/a/a/v;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 4

    const/4 v3, -0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "<p>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    const-string v2, "</p>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v3, :cond_0

    if-eq v2, v3, :cond_0

    const-string v3, "</p>"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    const-string v3, "</div>"

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<div class=\'schemestartstyle\'>"

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/netease/nr/biz/news/detailpage/a/a/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
