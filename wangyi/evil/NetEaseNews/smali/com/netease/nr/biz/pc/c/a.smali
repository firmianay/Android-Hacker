.class public Lcom/netease/nr/biz/pc/c/a;
.super Lcom/netease/nr/base/a/a;


# instance fields
.field private b:Landroid/view/LayoutInflater;

.field private c:Landroid/content/Context;

.field private d:Lcom/netease/nr/base/c/a/h;

.field private e:Lcom/netease/util/j/a;

.field private f:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/netease/nr/base/a/a;-><init>(Ljava/util/List;)V

    iput-object p2, p0, Lcom/netease/nr/biz/pc/c/a;->c:Landroid/content/Context;

    iput-object p1, p0, Lcom/netease/nr/biz/pc/c/a;->f:Ljava/util/List;

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/netease/nr/biz/pc/c/a;->b:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/netease/nr/biz/pc/c/a;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/netease/nr/biz/pc/c/a;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f02002f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/nr/base/c/a/h;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/netease/nr/base/c/a/h;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/pc/c/a;->d:Lcom/netease/nr/base/c/a/h;

    iget-object v0, p0, Lcom/netease/nr/biz/pc/c/a;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/util/j/a;->a(Landroid/content/Context;)Lcom/netease/util/j/a;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/pc/c/a;->e:Lcom/netease/util/j/a;

    return-void
.end method

.method private a(Landroid/widget/TextView;Ljava/util/Map;)V
    .locals 12

    const v4, 0x7f020137

    const/4 v3, 0x0

    const/4 v6, 0x0

    const-string v0, "specialID"

    invoke-static {p2, v0}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v0, "NTES"

    invoke-static {p2, v0}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "TAG"

    invoke-static {p2, v0}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "replyCount"

    invoke-static {p2, v0}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/pc/c/a;->e:Lcom/netease/util/j/a;

    iget-object v2, p0, Lcom/netease/nr/biz/pc/c/a;->c:Landroid/content/Context;

    const v9, 0x7f070004

    invoke-virtual {v1, v2, v9}, Lcom/netease/util/j/a;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    iget-object v1, p0, Lcom/netease/nr/biz/pc/c/a;->e:Lcom/netease/util/j/a;

    iget-object v9, p0, Lcom/netease/nr/biz/pc/c/a;->c:Landroid/content/Context;

    const v10, 0x7f070002

    invoke-virtual {v1, v9, v10}, Lcom/netease/util/j/a;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/pc/c/a;->c:Landroid/content/Context;

    const v2, 0x7f0b00de

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f02013a

    move v11, v1

    move v1, v3

    move v3, v0

    move v0, v11

    :goto_0
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v3, :cond_5

    iget-object v2, p0, Lcom/netease/nr/biz/pc/c/a;->e:Lcom/netease/util/j/a;

    invoke-virtual {v2, p1, v3}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    if-nez v1, :cond_6

    move-object v0, v6

    :goto_2
    invoke-virtual {p1, v0, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    move v0, v1

    move-object v2, v5

    move v1, v3

    move v3, v4

    goto :goto_0

    :cond_1
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v0, "\u89c6\u9891"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f02013c

    move-object v2, v6

    move v11, v0

    move v0, v1

    move v1, v11

    goto :goto_0

    :cond_2
    move v0, v1

    move-object v2, v7

    move v1, v3

    move v3, v4

    goto :goto_0

    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "0"

    :cond_4
    iget-object v1, p0, Lcom/netease/nr/biz/pc/c/a;->c:Landroid/content/Context;

    const v4, 0x7f0b00dd

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v3

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move v1, v3

    move v11, v2

    move-object v2, v0

    move v0, v11

    goto :goto_0

    :cond_5
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/netease/nr/biz/pc/c/a;->e:Lcom/netease/util/j/a;

    iget-object v2, p0, Lcom/netease/nr/biz/pc/c/a;->c:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Lcom/netease/util/j/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_2
.end method

.method private a(Lcom/netease/nr/biz/pc/c/c;)V
    .locals 4

    const/16 v3, 0x8

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/pc/c/a;->e:Lcom/netease/util/j/a;

    iget-object v1, p1, Lcom/netease/nr/biz/pc/c/c;->a:Landroid/widget/TextView;

    const v2, 0x7f02029e

    invoke-virtual {v0, v1, v2}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/pc/c/a;->e:Lcom/netease/util/j/a;

    iget-object v1, p1, Lcom/netease/nr/biz/pc/c/c;->a:Landroid/widget/TextView;

    const v2, 0x7f07009d

    invoke-virtual {v0, v1, v2}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    iget-object v0, p1, Lcom/netease/nr/biz/pc/c/c;->a:Landroid/widget/TextView;

    const/16 v1, 0xf

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method private a(Lcom/netease/nr/biz/pc/c/d;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/pc/c/a;->e:Lcom/netease/util/j/a;

    iget-object v1, p1, Lcom/netease/nr/biz/pc/c/d;->c:Landroid/widget/TextView;

    const v2, 0x7f070004

    invoke-virtual {v0, v1, v2}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/pc/c/a;->e:Lcom/netease/util/j/a;

    iget-object v1, p1, Lcom/netease/nr/biz/pc/c/d;->e:Landroid/widget/ImageView;

    const v2, 0x7f020030

    invoke-virtual {v0, v1, v2}, Lcom/netease/util/j/a;->a(Landroid/widget/ImageView;I)V

    :cond_0
    return-void
.end method

.method private a(Lcom/netease/nr/biz/pc/c/d;Ljava/util/Map;)V
    .locals 3

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p1, Lcom/netease/nr/biz/pc/c/d;->b:Landroid/widget/TextView;

    const-string v1, "title"

    invoke-static {p2, v1}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "docid"

    invoke-static {p2, v0}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/netease/nr/biz/pc/c/a;->c:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/netease/nr/biz/g/c;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/pc/c/a;->e:Lcom/netease/util/j/a;

    iget-object v1, p1, Lcom/netease/nr/biz/pc/c/d;->b:Landroid/widget/TextView;

    const v2, 0x7f070006

    invoke-virtual {v0, v1, v2}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    :goto_0
    const-string v0, "imgsrc"

    invoke-static {p2, v0}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/netease/nr/biz/pc/c/d;->c:Landroid/widget/TextView;

    const-string v2, "digest"

    invoke-static {p2, v2}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/netease/nr/biz/pc/c/d;->d:Landroid/widget/TextView;

    invoke-direct {p0, v1, p2}, Lcom/netease/nr/biz/pc/c/a;->a(Landroid/widget/TextView;Ljava/util/Map;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/netease/nr/biz/pc/c/a;->d:Lcom/netease/nr/base/c/a/h;

    iget-object v2, p1, Lcom/netease/nr/biz/pc/c/d;->a:Lcom/netease/nr/base/view/MyImageView;

    invoke-virtual {v1, v0, v2}, Lcom/netease/nr/base/c/a/h;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/pc/c/a;->e:Lcom/netease/util/j/a;

    iget-object v1, p1, Lcom/netease/nr/biz/pc/c/d;->b:Landroid/widget/TextView;

    const v2, 0x7f07000c

    invoke-virtual {v0, v1, v2}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    goto :goto_0
.end method


# virtual methods
.method public a(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    invoke-virtual {p0, p1, p2}, Lcom/netease/nr/biz/pc/c/a;->a(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_1

    if-nez p3, :cond_0

    new-instance v2, Lcom/netease/nr/biz/pc/c/d;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/netease/nr/biz/pc/c/d;-><init>(Lcom/netease/nr/biz/pc/c/a;Lcom/netease/nr/biz/pc/c/b;)V

    iget-object v1, p0, Lcom/netease/nr/biz/pc/c/a;->b:Landroid/view/LayoutInflater;

    const v3, 0x7f030068

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p4, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    const v1, 0x7f0c006a

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/netease/nr/base/view/MyImageView;

    iput-object v1, v2, Lcom/netease/nr/biz/pc/c/d;->a:Lcom/netease/nr/base/view/MyImageView;

    const v1, 0x7f0c0008

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/netease/nr/biz/pc/c/d;->b:Landroid/widget/TextView;

    const v1, 0x7f0c0072

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/netease/nr/biz/pc/c/d;->c:Landroid/widget/TextView;

    const v1, 0x7f0c008e

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/netease/nr/biz/pc/c/d;->d:Landroid/widget/TextView;

    const v1, 0x7f0c0022

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/netease/nr/biz/pc/c/d;->e:Landroid/widget/ImageView;

    invoke-virtual {p3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/nr/biz/pc/c/d;

    const v2, 0x7f0c0081

    invoke-virtual {p3, v2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-direct {p0, v1, v0}, Lcom/netease/nr/biz/pc/c/a;->a(Lcom/netease/nr/biz/pc/c/d;Ljava/util/Map;)V

    invoke-direct {p0, v1}, Lcom/netease/nr/biz/pc/c/a;->a(Lcom/netease/nr/biz/pc/c/d;)V

    :cond_1
    return-object p3
.end method

.method public a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const/4 v2, 0x0

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/pc/c/a;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f0300c2

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/netease/nr/biz/pc/c/c;

    invoke-direct {v1, p0, v2}, Lcom/netease/nr/biz/pc/c/c;-><init>(Lcom/netease/nr/biz/pc/c/a;Lcom/netease/nr/biz/pc/c/b;)V

    const v0, 0x7f0c024f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/netease/nr/biz/pc/c/c;->a:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/pc/c/c;

    invoke-direct {p0, v0}, Lcom/netease/nr/biz/pc/c/a;->a(Lcom/netease/nr/biz/pc/c/c;)V

    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/pc/c/a;->d(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v0, v0, Lcom/netease/nr/biz/pc/c/c;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
