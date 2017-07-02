.class public Lcom/netease/nr/biz/news/a/c/b/i;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/List;

.field private b:I

.field private c:Landroid/content/Context;

.field private d:Lcom/netease/util/j/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/netease/nr/biz/news/a/c/b/i;->a:Ljava/util/List;

    iput-object p1, p0, Lcom/netease/nr/biz/news/a/c/b/i;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/i;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/util/j/a;->a(Landroid/content/Context;)Lcom/netease/util/j/a;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/i;->d:Lcom/netease/util/j/a;

    return-void
.end method

.method private a(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getId()I

    move-result v0

    const v1, 0x7f0c010f

    if-ne v0, v1, :cond_1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Lcom/netease/nr/biz/news/a/c/b/j;->a(F)I

    move-result v0

    iput v0, p0, Lcom/netease/nr/biz/news/a/c/b/i;->b:I

    iget v0, p0, Lcom/netease/nr/biz/news/a/c/b/i;->b:I

    if-lez v0, :cond_0

    const v0, 0x7f020133

    :goto_0
    iget-object v1, p0, Lcom/netease/nr/biz/news/a/c/b/i;->d:Lcom/netease/util/j/a;

    invoke-virtual {v1, p1, v0}, Lcom/netease/util/j/a;->a(Landroid/widget/ImageView;I)V

    :goto_1
    return-void

    :cond_0
    const v0, 0x7f020132

    goto :goto_0

    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto :goto_1
.end method

.method private a(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result v0

    const v1, 0x7f0c0110

    if-ne v0, v1, :cond_1

    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-double v1, v1

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v1, 0x2

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    :cond_0
    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result v0

    const v1, 0x7f0c00f4

    if-ne v0, v1, :cond_0

    const-string v0, "Hang Seng Index"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/i;->c:Landroid/content/Context;

    const v1, 0x7f0b00d7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/i;->a:Ljava/util/List;

    return-object v0
.end method

.method public a(Landroid/view/View;I)V
    .locals 9

    const v8, 0x7f0700fb

    const v5, 0x7f0700f7

    const v0, 0x7f0c010d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0c00f4

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0c0110

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0c010f

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f0c0119

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget-object v4, p0, Lcom/netease/nr/biz/news/a/c/b/i;->a:Ljava/util/List;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/netease/nr/biz/news/a/c/b/i;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, p2, :cond_1

    iget-object v4, p0, Lcom/netease/nr/biz/news/a/c/b/i;->a:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v7, "price"

    invoke-static {v4, v7}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lcom/netease/nr/biz/news/a/c/b/i;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/netease/nr/biz/news/a/c/b/i;->a:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v7, "name"

    invoke-static {v4, v7}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v4}, Lcom/netease/nr/biz/news/a/c/b/i;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/netease/nr/biz/news/a/c/b/i;->a:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v7, "percent"

    invoke-static {v4, v7}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcom/netease/nr/biz/news/a/c/b/i;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/netease/nr/biz/news/a/c/b/i;->a:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v7, "updown"

    invoke-static {v4, v7}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/netease/nr/biz/news/a/c/b/i;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/netease/nr/biz/news/a/c/b/i;->d:Lcom/netease/util/j/a;

    iget v3, p0, Lcom/netease/nr/biz/news/a/c/b/i;->b:I

    if-lez v3, :cond_0

    move v3, v5

    :goto_0
    invoke-virtual {v4, v6, v3}, Lcom/netease/util/j/a;->b(Landroid/view/View;I)V

    :goto_1
    iget-object v3, p0, Lcom/netease/nr/biz/news/a/c/b/i;->d:Lcom/netease/util/j/a;

    const v4, 0x7f0700f9

    invoke-virtual {v3, v0, v4}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/i;->d:Lcom/netease/util/j/a;

    invoke-virtual {v0, v1, v8}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/i;->d:Lcom/netease/util/j/a;

    invoke-virtual {v0, v2, v8}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    return-void

    :cond_0
    const v3, 0x7f0700f5

    goto :goto_0

    :cond_1
    const-string v3, "----"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v3, "----"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v3, "0.00%"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/netease/nr/biz/news/a/c/b/i;->d:Lcom/netease/util/j/a;

    invoke-virtual {v3, v6, v5}, Lcom/netease/util/j/a;->b(Landroid/view/View;I)V

    goto :goto_1
.end method
