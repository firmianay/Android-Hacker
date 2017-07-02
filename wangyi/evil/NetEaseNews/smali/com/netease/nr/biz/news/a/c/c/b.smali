.class public Lcom/netease/nr/biz/news/a/c/c/b;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/LayoutInflater;

.field private c:Lcom/netease/util/j/a;

.field private d:Lcom/netease/nr/base/c/a/c;

.field private e:Lcom/netease/nr/base/c/a/c;

.field private f:Ljava/lang/String;

.field private g:Ljava/util/Map;

.field private h:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/netease/nr/biz/news/a/c/c/b;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/c/b;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/news/a/c/c/b;->b:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/c/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/util/j/a;->a(Landroid/content/Context;)Lcom/netease/util/j/a;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/news/a/c/c/b;->c:Lcom/netease/util/j/a;

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/c/b;->a:Landroid/content/Context;

    const v1, 0x7f02002e

    invoke-static {v0, v1}, Lcom/netease/nr/base/c/a/c;->a(Landroid/content/Context;I)Lcom/netease/nr/base/c/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/news/a/c/c/b;->e:Lcom/netease/nr/base/c/a/c;

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/c/b;->e:Lcom/netease/nr/base/c/a/c;

    invoke-virtual {v0, v3}, Lcom/netease/nr/base/c/a/c;->c(Z)V

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/c/c/b;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/c/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020141

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/nr/base/c/a/c;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/netease/nr/base/c/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/news/a/c/c/b;->d:Lcom/netease/nr/base/c/a/c;

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/c/b;->d:Lcom/netease/nr/base/c/a/c;

    invoke-virtual {v0, v3}, Lcom/netease/nr/base/c/a/c;->c(Z)V

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/c/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/c/c/b;->d:Lcom/netease/nr/base/c/a/c;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/netease/nr/base/c/a/c;->b(Z)V

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/c/c/b;->d:Lcom/netease/nr/base/c/a/c;

    invoke-virtual {v1, v0, v0}, Lcom/netease/nr/base/c/a/c;->a(II)V

    const-string v0, "http://img2.cache.netease.com/m/newsapp/topic_icons/%s.png"

    iput-object v0, p0, Lcom/netease/nr/biz/news/a/c/c/b;->f:Ljava/lang/String;

    iput-object p2, p0, Lcom/netease/nr/biz/news/a/c/c/b;->h:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/biz/news/a/c/c/b;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/c/b;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/netease/nr/biz/news/a/c/c/b;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/nr/biz/news/a/c/c/b;->a(Ljava/util/Map;)V

    return-void
.end method

.method private a(Ljava/util/Map;)V
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "tid"

    invoke-static {p1, v1}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v2, "columnId"

    const-string v1, "tid"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "columnName"

    const-string v1, "tname"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "icon"

    const-string v1, "icon"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ename"

    const-string v1, "ename"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "type"

    const-string v1, "type"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "columnSubscribed"

    const-string v1, "status"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v4, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v7, p0, Lcom/netease/nr/biz/news/a/c/c/b;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/c/c/b;->a:Landroid/content/Context;

    const-class v2, Lcom/netease/nr/biz/h/p;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SubscribeListFragment"

    const-class v6, Lcom/netease/nr/base/activity/BaseActivity;

    move-object v5, v0

    invoke-static/range {v0 .. v6}, Lcom/netease/util/fragment/ab;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method static synthetic b(Lcom/netease/nr/biz/news/a/c/c/b;)Lcom/netease/util/j/a;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/c/b;->c:Lcom/netease/util/j/a;

    return-object v0
.end method

.method static synthetic c(Lcom/netease/nr/biz/news/a/c/c/b;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/c/b;->g:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public a(I)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/c/b;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/c/b;->h:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/c/b;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/news/a/c/c/b;->a(I)Ljava/util/Map;

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

    const/4 v10, 0x1

    const/4 v3, 0x0

    if-nez p2, :cond_2

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/c/b;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f0300c9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v8, Lcom/netease/nr/biz/news/a/c/c/e;

    invoke-direct {v8, p0}, Lcom/netease/nr/biz/news/a/c/c/e;-><init>(Lcom/netease/nr/biz/news/a/c/c/b;)V

    const v0, 0x7f0c0020

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/netease/nr/biz/news/a/c/c/e;->a(Lcom/netease/nr/biz/news/a/c/c/e;Landroid/view/View;)Landroid/view/View;

    const v0, 0x7f0c00f4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v8, v0}, Lcom/netease/nr/biz/news/a/c/c/e;->a(Lcom/netease/nr/biz/news/a/c/c/e;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v0, 0x7f0c0008

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v8, v0}, Lcom/netease/nr/biz/news/a/c/c/e;->b(Lcom/netease/nr/biz/news/a/c/c/e;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v0, 0x7f0c00ff

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v8, v0}, Lcom/netease/nr/biz/news/a/c/c/e;->c(Lcom/netease/nr/biz/news/a/c/c/e;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v0, 0x7f0c0081

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/MyImageView;

    invoke-static {v8, v0}, Lcom/netease/nr/biz/news/a/c/c/e;->a(Lcom/netease/nr/biz/news/a/c/c/e;Lcom/netease/nr/base/view/MyImageView;)Lcom/netease/nr/base/view/MyImageView;

    invoke-static {v8}, Lcom/netease/nr/biz/news/a/c/c/e;->a(Lcom/netease/nr/biz/news/a/c/c/e;)Lcom/netease/nr/base/view/MyImageView;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/MyImageView;->b(I)V

    const v0, 0x7f0c00e4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v8, v0}, Lcom/netease/nr/biz/news/a/c/c/e;->d(Lcom/netease/nr/biz/news/a/c/c/e;Landroid/widget/TextView;)Landroid/widget/TextView;

    invoke-virtual {p2, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/c/b;->g:Ljava/util/Map;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/c/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/nr/biz/news/column/g;->g(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/news/a/c/c/b;->g:Ljava/util/Map;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/news/a/c/c/b;->a(I)Ljava/util/Map;

    move-result-object v7

    const-string v0, "ename"

    invoke-static {v7, v0}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/c/b;->g:Ljava/util/Map;

    invoke-interface {v0, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v6, v10

    :goto_1
    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/c/b;->c:Lcom/netease/util/j/a;

    invoke-static {v8}, Lcom/netease/nr/biz/news/a/c/c/e;->b(Lcom/netease/nr/biz/news/a/c/c/e;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0202b1

    invoke-virtual {v0, v1, v2}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/c/b;->c:Lcom/netease/util/j/a;

    invoke-static {v8}, Lcom/netease/nr/biz/news/a/c/c/e;->c(Lcom/netease/nr/biz/news/a/c/c/e;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v6, :cond_4

    move v2, v3

    :goto_2
    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;IIII)V

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/c/b;->c:Lcom/netease/util/j/a;

    invoke-static {v8}, Lcom/netease/nr/biz/news/a/c/c/e;->d(Lcom/netease/nr/biz/news/a/c/c/e;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0700b8

    invoke-virtual {v0, v1, v2}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/c/b;->c:Lcom/netease/util/j/a;

    invoke-static {v8}, Lcom/netease/nr/biz/news/a/c/c/e;->e(Lcom/netease/nr/biz/news/a/c/c/e;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0700c4

    invoke-virtual {v0, v1, v2}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/c/b;->c:Lcom/netease/util/j/a;

    invoke-static {v8}, Lcom/netease/nr/biz/news/a/c/c/e;->f(Lcom/netease/nr/biz/news/a/c/c/e;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0700c6

    invoke-virtual {v0, v1, v2}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/c/b;->c:Lcom/netease/util/j/a;

    invoke-static {v8}, Lcom/netease/nr/biz/news/a/c/c/e;->c(Lcom/netease/nr/biz/news/a/c/c/e;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0700c8

    invoke-virtual {v0, v1, v2}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/c/b;->c:Lcom/netease/util/j/a;

    invoke-static {v8}, Lcom/netease/nr/biz/news/a/c/c/e;->c(Lcom/netease/nr/biz/news/a/c/c/e;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0202b5

    invoke-virtual {v0, v1, v2}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    invoke-static {v8}, Lcom/netease/nr/biz/news/a/c/c/e;->d(Lcom/netease/nr/biz/news/a/c/c/e;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "tname"

    invoke-static {v7, v1}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v8}, Lcom/netease/nr/biz/news/a/c/c/e;->e(Lcom/netease/nr/biz/news/a/c/c/e;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "title"

    invoke-static {v7, v1}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v8}, Lcom/netease/nr/biz/news/a/c/c/e;->f(Lcom/netease/nr/biz/news/a/c/c/e;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "digest"

    invoke-static {v7, v1}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v8}, Lcom/netease/nr/biz/news/a/c/c/e;->c(Lcom/netease/nr/biz/news/a/c/c/e;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v6, :cond_5

    const v0, 0x7f0b00f8

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/c/b;->d:Lcom/netease/nr/base/c/a/c;

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/c/c/b;->f:Ljava/lang/String;

    new-array v2, v10, [Ljava/lang/Object;

    const-string v4, "tid"

    invoke-static {v7, v4}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v8}, Lcom/netease/nr/biz/news/a/c/c/e;->a(Lcom/netease/nr/biz/news/a/c/c/e;)Lcom/netease/nr/base/view/MyImageView;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netease/nr/base/c/a/c;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    const-string v0, "tid"

    invoke-static {v7, v0}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "T1348647909107"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "T1351840906470"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_1
    invoke-static {v8}, Lcom/netease/nr/biz/news/a/c/c/e;->c(Lcom/netease/nr/biz/news/a/c/c/e;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_4
    const-string v1, "status"

    if-eqz v6, :cond_7

    const-string v0, "1"

    :goto_5
    invoke-static {v7, v1, v0}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v8}, Lcom/netease/nr/biz/news/a/c/c/e;->c(Lcom/netease/nr/biz/news/a/c/c/e;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v4, Lcom/netease/nr/biz/news/a/c/c/c;

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/netease/nr/biz/news/a/c/c/c;-><init>(Lcom/netease/nr/biz/news/a/c/c/b;ZLjava/util/Map;Lcom/netease/nr/biz/news/a/c/c/e;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v6, :cond_8

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/c/b;->c:Lcom/netease/util/j/a;

    invoke-static {v8}, Lcom/netease/nr/biz/news/a/c/c/e;->c(Lcom/netease/nr/biz/news/a/c/c/e;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0202b6

    invoke-virtual {v0, v1, v2}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    invoke-static {v8}, Lcom/netease/nr/biz/news/a/c/c/e;->c(Lcom/netease/nr/biz/news/a/c/c/e;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_6
    invoke-static {v8}, Lcom/netease/nr/biz/news/a/c/c/e;->a(Lcom/netease/nr/biz/news/a/c/c/e;)Lcom/netease/nr/base/view/MyImageView;

    move-result-object v0

    new-instance v1, Lcom/netease/nr/biz/news/a/c/c/d;

    invoke-direct {v1, p0, p1}, Lcom/netease/nr/biz/news/a/c/c/d;-><init>(Lcom/netease/nr/biz/news/a/c/c/b;I)V

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/MyImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/news/a/c/c/e;

    move-object v8, v0

    goto/16 :goto_0

    :cond_3
    move v6, v3

    goto/16 :goto_1

    :cond_4
    const v2, 0x7f0202b3

    goto/16 :goto_2

    :cond_5
    const v0, 0x7f0b00f7

    goto/16 :goto_3

    :cond_6
    invoke-static {v8}, Lcom/netease/nr/biz/news/a/c/c/e;->c(Lcom/netease/nr/biz/news/a/c/c/e;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    :cond_7
    const-string v0, "0"

    goto :goto_5

    :cond_8
    invoke-static {v8}, Lcom/netease/nr/biz/news/a/c/c/e;->c(Lcom/netease/nr/biz/news/a/c/c/e;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_6
.end method

.method public notifyDataSetChanged()V
    .locals 2

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/c/b;->g:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/c/b;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/c/b;->g:Ljava/util/Map;

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/c/c/b;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/netease/nr/biz/news/column/g;->g(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method
