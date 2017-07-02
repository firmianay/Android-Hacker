.class public Lcom/netease/nr/biz/news/detailpage/a/a/f;
.super Lcom/netease/nr/biz/news/detailpage/a/a/l;


# instance fields
.field protected a:Lcom/netease/nr/biz/news/detailpage/a/a/m;

.field protected b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLcom/netease/nr/biz/news/detailpage/ag;Lcom/netease/nr/biz/news/detailpage/a/a/m;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p5

    move v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v1 .. v8}, Lcom/netease/nr/biz/news/detailpage/a/a/l;-><init>(Landroid/content/Context;ZLcom/netease/nr/biz/news/detailpage/ag;IILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/netease/nr/biz/news/detailpage/a/a/f;->b:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/netease/nr/biz/news/detailpage/a/a/f;->r:Z

    if-eqz v1, :cond_3

    const-string v1, "detailpage_image_border_bg.jpg"

    :goto_0
    iput-object v1, p0, Lcom/netease/nr/biz/news/detailpage/a/a/f;->c:Ljava/lang/String;

    iget v1, p0, Lcom/netease/nr/biz/news/detailpage/a/a/f;->d:I

    invoke-static {v1}, Lcom/netease/nr/biz/news/detailpage/a/a/f;->a(I)I

    move-result v1

    iput v1, p0, Lcom/netease/nr/biz/news/detailpage/a/a/f;->e:I

    iget v1, p0, Lcom/netease/nr/biz/news/detailpage/a/a/f;->d:I

    invoke-static {v1}, Lcom/netease/nr/biz/news/detailpage/a/a/f;->b(I)I

    move-result v1

    iput v1, p0, Lcom/netease/nr/biz/news/detailpage/a/a/f;->f:I

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/a/a/f;->l:Ljava/lang/String;

    invoke-static {v1}, Lcom/netease/nr/biz/news/detailpage/af;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ""

    iput-object v1, p0, Lcom/netease/nr/biz/news/detailpage/a/a/f;->l:Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/a/a/f;->o:Landroid/content/Context;

    iget-object v2, p0, Lcom/netease/nr/biz/news/detailpage/a/a/f;->l:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/netease/util/c/e;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/a/a/f;->t:Lcom/netease/nr/biz/news/detailpage/ag;

    iget v2, p0, Lcom/netease/nr/biz/news/detailpage/a/a/f;->i:I

    invoke-virtual {v1, v2}, Lcom/netease/nr/biz/news/detailpage/ag;->a(I)V

    const-string v1, ""

    iput-object v1, p0, Lcom/netease/nr/biz/news/detailpage/a/a/f;->l:Ljava/lang/String;

    :cond_1
    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/a/a/f;->l:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "display:none;"

    iput-object v1, p0, Lcom/netease/nr/biz/news/detailpage/a/a/f;->j:Ljava/lang/String;

    const-string v1, "null_src.png"

    iput-object v1, p0, Lcom/netease/nr/biz/news/detailpage/a/a/f;->k:Ljava/lang/String;

    :goto_1
    iput-object p4, p0, Lcom/netease/nr/biz/news/detailpage/a/a/f;->a:Lcom/netease/nr/biz/news/detailpage/a/a/m;

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/a/a/f;->a:Lcom/netease/nr/biz/news/detailpage/a/a/m;

    if-nez v1, :cond_2

    const-string v1, "null_src.png"

    iget-object v2, p0, Lcom/netease/nr/biz/news/detailpage/a/a/f;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lcom/netease/nr/biz/news/detailpage/a/a/f;->o:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/netease/nr/biz/news/detailpage/a/a/f;->a(Landroid/content/Context;[I)Lcom/netease/nr/biz/news/detailpage/a/a/m;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/nr/biz/news/detailpage/a/a/f;->a:Lcom/netease/nr/biz/news/detailpage/a/a/m;

    :cond_2
    return-void

    :cond_3
    const-string v1, "night_detailpage_image_border_bg.jpg"

    goto :goto_0

    :cond_4
    const-string v1, "displaylock;"

    iput-object v1, p0, Lcom/netease/nr/biz/news/detailpage/a/a/f;->j:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/a/a/f;->o:Landroid/content/Context;

    iget-object v2, p0, Lcom/netease/nr/biz/news/detailpage/a/a/f;->l:Ljava/lang/String;

    invoke-static {v2}, Lcom/netease/util/cache/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/util/c/e;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/nr/biz/news/detailpage/a/a/f;->k:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/netease/nr/biz/news/detailpage/a/a/f;->s:Z

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/a/a/f;->k:Ljava/lang/String;

    invoke-static {v1}, Lcom/netease/util/c/e;->c(Ljava/lang/String;)[I

    move-result-object v1

    goto :goto_2
.end method

.method public static a(I)I
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    int-to-float v0, p0

    const v1, 0x3f666666    # 0.9f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/nr/biz/news/detailpage/a/a/m;
    .locals 1

    invoke-static {p1}, Lcom/netease/util/c/e;->b(Ljava/lang/String;)[I

    move-result-object v0

    invoke-static {p0, v0}, Lcom/netease/nr/biz/news/detailpage/a/a/f;->b(Landroid/content/Context;[I)Lcom/netease/nr/biz/news/detailpage/a/a/m;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;[I)Lcom/netease/nr/biz/news/detailpage/a/a/m;
    .locals 9

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-static {p0}, Lcom/netease/util/i/b;->j(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Lcom/netease/nr/biz/news/detailpage/a/a/f;->a(I)I

    move-result v0

    invoke-static {v0}, Lcom/netease/nr/biz/news/detailpage/a/a/f;->b(I)I

    move-result v1

    new-instance v2, Lcom/netease/nr/biz/news/detailpage/a/a/m;

    invoke-direct {v2}, Lcom/netease/nr/biz/news/detailpage/a/a/m;-><init>()V

    iput v0, v2, Lcom/netease/nr/biz/news/detailpage/a/a/m;->c:I

    iput v1, v2, Lcom/netease/nr/biz/news/detailpage/a/a/m;->d:I

    if-eqz p1, :cond_3

    array-length v3, p1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    aget v4, p1, v5

    int-to-float v4, v4

    div-float/2addr v4, v3

    float-to-int v4, v4

    const/4 v5, 0x1

    aget v5, p1, v5

    int-to-float v5, v5

    div-float v3, v5, v3

    float-to-int v3, v3

    int-to-float v5, v4

    int-to-float v6, v0

    div-float/2addr v5, v6

    int-to-float v6, v3

    int-to-float v7, v1

    div-float/2addr v6, v7

    iput v4, v2, Lcom/netease/nr/biz/news/detailpage/a/a/m;->a:I

    iput v3, v2, Lcom/netease/nr/biz/news/detailpage/a/a/m;->b:I

    cmpl-float v7, v5, v8

    if-nez v7, :cond_0

    cmpl-float v7, v6, v8

    if-nez v7, :cond_0

    :try_start_0
    iput v0, v2, Lcom/netease/nr/biz/news/detailpage/a/a/m;->e:I

    iput v1, v2, Lcom/netease/nr/biz/news/detailpage/a/a/m;->f:I

    const/4 v0, 0x0

    iput v0, v2, Lcom/netease/nr/biz/news/detailpage/a/a/m;->g:I

    const/4 v0, 0x0

    iput v0, v2, Lcom/netease/nr/biz/news/detailpage/a/a/m;->h:I

    :goto_0
    return-object v2

    :cond_0
    cmpl-float v7, v5, v6

    if-nez v7, :cond_1

    iput v0, v2, Lcom/netease/nr/biz/news/detailpage/a/a/m;->e:I

    iput v1, v2, Lcom/netease/nr/biz/news/detailpage/a/a/m;->f:I

    const/4 v0, 0x0

    iput v0, v2, Lcom/netease/nr/biz/news/detailpage/a/a/m;->g:I

    const/4 v0, 0x0

    iput v0, v2, Lcom/netease/nr/biz/news/detailpage/a/a/m;->h:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    :try_start_1
    iput v1, v2, Lcom/netease/nr/biz/news/detailpage/a/a/m;->f:I

    int-to-float v1, v1

    int-to-float v4, v4

    int-to-float v3, v3

    div-float v3, v4, v3

    mul-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v2, Lcom/netease/nr/biz/news/detailpage/a/a/m;->e:I

    iget v1, v2, Lcom/netease/nr/biz/news/detailpage/a/a/m;->e:I

    int-to-float v1, v1

    int-to-float v0, v0

    sub-float v0, v1, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, v2, Lcom/netease/nr/biz/news/detailpage/a/a/m;->g:I

    const/4 v0, 0x0

    iput v0, v2, Lcom/netease/nr/biz/news/detailpage/a/a/m;->h:I

    goto :goto_0

    :cond_2
    iput v0, v2, Lcom/netease/nr/biz/news/detailpage/a/a/m;->e:I

    int-to-float v0, v0

    int-to-float v1, v3

    int-to-float v3, v4

    div-float/2addr v1, v3

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, v2, Lcom/netease/nr/biz/news/detailpage/a/a/m;->f:I

    const/4 v0, 0x0

    iput v0, v2, Lcom/netease/nr/biz/news/detailpage/a/a/m;->g:I

    const/4 v0, 0x0

    iput v0, v2, Lcom/netease/nr/biz/news/detailpage/a/a/m;->h:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_3
    iput v0, v2, Lcom/netease/nr/biz/news/detailpage/a/a/m;->e:I

    iput v1, v2, Lcom/netease/nr/biz/news/detailpage/a/a/m;->f:I

    goto :goto_0
.end method

.method public static b(I)I
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/netease/nr/biz/news/detailpage/a/a/f;->a(I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f26f4df

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;[I)Lcom/netease/nr/biz/news/detailpage/a/a/m;
    .locals 11

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/netease/util/i/b;->j(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Lcom/netease/nr/biz/news/detailpage/a/a/f;->a(I)I

    move-result v5

    if-eqz p1, :cond_5

    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    aget v1, p1, v2

    int-to-float v1, v1

    div-float/2addr v1, v0

    float-to-int v4, v1

    const/4 v1, 0x1

    aget v1, p1, v1

    int-to-float v1, v1

    div-float v0, v1, v0

    float-to-int v3, v0

    invoke-static {p0}, Lcom/netease/util/i/b;->b(Landroid/content/Context;)Z

    move-result v2

    new-instance v0, Lcom/netease/nr/biz/news/detailpage/a/a/m;

    invoke-direct {v0}, Lcom/netease/nr/biz/news/detailpage/a/a/m;-><init>()V

    if-eqz v2, :cond_0

    const/16 v1, 0x7e

    :goto_0
    if-eqz v2, :cond_1

    const/16 v2, 0x259

    :goto_1
    int-to-float v6, v1

    int-to-float v7, v5

    div-float/2addr v6, v7

    int-to-float v7, v2

    int-to-float v8, v5

    div-float/2addr v7, v8

    int-to-float v8, v3

    int-to-float v9, v4

    div-float/2addr v8, v9

    :try_start_0
    iput v4, v0, Lcom/netease/nr/biz/news/detailpage/a/a/m;->a:I

    iput v3, v0, Lcom/netease/nr/biz/news/detailpage/a/a/m;->b:I

    cmpg-float v6, v8, v6

    if-gez v6, :cond_4

    if-ge v3, v1, :cond_2

    int-to-float v2, v1

    int-to-float v4, v4

    int-to-float v3, v3

    div-float v3, v4, v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    :goto_2
    iput v5, v0, Lcom/netease/nr/biz/news/detailpage/a/a/m;->c:I

    iput v1, v0, Lcom/netease/nr/biz/news/detailpage/a/a/m;->d:I

    sub-int v3, v2, v5

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, v0, Lcom/netease/nr/biz/news/detailpage/a/a/m;->g:I

    const/4 v3, 0x0

    iput v3, v0, Lcom/netease/nr/biz/news/detailpage/a/a/m;->h:I

    iput v2, v0, Lcom/netease/nr/biz/news/detailpage/a/a/m;->e:I

    iput v1, v0, Lcom/netease/nr/biz/news/detailpage/a/a/m;->f:I

    :goto_3
    return-object v0

    :cond_0
    const/16 v1, 0x3e

    goto :goto_0

    :cond_1
    const/16 v2, 0x190

    goto :goto_1

    :cond_2
    if-le v3, v2, :cond_3

    int-to-float v1, v2

    int-to-float v4, v4

    int-to-float v3, v3

    div-float v3, v4, v3

    mul-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    move v10, v2

    move v2, v1

    move v1, v10

    goto :goto_2

    :cond_3
    move v1, v3

    move v2, v4

    goto :goto_2

    :cond_4
    cmpl-float v1, v8, v7

    if-lez v1, :cond_6

    int-to-float v1, v5

    int-to-float v3, v3

    int-to-float v4, v4

    div-float/2addr v3, v4

    mul-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v5, v0, Lcom/netease/nr/biz/news/detailpage/a/a/m;->c:I

    iput v2, v0, Lcom/netease/nr/biz/news/detailpage/a/a/m;->d:I

    iput v5, v0, Lcom/netease/nr/biz/news/detailpage/a/a/m;->e:I

    iput v1, v0, Lcom/netease/nr/biz/news/detailpage/a/a/m;->f:I

    const/4 v2, 0x0

    iput v2, v0, Lcom/netease/nr/biz/news/detailpage/a/a/m;->g:I

    iget v2, v0, Lcom/netease/nr/biz/news/detailpage/a/a/m;->d:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/netease/nr/biz/news/detailpage/a/a/m;->h:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    const/4 v0, 0x0

    goto :goto_3

    :cond_6
    int-to-float v1, v5

    int-to-float v2, v3

    int-to-float v3, v4

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    :try_start_1
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v5, v0, Lcom/netease/nr/biz/news/detailpage/a/a/m;->c:I

    iput v1, v0, Lcom/netease/nr/biz/news/detailpage/a/a/m;->d:I

    iput v5, v0, Lcom/netease/nr/biz/news/detailpage/a/a/m;->e:I

    iput v1, v0, Lcom/netease/nr/biz/news/detailpage/a/a/m;->f:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/netease/nr/biz/news/detailpage/a/a/m;->g:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/netease/nr/biz/news/detailpage/a/a/m;->h:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-webkit-border-image: url("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/a/a/f;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") 4 4 4 4 stretch stretch; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zoomOut("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/netease/nr/biz/news/detailpage/a/a/f;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "); "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "style=\'position:relative; text-align:center; overflow: hidden; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " width:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/netease/nr/biz/news/detailpage/a/a/f;->a:Lcom/netease/nr/biz/news/detailpage/a/a/m;

    iget v3, v3, Lcom/netease/nr/biz/news/detailpage/a/a/m;->c:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "px; height:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/netease/nr/biz/news/detailpage/a/a/f;->a:Lcom/netease/nr/biz/news/detailpage/a/a/m;

    iget v3, v3, Lcom/netease/nr/biz/news/detailpage/a/a/m;->d:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "px;\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "id=\'largepic"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/netease/nr/biz/news/detailpage/a/a/f;->i:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\' onclick=\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " class=\'bigimgmarginstyle\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected b()Ljava/lang/String;
    .locals 5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "id=\'imgContent_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/netease/nr/biz/news/detailpage/a/a/f;->i:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' src=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/netease/nr/biz/news/detailpage/a/a/f;->k:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' style=\'position: absolute; "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "top: 0px; "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "left: -"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/nr/biz/news/detailpage/a/a/f;->a:Lcom/netease/nr/biz/news/detailpage/a/a/m;

    iget v3, v3, Lcom/netease/nr/biz/news/detailpage/a/a/m;->g:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "px; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clip:rect(auto "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/netease/nr/biz/news/detailpage/a/a/f;->a:Lcom/netease/nr/biz/news/detailpage/a/a/m;

    iget v3, v3, Lcom/netease/nr/biz/news/detailpage/a/a/m;->g:I

    iget-object v4, p0, Lcom/netease/nr/biz/news/detailpage/a/a/f;->a:Lcom/netease/nr/biz/news/detailpage/a/a/m;

    iget v4, v4, Lcom/netease/nr/biz/news/detailpage/a/a/m;->c:I

    add-int/2addr v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "px "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/netease/nr/biz/news/detailpage/a/a/f;->a:Lcom/netease/nr/biz/news/detailpage/a/a/m;

    iget v3, v3, Lcom/netease/nr/biz/news/detailpage/a/a/m;->d:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "px "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/a/a/f;->a:Lcom/netease/nr/biz/news/detailpage/a/a/m;

    iget v0, v0, Lcom/netease/nr/biz/news/detailpage/a/a/m;->g:I

    if-nez v0, :cond_0

    const-string v0, "auto); "

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/nr/biz/news/detailpage/a/a/f;->a:Lcom/netease/nr/biz/news/detailpage/a/a/m;

    iget v3, v3, Lcom/netease/nr/biz/news/detailpage/a/a/m;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "px; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "height: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/nr/biz/news/detailpage/a/a/f;->a:Lcom/netease/nr/biz/news/detailpage/a/a/m;

    iget v3, v3, Lcom/netease/nr/biz/news/detailpage/a/a/m;->f:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "px; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/netease/nr/biz/news/detailpage/a/a/f;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/netease/nr/biz/news/detailpage/a/a/f;->a:Lcom/netease/nr/biz/news/detailpage/a/a/m;

    iget v4, v4, Lcom/netease/nr/biz/news/detailpage/a/a/m;->g:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "px); "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected c()Ljava/lang/String;
    .locals 6

    const/high16 v2, 0x40000000    # 2.0f

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/a/a/f;->a:Lcom/netease/nr/biz/news/detailpage/a/a/m;

    iget v0, v0, Lcom/netease/nr/biz/news/detailpage/a/a/m;->d:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/high16 v1, 0x42340000    # 45.0f

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/a/a/f;->a:Lcom/netease/nr/biz/news/detailpage/a/a/m;

    iget v1, v1, Lcom/netease/nr/biz/news/detailpage/a/a/m;->c:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/high16 v2, 0x42700000    # 60.0f

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    sub-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id=\'percent_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/netease/nr/biz/news/detailpage/a/a/f;->i:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " src="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'img/loading0.png\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " style=\'position: absolute; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/netease/nr/biz/news/detailpage/a/a/f;->g:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "width: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x78

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "px; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "height: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5a

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "px; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "top: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "px; "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "left: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "px; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/netease/nr/biz/news/detailpage/a/a/f;->u:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/netease/nr/biz/news/detailpage/a/a/f;->s:Z

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "visibility: hidden;"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method
