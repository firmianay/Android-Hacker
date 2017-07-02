.class public Lcom/netease/nr/phone/main/NewsPagerIndicator;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Lcom/netease/nr/base/view/ba;


# instance fields
.field private a:Lcom/netease/nr/phone/main/NewsTabPagerIndicator;

.field private b:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/netease/nr/phone/main/NewsPagerIndicator;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/netease/nr/phone/main/NewsPagerIndicator;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/netease/nr/phone/main/NewsPagerIndicator;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020041

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/phone/main/NewsPagerIndicator;->b:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public a()Landroid/support/v4/view/ViewPager;
    .locals 1

    invoke-virtual {p0}, Lcom/netease/nr/phone/main/NewsPagerIndicator;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method public a(Landroid/support/v4/view/ViewPager;Landroid/graphics/Canvas;)V
    .locals 2

    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Lcom/netease/nr/phone/main/NewsPagerIndicator;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/netease/nr/phone/main/NewsPagerIndicator;->getBottom()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/netease/nr/phone/main/NewsPagerIndicator;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public a(Lcom/netease/util/j/a;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/phone/main/NewsPagerIndicator;->a:Lcom/netease/nr/phone/main/NewsTabPagerIndicator;

    invoke-virtual {v0, p1}, Lcom/netease/nr/phone/main/NewsTabPagerIndicator;->a(Lcom/netease/util/j/a;)V

    return-void
.end method

.method public a(JZ)Z
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/phone/main/NewsPagerIndicator;->a:Lcom/netease/nr/phone/main/NewsTabPagerIndicator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/netease/nr/phone/main/NewsTabPagerIndicator;->a(JZ)Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/phone/main/NewsPagerIndicator;->a:Lcom/netease/nr/phone/main/NewsTabPagerIndicator;

    invoke-virtual {v0}, Lcom/netease/nr/phone/main/NewsTabPagerIndicator;->b()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0c02cb

    invoke-virtual {p0, v0}, Lcom/netease/nr/phone/main/NewsPagerIndicator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/phone/main/NewsTabPagerIndicator;

    iput-object v0, p0, Lcom/netease/nr/phone/main/NewsPagerIndicator;->a:Lcom/netease/nr/phone/main/NewsTabPagerIndicator;

    iget-object v0, p0, Lcom/netease/nr/phone/main/NewsPagerIndicator;->a:Lcom/netease/nr/phone/main/NewsTabPagerIndicator;

    invoke-virtual {v0, p0}, Lcom/netease/nr/phone/main/NewsTabPagerIndicator;->a(Lcom/netease/nr/phone/main/NewsPagerIndicator;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    iget-object v0, p0, Lcom/netease/nr/phone/main/NewsPagerIndicator;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/netease/nr/phone/main/NewsPagerIndicator;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/netease/nr/phone/main/NewsPagerIndicator;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/phone/main/NewsPagerIndicator;->a:Lcom/netease/nr/phone/main/NewsTabPagerIndicator;

    invoke-virtual {v0, p1}, Lcom/netease/nr/phone/main/NewsTabPagerIndicator;->onPageScrollStateChanged(I)V

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/phone/main/NewsPagerIndicator;->a:Lcom/netease/nr/phone/main/NewsTabPagerIndicator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/netease/nr/phone/main/NewsTabPagerIndicator;->onPageScrolled(IFI)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/phone/main/NewsPagerIndicator;->a:Lcom/netease/nr/phone/main/NewsTabPagerIndicator;

    invoke-virtual {v0, p1}, Lcom/netease/nr/phone/main/NewsTabPagerIndicator;->onPageSelected(I)V

    return-void
.end method
