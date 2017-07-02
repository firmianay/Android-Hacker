.class public Lcom/netease/nr/biz/h/y;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/LayoutInflater;

.field private c:Lcom/netease/util/j/a;

.field private d:Lcom/netease/nr/base/c/a/c;

.field private e:Ljava/util/List;

.field private f:Ljava/util/Map;

.field private g:Ljava/lang/String;

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 3

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/biz/h/y;->e:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/nr/biz/h/y;->h:Z

    iput-object p1, p0, Lcom/netease/nr/biz/h/y;->a:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/h/y;->b:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/netease/nr/biz/h/y;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/util/j/a;->a(Landroid/content/Context;)Lcom/netease/util/j/a;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/h/y;->c:Lcom/netease/util/j/a;

    iget-object v1, p0, Lcom/netease/nr/biz/h/y;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/netease/nr/biz/h/y;->a:Landroid/content/Context;

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

    iput-object v0, p0, Lcom/netease/nr/biz/h/y;->d:Lcom/netease/nr/base/c/a/c;

    iget-object v0, p0, Lcom/netease/nr/biz/h/y;->d:Lcom/netease/nr/base/c/a/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/c/a/c;->b(Z)V

    iput-boolean p2, p0, Lcom/netease/nr/biz/h/y;->h:Z

    iget-boolean v0, p0, Lcom/netease/nr/biz/h/y;->h:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/h/y;->c:Lcom/netease/util/j/a;

    invoke-virtual {v0, p1}, Lcom/netease/util/j/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "http://img2.cache.netease.com/m/newsapp/topic_icons/night/%s.png"

    iput-object v0, p0, Lcom/netease/nr/biz/h/y;->g:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string v0, "http://img2.cache.netease.com/m/newsapp/topic_icons/%s.png"

    iput-object v0, p0, Lcom/netease/nr/biz/h/y;->g:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, "http://img2.cache.netease.com/m/newsapp/topic_icons/%s.png"

    iput-object v0, p0, Lcom/netease/nr/biz/h/y;->g:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic a(Lcom/netease/nr/biz/h/y;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/h/y;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/netease/nr/biz/h/y;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/h/y;->e:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/netease/nr/biz/h/y;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/h/y;->f:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/h/y;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/netease/nr/biz/h/y;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/netease/nr/biz/h/y;->f:Ljava/util/Map;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/h/y;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/nr/biz/news/column/g;->g(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/h/y;->f:Ljava/util/Map;

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/h/y;->e:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/h/y;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/h/y;->e:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/h/y;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    const/4 v11, 0x4

    const/4 v8, 0x1

    const/4 v3, 0x0

    if-nez p2, :cond_4

    iget-object v0, p0, Lcom/netease/nr/biz/h/y;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f03004d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/netease/nr/biz/h/aa;

    invoke-direct {v1, p0}, Lcom/netease/nr/biz/h/aa;-><init>(Lcom/netease/nr/biz/h/y;)V

    const v0, 0x7f0c0020

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/nr/biz/h/aa;->a(Lcom/netease/nr/biz/h/aa;Landroid/view/View;)Landroid/view/View;

    const v0, 0x7f0c00ef

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/netease/nr/biz/h/aa;->a(Lcom/netease/nr/biz/h/aa;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v0, 0x7f0c00f0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/netease/nr/biz/h/aa;->b(Lcom/netease/nr/biz/h/aa;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v0, 0x7f0c00ee

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/FitImageView;

    invoke-static {v1, v0}, Lcom/netease/nr/biz/h/aa;->a(Lcom/netease/nr/biz/h/aa;Lcom/netease/nr/base/view/FitImageView;)Lcom/netease/nr/base/view/FitImageView;

    iget-boolean v0, p0, Lcom/netease/nr/biz/h/y;->h:Z

    if-nez v0, :cond_3

    invoke-static {v1}, Lcom/netease/nr/biz/h/aa;->a(Lcom/netease/nr/biz/h/aa;)Lcom/netease/nr/base/view/FitImageView;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/netease/nr/base/view/FitImageView;->b(I)V

    :goto_0
    const v0, 0x7f0c00e4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/netease/nr/biz/h/aa;->c(Lcom/netease/nr/biz/h/aa;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v0, 0x7f0c00f1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/netease/nr/biz/h/aa;->d(Lcom/netease/nr/biz/h/aa;Landroid/widget/TextView;)Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v10, v1

    :goto_1
    iget-object v0, p0, Lcom/netease/nr/biz/h/y;->f:Ljava/util/Map;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/h/y;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/nr/biz/news/column/g;->g(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/h/y;->f:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/h/y;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    const-string v0, "ename"

    invoke-static {v6, v0}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v0, p0, Lcom/netease/nr/biz/h/y;->f:Ljava/util/Map;

    invoke-interface {v0, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v7, v8

    :goto_2
    iget-object v0, p0, Lcom/netease/nr/biz/h/y;->c:Lcom/netease/util/j/a;

    iget-object v1, p0, Lcom/netease/nr/biz/h/y;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/netease/util/j/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v10}, Lcom/netease/nr/biz/h/aa;->b(Lcom/netease/nr/biz/h/aa;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f02040d

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_3
    iget-object v0, p0, Lcom/netease/nr/biz/h/y;->c:Lcom/netease/util/j/a;

    invoke-static {v10}, Lcom/netease/nr/biz/h/aa;->c(Lcom/netease/nr/biz/h/aa;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v7, :cond_7

    const v2, 0x7f0200fa

    :goto_4
    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;IIII)V

    iget-object v0, p0, Lcom/netease/nr/biz/h/y;->c:Lcom/netease/util/j/a;

    invoke-static {v10}, Lcom/netease/nr/biz/h/aa;->d(Lcom/netease/nr/biz/h/aa;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f070002

    invoke-virtual {v0, v1, v2}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/h/y;->c:Lcom/netease/util/j/a;

    invoke-static {v10}, Lcom/netease/nr/biz/h/aa;->e(Lcom/netease/nr/biz/h/aa;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0700b8

    invoke-virtual {v0, v1, v2}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/h/y;->c:Lcom/netease/util/j/a;

    invoke-static {v10}, Lcom/netease/nr/biz/h/aa;->f(Lcom/netease/nr/biz/h/aa;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0700ba

    invoke-virtual {v0, v1, v2}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    invoke-static {v10}, Lcom/netease/nr/biz/h/aa;->e(Lcom/netease/nr/biz/h/aa;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "tname"

    invoke-static {v6, v1}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v10}, Lcom/netease/nr/biz/h/aa;->f(Lcom/netease/nr/biz/h/aa;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "alias"

    invoke-static {v6, v1}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "true"

    const-string v1, "hasIcon"

    invoke-static {v6, v1}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v10}, Lcom/netease/nr/biz/h/aa;->a(Lcom/netease/nr/biz/h/aa;)Lcom/netease/nr/base/view/FitImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nr/biz/h/y;->d:Lcom/netease/nr/base/c/a/c;

    iget-object v4, p0, Lcom/netease/nr/biz/h/y;->g:Ljava/lang/String;

    new-array v5, v8, [Ljava/lang/Object;

    if-eqz v0, :cond_8

    const-string v0, "tid"

    invoke-static {v6, v0}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_5
    aput-object v0, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/netease/nr/base/view/FitImageView;->a(Lcom/netease/util/c/b;Ljava/lang/String;)V

    const-string v0, "tid"

    invoke-static {v6, v0}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "T1348647909107"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "T1351840906470"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_1
    invoke-static {v10}, Lcom/netease/nr/biz/h/aa;->c(Lcom/netease/nr/biz/h/aa;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_6
    iget-object v0, p0, Lcom/netease/nr/biz/h/y;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "status"

    if-eqz v7, :cond_a

    const-string v1, "1"

    :goto_7
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v10}, Lcom/netease/nr/biz/h/aa;->c(Lcom/netease/nr/biz/h/aa;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v4, Lcom/netease/nr/biz/h/z;

    move-object v5, p0

    move v8, p1

    invoke-direct/range {v4 .. v9}, Lcom/netease/nr/biz/h/z;-><init>(Lcom/netease/nr/biz/h/y;Ljava/util/Map;ZILjava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p0, Lcom/netease/nr/biz/h/y;->h:Z

    if-eqz v0, :cond_2

    const-string v0, "isNew"

    invoke-static {v6, v0}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "isHot"

    invoke-static {v6, v1}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {v10}, Lcom/netease/nr/biz/h/aa;->d(Lcom/netease/nr/biz/h/aa;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {v10}, Lcom/netease/nr/biz/h/aa;->d(Lcom/netease/nr/biz/h/aa;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0b00ef

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/netease/nr/biz/h/y;->c:Lcom/netease/util/j/a;

    invoke-static {v10}, Lcom/netease/nr/biz/h/aa;->d(Lcom/netease/nr/biz/h/aa;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0201c4

    invoke-virtual {v0, v1, v2}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    :cond_2
    :goto_8
    return-object p2

    :cond_3
    invoke-static {v1}, Lcom/netease/nr/biz/h/aa;->a(Lcom/netease/nr/biz/h/aa;)Lcom/netease/nr/base/view/FitImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/netease/nr/base/view/FitImageView;->a(Z)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/h/aa;

    move-object v10, v0

    goto/16 :goto_1

    :cond_5
    move v7, v3

    goto/16 :goto_2

    :cond_6
    invoke-static {v10}, Lcom/netease/nr/biz/h/aa;->b(Lcom/netease/nr/biz/h/aa;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f020154

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_3

    :cond_7
    const v2, 0x7f0200f9

    goto/16 :goto_4

    :cond_8
    const-string v0, "icon"

    invoke-static {v6, v0}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    :cond_9
    invoke-static {v10}, Lcom/netease/nr/biz/h/aa;->c(Lcom/netease/nr/biz/h/aa;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    :cond_a
    const-string v1, "0"

    goto :goto_7

    :cond_b
    const-string v0, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {v10}, Lcom/netease/nr/biz/h/aa;->d(Lcom/netease/nr/biz/h/aa;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {v10}, Lcom/netease/nr/biz/h/aa;->d(Lcom/netease/nr/biz/h/aa;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0b00f0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/netease/nr/biz/h/y;->c:Lcom/netease/util/j/a;

    invoke-static {v10}, Lcom/netease/nr/biz/h/aa;->d(Lcom/netease/nr/biz/h/aa;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0201c1

    invoke-virtual {v0, v1, v2}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    goto :goto_8

    :cond_c
    invoke-static {v10}, Lcom/netease/nr/biz/h/aa;->d(Lcom/netease/nr/biz/h/aa;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_8
.end method
