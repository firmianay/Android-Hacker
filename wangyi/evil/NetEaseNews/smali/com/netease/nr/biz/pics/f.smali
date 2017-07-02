.class Lcom/netease/nr/biz/pics/f;
.super Lcom/netease/nr/base/a/i;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/pics/b;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/pics/b;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/pics/f;->a:Lcom/netease/nr/biz/pics/b;

    invoke-direct {p0}, Lcom/netease/nr/base/a/i;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    const v4, 0x7f0c015c

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/pics/f;->c(I)I

    move-result v0

    if-ne v0, v7, :cond_4

    if-nez p2, :cond_0

    new-instance v1, Lcom/netease/nr/biz/pics/l;

    iget-object v0, p0, Lcom/netease/nr/biz/pics/f;->a:Lcom/netease/nr/biz/pics/b;

    invoke-direct {v1, v0}, Lcom/netease/nr/biz/pics/l;-><init>(Lcom/netease/nr/biz/pics/b;)V

    iget-object v0, p0, Lcom/netease/nr/biz/pics/f;->a:Lcom/netease/nr/biz/pics/b;

    invoke-static {v0}, Lcom/netease/nr/biz/pics/b;->e(Lcom/netease/nr/biz/pics/b;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030095

    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iget-object v2, v1, Lcom/netease/nr/biz/pics/l;->a:[Lcom/netease/nr/base/view/FitImageView;

    const v0, 0x7f0c01c7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/FitImageView;

    aput-object v0, v2, v3

    iget-object v2, v1, Lcom/netease/nr/biz/pics/l;->a:[Lcom/netease/nr/base/view/FitImageView;

    const v0, 0x7f0c01c9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/FitImageView;

    aput-object v0, v2, v7

    iget-object v2, v1, Lcom/netease/nr/biz/pics/l;->a:[Lcom/netease/nr/base/view/FitImageView;

    const v0, 0x7f0c01cb

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/FitImageView;

    aput-object v0, v2, v8

    iget-object v2, v1, Lcom/netease/nr/biz/pics/l;->a:[Lcom/netease/nr/base/view/FitImageView;

    const v0, 0x7f0c01cd

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/FitImageView;

    aput-object v0, v2, v9

    invoke-virtual {v1}, Lcom/netease/nr/biz/pics/l;->a()V

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, v1

    :goto_0
    move v1, v3

    :goto_1
    iget-object v0, v2, Lcom/netease/nr/biz/pics/l;->a:[Lcom/netease/nr/base/view/FitImageView;

    array-length v0, v0

    if-ge v1, v0, :cond_1

    iget-object v0, v2, Lcom/netease/nr/biz/pics/l;->a:[Lcom/netease/nr/base/view/FitImageView;

    aget-object v4, v0, v1

    iget-object v0, p0, Lcom/netease/nr/biz/pics/f;->a:Lcom/netease/nr/biz/pics/b;

    invoke-static {v0}, Lcom/netease/nr/biz/pics/b;->f(Lcom/netease/nr/biz/pics/b;)Lcom/netease/nr/base/c/a/c;

    move-result-object v5

    iget-object v0, p0, Lcom/netease/nr/biz/pics/f;->a:Lcom/netease/nr/biz/pics/b;

    invoke-static {v0}, Lcom/netease/nr/biz/pics/b;->g(Lcom/netease/nr/biz/pics/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v6, "cover"

    invoke-static {v0, v6}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lcom/netease/nr/base/view/FitImageView;->a(Lcom/netease/util/c/b;Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/pics/l;

    move-object v2, v0

    goto :goto_0

    :cond_1
    const v0, 0x7f0c01c8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netease/nr/biz/pics/f;->a:Lcom/netease/nr/biz/pics/b;

    invoke-static {v1}, Lcom/netease/nr/biz/pics/b;->g(Lcom/netease/nr/biz/pics/b;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v3, "setname"

    invoke-static {v1, v3}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0c01ca

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netease/nr/biz/pics/f;->a:Lcom/netease/nr/biz/pics/b;

    invoke-static {v1}, Lcom/netease/nr/biz/pics/b;->g(Lcom/netease/nr/biz/pics/b;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v3, "setname"

    invoke-static {v1, v3}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0c01cc

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netease/nr/biz/pics/f;->a:Lcom/netease/nr/biz/pics/b;

    invoke-static {v1}, Lcom/netease/nr/biz/pics/b;->g(Lcom/netease/nr/biz/pics/b;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v3, "setname"

    invoke-static {v1, v3}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0c01ce

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netease/nr/biz/pics/f;->a:Lcom/netease/nr/biz/pics/b;

    invoke-static {v1}, Lcom/netease/nr/biz/pics/b;->g(Lcom/netease/nr/biz/pics/b;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v3, "setname"

    invoke-static {v1, v3}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2}, Lcom/netease/nr/biz/pics/l;->b()V

    iget-object v0, p0, Lcom/netease/nr/biz/pics/f;->a:Lcom/netease/nr/biz/pics/b;

    invoke-static {v0}, Lcom/netease/nr/biz/pics/b;->h(Lcom/netease/nr/biz/pics/b;)Lcom/netease/ad/e;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netease/nr/biz/pics/f;->a:Lcom/netease/nr/biz/pics/b;

    invoke-virtual {v0}, Lcom/netease/nr/biz/pics/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/pics/f;->a:Lcom/netease/nr/biz/pics/b;

    invoke-static {v1}, Lcom/netease/nr/biz/pics/b;->h(Lcom/netease/nr/biz/pics/b;)Lcom/netease/ad/e;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/nr/biz/ad/o;->a(Landroid/content/Context;Lcom/netease/ad/e;)V

    const v0, 0x7f0c01cf

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f020137

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/netease/nr/biz/pics/f;->a:Lcom/netease/nr/biz/pics/b;

    invoke-static {v1}, Lcom/netease/nr/biz/pics/b;->h(Lcom/netease/nr/biz/pics/b;)Lcom/netease/ad/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/ad/e;->c()Lcom/netease/ad/b/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/ad/b/j;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/netease/nr/biz/pics/f;->a:Lcom/netease/nr/biz/pics/b;

    const v2, 0x7f0b01b4

    invoke-virtual {v1, v2}, Lcom/netease/nr/biz/pics/b;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_2
    return-object p2

    :cond_4
    if-nez p2, :cond_5

    iget-object v0, p0, Lcom/netease/nr/biz/pics/f;->a:Lcom/netease/nr/biz/pics/b;

    invoke-static {v0}, Lcom/netease/nr/biz/pics/b;->e(Lcom/netease/nr/biz/pics/b;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030092

    invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/ImageViewTouch;

    iget-object v1, p0, Lcom/netease/nr/biz/pics/f;->a:Lcom/netease/nr/biz/pics/b;

    invoke-static {v1}, Lcom/netease/nr/biz/pics/b;->i(Lcom/netease/nr/biz/pics/b;)Lcom/netease/nr/base/view/ImageViewPager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/ImageViewTouch;->a(Landroid/support/v4/view/ViewPager;)V

    iget-object v1, p0, Lcom/netease/nr/biz/pics/f;->a:Lcom/netease/nr/biz/pics/b;

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/ImageViewTouch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f020331

    const-string v2, "PicShowFragment"

    invoke-virtual {v0, v1, v2}, Lcom/netease/nr/base/view/ImageViewTouch;->setTag(ILjava/lang/Object;)V

    :cond_5
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/ImageViewTouch;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/ImageViewTouch;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/netease/nr/biz/pics/f;->a:Lcom/netease/nr/biz/pics/b;

    invoke-static {v1}, Lcom/netease/nr/biz/pics/b;->j(Lcom/netease/nr/biz/pics/b;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "imgurl"

    invoke-static {v1, v2}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v7}, Lcom/netease/nr/base/view/ImageViewTouch;->a(Landroid/graphics/Bitmap;Z)V

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/netease/nr/biz/pics/f;->a:Lcom/netease/nr/biz/pics/b;

    invoke-static {v2, v1, v0}, Lcom/netease/nr/biz/pics/b;->a(Lcom/netease/nr/biz/pics/b;Ljava/lang/String;Lcom/netease/nr/base/view/ImageViewTouch;)V

    goto :goto_2
.end method

.method public c(I)I
    .locals 1

    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/f;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/pics/f;->a:Lcom/netease/nr/biz/pics/b;

    invoke-static {v0}, Lcom/netease/nr/biz/pics/b;->d(Lcom/netease/nr/biz/pics/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/pics/f;->a:Lcom/netease/nr/biz/pics/b;

    invoke-static {v0}, Lcom/netease/nr/biz/pics/b;->d(Lcom/netease/nr/biz/pics/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/pics/f;->a:Lcom/netease/nr/biz/pics/b;

    invoke-static {v0}, Lcom/netease/nr/biz/pics/b;->j(Lcom/netease/nr/biz/pics/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/pics/f;->a:Lcom/netease/nr/biz/pics/b;

    invoke-static {v0}, Lcom/netease/nr/biz/pics/b;->j(Lcom/netease/nr/biz/pics/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/netease/nr/base/a/i;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/f;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/pics/f;->a:Lcom/netease/nr/biz/pics/b;

    invoke-static {v0}, Lcom/netease/nr/biz/pics/b;->d(Lcom/netease/nr/biz/pics/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/pics/f;->a:Lcom/netease/nr/biz/pics/b;

    const/4 v1, 0x1

    invoke-static {v0, p2, v1}, Lcom/netease/nr/biz/pics/b;->a(Lcom/netease/nr/biz/pics/b;IZ)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/pics/f;->a:Lcom/netease/nr/biz/pics/b;

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Lcom/netease/nr/biz/pics/b;->a(Lcom/netease/nr/biz/pics/b;IZ)V

    goto :goto_0
.end method
