.class public Lcom/netease/nr/biz/g/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/widget/SimpleCursorAdapter$ViewBinder;
.implements Lcom/netease/nr/base/a/d;
.implements Lcom/netease/nr/base/view/cg;


# instance fields
.field private a:Lcom/netease/nr/base/c/a/f;

.field private b:Lcom/netease/nr/base/c/a/b;

.field private c:Ljava/util/Map;

.field private d:Ljava/util/List;

.field private e:Landroid/content/Context;

.field private f:Lcom/netease/util/j/a;

.field private g:Lcom/netease/nr/base/view/cf;

.field private h:Lcom/netease/nr/base/c/a/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Map;Ljava/util/List;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/netease/nr/biz/g/a;->a:Lcom/netease/nr/base/c/a/f;

    iput-object v3, p0, Lcom/netease/nr/biz/g/a;->b:Lcom/netease/nr/base/c/a/b;

    iput-object v3, p0, Lcom/netease/nr/biz/g/a;->c:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/biz/g/a;->d:Ljava/util/List;

    new-instance v0, Lcom/netease/nr/base/view/cf;

    invoke-direct {v0}, Lcom/netease/nr/base/view/cf;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/biz/g/a;->g:Lcom/netease/nr/base/view/cf;

    iput-object p1, p0, Lcom/netease/nr/biz/g/a;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/netease/nr/biz/g/a;->c:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netease/nr/base/c/a/f;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/netease/nr/base/c/a/f;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/g/a;->a:Lcom/netease/nr/base/c/a/f;

    invoke-static {p1, v3}, Lcom/netease/nr/base/c/a/b;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/netease/nr/base/c/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/g/a;->b:Lcom/netease/nr/base/c/a/b;

    iget-object v0, p0, Lcom/netease/nr/biz/g/a;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/util/j/a;->a(Landroid/content/Context;)Lcom/netease/util/j/a;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/g/a;->f:Lcom/netease/util/j/a;

    if-eqz p3, :cond_0

    :try_start_0
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/netease/nr/biz/g/a;->d:Ljava/util/List;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    invoke-static {p1, v3}, Lcom/netease/nr/base/c/a/c;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/netease/nr/base/c/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/g/a;->h:Lcom/netease/nr/base/c/a/c;

    iget-object v0, p0, Lcom/netease/nr/biz/g/a;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800ac

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/netease/nr/biz/g/a;->h:Lcom/netease/nr/base/c/a/c;

    invoke-virtual {v1, v0, v0}, Lcom/netease/nr/base/c/a/c;->a(II)V

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/biz/g/a;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/g/a;->d:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/netease/nr/biz/g/a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/g/a;->e:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a(ILjava/util/Map;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 4

    const v0, 0x7f0c024d

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0c024c

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const-string v2, "title"

    invoke-static {p2, v2}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/netease/nr/biz/g/a;->h:Lcom/netease/nr/base/c/a/c;

    const-string v3, "pic"

    invoke-static {p2, v3}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/netease/nr/base/c/a/c;->b(Ljava/lang/String;Landroid/widget/ImageView;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    new-instance v1, Lcom/netease/nr/biz/g/b;

    invoke-direct {v1, p0}, Lcom/netease/nr/biz/g/b;-><init>(Lcom/netease/nr/biz/g/a;)V

    invoke-virtual {p4, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/netease/nr/biz/g/a;->f:Lcom/netease/util/j/a;

    const v2, 0x7f02029d

    invoke-virtual {v1, p4, v2}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/netease/nr/biz/g/a;->f:Lcom/netease/util/j/a;

    const v2, 0x7f070086

    invoke-virtual {v1, v0, v2}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    return-void
.end method

.method public a(Landroid/view/View;Z)V
    .locals 17

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const v1, 0x7f0c0243

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0c024b

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const/16 v2, 0x8

    invoke-virtual {v7, v2}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netease/nr/biz/g/a;->c:Ljava/util/Map;

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0c0136

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const v1, 0x7f0c024a

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0c0106

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/netease/nr/base/view/FitImageView;

    const v3, 0x7f0c0245

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0c0246

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0c0249

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0c0247

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const v6, 0x7f0c0248

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/netease/nr/biz/g/a;->c:Ljava/util/Map;

    const-string v11, "imgsrc"

    invoke-static {v10, v11}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/netease/nr/biz/g/a;->c:Ljava/util/Map;

    const-string v12, "banner"

    invoke-static {v11, v12}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/netease/nr/biz/g/a;->c:Ljava/util/Map;

    const-string v13, "sname"

    invoke-static {v12, v13}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/netease/nr/biz/g/a;->c:Ljava/util/Map;

    const-string v14, "digest"

    invoke-static {v13, v14}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/netease/nr/biz/g/a;->c:Ljava/util/Map;

    const-string v15, "type"

    invoke-static {v14, v15}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/netease/nr/biz/g/a;->c:Ljava/util/Map;

    const-string v16, "tag"

    invoke-static/range {v15 .. v16}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_6

    const-string v16, "img"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Landroid/view/View;->setVisibility(I)V

    const/16 v8, 0x8

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/netease/nr/biz/g/a;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/netease/nr/base/c/a/f;->b(Landroid/content/Context;)F

    move-result v1

    invoke-virtual {v2, v1}, Lcom/netease/nr/base/view/FitImageView;->a(F)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/netease/nr/biz/g/a;->a:Lcom/netease/nr/base/c/a/f;

    invoke-virtual {v1, v10, v2}, Lcom/netease/nr/base/c/a/f;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/netease/nr/biz/g/a;->f:Lcom/netease/util/j/a;

    const v2, 0x7f070012

    invoke-virtual {v1, v4, v2}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    :cond_1
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "              "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/netease/nr/biz/g/a;->f:Lcom/netease/util/j/a;

    const v2, 0x7f070091

    invoke-virtual {v1, v5, v2}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/netease/nr/biz/g/a;->f:Lcom/netease/util/j/a;

    const v2, 0x7f07009b

    invoke-virtual {v1, v9, v2}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/netease/nr/biz/g/a;->f:Lcom/netease/util/j/a;

    const v2, 0x7f0202a5

    invoke-virtual {v1, v6, v2}, Lcom/netease/util/j/a;->a(Landroid/widget/ImageView;I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/netease/nr/biz/g/a;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08010e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netease/nr/biz/g/a;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f08010f

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v9, v2, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    :goto_1
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/netease/nr/biz/g/a;->e:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netease/nr/biz/g/a;->f:Lcom/netease/util/j/a;

    invoke-static {v3, v15, v1, v2}, Lcom/netease/nr/biz/g/c;->a(Landroid/widget/TextView;Ljava/lang/String;Landroid/content/Context;Lcom/netease/util/j/a;)V

    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/netease/nr/biz/g/a;->d:Ljava/util/List;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/netease/nr/biz/g/a;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netease/nr/biz/g/a;->g:Lcom/netease/nr/base/view/cf;

    move-object v1, v7

    check-cast v1, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netease/nr/biz/g/a;->d:Ljava/util/List;

    const v4, 0x7f0300c1

    move-object/from16 v0, p0

    invoke-virtual {v2, v1, v3, v4, v0}, Lcom/netease/nr/base/view/cf;->a(Landroid/view/ViewGroup;Ljava/util/List;ILcom/netease/nr/base/view/cg;)V

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0x8

    invoke-virtual {v9, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_5
    const/16 v1, 0x8

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_6
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "banner"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v2, 0x8

    invoke-virtual {v8, v2}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netease/nr/biz/g/a;->f:Lcom/netease/util/j/a;

    const v3, 0x7f02002e

    invoke-virtual {v2, v1, v3}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netease/nr/biz/g/a;->b:Lcom/netease/nr/base/c/a/b;

    invoke-virtual {v2, v11, v1}, Lcom/netease/nr/base/c/a/b;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_2

    :cond_7
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v1, 0x8

    invoke-virtual {v8, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method public setViewValue(Landroid/view/View;Landroid/database/Cursor;I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
