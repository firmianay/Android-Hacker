.class public Lcom/netease/nr/biz/j/c/k;
.super Lcom/netease/nr/base/a/a;


# instance fields
.field private b:Ljava/util/List;

.field private c:Lcom/netease/nr/base/c/a/h;

.field private d:Lcom/netease/nr/base/c/a/l;

.field private e:Landroid/view/LayoutInflater;

.field private f:Landroid/content/Context;

.field private g:Lcom/netease/util/j/a;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/netease/nr/base/a/a;-><init>(Ljava/util/List;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/nr/biz/j/c/k;->b:Ljava/util/List;

    iput-object p1, p0, Lcom/netease/nr/biz/j/c/k;->b:Ljava/util/List;

    iput-object p2, p0, Lcom/netease/nr/biz/j/c/k;->f:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/netease/nr/biz/j/c/k;->e:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/netease/nr/biz/j/c/k;->f:Landroid/content/Context;

    iget-object v0, p0, Lcom/netease/nr/biz/j/c/k;->f:Landroid/content/Context;

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

    iput-object v0, p0, Lcom/netease/nr/biz/j/c/k;->c:Lcom/netease/nr/base/c/a/h;

    iget-object v1, p0, Lcom/netease/nr/biz/j/c/k;->f:Landroid/content/Context;

    iget-object v0, p0, Lcom/netease/nr/biz/j/c/k;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0202dc

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/nr/base/c/a/l;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/netease/nr/base/c/a/l;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/j/c/k;->d:Lcom/netease/nr/base/c/a/l;

    iget-object v0, p0, Lcom/netease/nr/biz/j/c/k;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/util/j/a;->a(Landroid/content/Context;)Lcom/netease/util/j/a;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/j/c/k;->g:Lcom/netease/util/j/a;

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/biz/j/c/k;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/j/c/k;->f:Landroid/content/Context;

    return-object v0
.end method

.method private a(Lcom/netease/nr/biz/j/c/o;)V
    .locals 3

    iget-object v0, p0, Lcom/netease/nr/biz/j/c/k;->g:Lcom/netease/util/j/a;

    iget-object v1, p1, Lcom/netease/nr/biz/j/c/o;->b:Landroid/widget/TextView;

    const v2, 0x7f070093

    invoke-virtual {v0, v1, v2}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/j/c/k;->g:Lcom/netease/util/j/a;

    iget-object v1, p1, Lcom/netease/nr/biz/j/c/o;->c:Landroid/widget/TextView;

    const v2, 0x7f070095

    invoke-virtual {v0, v1, v2}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/j/c/k;->g:Lcom/netease/util/j/a;

    iget-object v1, p1, Lcom/netease/nr/biz/j/c/o;->d:Landroid/widget/ImageView;

    const v2, 0x7f0202d8

    invoke-virtual {v0, v1, v2}, Lcom/netease/util/j/a;->a(Landroid/widget/ImageView;I)V

    return-void
.end method

.method private a(Lcom/netease/nr/biz/j/c/p;)V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x3

    const v3, 0x7f070088

    iget-object v0, p0, Lcom/netease/nr/biz/j/c/k;->g:Lcom/netease/util/j/a;

    iget-object v1, p1, Lcom/netease/nr/biz/j/c/p;->b:Landroid/widget/TextView;

    const v2, 0x7f070093

    invoke-virtual {v0, v1, v2}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/j/c/k;->g:Lcom/netease/util/j/a;

    iget-object v1, p1, Lcom/netease/nr/biz/j/c/p;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v3}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/j/c/k;->g:Lcom/netease/util/j/a;

    iget-object v1, p1, Lcom/netease/nr/biz/j/c/p;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v3}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/j/c/k;->g:Lcom/netease/util/j/a;

    iget-object v1, p1, Lcom/netease/nr/biz/j/c/p;->e:Landroid/widget/TextView;

    const v2, 0x7f070095

    invoke-virtual {v0, v1, v2}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/j/c/k;->g:Lcom/netease/util/j/a;

    iget-object v1, p1, Lcom/netease/nr/biz/j/c/p;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v3}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/j/c/k;->g:Lcom/netease/util/j/a;

    iget-object v1, p1, Lcom/netease/nr/biz/j/c/p;->i:Landroid/widget/ImageView;

    const v2, 0x7f0202de

    invoke-virtual {v0, v1, v2}, Lcom/netease/util/j/a;->a(Landroid/widget/ImageView;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/j/c/k;->g:Lcom/netease/util/j/a;

    iget-object v1, p1, Lcom/netease/nr/biz/j/c/p;->l:Landroid/view/View;

    const v2, 0x7f0202db

    invoke-virtual {v0, v1, v2}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/j/c/k;->g:Lcom/netease/util/j/a;

    iget-object v1, p1, Lcom/netease/nr/biz/j/c/p;->k:Landroid/widget/ImageView;

    const v2, 0x7f0200c7

    invoke-virtual {v0, v1, v2}, Lcom/netease/util/j/a;->a(Landroid/widget/ImageView;I)V

    iget-object v0, p1, Lcom/netease/nr/biz/j/c/p;->l:Landroid/view/View;

    invoke-virtual {v0, v5, v4, v5, v4}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method private a(Ljava/util/Map;Lcom/netease/nr/biz/j/c/o;)V
    .locals 5

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    const-string v0, "userIcon"

    invoke-static {p1, v0}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "userName"

    invoke-static {p1, v1}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "desc"

    invoke-static {p1, v2}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    const-string v2, "text"

    invoke-static {p1, v2}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p2, Lcom/netease/nr/biz/j/c/o;->a:Lcom/netease/nr/base/view/FitImageView;

    iget-object v4, p0, Lcom/netease/nr/biz/j/c/k;->d:Lcom/netease/nr/base/c/a/l;

    invoke-virtual {v3, v4, v0}, Lcom/netease/nr/base/view/FitImageView;->a(Lcom/netease/util/c/b;Ljava/lang/String;)V

    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p2, Lcom/netease/nr/biz/j/c/o;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p2, Lcom/netease/nr/biz/j/c/o;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method private a(Ljava/util/Map;Lcom/netease/nr/biz/j/c/p;)V
    .locals 15

    if-eqz p1, :cond_7

    if-eqz p2, :cond_7

    const-string v1, "userIcon"

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "userName"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "desc"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "text"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "imgsrc"

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "mp4Url"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "wapUrl"

    move-object/from16 v0, p1

    invoke-static {v0, v7}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "id"

    move-object/from16 v0, p1

    invoke-static {v0, v8}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "cover"

    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "tag"

    move-object/from16 v0, p1

    invoke-static {v0, v10}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "replyCount"

    move-object/from16 v0, p1

    invoke-static {v0, v11}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "tag"

    const/4 v13, -0x1

    move-object/from16 v0, p1

    invoke-static {v0, v12, v13}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;I)I

    move-result v12

    const-string v13, "url"

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/netease/nr/biz/j/c/p;->a:Lcom/netease/nr/base/view/FitImageView;

    iget-object v14, p0, Lcom/netease/nr/biz/j/c/k;->d:Lcom/netease/nr/base/c/a/l;

    invoke-virtual {v13, v14, v1}, Lcom/netease/nr/base/view/FitImageView;->a(Lcom/netease/util/c/b;Ljava/lang/String;)V

    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_1

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/netease/nr/biz/j/c/p;->b:Landroid/widget/TextView;

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/netease/nr/biz/j/c/p;->d:Landroid/widget/TextView;

    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/netease/nr/biz/j/c/p;->e:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/netease/nr/biz/j/c/p;->m:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/netease/nr/biz/j/c/p;->g:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/netease/nr/biz/j/c/k;->c:Lcom/netease/nr/base/c/a/h;

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/netease/nr/biz/j/c/p;->f:Landroid/widget/ImageView;

    invoke-virtual {v3, v9, v4}, Lcom/netease/nr/base/c/a/h;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/netease/nr/biz/j/c/p;->m:Landroid/view/View;

    new-instance v4, Lcom/netease/nr/biz/j/c/l;

    invoke-direct {v4, p0, v6}, Lcom/netease/nr/biz/j/c/l;-><init>(Lcom/netease/nr/biz/j/c/k;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/netease/nr/biz/j/c/k;->d:Lcom/netease/nr/base/c/a/l;

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/netease/nr/biz/j/c/p;->a:Lcom/netease/nr/base/view/FitImageView;

    invoke-virtual {v3, v1, v4}, Lcom/netease/nr/base/c/a/l;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    :cond_4
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/netease/nr/biz/j/c/p;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/netease/nr/biz/j/c/p;->l:Landroid/view/View;

    new-instance v3, Lcom/netease/nr/biz/j/c/n;

    invoke-direct {v3, p0, v7, v8, v2}, Lcom/netease/nr/biz/j/c/n;-><init>(Lcom/netease/nr/biz/j/c/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    const/4 v1, -0x1

    if-le v12, v1, :cond_7

    const/4 v1, 0x1

    if-ne v12, v1, :cond_a

    iget-object v1, p0, Lcom/netease/nr/biz/j/c/k;->g:Lcom/netease/util/j/a;

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/netease/nr/biz/j/c/p;->h:Landroid/widget/ImageView;

    const v3, 0x7f0202e7

    invoke-virtual {v1, v2, v3}, Lcom/netease/util/j/a;->a(Landroid/widget/ImageView;I)V

    :cond_7
    :goto_1
    return-void

    :cond_8
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/netease/nr/biz/j/c/p;->m:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/netease/nr/biz/j/c/p;->g:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/netease/nr/biz/j/c/k;->c:Lcom/netease/nr/base/c/a/h;

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/netease/nr/biz/j/c/p;->f:Landroid/widget/ImageView;

    invoke-virtual {v3, v5, v6}, Lcom/netease/nr/base/c/a/h;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/netease/nr/biz/j/c/p;->m:Landroid/view/View;

    new-instance v6, Lcom/netease/nr/biz/j/c/m;

    invoke-direct {v6, p0, v5, v4}, Lcom/netease/nr/biz/j/c/m;-><init>(Lcom/netease/nr/biz/j/c/k;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_9
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/netease/nr/biz/j/c/p;->m:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_a
    const/4 v1, 0x2

    if-ne v12, v1, :cond_b

    iget-object v1, p0, Lcom/netease/nr/biz/j/c/k;->g:Lcom/netease/util/j/a;

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/netease/nr/biz/j/c/p;->h:Landroid/widget/ImageView;

    const v3, 0x7f0202e5

    invoke-virtual {v1, v2, v3}, Lcom/netease/util/j/a;->a(Landroid/widget/ImageView;I)V

    goto :goto_1

    :cond_b
    const/4 v1, 0x3

    if-ne v12, v1, :cond_7

    iget-object v1, p0, Lcom/netease/nr/biz/j/c/k;->g:Lcom/netease/util/j/a;

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/netease/nr/biz/j/c/p;->h:Landroid/widget/ImageView;

    const v3, 0x7f0202e3

    invoke-virtual {v1, v2, v3}, Lcom/netease/util/j/a;->a(Landroid/widget/ImageView;I)V

    goto :goto_1
.end method


# virtual methods
.method public a(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    if-nez p3, :cond_0

    new-instance v1, Lcom/netease/nr/biz/j/c/o;

    invoke-direct {v1, p0}, Lcom/netease/nr/biz/j/c/o;-><init>(Lcom/netease/nr/biz/j/c/k;)V

    iget-object v0, p0, Lcom/netease/nr/biz/j/c/k;->e:Landroid/view/LayoutInflater;

    const v2, 0x7f030043

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    const v0, 0x7f0c00c7

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/FitImageView;

    iput-object v0, v1, Lcom/netease/nr/biz/j/c/o;->a:Lcom/netease/nr/base/view/FitImageView;

    iget-object v0, v1, Lcom/netease/nr/biz/j/c/o;->a:Lcom/netease/nr/base/view/FitImageView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Lcom/netease/nr/base/view/FitImageView;->a(F)V

    const v0, 0x7f0c00c9

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/netease/nr/biz/j/c/o;->b:Landroid/widget/TextView;

    const v0, 0x7f0c00ca

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/netease/nr/biz/j/c/o;->c:Landroid/widget/TextView;

    invoke-virtual {p3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/j/c/o;

    iget-object v1, p0, Lcom/netease/nr/biz/j/c/k;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/util/e/b;

    iget-object v1, v1, Lcom/netease/util/e/b;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-direct {p0, v1, v0}, Lcom/netease/nr/biz/j/c/k;->a(Ljava/util/Map;Lcom/netease/nr/biz/j/c/o;)V

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/netease/nr/biz/j/c/k;->a(Lcom/netease/nr/biz/j/c/o;)V

    :cond_1
    return-object p3
.end method

.method public a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    if-nez p2, :cond_0

    new-instance v1, Lcom/netease/nr/biz/j/c/p;

    invoke-direct {v1, p0}, Lcom/netease/nr/biz/j/c/p;-><init>(Lcom/netease/nr/biz/j/c/k;)V

    iget-object v0, p0, Lcom/netease/nr/biz/j/c/k;->e:Landroid/view/LayoutInflater;

    const v2, 0x7f030044

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0c00c7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/FitImageView;

    iput-object v0, v1, Lcom/netease/nr/biz/j/c/p;->a:Lcom/netease/nr/base/view/FitImageView;

    iget-object v0, v1, Lcom/netease/nr/biz/j/c/p;->a:Lcom/netease/nr/base/view/FitImageView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Lcom/netease/nr/base/view/FitImageView;->a(F)V

    const v0, 0x7f0c00c9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/netease/nr/biz/j/c/p;->b:Landroid/widget/TextView;

    const v0, 0x7f0c008d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/netease/nr/biz/j/c/p;->c:Landroid/widget/TextView;

    const v0, 0x7f0c00cc

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/netease/nr/biz/j/c/p;->d:Landroid/widget/TextView;

    const v0, 0x7f0c00ca

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/netease/nr/biz/j/c/p;->e:Landroid/widget/TextView;

    const v0, 0x7f0c006a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/MyImageView;

    iput-object v0, v1, Lcom/netease/nr/biz/j/c/p;->f:Landroid/widget/ImageView;

    const v0, 0x7f0c00ce

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/MyImageView;

    iput-object v0, v1, Lcom/netease/nr/biz/j/c/p;->g:Landroid/widget/ImageView;

    const v0, 0x7f0c00cf

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/netease/nr/biz/j/c/p;->h:Landroid/widget/ImageView;

    const v0, 0x7f0c00d2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/netease/nr/biz/j/c/p;->j:Landroid/widget/TextView;

    const v0, 0x7f0c00d0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/netease/nr/biz/j/c/p;->l:Landroid/view/View;

    const v0, 0x7f0c00cd

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/netease/nr/biz/j/c/p;->m:Landroid/view/View;

    const v0, 0x7f0c00d1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/netease/nr/biz/j/c/p;->i:Landroid/widget/ImageView;

    const v0, 0x7f0c00d3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/netease/nr/biz/j/c/p;->k:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lcom/netease/nr/biz/j/c/k;->a(Lcom/netease/nr/biz/j/c/p;)V

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/j/c/p;

    iget-object v1, p0, Lcom/netease/nr/biz/j/c/k;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/util/e/b;

    iget-object v1, v1, Lcom/netease/util/e/b;->a:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_1

    invoke-direct {p0, v1, v0}, Lcom/netease/nr/biz/j/c/k;->a(Ljava/util/Map;Lcom/netease/nr/biz/j/c/p;)V

    :cond_1
    return-object p2
.end method

.method public isEnabled(I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
