.class public Lcom/netease/nr/biz/polymeric/PolymericPager;
.super Lcom/netease/nr/biz/polymeric/PolymericLayout;

# interfaces
.implements Lcom/netease/nr/biz/polymeric/d;


# instance fields
.field private a:I

.field private b:I

.field private c:Z

.field private d:Lcom/netease/nr/biz/polymeric/r;

.field private e:Ljava/util/List;

.field private f:Lcom/netease/nr/biz/polymeric/a;

.field private g:Lcom/netease/nr/base/view/Indicator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/netease/nr/biz/polymeric/PolymericLayout;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/netease/nr/biz/polymeric/PolymericPager;->a:I

    iput-boolean v0, p0, Lcom/netease/nr/biz/polymeric/PolymericPager;->c:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/biz/polymeric/PolymericPager;->e:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/netease/nr/biz/polymeric/PolymericLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/netease/nr/biz/polymeric/PolymericPager;->a:I

    iput-boolean v0, p0, Lcom/netease/nr/biz/polymeric/PolymericPager;->c:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/biz/polymeric/PolymericPager;->e:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/netease/nr/biz/polymeric/PolymericLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lcom/netease/nr/biz/polymeric/PolymericPager;->a:I

    iput-boolean v0, p0, Lcom/netease/nr/biz/polymeric/PolymericPager;->c:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/biz/polymeric/PolymericPager;->e:Ljava/util/List;

    return-void
.end method

.method private g()V
    .locals 5

    new-instance v0, Lcom/netease/nr/biz/polymeric/a;

    invoke-virtual {p0}, Lcom/netease/nr/biz/polymeric/PolymericPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netease/nr/biz/polymeric/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/nr/biz/polymeric/PolymericPager;->f:Lcom/netease/nr/biz/polymeric/a;

    iget-object v0, p0, Lcom/netease/nr/biz/polymeric/PolymericPager;->f:Lcom/netease/nr/biz/polymeric/a;

    invoke-virtual {v0, p0}, Lcom/netease/nr/biz/polymeric/a;->a(Lcom/netease/nr/biz/polymeric/d;)V

    iget-object v0, p0, Lcom/netease/nr/biz/polymeric/PolymericPager;->d:Lcom/netease/nr/biz/polymeric/r;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/nr/biz/polymeric/PolymericPager;->d:Lcom/netease/nr/biz/polymeric/r;

    invoke-virtual {v0}, Lcom/netease/nr/biz/polymeric/r;->a()I

    move-result v1

    iput v1, p0, Lcom/netease/nr/biz/polymeric/PolymericPager;->b:I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    iget-object v2, p0, Lcom/netease/nr/biz/polymeric/PolymericPager;->d:Lcom/netease/nr/biz/polymeric/r;

    invoke-virtual {v2, v0}, Lcom/netease/nr/biz/polymeric/r;->a(I)Lcom/netease/nr/biz/polymeric/q;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lcom/netease/nr/biz/polymeric/q;->a()Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-virtual {v2}, Lcom/netease/nr/biz/polymeric/q;->a()Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/netease/nr/biz/polymeric/PolymericPager;->addView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/netease/nr/biz/polymeric/PolymericPager;->f:Lcom/netease/nr/biz/polymeric/a;

    invoke-virtual {v2, v3}, Lcom/netease/nr/biz/polymeric/q;->a(Lcom/netease/nr/biz/polymeric/a;)V

    iget-object v3, p0, Lcom/netease/nr/biz/polymeric/PolymericPager;->e:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/netease/nr/biz/polymeric/PolymericPager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/util/j/a;->a(Landroid/content/Context;)Lcom/netease/util/j/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/polymeric/PolymericPager;->a(Lcom/netease/util/j/a;)V

    return-void
.end method

.method private h()V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/biz/polymeric/PolymericPager;->g:Lcom/netease/nr/base/view/Indicator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/polymeric/PolymericPager;->g:Lcom/netease/nr/base/view/Indicator;

    iget v1, p0, Lcom/netease/nr/biz/polymeric/PolymericPager;->a:I

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/Indicator;->c(I)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/nr/biz/polymeric/PolymericPager;->c:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/nr/biz/polymeric/PolymericPager;->c:Z

    iget v0, p0, Lcom/netease/nr/biz/polymeric/PolymericPager;->a:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/netease/nr/biz/polymeric/PolymericPager;->a:I

    invoke-virtual {p0}, Lcom/netease/nr/biz/polymeric/PolymericPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/polymeric/PolymericPager;->e:Ljava/util/List;

    iget v1, p0, Lcom/netease/nr/biz/polymeric/PolymericPager;->a:I

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/polymeric/q;

    invoke-virtual {v0}, Lcom/netease/nr/biz/polymeric/q;->a()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public a(Lcom/netease/nr/base/view/Indicator;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/polymeric/PolymericPager;->g:Lcom/netease/nr/base/view/Indicator;

    return-void
.end method

.method public a(Lcom/netease/nr/biz/polymeric/r;)V
    .locals 2

    invoke-virtual {p0}, Lcom/netease/nr/biz/polymeric/PolymericPager;->removeAllViews()V

    iget-object v0, p0, Lcom/netease/nr/biz/polymeric/PolymericPager;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object p1, p0, Lcom/netease/nr/biz/polymeric/PolymericPager;->d:Lcom/netease/nr/biz/polymeric/r;

    invoke-direct {p0}, Lcom/netease/nr/biz/polymeric/PolymericPager;->g()V

    iget-object v0, p0, Lcom/netease/nr/biz/polymeric/PolymericPager;->g:Lcom/netease/nr/base/view/Indicator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/polymeric/PolymericPager;->g:Lcom/netease/nr/base/view/Indicator;

    check-cast v0, Lcom/netease/nr/base/view/DotIndicator;

    const v1, 0x7f020267

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/DotIndicator;->a(I)V

    iget-object v0, p0, Lcom/netease/nr/biz/polymeric/PolymericPager;->g:Lcom/netease/nr/base/view/Indicator;

    iget-object v1, p0, Lcom/netease/nr/biz/polymeric/PolymericPager;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/Indicator;->b(I)V

    iget-object v0, p0, Lcom/netease/nr/biz/polymeric/PolymericPager;->g:Lcom/netease/nr/base/view/Indicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/Indicator;->c(I)V

    :cond_0
    return-void
.end method

.method public a(Lcom/netease/util/j/a;)V
    .locals 9

    const v8, 0x7f070105

    iget-object v0, p0, Lcom/netease/nr/biz/polymeric/PolymericPager;->e:Ljava/util/List;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/netease/nr/biz/polymeric/PolymericPager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/util/j/a;->b(Landroid/content/Context;)Z

    move-result v3

    iget-object v0, p0, Lcom/netease/nr/biz/polymeric/PolymericPager;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/polymeric/q;

    invoke-static {v0}, Lcom/netease/nr/biz/polymeric/q;->b(Lcom/netease/nr/biz/polymeric/q;)[Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/netease/nr/biz/polymeric/q;->b(Lcom/netease/nr/biz/polymeric/q;)[Landroid/view/View;

    move-result-object v5

    array-length v6, v5

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v6, :cond_2

    aget-object v0, v5, v2

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v7, :cond_3

    if-eqz v3, :cond_5

    const/16 v1, 0x7d

    :goto_2
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_3
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_6

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1, v0, v8}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    :cond_4
    :goto_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_5
    const/16 v1, 0xff

    goto :goto_2

    :cond_6
    instance-of v1, v0, Lcom/netease/nr/biz/polymeric/PolymericTagView;

    if-eqz v1, :cond_7

    check-cast v0, Lcom/netease/nr/biz/polymeric/PolymericTagView;

    invoke-virtual {v0, p1}, Lcom/netease/nr/biz/polymeric/PolymericTagView;->a(Lcom/netease/util/j/a;)V

    goto :goto_3

    :cond_7
    instance-of v1, v0, Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_4

    const v1, 0x7f0c00f4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p1, v1, v8}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    const v1, 0x7f0c0113

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f020137

    invoke-virtual {p1, v0, v1}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/netease/nr/biz/polymeric/PolymericPager;->g:Lcom/netease/nr/base/view/Indicator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/polymeric/PolymericPager;->g:Lcom/netease/nr/base/view/Indicator;

    invoke-virtual {v0, p1}, Lcom/netease/nr/base/view/Indicator;->b(Lcom/netease/util/j/a;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/netease/nr/biz/polymeric/PolymericPager;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/polymeric/PolymericPager;->e:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/polymeric/q;

    invoke-static {v0}, Lcom/netease/nr/biz/polymeric/q;->a(Lcom/netease/nr/biz/polymeric/q;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const v0, 0x7f0c00f4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0c0113

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/nr/biz/polymeric/PolymericPager;->c:Z

    iget v0, p0, Lcom/netease/nr/biz/polymeric/PolymericPager;->a:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/netease/nr/biz/polymeric/PolymericPager;->a:I

    invoke-virtual {p0}, Lcom/netease/nr/biz/polymeric/PolymericPager;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/polymeric/PolymericPager;->e:Ljava/util/List;

    iget v1, p0, Lcom/netease/nr/biz/polymeric/PolymericPager;->a:I

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/polymeric/q;

    invoke-virtual {v0}, Lcom/netease/nr/biz/polymeric/q;->a()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/netease/nr/biz/polymeric/PolymericPager;->a:I

    return v0
.end method

.method public d()V
    .locals 2

    iget-boolean v0, p0, Lcom/netease/nr/biz/polymeric/PolymericPager;->c:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/netease/nr/biz/polymeric/PolymericPager;->a:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/netease/nr/biz/polymeric/PolymericPager;->a:I

    invoke-virtual {p0}, Lcom/netease/nr/biz/polymeric/PolymericPager;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/polymeric/PolymericPager;->e:Ljava/util/List;

    iget v1, p0, Lcom/netease/nr/biz/polymeric/PolymericPager;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/polymeric/q;

    iget v1, p0, Lcom/netease/nr/biz/polymeric/PolymericPager;->a:I

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/polymeric/q;->a(I)V

    iget-object v0, p0, Lcom/netease/nr/biz/polymeric/PolymericPager;->e:Ljava/util/List;

    iget v1, p0, Lcom/netease/nr/biz/polymeric/PolymericPager;->a:I

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/polymeric/q;

    invoke-virtual {v0}, Lcom/netease/nr/biz/polymeric/q;->b()V

    iget v0, p0, Lcom/netease/nr/biz/polymeric/PolymericPager;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/netease/nr/biz/polymeric/PolymericPager;->a:I

    invoke-direct {p0}, Lcom/netease/nr/biz/polymeric/PolymericPager;->h()V

    goto :goto_0
.end method

.method public e()V
    .locals 2

    iget-boolean v0, p0, Lcom/netease/nr/biz/polymeric/PolymericPager;->c:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/netease/nr/biz/polymeric/PolymericPager;->a:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/netease/nr/biz/polymeric/PolymericPager;->a:I

    invoke-virtual {p0}, Lcom/netease/nr/biz/polymeric/PolymericPager;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/polymeric/PolymericPager;->e:Ljava/util/List;

    iget v1, p0, Lcom/netease/nr/biz/polymeric/PolymericPager;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/polymeric/q;

    iget v1, p0, Lcom/netease/nr/biz/polymeric/PolymericPager;->a:I

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/polymeric/q;->b(I)V

    iget-object v0, p0, Lcom/netease/nr/biz/polymeric/PolymericPager;->e:Ljava/util/List;

    iget v1, p0, Lcom/netease/nr/biz/polymeric/PolymericPager;->a:I

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/polymeric/q;

    invoke-virtual {v0}, Lcom/netease/nr/biz/polymeric/q;->c()V

    iget v0, p0, Lcom/netease/nr/biz/polymeric/PolymericPager;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/netease/nr/biz/polymeric/PolymericPager;->a:I

    invoke-direct {p0}, Lcom/netease/nr/biz/polymeric/PolymericPager;->h()V

    goto :goto_0
.end method

.method public f()Lcom/netease/nr/biz/polymeric/r;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/polymeric/PolymericPager;->d:Lcom/netease/nr/biz/polymeric/r;

    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    iget v0, p0, Lcom/netease/nr/biz/polymeric/PolymericPager;->b:I

    return v0
.end method
