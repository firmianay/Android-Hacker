.class Lcom/netease/nr/base/view/cj;
.super Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;


# instance fields
.field final synthetic a:Lcom/netease/nr/base/view/ViewPagerWithIndicator;


# direct methods
.method constructor <init>(Lcom/netease/nr/base/view/ViewPagerWithIndicator;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/base/view/cj;->a:Lcom/netease/nr/base/view/ViewPagerWithIndicator;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/view/cj;->a:Lcom/netease/nr/base/view/ViewPagerWithIndicator;

    invoke-static {v0}, Lcom/netease/nr/base/view/ViewPagerWithIndicator;->b(Lcom/netease/nr/base/view/ViewPagerWithIndicator;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/cj;->a:Lcom/netease/nr/base/view/ViewPagerWithIndicator;

    invoke-static {v0}, Lcom/netease/nr/base/view/ViewPagerWithIndicator;->b(Lcom/netease/nr/base/view/ViewPagerWithIndicator;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/view/cj;->a:Lcom/netease/nr/base/view/ViewPagerWithIndicator;

    invoke-static {v0}, Lcom/netease/nr/base/view/ViewPagerWithIndicator;->b(Lcom/netease/nr/base/view/ViewPagerWithIndicator;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/cj;->a:Lcom/netease/nr/base/view/ViewPagerWithIndicator;

    invoke-static {v0}, Lcom/netease/nr/base/view/ViewPagerWithIndicator;->b(Lcom/netease/nr/base/view/ViewPagerWithIndicator;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/view/cj;->a:Lcom/netease/nr/base/view/ViewPagerWithIndicator;

    invoke-static {v0}, Lcom/netease/nr/base/view/ViewPagerWithIndicator;->c(Lcom/netease/nr/base/view/ViewPagerWithIndicator;)Lcom/netease/nr/base/view/Indicator;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/cj;->a:Lcom/netease/nr/base/view/ViewPagerWithIndicator;

    invoke-static {v0}, Lcom/netease/nr/base/view/ViewPagerWithIndicator;->c(Lcom/netease/nr/base/view/ViewPagerWithIndicator;)Lcom/netease/nr/base/view/Indicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/nr/base/view/Indicator;->c(I)V

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/base/view/cj;->a:Lcom/netease/nr/base/view/ViewPagerWithIndicator;

    invoke-static {v0}, Lcom/netease/nr/base/view/ViewPagerWithIndicator;->b(Lcom/netease/nr/base/view/ViewPagerWithIndicator;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/base/view/cj;->a:Lcom/netease/nr/base/view/ViewPagerWithIndicator;

    invoke-static {v0}, Lcom/netease/nr/base/view/ViewPagerWithIndicator;->b(Lcom/netease/nr/base/view/ViewPagerWithIndicator;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_1
    return-void
.end method
