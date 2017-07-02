.class public Lcom/netease/nr/biz/plugin/c/a;
.super Lcom/netease/nr/base/a/a;


# instance fields
.field private b:Landroid/view/LayoutInflater;

.field private c:Landroid/content/Context;

.field private d:Lcom/netease/util/j/a;

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2

    invoke-direct {p0, p2}, Lcom/netease/nr/base/a/a;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lcom/netease/nr/biz/plugin/c/a;->c:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/plugin/c/a;->b:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/c/a;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/util/j/a;->a(Landroid/content/Context;)Lcom/netease/util/j/a;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/plugin/c/a;->d:Lcom/netease/util/j/a;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/netease/nr/biz/plugin/c/a;->e:I

    return-void
.end method


# virtual methods
.method public a(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const v6, 0x7f0c0022

    const v5, 0x7f0700e4

    const v3, 0x7f020030

    const/16 v4, 0x8

    const/4 v2, 0x0

    if-nez p1, :cond_3

    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/c/a;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f0300a0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    new-instance v1, Lcom/netease/nr/biz/plugin/c/e;

    invoke-direct {v1, p0, v2}, Lcom/netease/nr/biz/plugin/c/e;-><init>(Lcom/netease/nr/biz/plugin/c/a;Lcom/netease/nr/biz/plugin/c/b;)V

    const v0, 0x7f0c01ed

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/netease/nr/biz/plugin/c/e;->a:Landroid/widget/TextView;

    const v0, 0x7f0c01e5

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, v1, Lcom/netease/nr/biz/plugin/c/e;->c:Landroid/widget/ProgressBar;

    invoke-virtual {p3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/netease/nr/biz/plugin/c/e;->b:Landroid/widget/ImageView;

    invoke-virtual {p3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/plugin/c/e;

    iget-object v1, p0, Lcom/netease/nr/biz/plugin/c/a;->d:Lcom/netease/util/j/a;

    iget-object v2, v0, Lcom/netease/nr/biz/plugin/c/e;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v3}, Lcom/netease/util/j/a;->a(Landroid/widget/ImageView;I)V

    iget-object v1, p0, Lcom/netease/nr/biz/plugin/c/a;->d:Lcom/netease/util/j/a;

    iget-object v2, v0, Lcom/netease/nr/biz/plugin/c/e;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v5}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    invoke-virtual {p0, p1, p2}, Lcom/netease/nr/biz/plugin/c/a;->a(II)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "ipquery"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, v0, Lcom/netease/nr/biz/plugin/c/e;->c:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, v0, Lcom/netease/nr/biz/plugin/c/e;->a:Landroid/widget/TextView;

    const v1, 0x7f0b00ba

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-object p3

    :cond_1
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "ipquery_fail"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, v0, Lcom/netease/nr/biz/plugin/c/e;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, v0, Lcom/netease/nr/biz/plugin/c/e;->a:Landroid/widget/TextView;

    const v1, 0x7f0b00b8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    iget-object v2, v0, Lcom/netease/nr/biz/plugin/c/e;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v2, v0, Lcom/netease/nr/biz/plugin/c/e;->a:Landroid/widget/TextView;

    const-string v0, "city"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    if-nez p3, :cond_4

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/c/a;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f0300a5

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    new-instance v1, Lcom/netease/nr/biz/plugin/c/c;

    invoke-direct {v1, p0, v2}, Lcom/netease/nr/biz/plugin/c/c;-><init>(Lcom/netease/nr/biz/plugin/c/a;Lcom/netease/nr/biz/plugin/c/b;)V

    const v0, 0x7f0c01ed

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/netease/nr/biz/plugin/c/c;->a:Landroid/widget/TextView;

    invoke-virtual {p3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/netease/nr/biz/plugin/c/c;->b:Landroid/widget/ImageView;

    invoke-virtual {p3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_4
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/plugin/c/c;

    iget-object v1, p0, Lcom/netease/nr/biz/plugin/c/a;->d:Lcom/netease/util/j/a;

    iget-object v2, v0, Lcom/netease/nr/biz/plugin/c/c;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v3}, Lcom/netease/util/j/a;->a(Landroid/widget/ImageView;I)V

    iget-object v1, p0, Lcom/netease/nr/biz/plugin/c/a;->d:Lcom/netease/util/j/a;

    iget-object v2, v0, Lcom/netease/nr/biz/plugin/c/c;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v5}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    invoke-virtual {p0, p1, p2}, Lcom/netease/nr/biz/plugin/c/a;->a(II)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    iget-object v2, v0, Lcom/netease/nr/biz/plugin/c/c;->a:Landroid/widget/TextView;

    const-string v0, "city"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v2, 0x0

    const/4 v4, 0x0

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/c/a;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f0300a4

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/netease/nr/biz/plugin/c/d;

    invoke-direct {v1, p0, v2}, Lcom/netease/nr/biz/plugin/c/d;-><init>(Lcom/netease/nr/biz/plugin/c/a;Lcom/netease/nr/biz/plugin/c/b;)V

    const v0, 0x7f0c01ec

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/netease/nr/biz/plugin/c/d;->a:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/plugin/c/d;

    iget-object v1, p0, Lcom/netease/nr/biz/plugin/c/a;->d:Lcom/netease/util/j/a;

    iget-object v2, v0, Lcom/netease/nr/biz/plugin/c/d;->a:Landroid/widget/TextView;

    const v3, 0x7f0700e4

    invoke-virtual {v1, v2, v3}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    iget-object v1, p0, Lcom/netease/nr/biz/plugin/c/a;->d:Lcom/netease/util/j/a;

    iget-object v2, v0, Lcom/netease/nr/biz/plugin/c/d;->a:Landroid/widget/TextView;

    const v3, 0x7f02029e

    invoke-virtual {v1, v2, v3}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    iget-object v1, v0, Lcom/netease/nr/biz/plugin/c/d;->a:Landroid/widget/TextView;

    iget v2, p0, Lcom/netease/nr/biz/plugin/c/a;->e:I

    iget v3, p0, Lcom/netease/nr/biz/plugin/c/a;->e:I

    invoke-virtual {v1, v2, v4, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v1, v0, Lcom/netease/nr/biz/plugin/c/d;->a:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/plugin/c/a;->d(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public getItemViewType(I)I
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/c/a;->a:Lcom/netease/nr/base/a/b;

    invoke-virtual {p0, v0, p1}, Lcom/netease/nr/biz/plugin/c/a;->a(Lcom/netease/nr/base/a/b;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/c/a;->a:Lcom/netease/nr/base/a/b;

    iget v0, v0, Lcom/netease/nr/base/a/b;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/plugin/c/a;->a:Lcom/netease/nr/base/a/b;

    iget v0, v0, Lcom/netease/nr/base/a/b;->a:I

    if-nez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method
