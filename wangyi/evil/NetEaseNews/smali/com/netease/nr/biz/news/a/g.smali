.class public Lcom/netease/nr/biz/news/a/g;
.super Lcom/netease/nr/base/a/i;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/LayoutInflater;

.field private c:Ljava/util/List;

.field private d:Lcom/netease/nr/biz/news/a/h;

.field private e:Landroid/view/View$OnClickListener;

.field private f:I

.field private g:I

.field private h:Lcom/netease/util/j/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/netease/nr/biz/news/a/h;Landroid/view/View$OnClickListener;)V
    .locals 1

    invoke-direct {p0}, Lcom/netease/nr/base/a/i;-><init>()V

    iput-object p1, p0, Lcom/netease/nr/biz/news/a/g;->a:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/news/a/g;->b:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/netease/nr/biz/news/a/g;->c:Ljava/util/List;

    iput-object p3, p0, Lcom/netease/nr/biz/news/a/g;->d:Lcom/netease/nr/biz/news/a/h;

    iput-object p4, p0, Lcom/netease/nr/biz/news/a/g;->e:Landroid/view/View$OnClickListener;

    invoke-static {p1}, Lcom/netease/util/j/a;->a(Landroid/content/Context;)Lcom/netease/util/j/a;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/news/a/g;->h:Lcom/netease/util/j/a;

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/g;->h:Lcom/netease/util/j/a;

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/news/a/g;->a(Lcom/netease/util/j/a;)V

    return-void
.end method

.method private a(Landroid/view/View;I)V
    .locals 6

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/g;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/news/a/g;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/g;->d:Lcom/netease/nr/biz/news/a/h;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/g;->d:Lcom/netease/nr/biz/news/a/h;

    iget-object v2, v1, Lcom/netease/nr/biz/news/a/h;->h:[I

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget v4, v2, v1

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v5, p0, Lcom/netease/nr/biz/news/a/g;->d:Lcom/netease/nr/biz/news/a/h;

    iget-object v5, v5, Lcom/netease/nr/biz/news/a/h;->j:Lcom/netease/nr/base/c/a/f;

    invoke-direct {p0, v4, v0, v5}, Lcom/netease/nr/biz/news/a/g;->a(Landroid/view/View;Ljava/util/Map;Lcom/netease/util/c/b;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private a(Landroid/view/View;Ljava/util/Map;Lcom/netease/util/c/b;)Z
    .locals 7

    const v1, 0x7f020137

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return v3

    :sswitch_0
    const-string v0, "imgsrc"

    invoke-static {p2, v0}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-nez v1, :cond_1

    :cond_0
    :goto_1
    move v3, v4

    goto :goto_0

    :cond_1
    instance-of v0, v1, Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p3, v0, p1}, Lcom/netease/util/c/b;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_1

    :cond_2
    instance-of v0, v1, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/widget/ImageView;

    move-object v0, v1

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :sswitch_1
    check-cast p1, Landroid/widget/TextView;

    iget v5, p0, Lcom/netease/nr/biz/news/a/g;->g:I

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v0, "subtitle"

    invoke-static {p2, v0}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v0, "tag"

    invoke-static {p2, v0}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "special"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/g;->a:Landroid/content/Context;

    const v1, 0x7f0b00de

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f02013a

    :cond_3
    :goto_2
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/g;->h:Lcom/netease/util/j/a;

    invoke-virtual {v0, p1, v1}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    :goto_3
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    if-nez v3, :cond_8

    move-object v0, v2

    :goto_4
    invoke-virtual {p1, v0, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move v3, v4

    goto :goto_0

    :cond_4
    const-string v6, "photoset"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/g;->a:Landroid/content/Context;

    const v6, 0x7f0b00fc

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    const-string v1, "\u89c6\u9891"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const v0, 0x7f02013c

    move v1, v3

    move v3, v0

    move-object v0, v2

    goto :goto_2

    :cond_6
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    move v3, v4

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/netease/nr/biz/news/a/g;->h:Lcom/netease/util/j/a;

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/g;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, v3}, Lcom/netease/util/j/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_4

    :sswitch_2
    const-string v0, "title"

    invoke-static {p2, v0}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/g;->h:Lcom/netease/util/j/a;

    check-cast p1, Landroid/widget/TextView;

    const v1, 0x7f070012

    invoke-virtual {v0, p1, v1}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    move v3, v4

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f0c0008 -> :sswitch_2
        0x7f0c006a -> :sswitch_0
        0x7f0c008e -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/g;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f03005a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0c006a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/FitImageView;

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/g;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/netease/nr/base/c/a/f;->b(Landroid/content/Context;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/FitImageView;->a(F)V

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/g;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/g;->d:Lcom/netease/nr/biz/news/a/h;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/g;->d:Lcom/netease/nr/biz/news/a/h;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Lcom/netease/nr/biz/news/a/h;->a(Landroid/view/View;Z)V

    :cond_1
    :goto_0
    return-object p2

    :cond_2
    add-int/lit8 v0, p1, -0x1

    invoke-direct {p0, p2, v0}, Lcom/netease/nr/biz/news/a/g;->a(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public a(Lcom/netease/util/j/a;)V
    .locals 3

    const v2, 0x7f070002

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/g;->a:Landroid/content/Context;

    invoke-virtual {p1, v0, v2}, Lcom/netease/util/j/a;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    iput v1, p0, Lcom/netease/nr/biz/news/a/g;->f:I

    invoke-virtual {p1, v0, v2}, Lcom/netease/util/j/a;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    iput v0, p0, Lcom/netease/nr/biz/news/a/g;->g:I

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/g;->c:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/news/a/g;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method
