.class public Lcom/netease/nr/base/view/DotIndicator;
.super Lcom/netease/nr/base/view/Indicator;


# instance fields
.field private a:Z

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/netease/nr/base/view/Indicator;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/nr/base/view/DotIndicator;->a:Z

    const v0, 0x7f020029

    iput v0, p0, Lcom/netease/nr/base/view/DotIndicator;->b:I

    invoke-direct {p0, p1}, Lcom/netease/nr/base/view/DotIndicator;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/netease/nr/base/view/Indicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/nr/base/view/DotIndicator;->a:Z

    const v0, 0x7f020029

    iput v0, p0, Lcom/netease/nr/base/view/DotIndicator;->b:I

    invoke-direct {p0, p1}, Lcom/netease/nr/base/view/DotIndicator;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    const/4 v6, -0x2

    invoke-virtual {p0}, Lcom/netease/nr/base/view/DotIndicator;->detachAllViewsFromParent()V

    invoke-virtual {p0}, Lcom/netease/nr/base/view/DotIndicator;->c()I

    move-result v3

    if-gtz v3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/netease/nr/base/view/DotIndicator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_1

    const v0, 0x7f030009

    const/4 v1, 0x0

    invoke-virtual {v4, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/DotIndicatorItem;

    iget v1, p0, Lcom/netease/nr/base/view/DotIndicator;->b:I

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/DotIndicatorItem;->setImageResource(I)V

    invoke-virtual {v0}, Lcom/netease/nr/base/view/DotIndicatorItem;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/TransitionDrawable;

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/netease/nr/base/view/DotIndicator;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/netease/nr/base/view/DotIndicator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/util/j/a;->a(Landroid/content/Context;)Lcom/netease/util/j/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/nr/base/view/DotIndicator;->b(Lcom/netease/util/j/a;)V

    goto :goto_0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/netease/nr/base/view/DotIndicator;->b:I

    return-void
.end method

.method protected a(Lcom/netease/util/j/a;)V
    .locals 6

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/netease/nr/base/view/Indicator;->a(Lcom/netease/util/j/a;)V

    invoke-virtual {p0}, Lcom/netease/nr/base/view/DotIndicator;->getChildCount()I

    move-result v3

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_0

    invoke-virtual {p0, v1}, Lcom/netease/nr/base/view/DotIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/DotIndicatorItem;

    invoke-virtual {p0}, Lcom/netease/nr/base/view/DotIndicator;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lcom/netease/nr/base/view/DotIndicator;->b:I

    invoke-virtual {p1, v4, v5}, Lcom/netease/util/j/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/netease/nr/base/view/DotIndicatorItem;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Lcom/netease/nr/base/view/DotIndicatorItem;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/netease/nr/base/view/DotIndicator;->d()I

    move-result v0

    if-ltz v0, :cond_1

    if-lt v0, v3, :cond_2

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {p0, v0}, Lcom/netease/nr/base/view/DotIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/DotIndicatorItem;

    invoke-virtual {v0}, Lcom/netease/nr/base/view/DotIndicatorItem;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    goto :goto_1
.end method

.method public b()V
    .locals 4

    invoke-virtual {p0}, Lcom/netease/nr/base/view/DotIndicator;->getChildCount()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/netease/nr/base/view/DotIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/DotIndicatorItem;

    iget-boolean v3, p0, Lcom/netease/nr/base/view/DotIndicator;->a:Z

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/netease/nr/base/view/DotIndicatorItem;->a()V

    :cond_0
    invoke-virtual {v0}, Lcom/netease/nr/base/view/DotIndicatorItem;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/netease/nr/base/view/DotIndicator;->d()I

    move-result v1

    if-ltz v1, :cond_2

    if-lt v1, v2, :cond_3

    :cond_2
    :goto_1
    return-void

    :cond_3
    invoke-virtual {p0, v1}, Lcom/netease/nr/base/view/DotIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/DotIndicatorItem;

    iget-boolean v2, p0, Lcom/netease/nr/base/view/DotIndicator;->a:Z

    if-eqz v2, :cond_4

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/DotIndicatorItem;->a(I)V

    :cond_4
    invoke-virtual {v0}, Lcom/netease/nr/base/view/DotIndicatorItem;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    goto :goto_1
.end method
