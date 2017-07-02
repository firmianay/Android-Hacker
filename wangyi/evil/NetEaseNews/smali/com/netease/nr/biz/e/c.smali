.class public Lcom/netease/nr/biz/e/c;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/LayoutInflater;

.field private c:Ljava/util/List;

.field private d:Lcom/netease/util/c/b;

.field private e:Lcom/netease/util/j/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 3

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/netease/nr/biz/e/c;->a:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/e/c;->b:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/netease/nr/biz/e/c;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/netease/nr/biz/e/c;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/netease/nr/biz/e/c;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020269

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/nr/base/c/a/c;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/netease/nr/base/c/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/e/c;->d:Lcom/netease/util/c/b;

    iget-object v0, p0, Lcom/netease/nr/biz/e/c;->d:Lcom/netease/util/c/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/util/c/b;->c(Z)V

    invoke-static {p1}, Lcom/netease/util/j/a;->a(Landroid/content/Context;)Lcom/netease/util/j/a;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/e/c;->e:Lcom/netease/util/j/a;

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/biz/e/c;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/e/c;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a(I)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/e/c;->c:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/e/c;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/e/c;->c:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/e/c;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/e/c;->a(I)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    const/16 v9, 0x32

    const/16 v8, 0x8

    const v7, 0x7f07010e

    const/4 v3, 0x0

    if-nez p2, :cond_1

    new-instance v1, Lcom/netease/nr/biz/e/f;

    invoke-direct {v1, p0}, Lcom/netease/nr/biz/e/f;-><init>(Lcom/netease/nr/biz/e/c;)V

    iget-object v0, p0, Lcom/netease/nr/biz/e/c;->b:Landroid/view/LayoutInflater;

    const v2, 0x7f0300af

    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0c007f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/netease/nr/biz/e/f;->a:Landroid/view/View;

    const v0, 0x7f0c0008

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/netease/nr/biz/e/f;->b:Landroid/widget/TextView;

    const v0, 0x7f0c0084

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/netease/nr/biz/e/f;->c:Landroid/widget/TextView;

    const v0, 0x7f0c00db

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/netease/nr/biz/e/f;->d:Landroid/widget/TextView;

    const v0, 0x7f0c00ca

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/netease/nr/biz/e/f;->f:Landroid/widget/TextView;

    const v0, 0x7f0c0200

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/netease/nr/biz/e/f;->g:Landroid/widget/TextView;

    const v0, 0x7f0c0201

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/netease/nr/biz/e/f;->h:Landroid/widget/TextView;

    iget-object v0, v1, Lcom/netease/nr/biz/e/f;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setFocusable(Z)V

    const v0, 0x7f0c0113

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/FitImageView;

    iput-object v0, v1, Lcom/netease/nr/biz/e/f;->e:Lcom/netease/nr/base/view/FitImageView;

    iget-object v0, v1, Lcom/netease/nr/biz/e/f;->e:Lcom/netease/nr/base/view/FitImageView;

    const v2, 0x3edc28f6    # 0.43f

    invoke-virtual {v0, v2}, Lcom/netease/nr/base/view/FitImageView;->a(F)V

    iget-object v0, v1, Lcom/netease/nr/biz/e/f;->e:Lcom/netease/nr/base/view/FitImageView;

    const-string v2, "_small"

    invoke-virtual {v0, v2}, Lcom/netease/nr/base/view/FitImageView;->a(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v6, v1

    :goto_0
    iget-object v0, p0, Lcom/netease/nr/biz/e/c;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v1, v6, Lcom/netease/nr/biz/e/f;->b:Landroid/widget/TextView;

    const-string v2, "title"

    invoke-static {v0, v2}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v6, Lcom/netease/nr/biz/e/f;->c:Landroid/widget/TextView;

    const-string v2, "source"

    invoke-static {v0, v2}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v6, Lcom/netease/nr/biz/e/f;->d:Landroid/widget/TextView;

    const-string v2, "ptime"

    invoke-static {v0, v2}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netease/util/h/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v6, Lcom/netease/nr/biz/e/f;->g:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "replyCount"

    invoke-static {v0, v4}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/netease/nr/biz/e/c;->a:Landroid/content/Context;

    const v5, 0x7f0b01d7

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "img"

    invoke-static {v0, v1}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v6, Lcom/netease/nr/biz/e/f;->e:Lcom/netease/nr/base/view/FitImageView;

    invoke-virtual {v2, v3}, Lcom/netease/nr/base/view/FitImageView;->setVisibility(I)V

    iget-object v2, v6, Lcom/netease/nr/biz/e/f;->e:Lcom/netease/nr/base/view/FitImageView;

    iget-object v4, p0, Lcom/netease/nr/biz/e/c;->d:Lcom/netease/util/c/b;

    invoke-virtual {v2, v4, v1}, Lcom/netease/nr/base/view/FitImageView;->a(Lcom/netease/util/c/b;Ljava/lang/String;)V

    iget-object v1, v6, Lcom/netease/nr/biz/e/f;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    const-string v1, "digest"

    invoke-static {v0, v1}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v9, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    iget-object v2, v6, Lcom/netease/nr/biz/e/f;->f:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/netease/nr/biz/e/c;->a:Landroid/content/Context;

    const-string v2, "id"

    invoke-static {v0, v2}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/nr/biz/e/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v6, Lcom/netease/nr/biz/e/f;->h:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    :goto_2
    iget-object v1, v6, Lcom/netease/nr/biz/e/f;->h:Landroid/widget/TextView;

    new-instance v2, Lcom/netease/nr/biz/e/d;

    invoke-direct {v2, p0, v6, v0}, Lcom/netease/nr/biz/e/d;-><init>(Lcom/netease/nr/biz/e/c;Lcom/netease/nr/biz/e/f;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v6, Lcom/netease/nr/biz/e/f;->a:Landroid/view/View;

    new-instance v1, Lcom/netease/nr/biz/e/e;

    invoke-direct {v1, p0, p1}, Lcom/netease/nr/biz/e/e;-><init>(Lcom/netease/nr/biz/e/c;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/netease/nr/biz/e/c;->e:Lcom/netease/util/j/a;

    iget-object v1, v6, Lcom/netease/nr/biz/e/f;->a:Landroid/view/View;

    const v2, 0x7f02026c

    invoke-virtual {v0, v1, v2}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/e/c;->e:Lcom/netease/util/j/a;

    iget-object v1, v6, Lcom/netease/nr/biz/e/f;->h:Landroid/widget/TextView;

    const v2, 0x7f02026d

    invoke-virtual {v0, v1, v2}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/e/c;->e:Lcom/netease/util/j/a;

    iget-object v1, v6, Lcom/netease/nr/biz/e/f;->h:Landroid/widget/TextView;

    const v2, 0x7f070145

    invoke-virtual {v0, v1, v2}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/e/c;->e:Lcom/netease/util/j/a;

    iget-object v1, v6, Lcom/netease/nr/biz/e/f;->h:Landroid/widget/TextView;

    const v2, 0x7f020271

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;IIII)V

    iget-object v0, p0, Lcom/netease/nr/biz/e/c;->e:Lcom/netease/util/j/a;

    iget-object v1, v6, Lcom/netease/nr/biz/e/f;->b:Landroid/widget/TextView;

    const v2, 0x7f07010a

    invoke-virtual {v0, v1, v2}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/e/c;->e:Lcom/netease/util/j/a;

    iget-object v1, v6, Lcom/netease/nr/biz/e/f;->f:Landroid/widget/TextView;

    const v2, 0x7f07010c

    invoke-virtual {v0, v1, v2}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/e/c;->e:Lcom/netease/util/j/a;

    iget-object v1, v6, Lcom/netease/nr/biz/e/f;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v7}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/e/c;->e:Lcom/netease/util/j/a;

    iget-object v1, v6, Lcom/netease/nr/biz/e/f;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v7}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/e/c;->e:Lcom/netease/util/j/a;

    iget-object v1, v6, Lcom/netease/nr/biz/e/f;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v7}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    return-object p2

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/e/f;

    move-object v6, v0

    goto/16 :goto_0

    :cond_2
    iget-object v1, v6, Lcom/netease/nr/biz/e/f;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v6, Lcom/netease/nr/biz/e/f;->e:Lcom/netease/nr/base/view/FitImageView;

    invoke-virtual {v1, v8}, Lcom/netease/nr/base/view/FitImageView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_3
    iget-object v1, v6, Lcom/netease/nr/biz/e/f;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    goto/16 :goto_2
.end method
