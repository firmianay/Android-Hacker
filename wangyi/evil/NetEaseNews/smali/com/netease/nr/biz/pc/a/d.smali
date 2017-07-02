.class public Lcom/netease/nr/biz/pc/a/d;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;

.field private c:Landroid/view/LayoutInflater;

.field private d:Lcom/netease/util/j/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/netease/nr/biz/pc/a/d;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/netease/nr/biz/pc/a/d;->b:Ljava/util/List;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/pc/a/d;->c:Landroid/view/LayoutInflater;

    invoke-static {p1}, Lcom/netease/util/j/a;->a(Landroid/content/Context;)Lcom/netease/util/j/a;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/pc/a/d;->d:Lcom/netease/util/j/a;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/pc/a/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/pc/a/d;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    const v8, 0x7f02005f

    const/4 v7, 0x0

    const/4 v6, 0x0

    if-nez p2, :cond_1

    new-instance v1, Lcom/netease/nr/biz/pc/a/e;

    invoke-direct {v1, p0}, Lcom/netease/nr/biz/pc/a/e;-><init>(Lcom/netease/nr/biz/pc/a/d;)V

    iget-object v0, p0, Lcom/netease/nr/biz/pc/a/d;->c:Landroid/view/LayoutInflater;

    const v2, 0x7f030023

    invoke-virtual {v0, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0c005c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/netease/nr/biz/pc/a/e;->a:Landroid/widget/ImageView;

    const v0, 0x7f0c005d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/netease/nr/biz/pc/a/e;->b:Landroid/widget/ImageView;

    const v0, 0x7f0c005e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/netease/nr/biz/pc/a/e;->c:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/netease/nr/biz/pc/a/d;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v1, Lcom/netease/nr/biz/pc/a/e;->c:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/netease/nr/biz/pc/a/e;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v1, Lcom/netease/nr/biz/pc/a/e;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-object p2

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/pc/a/e;

    move-object v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p2, v7}, Landroid/view/View;->setVisibility(I)V

    const-string v2, "snshead_bg"

    invoke-static {v0, v2, v7}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;I)I

    move-result v2

    const-string v3, "snshead"

    invoke-static {v0, v3}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "snstitle"

    invoke-static {v0, v4, v7}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;I)I

    move-result v4

    const-string v5, "snsicon"

    invoke-static {v0, v5, v7}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;I)I

    move-result v0

    if-eqz v4, :cond_3

    iget-object v5, v1, Lcom/netease/nr/biz/pc/a/e;->c:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(I)V

    :goto_2
    if-eqz v0, :cond_4

    iget-object v4, p0, Lcom/netease/nr/biz/pc/a/d;->d:Lcom/netease/util/j/a;

    iget-object v5, v1, Lcom/netease/nr/biz/pc/a/e;->b:Landroid/widget/ImageView;

    invoke-virtual {v4, v5, v0}, Lcom/netease/util/j/a;->a(Landroid/widget/ImageView;I)V

    :goto_3
    iget-object v0, p0, Lcom/netease/nr/biz/pc/a/d;->d:Lcom/netease/util/j/a;

    iget-object v4, v1, Lcom/netease/nr/biz/pc/a/e;->c:Landroid/widget/TextView;

    const v5, 0x7f070022

    invoke-virtual {v0, v4, v5}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v4, p0, Lcom/netease/nr/biz/pc/a/d;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/netease/nr/biz/pc/a/d;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/netease/nr/base/c/a/n;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/netease/nr/base/c/a/n;

    move-result-object v0

    iget-object v4, v1, Lcom/netease/nr/biz/pc/a/e;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v3, v4}, Lcom/netease/nr/base/c/a/n;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    :goto_4
    if-eqz v2, :cond_6

    iget-object v0, p0, Lcom/netease/nr/biz/pc/a/d;->d:Lcom/netease/util/j/a;

    iget-object v1, v1, Lcom/netease/nr/biz/pc/a/e;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    goto :goto_1

    :cond_3
    iget-object v4, v1, Lcom/netease/nr/biz/pc/a/e;->c:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_4
    iget-object v0, v1, Lcom/netease/nr/biz/pc/a/e;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_5
    iget-object v0, v1, Lcom/netease/nr/biz/pc/a/e;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/netease/nr/biz/pc/a/d;->d:Lcom/netease/util/j/a;

    iget-object v1, v1, Lcom/netease/nr/biz/pc/a/e;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v8}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    goto/16 :goto_1
.end method
