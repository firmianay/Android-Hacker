.class public Lcom/netease/nr/biz/news/detailpage/a/a/w;
.super Lcom/netease/nr/biz/news/detailpage/a/a/x;


# instance fields
.field private x:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLcom/netease/nr/biz/news/detailpage/ag;IILjava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    invoke-direct/range {p0 .. p7}, Lcom/netease/nr/biz/news/detailpage/a/a/x;-><init>(Landroid/content/Context;ZLcom/netease/nr/biz/news/detailpage/ag;IILjava/lang/String;Ljava/lang/String;)V

    iput-boolean p8, p0, Lcom/netease/nr/biz/news/detailpage/a/a/w;->x:Z

    iget-boolean v0, p0, Lcom/netease/nr/biz/news/detailpage/a/a/w;->x:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netease/nr/biz/news/detailpage/a/a/w;->r:Z

    if-eqz v0, :cond_1

    const-string v0, "small_detailpage_image_border_bg.jpg"

    :goto_0
    iput-object v0, p0, Lcom/netease/nr/biz/news/detailpage/a/a/w;->c:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/netease/nr/biz/news/detailpage/a/a/w;->q:Z

    if-eqz v0, :cond_2

    const-string v0, "width:170px; height:170px; "

    :goto_1
    iput-object v0, p0, Lcom/netease/nr/biz/news/detailpage/a/a/w;->v:Ljava/lang/String;

    :cond_0
    return-void

    :cond_1
    const-string v0, "night_small_detailpage_image_border_bg.jpg"

    goto :goto_0

    :cond_2
    const-string v0, "width:120px; height:120px; "

    goto :goto_1
.end method

.method private e()Ljava/lang/String;
    .locals 1

    const-string v0, "src=\'img_set_flag.png\' style=\'position:absolute; width:40px; height: 22px;  top:89%; left: 69%; border: none;\'"

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/detailpage/a/a/w;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/detailpage/a/a/w;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Lcom/netease/nr/biz/news/detailpage/a/a/w;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, ""

    iget-boolean v3, p0, Lcom/netease/nr/biz/news/detailpage/a/a/w;->x:Z

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/netease/nr/biz/news/detailpage/a/a/w;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Lcom/netease/nr/biz/news/detailpage/a/a/w;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/netease/nr/biz/news/detailpage/a/a/w;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v4}, Lcom/netease/nr/biz/news/detailpage/a/a/w;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/netease/nr/biz/news/detailpage/a/a/w;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/a/a/w;->n:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lcom/netease/nr/biz/news/detailpage/a/a/w;->n:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method
