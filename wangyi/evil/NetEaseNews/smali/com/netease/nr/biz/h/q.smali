.class public Lcom/netease/nr/biz/h/q;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private a:Ljava/util/List;

.field private b:Landroid/view/LayoutInflater;

.field private c:Landroid/content/Context;

.field private d:Ljava/util/Map;

.field private e:Lcom/netease/util/j/a;

.field private f:Lcom/netease/util/c/b;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/netease/nr/biz/h/q;->a:Ljava/util/List;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/h/q;->b:Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/netease/nr/biz/h/q;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/netease/util/j/a;->a(Landroid/content/Context;)Lcom/netease/util/j/a;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/h/q;->e:Lcom/netease/util/j/a;

    iget-object v1, p0, Lcom/netease/nr/biz/h/q;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/netease/nr/biz/h/q;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0200fd

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/nr/base/c/a/c;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/netease/nr/base/c/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/h/q;->f:Lcom/netease/util/c/b;

    iget-object v0, p0, Lcom/netease/nr/biz/h/q;->f:Lcom/netease/util/c/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netease/util/c/b;->b(Z)V

    iput-object p3, p0, Lcom/netease/nr/biz/h/q;->g:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/biz/h/q;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/h/q;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/netease/nr/biz/h/q;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/h/q;->a:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/netease/nr/biz/h/q;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/h/q;->d:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public a(I)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/h/q;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public a(Ljava/util/Map;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/netease/nr/biz/h/q;->d:Ljava/util/Map;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/h/q;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/nr/biz/news/column/g;->g(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/h/q;->d:Ljava/util/Map;

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/h/q;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/h/q;->a(I)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    const/4 v4, 0x0

    const/4 v9, 0x1

    const/4 v3, 0x0

    if-nez p2, :cond_2

    new-instance v1, Lcom/netease/nr/biz/h/s;

    invoke-direct {v1, p0, v4}, Lcom/netease/nr/biz/h/s;-><init>(Lcom/netease/nr/biz/h/q;Lcom/netease/nr/biz/h/r;)V

    iget-object v0, p0, Lcom/netease/nr/biz/h/q;->b:Landroid/view/LayoutInflater;

    const v2, 0x7f030055

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0c0081

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/FitImageView;

    invoke-static {v1, v0}, Lcom/netease/nr/biz/h/s;->a(Lcom/netease/nr/biz/h/s;Lcom/netease/nr/base/view/FitImageView;)Lcom/netease/nr/base/view/FitImageView;

    const-string v0, "source_media"

    iget-object v2, p0, Lcom/netease/nr/biz/h/q;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v1}, Lcom/netease/nr/biz/h/s;->a(Lcom/netease/nr/biz/h/s;)Lcom/netease/nr/base/view/FitImageView;

    move-result-object v0

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/netease/nr/base/view/FitImageView;->b(I)V

    :goto_0
    const v0, 0x7f0c00f4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/netease/nr/biz/h/s;->a(Lcom/netease/nr/biz/h/s;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v0, 0x7f0c00ff

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/netease/nr/biz/h/s;->b(Lcom/netease/nr/biz/h/s;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v0, 0x7f0c00e4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/netease/nr/biz/h/s;->c(Lcom/netease/nr/biz/h/s;Landroid/widget/TextView;)Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v7, v1

    :goto_1
    iget-object v0, p0, Lcom/netease/nr/biz/h/q;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/Map;

    const-string v0, "ename"

    invoke-static {v6, v0}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v0, p0, Lcom/netease/nr/biz/h/q;->d:Ljava/util/Map;

    invoke-interface {v0, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v8, v9

    :goto_2
    iget-object v0, p0, Lcom/netease/nr/biz/h/q;->e:Lcom/netease/util/j/a;

    invoke-static {v7}, Lcom/netease/nr/biz/h/s;->b(Lcom/netease/nr/biz/h/s;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v8, :cond_4

    const v2, 0x7f0200fa

    :goto_3
    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;IIII)V

    iget-object v0, p0, Lcom/netease/nr/biz/h/q;->e:Lcom/netease/util/j/a;

    invoke-static {v7}, Lcom/netease/nr/biz/h/s;->c(Lcom/netease/nr/biz/h/s;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0700bc

    invoke-virtual {v0, v1, v2}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/h/q;->e:Lcom/netease/util/j/a;

    invoke-static {v7}, Lcom/netease/nr/biz/h/s;->d(Lcom/netease/nr/biz/h/s;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0700b8

    invoke-virtual {v0, v1, v2}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    invoke-static {v7}, Lcom/netease/nr/biz/h/s;->c(Lcom/netease/nr/biz/h/s;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "tname"

    invoke-static {v6, v1}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v7}, Lcom/netease/nr/biz/h/s;->d(Lcom/netease/nr/biz/h/s;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "alias"

    invoke-static {v6, v1}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "tid"

    invoke-static {v6, v0}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "T1348647909107"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "T1351840906470"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    invoke-static {v7}, Lcom/netease/nr/biz/h/s;->b(Lcom/netease/nr/biz/h/s;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_4
    iget-object v0, p0, Lcom/netease/nr/biz/h/q;->e:Lcom/netease/util/j/a;

    iget-object v1, p0, Lcom/netease/nr/biz/h/q;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/netease/util/j/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "source_columns"

    iget-object v1, p0, Lcom/netease/nr/biz/h/q;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "http://img2.cache.netease.com/m/newsapp/topic_icons/night/%s.png"

    :goto_5
    const-string v1, "true"

    const-string v2, "hasIcon"

    invoke-static {v6, v2}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v7}, Lcom/netease/nr/biz/h/s;->a(Lcom/netease/nr/biz/h/s;)Lcom/netease/nr/base/view/FitImageView;

    move-result-object v2

    iget-object v4, p0, Lcom/netease/nr/biz/h/q;->f:Lcom/netease/util/c/b;

    new-array v5, v9, [Ljava/lang/Object;

    if-eqz v1, :cond_7

    const-string v1, "tid"

    invoke-static {v6, v1}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_6
    aput-object v1, v5, v3

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lcom/netease/nr/base/view/FitImageView;->a(Lcom/netease/util/c/b;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/nr/biz/h/q;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "status"

    if-eqz v8, :cond_8

    const-string v1, "1"

    :goto_7
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v7}, Lcom/netease/nr/biz/h/s;->b(Lcom/netease/nr/biz/h/s;)Landroid/widget/TextView;

    move-result-object v7

    new-instance v0, Lcom/netease/nr/biz/h/r;

    move-object v1, p0

    move-object v2, v6

    move v3, v8

    move v4, p1

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/netease/nr/biz/h/r;-><init>(Lcom/netease/nr/biz/h/q;Ljava/util/Map;ZILjava/lang/String;)V

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2

    :cond_1
    invoke-static {v1}, Lcom/netease/nr/biz/h/s;->a(Lcom/netease/nr/biz/h/s;)Lcom/netease/nr/base/view/FitImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/netease/nr/base/view/FitImageView;->a(Z)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/h/s;

    move-object v7, v0

    goto/16 :goto_1

    :cond_3
    move v8, v3

    goto/16 :goto_2

    :cond_4
    const v2, 0x7f0200f9

    goto/16 :goto_3

    :cond_5
    invoke-static {v7}, Lcom/netease/nr/biz/h/s;->b(Lcom/netease/nr/biz/h/s;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    :cond_6
    const-string v0, "http://img2.cache.netease.com/m/newsapp/topic_icons/%s.png"

    goto :goto_5

    :cond_7
    const-string v1, "icon"

    invoke-static {v6, v1}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_8
    const-string v1, "0"

    goto :goto_7
.end method
