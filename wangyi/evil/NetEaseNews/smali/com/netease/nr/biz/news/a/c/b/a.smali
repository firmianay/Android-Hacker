.class public Lcom/netease/nr/biz/news/a/c/b/a;
.super Landroid/widget/BaseExpandableListAdapter;


# instance fields
.field private a:Landroid/view/LayoutInflater;

.field private b:Landroid/content/Context;

.field private c:Ljava/util/List;

.field private d:Lcom/netease/util/c/b;

.field private e:Lcom/netease/util/j/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 3

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    iput-object p1, p0, Lcom/netease/nr/biz/news/a/c/b/a;->b:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/a;->a:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/netease/nr/biz/news/a/c/b/a;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/c/b/a;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020043

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/nr/base/c/a/c;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/netease/nr/base/c/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/a;->d:Lcom/netease/util/c/b;

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/util/j/a;->a(Landroid/content/Context;)Lcom/netease/util/j/a;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/a;->e:Lcom/netease/util/j/a;

    return-void
.end method

.method private a(I)I
    .locals 1

    if-lez p1, :cond_0

    const v0, 0x7f02012d

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f02012c

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "Hang Seng Index"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/a;->b:Landroid/content/Context;

    const v1, 0x7f0b00d7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private b(I)I
    .locals 1

    if-lez p1, :cond_0

    const v0, 0x7f0700f7

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0700f5

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

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

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "--%"

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/a;->c:Ljava/util/List;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/netease/nr/biz/news/a/c/b/a;->c:Ljava/util/List;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public getChild(II)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const v3, 0x7f0c0113

    if-nez p4, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/a;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f030061

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/FitImageView;

    const v1, 0x3f13b646    # 0.577f

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/FitImageView;->a(F)V

    :cond_0
    invoke-virtual {p4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/FitImageView;

    iget-object v2, p0, Lcom/netease/nr/biz/news/a/c/b/a;->d:Lcom/netease/util/c/b;

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/c/b/a;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v3, "img_url"

    invoke-static {v1, v3}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/netease/nr/base/view/FitImageView;->a(Lcom/netease/util/c/b;Ljava/lang/String;)V

    return-object p4
.end method

.method public getChildrenCount(I)I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/a;->c:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getGroupId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    if-nez p3, :cond_0

    new-instance v1, Lcom/netease/nr/biz/news/a/c/b/b;

    invoke-direct {v1, p0}, Lcom/netease/nr/biz/news/a/c/b/b;-><init>(Lcom/netease/nr/biz/news/a/c/b/a;)V

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/a;->a:Landroid/view/LayoutInflater;

    const v2, 0x7f03005f

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    const v0, 0x7f0c00f4

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/netease/nr/biz/news/a/c/b/b;->a(Lcom/netease/nr/biz/news/a/c/b/b;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v0, 0x7f0c010d

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/netease/nr/biz/news/a/c/b/b;->b(Lcom/netease/nr/biz/news/a/c/b/b;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v0, 0x7f0c010f

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/netease/nr/biz/news/a/c/b/b;->c(Lcom/netease/nr/biz/news/a/c/b/b;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v0, 0x7f0c0110

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/netease/nr/biz/news/a/c/b/b;->d(Lcom/netease/nr/biz/news/a/c/b/b;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v0, 0x7f0c010e

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/netease/nr/biz/news/a/c/b/b;->a(Lcom/netease/nr/biz/news/a/c/b/b;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    const v0, 0x7f0c0070

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/netease/nr/biz/news/a/c/b/b;->b(Lcom/netease/nr/biz/news/a/c/b/b;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    invoke-virtual {p3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v3, "updown"

    invoke-static {v0, v3}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Lcom/netease/nr/biz/news/a/c/b/j;->a(F)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    move v2, v0

    :goto_1
    invoke-static {v1}, Lcom/netease/nr/biz/news/a/c/b/b;->a(Lcom/netease/nr/biz/news/a/c/b/b;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v4, "name"

    invoke-static {v0, v4}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/nr/biz/news/a/c/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v1}, Lcom/netease/nr/biz/news/a/c/b/b;->b(Lcom/netease/nr/biz/news/a/c/b/b;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v4, "price"

    invoke-static {v0, v4}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v1}, Lcom/netease/nr/biz/news/a/c/b/b;->c(Lcom/netease/nr/biz/news/a/c/b/b;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v4, "percent"

    invoke-static {v0, v4}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/nr/biz/news/a/c/b/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v1}, Lcom/netease/nr/biz/news/a/c/b/b;->d(Lcom/netease/nr/biz/news/a/c/b/b;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v4, "updown"

    invoke-static {v0, v4}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v1}, Lcom/netease/nr/biz/news/a/c/b/b;->e(Lcom/netease/nr/biz/news/a/c/b/b;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-direct {p0, v2}, Lcom/netease/nr/biz/news/a/c/b/a;->a(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/a;->e:Lcom/netease/util/j/a;

    invoke-static {v1}, Lcom/netease/nr/biz/news/a/c/b/b;->f(Lcom/netease/nr/biz/news/a/c/b/b;)Landroid/widget/ImageView;

    move-result-object v3

    const v4, 0x7f0200ff

    invoke-virtual {v0, v3, v4}, Lcom/netease/util/j/a;->a(Landroid/widget/ImageView;I)V

    :goto_2
    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/a;->e:Lcom/netease/util/j/a;

    invoke-static {v1}, Lcom/netease/nr/biz/news/a/c/b/b;->a(Lcom/netease/nr/biz/news/a/c/b/b;)Landroid/widget/TextView;

    move-result-object v3

    const v4, 0x7f0700fd

    invoke-virtual {v0, v3, v4}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/a;->e:Lcom/netease/util/j/a;

    invoke-static {v1}, Lcom/netease/nr/biz/news/a/c/b/b;->b(Lcom/netease/nr/biz/news/a/c/b/b;)Landroid/widget/TextView;

    move-result-object v3

    const v4, 0x7f0700f9

    invoke-virtual {v0, v3, v4}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/a;->e:Lcom/netease/util/j/a;

    invoke-static {v1}, Lcom/netease/nr/biz/news/a/c/b/b;->d(Lcom/netease/nr/biz/news/a/c/b/b;)Landroid/widget/TextView;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/netease/nr/biz/news/a/c/b/a;->b(I)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/a;->e:Lcom/netease/util/j/a;

    invoke-static {v1}, Lcom/netease/nr/biz/news/a/c/b/b;->c(Lcom/netease/nr/biz/news/a/c/b/b;)Landroid/widget/TextView;

    move-result-object v1

    invoke-direct {p0, v2}, Lcom/netease/nr/biz/news/a/c/b/a;->b(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/a;->e:Lcom/netease/util/j/a;

    const v1, 0x7f020131

    invoke-virtual {v0, p3, v1}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    return-object p3

    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/news/a/c/b/b;

    move-object v1, v0

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/a;->e:Lcom/netease/util/j/a;

    invoke-static {v1}, Lcom/netease/nr/biz/news/a/c/b/b;->f(Lcom/netease/nr/biz/news/a/c/b/b;)Landroid/widget/ImageView;

    move-result-object v3

    const v4, 0x7f0200fe

    invoke-virtual {v0, v3, v4}, Lcom/netease/util/j/a;->a(Landroid/widget/ImageView;I)V

    goto :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_1
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
