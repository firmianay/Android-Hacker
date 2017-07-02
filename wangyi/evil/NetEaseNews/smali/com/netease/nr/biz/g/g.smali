.class public Lcom/netease/nr/biz/g/g;
.super Lcom/netease/nr/base/a/a;


# instance fields
.field private b:Landroid/view/LayoutInflater;

.field private c:Landroid/content/Context;

.field private d:Ljava/util/List;

.field private e:Lcom/netease/nr/base/c/a/h;

.field private f:Lcom/netease/nr/base/c/a/l;

.field private g:I

.field private h:I

.field private i:Ljava/util/List;

.field private j:Lcom/netease/util/j/a;

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/netease/nr/base/a/a;-><init>(Ljava/util/List;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/biz/g/g;->i:Ljava/util/List;

    iput-object p1, p0, Lcom/netease/nr/biz/g/g;->d:Ljava/util/List;

    iput-object p2, p0, Lcom/netease/nr/biz/g/g;->c:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/netease/nr/biz/g/g;->b:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/netease/nr/biz/g/g;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/netease/nr/biz/g/g;->c:Landroid/content/Context;

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

    iput-object v0, p0, Lcom/netease/nr/biz/g/g;->e:Lcom/netease/nr/base/c/a/h;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0202a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/netease/nr/base/c/a/l;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/netease/nr/base/c/a/l;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/g/g;->f:Lcom/netease/nr/base/c/a/l;

    iget-object v0, p0, Lcom/netease/nr/biz/g/g;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/netease/nr/biz/g/g;->h:I

    iget-object v0, p0, Lcom/netease/nr/biz/g/g;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/netease/nr/biz/g/g;->g:I

    iget-object v0, p0, Lcom/netease/nr/biz/g/g;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/util/j/a;->a(Landroid/content/Context;)Lcom/netease/util/j/a;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/g/g;->j:Lcom/netease/util/j/a;

    iput-object p3, p0, Lcom/netease/nr/biz/g/g;->k:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/biz/g/g;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/g/g;->c:Landroid/content/Context;

    return-object v0
.end method

.method private a(Ljava/util/List;Landroid/view/View;Ljava/lang/String;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/4 v6, 0x1

    if-nez p2, :cond_0

    :try_start_0
    new-instance v0, Lcom/netease/nr/biz/g/o;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/netease/nr/biz/g/o;-><init>(Lcom/netease/nr/biz/g/g;Lcom/netease/nr/biz/g/h;)V

    iget-object v1, p0, Lcom/netease/nr/biz/g/g;->b:Landroid/view/LayoutInflater;

    const v2, 0x7f0300c4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    const v2, 0x7f0c0250

    :try_start_1
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/netease/nr/biz/g/o;->a:Landroid/view/View;

    const v2, 0x7f0c0251

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/netease/nr/biz/g/o;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-gtz v0, :cond_1

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    :try_start_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/g/o;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v2, v0

    move-object v1, p2

    goto :goto_0

    :cond_1
    :try_start_3
    const-string v0, "video"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v4, v2, Lcom/netease/nr/biz/g/o;->a:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, v2, Lcom/netease/nr/biz/g/o;->a:Landroid/view/View;

    invoke-direct {p0, v4, v0, v3}, Lcom/netease/nr/biz/g/g;->a(Landroid/view/View;Ljava/util/Map;Z)V

    iget-object v0, p0, Lcom/netease/nr/biz/g/g;->j:Lcom/netease/util/j/a;

    iget-object v4, v2, Lcom/netease/nr/biz/g/o;->a:Landroid/view/View;

    const v5, 0x7f02029f

    invoke-virtual {v0, v4, v5}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v6, :cond_3

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v4, v2, Lcom/netease/nr/biz/g/o;->b:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, v2, Lcom/netease/nr/biz/g/o;->b:Landroid/view/View;

    invoke-direct {p0, v4, v0, v3}, Lcom/netease/nr/biz/g/g;->a(Landroid/view/View;Ljava/util/Map;Z)V

    iget-object v0, p0, Lcom/netease/nr/biz/g/g;->j:Lcom/netease/util/j/a;

    iget-object v2, v2, Lcom/netease/nr/biz/g/o;->b:Landroid/view/View;

    const v3, 0x7f02029f

    invoke-virtual {v0, v2, v3}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    :goto_3
    move-object v0, v1

    goto :goto_1

    :cond_2
    iget-object v0, v2, Lcom/netease/nr/biz/g/o;->a:Landroid/view/View;

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    :goto_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_3
    :try_start_4
    iget-object v0, v2, Lcom/netease/nr/biz/g/o;->b:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, p2

    goto :goto_4
.end method

.method private a(Ljava/util/Map;Landroid/view/View;Ljava/lang/String;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "special"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v0

    :cond_0
    if-nez p2, :cond_9

    new-instance v2, Lcom/netease/nr/biz/g/m;

    const/4 v0, 0x0

    invoke-direct {v2, p0, v0}, Lcom/netease/nr/biz/g/m;-><init>(Lcom/netease/nr/biz/g/g;Lcom/netease/nr/biz/g/h;)V

    iget-object v0, p0, Lcom/netease/nr/biz/g/g;->b:Landroid/view/LayoutInflater;

    const v3, 0x7f0300c6

    const/4 v4, 0x0

    invoke-virtual {v0, v3, p4, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    const v0, 0x7f0c0008

    :try_start_1
    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/netease/nr/biz/g/m;->a:Landroid/widget/TextView;

    const v0, 0x7f0c0072

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/netease/nr/biz/g/m;->b:Landroid/widget/TextView;

    const v0, 0x7f0c008e

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/netease/nr/biz/g/m;->c:Landroid/widget/TextView;

    const v0, 0x7f0c01ff

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/netease/nr/biz/g/m;->d:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/g/m;

    iget-object v2, p0, Lcom/netease/nr/biz/g/g;->j:Lcom/netease/util/j/a;

    const v4, 0x7f020036

    invoke-virtual {v2, v3, v4}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    invoke-direct {p0, v0}, Lcom/netease/nr/biz/g/g;->a(Lcom/netease/nr/biz/g/m;)V

    const-string v2, "docid"

    invoke-static {p1, v2}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/netease/nr/biz/g/g;->c:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/netease/nr/biz/g/c;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/netease/nr/biz/g/g;->j:Lcom/netease/util/j/a;

    iget-object v4, v0, Lcom/netease/nr/biz/g/m;->a:Landroid/widget/TextView;

    const v5, 0x7f070006

    invoke-virtual {v2, v4, v5}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    :goto_1
    if-nez v1, :cond_7

    iget-object v1, v0, Lcom/netease/nr/biz/g/m;->b:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v0, Lcom/netease/nr/biz/g/m;->a:Landroid/widget/TextView;

    const-string v1, "title"

    invoke-static {p1, v1}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "digest"

    invoke-static {p1, v1}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "ptime"

    invoke-static {p1, v2}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v1, v0, Lcom/netease/nr/biz/g/m;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    const-string v1, "replyCount"

    invoke-static {p1, v1}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v1, "tag"

    invoke-static {p1, v1}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v2, v0, Lcom/netease/nr/biz/g/m;->c:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v0, Lcom/netease/nr/biz/g/m;->c:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/netease/nr/biz/g/g;->c:Landroid/content/Context;

    iget-object v5, p0, Lcom/netease/nr/biz/g/g;->j:Lcom/netease/util/j/a;

    invoke-static {v2, v1, v4, v5}, Lcom/netease/nr/biz/g/c;->a(Landroid/widget/TextView;Ljava/lang/String;Landroid/content/Context;Lcom/netease/util/j/a;)V

    :goto_3
    invoke-static {p1}, Lcom/netease/nr/biz/g/g;->a(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/netease/nr/biz/g/m;->c:Landroid/widget/TextView;

    const-string v1, "vote"

    iget-object v2, p0, Lcom/netease/nr/biz/g/g;->c:Landroid/content/Context;

    iget-object v4, p0, Lcom/netease/nr/biz/g/g;->j:Lcom/netease/util/j/a;

    invoke-static {v0, v1, v2, v4}, Lcom/netease/nr/biz/g/c;->a(Landroid/widget/TextView;Ljava/lang/String;Landroid/content/Context;Lcom/netease/util/j/a;)V

    :cond_1
    const v0, 0x7f0c0081

    invoke-virtual {v3, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    new-instance v0, Lcom/netease/nr/biz/g/h;

    invoke-direct {v0, p0, p1, p3}, Lcom/netease/nr/biz/g/h;-><init>(Lcom/netease/nr/biz/g/g;Ljava/util/Map;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v0, v3

    :goto_4
    return-object v0

    :cond_2
    iget-object v2, p0, Lcom/netease/nr/biz/g/g;->j:Lcom/netease/util/j/a;

    iget-object v4, v0, Lcom/netease/nr/biz/g/m;->a:Landroid/widget/TextView;

    const v5, 0x7f07000c

    invoke-virtual {v2, v4, v5}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v3

    :goto_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :cond_3
    :try_start_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, v0, Lcom/netease/nr/biz/g/m;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_4
    iget-object v1, v0, Lcom/netease/nr/biz/g/m;->b:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_5
    if-eqz v2, :cond_6

    iget-object v1, v0, Lcom/netease/nr/biz/g/m;->c:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v0, Lcom/netease/nr/biz/g/m;->c:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/netease/nr/biz/g/g;->c:Landroid/content/Context;

    const v5, 0x7f0b019a

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/netease/nr/biz/g/g;->c:Landroid/content/Context;

    iget-object v5, p0, Lcom/netease/nr/biz/g/g;->j:Lcom/netease/util/j/a;

    invoke-static {v1, v2, v4, v5}, Lcom/netease/nr/biz/g/c;->a(Landroid/widget/TextView;Ljava/lang/String;Landroid/content/Context;Lcom/netease/util/j/a;)V

    goto :goto_3

    :cond_6
    iget-object v1, v0, Lcom/netease/nr/biz/g/m;->c:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    :cond_7
    const-string v1, "sname"

    invoke-static {p1, v1}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_8

    const-string v1, ""

    :goto_6
    iget-object v2, v0, Lcom/netease/nr/biz/g/m;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/netease/nr/biz/g/m;->b:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v0, Lcom/netease/nr/biz/g/m;->c:Landroid/widget/TextView;

    const-string v2, "\u4e13\u9898"

    iget-object v4, p0, Lcom/netease/nr/biz/g/g;->c:Landroid/content/Context;

    iget-object v5, p0, Lcom/netease/nr/biz/g/g;->j:Lcom/netease/util/j/a;

    invoke-static {v1, v2, v4, v5}, Lcom/netease/nr/biz/g/c;->a(Landroid/widget/TextView;Ljava/lang/String;Landroid/content/Context;Lcom/netease/util/j/a;)V

    goto/16 :goto_3

    :cond_8
    const-string v1, "sname"

    invoke-static {p1, v1}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, p2

    goto :goto_5

    :cond_9
    move-object v3, p2

    goto/16 :goto_0
.end method

.method private a(Landroid/view/View;Ljava/util/Map;Z)V
    .locals 5

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v1, Lcom/netease/nr/biz/g/n;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/netease/nr/biz/g/n;-><init>(Lcom/netease/nr/biz/g/g;Lcom/netease/nr/biz/g/h;)V

    const v0, 0x7f0c006a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/FitImageView;

    iput-object v0, v1, Lcom/netease/nr/biz/g/n;->a:Lcom/netease/nr/base/view/FitImageView;

    iget-object v0, v1, Lcom/netease/nr/biz/g/n;->a:Lcom/netease/nr/base/view/FitImageView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Lcom/netease/nr/base/view/FitImageView;->a(F)V

    const v0, 0x7f0c0008

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/netease/nr/biz/g/n;->c:Landroid/widget/TextView;

    const v0, 0x7f0c0071

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/netease/nr/biz/g/n;->b:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/g/n;

    invoke-direct {p0, v0}, Lcom/netease/nr/biz/g/g;->a(Lcom/netease/nr/biz/g/n;)V

    const-string v1, "cover"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "title"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz p3, :cond_1

    iget-object v3, v0, Lcom/netease/nr/biz/g/n;->b:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    iget-object v3, v0, Lcom/netease/nr/biz/g/n;->a:Lcom/netease/nr/base/view/FitImageView;

    iget-object v4, p0, Lcom/netease/nr/biz/g/g;->f:Lcom/netease/nr/base/c/a/l;

    invoke-virtual {v3, v4, v1}, Lcom/netease/nr/base/view/FitImageView;->a(Lcom/netease/util/c/b;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/netease/nr/biz/g/n;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_2

    const-string v0, "video"

    :goto_1
    new-instance v1, Lcom/netease/nr/biz/g/j;

    invoke-direct {v1, p0, p2, v0}, Lcom/netease/nr/biz/g/j;-><init>(Lcom/netease/nr/biz/g/g;Ljava/util/Map;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    iget-object v3, v0, Lcom/netease/nr/biz/g/n;->b:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_2
    :try_start_1
    const-string v0, "photoset"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private a(Lcom/netease/nr/biz/g/k;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/g/g;->j:Lcom/netease/util/j/a;

    iget-object v1, p1, Lcom/netease/nr/biz/g/k;->a:Landroid/widget/TextView;

    const v2, 0x7f02029e

    invoke-virtual {v0, v1, v2}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/g/g;->j:Lcom/netease/util/j/a;

    iget-object v1, p1, Lcom/netease/nr/biz/g/k;->a:Landroid/widget/TextView;

    const v2, 0x7f07009d

    invoke-virtual {v0, v1, v2}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    :cond_0
    return-void
.end method

.method private a(Lcom/netease/nr/biz/g/l;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/g/g;->j:Lcom/netease/util/j/a;

    iget-object v1, p1, Lcom/netease/nr/biz/g/l;->c:Landroid/widget/TextView;

    const v2, 0x7f070004

    invoke-virtual {v0, v1, v2}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/g/g;->j:Lcom/netease/util/j/a;

    iget-object v1, p1, Lcom/netease/nr/biz/g/l;->e:Landroid/widget/ImageView;

    const v2, 0x7f020030

    invoke-virtual {v0, v1, v2}, Lcom/netease/util/j/a;->a(Landroid/widget/ImageView;I)V

    :cond_0
    return-void
.end method

.method private a(Lcom/netease/nr/biz/g/m;)V
    .locals 4

    const v3, 0x7f070004

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/g/g;->j:Lcom/netease/util/j/a;

    iget-object v1, p1, Lcom/netease/nr/biz/g/m;->a:Landroid/widget/TextView;

    const v2, 0x7f07000c

    invoke-virtual {v0, v1, v2}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/g/g;->j:Lcom/netease/util/j/a;

    iget-object v1, p1, Lcom/netease/nr/biz/g/m;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v3}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/g/g;->j:Lcom/netease/util/j/a;

    iget-object v1, p1, Lcom/netease/nr/biz/g/m;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v3}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/g/g;->j:Lcom/netease/util/j/a;

    iget-object v1, p1, Lcom/netease/nr/biz/g/m;->d:Landroid/widget/ImageView;

    const v2, 0x7f020030

    invoke-virtual {v0, v1, v2}, Lcom/netease/util/j/a;->a(Landroid/widget/ImageView;I)V

    :cond_0
    return-void
.end method

.method private a(Lcom/netease/nr/biz/g/n;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/g/g;->j:Lcom/netease/util/j/a;

    iget-object v1, p1, Lcom/netease/nr/biz/g/n;->c:Landroid/widget/TextView;

    const v2, 0x7f07008d

    invoke-virtual {v0, v1, v2}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/g/g;->j:Lcom/netease/util/j/a;

    iget-object v1, p1, Lcom/netease/nr/biz/g/n;->c:Landroid/widget/TextView;

    const v2, 0x7f0202a2

    invoke-virtual {v0, v1, v2}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public static a(Ljava/util/Map;)Z
    .locals 1

    const-string v0, "voteID"

    invoke-static {p0, v0}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/util/Map;Landroid/view/View;Ljava/lang/String;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "special"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v3, v0

    :goto_0
    if-nez p2, :cond_8

    new-instance v1, Lcom/netease/nr/biz/g/l;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/netease/nr/biz/g/l;-><init>(Lcom/netease/nr/biz/g/g;Lcom/netease/nr/biz/g/h;)V

    iget-object v0, p0, Lcom/netease/nr/biz/g/g;->b:Landroid/view/LayoutInflater;

    const v2, 0x7f0300c7

    const/4 v4, 0x0

    invoke-virtual {v0, v2, p4, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    const v0, 0x7f0c006a

    :try_start_1
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/MyImageView;

    iput-object v0, v1, Lcom/netease/nr/biz/g/l;->a:Lcom/netease/nr/base/view/MyImageView;

    const v0, 0x7f0c0008

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/netease/nr/biz/g/l;->b:Landroid/widget/TextView;

    const v0, 0x7f0c0072

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/netease/nr/biz/g/l;->c:Landroid/widget/TextView;

    const v0, 0x7f0c008e

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/netease/nr/biz/g/l;->d:Landroid/widget/TextView;

    const v0, 0x7f0c01ff

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/netease/nr/biz/g/l;->e:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_1
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/g/l;

    iget-object v1, p0, Lcom/netease/nr/biz/g/g;->j:Lcom/netease/util/j/a;

    const v4, 0x7f020036

    invoke-virtual {v1, v2, v4}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    const-string v1, "imgsrc"

    invoke-static {p1, v1}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/nr/biz/g/g;->e:Lcom/netease/nr/base/c/a/h;

    iget-object v5, v0, Lcom/netease/nr/biz/g/l;->a:Lcom/netease/nr/base/view/MyImageView;

    invoke-virtual {v4, v1, v5}, Lcom/netease/nr/base/c/a/h;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    const-string v1, "title"

    invoke-static {p1, v1}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v4, "docid"

    invoke-static {p1, v4}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/netease/nr/biz/g/l;->b:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/netease/nr/biz/g/g;->c:Landroid/content/Context;

    invoke-static {v1, v4}, Lcom/netease/nr/biz/g/c;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/netease/nr/biz/g/g;->j:Lcom/netease/util/j/a;

    iget-object v4, v0, Lcom/netease/nr/biz/g/l;->b:Landroid/widget/TextView;

    const v5, 0x7f070006

    invoke-virtual {v1, v4, v5}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    :goto_2
    const-string v1, "digest"

    invoke-static {p1, v1}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x1c

    if-le v4, v5, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    const/16 v6, 0x1a

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ".."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    iget-object v4, v0, Lcom/netease/nr/biz/g/l;->c:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez v3, :cond_7

    const-string v1, "replyCount"

    invoke-static {p1, v1}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v1, "tag"

    invoke-static {p1, v1}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v3, v0, Lcom/netease/nr/biz/g/l;->d:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, v0, Lcom/netease/nr/biz/g/l;->d:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/netease/nr/biz/g/g;->c:Landroid/content/Context;

    iget-object v5, p0, Lcom/netease/nr/biz/g/g;->j:Lcom/netease/util/j/a;

    invoke-static {v3, v1, v4, v5}, Lcom/netease/nr/biz/g/c;->a(Landroid/widget/TextView;Ljava/lang/String;Landroid/content/Context;Lcom/netease/util/j/a;)V

    :goto_3
    invoke-static {p1}, Lcom/netease/nr/biz/g/g;->a(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/netease/nr/biz/g/l;->d:Landroid/widget/TextView;

    const-string v3, "vote"

    iget-object v4, p0, Lcom/netease/nr/biz/g/g;->c:Landroid/content/Context;

    iget-object v5, p0, Lcom/netease/nr/biz/g/g;->j:Lcom/netease/util/j/a;

    invoke-static {v1, v3, v4, v5}, Lcom/netease/nr/biz/g/c;->a(Landroid/widget/TextView;Ljava/lang/String;Landroid/content/Context;Lcom/netease/util/j/a;)V

    :cond_1
    new-instance v1, Lcom/netease/nr/biz/g/i;

    invoke-direct {v1, p0, p1, p3}, Lcom/netease/nr/biz/g/i;-><init>(Lcom/netease/nr/biz/g/g;Ljava/util/Map;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v0, :cond_2

    invoke-direct {p0, v0}, Lcom/netease/nr/biz/g/g;->a(Lcom/netease/nr/biz/g/l;)V

    :cond_2
    move-object v0, v2

    :goto_4
    return-object v0

    :cond_3
    move v3, v1

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lcom/netease/nr/biz/g/g;->j:Lcom/netease/util/j/a;

    iget-object v4, v0, Lcom/netease/nr/biz/g/l;->b:Landroid/widget/TextView;

    const v5, 0x7f07000c

    invoke-virtual {v1, v4, v5}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    :goto_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :cond_5
    if-eqz v3, :cond_6

    :try_start_2
    iget-object v1, v0, Lcom/netease/nr/biz/g/l;->d:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v0, Lcom/netease/nr/biz/g/l;->d:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/netease/nr/biz/g/g;->c:Landroid/content/Context;

    const v5, 0x7f0b019a

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/nr/biz/g/g;->c:Landroid/content/Context;

    iget-object v5, p0, Lcom/netease/nr/biz/g/g;->j:Lcom/netease/util/j/a;

    invoke-static {v1, v3, v4, v5}, Lcom/netease/nr/biz/g/c;->a(Landroid/widget/TextView;Ljava/lang/String;Landroid/content/Context;Lcom/netease/util/j/a;)V

    goto :goto_3

    :cond_6
    iget-object v1, v0, Lcom/netease/nr/biz/g/l;->d:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    :cond_7
    iget-object v1, v0, Lcom/netease/nr/biz/g/l;->d:Landroid/widget/TextView;

    const-string v3, "\u4e13\u9898"

    iget-object v4, p0, Lcom/netease/nr/biz/g/g;->c:Landroid/content/Context;

    iget-object v5, p0, Lcom/netease/nr/biz/g/g;->j:Lcom/netease/util/j/a;

    invoke-static {v1, v3, v4, v5}, Lcom/netease/nr/biz/g/c;->a(Landroid/widget/TextView;Ljava/lang/String;Landroid/content/Context;Lcom/netease/util/j/a;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, p2

    goto :goto_5

    :cond_8
    move-object v2, p2

    goto/16 :goto_1
.end method

.method static synthetic b(Lcom/netease/nr/biz/g/g;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/g/g;->k:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    invoke-virtual {p0, p1, p2}, Lcom/netease/nr/biz/g/g;->a(II)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/g/g;->d(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    const-string v2, "type"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "news"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "special"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    check-cast v1, Ljava/util/Map;

    invoke-direct {p0, v1, p3, v0, p4}, Lcom/netease/nr/biz/g/g;->a(Ljava/util/Map;Landroid/view/View;Ljava/lang/String;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    :cond_1
    :goto_0
    return-object p3

    :cond_2
    const-string v2, "imgnews"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    check-cast v1, Ljava/util/Map;

    invoke-direct {p0, v1, p3, v0, p4}, Lcom/netease/nr/biz/g/g;->b(Ljava/util/Map;Landroid/view/View;Ljava/lang/String;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    goto :goto_0

    :cond_3
    const-string v2, "photoset"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "video"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_4
    iget-object v2, p0, Lcom/netease/nr/biz/g/g;->d:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/util/e/b;

    iget-object v2, v2, Lcom/netease/util/e/b;->b:Ljava/lang/Object;

    if-eqz v2, :cond_1

    check-cast v1, Ljava/util/List;

    invoke-direct {p0, v1, p3, v0, p4}, Lcom/netease/nr/biz/g/g;->a(Ljava/util/List;Landroid/view/View;Ljava/lang/String;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    goto :goto_0
.end method

.method public a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const/4 v2, 0x0

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/g/g;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f0300c2

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/netease/nr/biz/g/k;

    invoke-direct {v1, p0, v2}, Lcom/netease/nr/biz/g/k;-><init>(Lcom/netease/nr/biz/g/g;Lcom/netease/nr/biz/g/h;)V

    const v0, 0x7f0c024f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/netease/nr/biz/g/k;->a:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/g/k;

    invoke-direct {p0, v0}, Lcom/netease/nr/biz/g/g;->a(Lcom/netease/nr/biz/g/k;)V

    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/g/g;->d(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "tname"

    invoke-static {v1, v2}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v0, v0, Lcom/netease/nr/biz/g/k;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public a(II)Ljava/lang/Object;
    .locals 4

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/g/g;->d(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "type"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "photoset"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/g/g;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/netease/nr/biz/g/g;->d:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/g/g;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/g/g;->i:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/netease/nr/biz/g/g;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/util/e/b;

    iget-object v0, v0, Lcom/netease/util/e/b;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/netease/nr/biz/g/g;->i:Ljava/util/List;

    goto :goto_0

    :cond_3
    mul-int/lit8 v2, p2, 0x2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_4

    iget-object v3, p0, Lcom/netease/nr/biz/g/g;->i:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v1, v2, 0x1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lcom/netease/nr/biz/g/g;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v0, p0, Lcom/netease/nr/biz/g/g;->i:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/a/a;->a(II)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected c(I)I
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/g/g;->d(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "type"

    invoke-static {v0, v2}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "photoset"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "video"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/g/g;->d:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/g/g;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_2

    :cond_1
    move v0, v1

    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Lcom/netease/nr/biz/g/g;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/util/e/b;

    iget-object v0, v0, Lcom/netease/util/e/b;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    invoke-super {p0, p1}, Lcom/netease/nr/base/a/a;->c(I)I

    move-result v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 5

    const/4 v2, 0x2

    const/4 v1, 0x1

    :try_start_0
    new-instance v0, Lcom/netease/nr/base/a/b;

    invoke-direct {v0}, Lcom/netease/nr/base/a/b;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/netease/nr/biz/g/g;->a(Lcom/netease/nr/base/a/b;I)V

    iget v3, v0, Lcom/netease/nr/base/a/b;->b:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, v0, Lcom/netease/nr/base/a/b;->a:I

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/g/g;->d(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const-string v3, "type"

    invoke-static {v0, v3}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "news"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "special"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    const-string v2, "imgnews"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    const-string v2, "photoset"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "video"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_7

    :cond_5
    const/4 v0, 0x3

    goto :goto_0

    :cond_6
    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    move v0, v1

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    invoke-super {p0}, Lcom/netease/nr/base/a/a;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    return v0
.end method
