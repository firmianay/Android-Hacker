.class Lcom/netease/nr/base/view/bq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/netease/nr/base/view/TabPageIndicator;


# direct methods
.method constructor <init>(Lcom/netease/nr/base/view/TabPageIndicator;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/base/view/bq;->a:Lcom/netease/nr/base/view/TabPageIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f0c0008

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/TabPageIndicatorView;

    iget-object v1, p0, Lcom/netease/nr/base/view/bq;->a:Lcom/netease/nr/base/view/TabPageIndicator;

    invoke-static {v1}, Lcom/netease/nr/base/view/TabPageIndicator;->a(Lcom/netease/nr/base/view/TabPageIndicator;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0}, Lcom/netease/nr/base/view/TabPageIndicatorView;->b()I

    move-result v0

    iget-object v2, p0, Lcom/netease/nr/base/view/bq;->a:Lcom/netease/nr/base/view/TabPageIndicator;

    invoke-static {v2}, Lcom/netease/nr/base/view/TabPageIndicator;->a(Lcom/netease/nr/base/view/TabPageIndicator;)Landroid/support/v4/view/ViewPager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/netease/nr/base/view/bq;->a:Lcom/netease/nr/base/view/TabPageIndicator;

    invoke-static {v1}, Lcom/netease/nr/base/view/TabPageIndicator;->b(Lcom/netease/nr/base/view/TabPageIndicator;)Lcom/netease/nr/base/view/bs;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netease/nr/base/view/bq;->a:Lcom/netease/nr/base/view/TabPageIndicator;

    invoke-static {v1}, Lcom/netease/nr/base/view/TabPageIndicator;->b(Lcom/netease/nr/base/view/TabPageIndicator;)Lcom/netease/nr/base/view/bs;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/netease/nr/base/view/bs;->a(I)V

    :cond_0
    return-void
.end method
