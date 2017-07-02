.class public Lcom/netease/nr/phone/main/NewsTabPagerIndicator;
.super Lcom/netease/nr/base/view/TabPageIndicator;


# instance fields
.field private a:Lcom/netease/nr/phone/main/NewsPagerIndicator;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/nr/base/view/TabPageIndicator;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netease/nr/base/view/TabPageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/phone/main/NewsTabPagerIndicator;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/phone/main/NewsTabPagerIndicator;->c:Landroid/view/View;

    return-object v0
.end method

.method private f()V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/netease/nr/phone/main/NewsTabPagerIndicator;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, v3}, Lcom/netease/nr/phone/main/NewsTabPagerIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/netease/nr/phone/main/NewsTabPagerIndicator;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/netease/nr/phone/main/NewsTabPagerIndicator;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    if-lt v1, v0, :cond_2

    iget-object v0, p0, Lcom/netease/nr/phone/main/NewsTabPagerIndicator;->b:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/netease/nr/phone/main/NewsTabPagerIndicator;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_1
.end method


# virtual methods
.method public a(Lcom/netease/nr/phone/main/NewsPagerIndicator;)V
    .locals 1

    iput-object p1, p0, Lcom/netease/nr/phone/main/NewsTabPagerIndicator;->a:Lcom/netease/nr/phone/main/NewsPagerIndicator;

    const v0, 0x7f0c00e7

    invoke-virtual {p1, v0}, Lcom/netease/nr/phone/main/NewsPagerIndicator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/phone/main/NewsTabPagerIndicator;->c:Landroid/view/View;

    const v0, 0x7f0c0022

    invoke-virtual {p1, v0}, Lcom/netease/nr/phone/main/NewsPagerIndicator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netease/nr/phone/main/NewsTabPagerIndicator;->b:Landroid/widget/ImageView;

    return-void
.end method

.method protected d()Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected e()Landroid/widget/LinearLayout;
    .locals 2

    new-instance v0, Lcom/netease/nr/phone/main/y;

    invoke-virtual {p0}, Lcom/netease/nr/phone/main/NewsTabPagerIndicator;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/netease/nr/phone/main/y;-><init>(Lcom/netease/nr/phone/main/NewsTabPagerIndicator;Landroid/content/Context;)V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/netease/nr/base/view/TabPageIndicator;->onLayout(ZIIII)V

    invoke-direct {p0}, Lcom/netease/nr/phone/main/NewsTabPagerIndicator;->f()V

    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/netease/nr/base/view/TabPageIndicator;->onScrollChanged(IIII)V

    invoke-direct {p0}, Lcom/netease/nr/phone/main/NewsTabPagerIndicator;->f()V

    return-void
.end method
