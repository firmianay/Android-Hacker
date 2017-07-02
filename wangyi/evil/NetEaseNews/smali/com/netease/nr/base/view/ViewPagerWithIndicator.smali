.class public Lcom/netease/nr/base/view/ViewPagerWithIndicator;
.super Landroid/support/v4/view/ViewPager;


# instance fields
.field private a:Lcom/netease/nr/base/view/Indicator;

.field private b:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private c:Z

.field private d:Landroid/support/v4/view/PagerAdapter;

.field private e:Z

.field private f:Landroid/database/DataSetObserver;

.field private g:Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/netease/nr/base/view/ci;

    invoke-direct {v0, p0}, Lcom/netease/nr/base/view/ci;-><init>(Lcom/netease/nr/base/view/ViewPagerWithIndicator;)V

    iput-object v0, p0, Lcom/netease/nr/base/view/ViewPagerWithIndicator;->f:Landroid/database/DataSetObserver;

    new-instance v0, Lcom/netease/nr/base/view/cj;

    invoke-direct {v0, p0}, Lcom/netease/nr/base/view/cj;-><init>(Lcom/netease/nr/base/view/ViewPagerWithIndicator;)V

    iput-object v0, p0, Lcom/netease/nr/base/view/ViewPagerWithIndicator;->g:Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;

    invoke-direct {p0}, Lcom/netease/nr/base/view/ViewPagerWithIndicator;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/netease/nr/base/view/ci;

    invoke-direct {v0, p0}, Lcom/netease/nr/base/view/ci;-><init>(Lcom/netease/nr/base/view/ViewPagerWithIndicator;)V

    iput-object v0, p0, Lcom/netease/nr/base/view/ViewPagerWithIndicator;->f:Landroid/database/DataSetObserver;

    new-instance v0, Lcom/netease/nr/base/view/cj;

    invoke-direct {v0, p0}, Lcom/netease/nr/base/view/cj;-><init>(Lcom/netease/nr/base/view/ViewPagerWithIndicator;)V

    iput-object v0, p0, Lcom/netease/nr/base/view/ViewPagerWithIndicator;->g:Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;

    invoke-direct {p0}, Lcom/netease/nr/base/view/ViewPagerWithIndicator;->a()V

    return-void
.end method

.method private a()V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/view/ViewPagerWithIndicator;->g:Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;

    invoke-virtual {p0, v0}, Lcom/netease/nr/base/view/ViewPagerWithIndicator;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/base/view/ViewPagerWithIndicator;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/nr/base/view/ViewPagerWithIndicator;->d()V

    return-void
.end method

.method static synthetic b(Lcom/netease/nr/base/view/ViewPagerWithIndicator;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/view/ViewPagerWithIndicator;->b:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    return-object v0
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/base/view/ViewPagerWithIndicator;->d:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netease/nr/base/view/ViewPagerWithIndicator;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/nr/base/view/ViewPagerWithIndicator;->e:Z

    iget-object v0, p0, Lcom/netease/nr/base/view/ViewPagerWithIndicator;->d:Landroid/support/v4/view/PagerAdapter;

    iget-object v1, p0, Lcom/netease/nr/base/view/ViewPagerWithIndicator;->f:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/netease/nr/base/view/ViewPagerWithIndicator;)Lcom/netease/nr/base/view/Indicator;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/view/ViewPagerWithIndicator;->a:Lcom/netease/nr/base/view/Indicator;

    return-object v0
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/base/view/ViewPagerWithIndicator;->d:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netease/nr/base/view/ViewPagerWithIndicator;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/nr/base/view/ViewPagerWithIndicator;->e:Z

    iget-object v0, p0, Lcom/netease/nr/base/view/ViewPagerWithIndicator;->d:Landroid/support/v4/view/PagerAdapter;

    iget-object v1, p0, Lcom/netease/nr/base/view/ViewPagerWithIndicator;->f:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    return-void
.end method

.method private d()V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/netease/nr/base/view/ViewPagerWithIndicator;->a:Lcom/netease/nr/base/view/Indicator;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/netease/nr/base/view/ViewPagerWithIndicator;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/netease/nr/base/view/ViewPagerWithIndicator;->a:Lcom/netease/nr/base/view/Indicator;

    invoke-virtual {v2, v0}, Lcom/netease/nr/base/view/Indicator;->b(I)V

    iget-object v2, p0, Lcom/netease/nr/base/view/ViewPagerWithIndicator;->a:Lcom/netease/nr/base/view/Indicator;

    invoke-virtual {v2, v1}, Lcom/netease/nr/base/view/Indicator;->c(I)V

    iget-object v2, p0, Lcom/netease/nr/base/view/ViewPagerWithIndicator;->a:Lcom/netease/nr/base/view/Indicator;

    iget-boolean v3, p0, Lcom/netease/nr/base/view/ViewPagerWithIndicator;->c:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    if-gt v0, v3, :cond_0

    const/4 v1, 0x4

    :cond_0
    invoke-virtual {v2, v1}, Lcom/netease/nr/base/view/Indicator;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/netease/nr/base/view/Indicator;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/base/view/ViewPagerWithIndicator;->a:Lcom/netease/nr/base/view/Indicator;

    invoke-direct {p0}, Lcom/netease/nr/base/view/ViewPagerWithIndicator;->d()V

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/netease/nr/base/view/ViewPagerWithIndicator;->c:Z

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/support/v4/view/ViewPager;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/netease/nr/base/view/ViewPagerWithIndicator;->b()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/support/v4/view/ViewPager;->onDetachedFromWindow()V

    invoke-direct {p0}, Lcom/netease/nr/base/view/ViewPagerWithIndicator;->c()V

    return-void
.end method

.method public setAdapter(Landroid/support/v4/view/PagerAdapter;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    invoke-direct {p0}, Lcom/netease/nr/base/view/ViewPagerWithIndicator;->c()V

    iput-object p1, p0, Lcom/netease/nr/base/view/ViewPagerWithIndicator;->d:Landroid/support/v4/view/PagerAdapter;

    invoke-direct {p0}, Lcom/netease/nr/base/view/ViewPagerWithIndicator;->b()V

    invoke-direct {p0}, Lcom/netease/nr/base/view/ViewPagerWithIndicator;->d()V

    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/view/ViewPagerWithIndicator;->g:Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;

    if-ne p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/netease/nr/base/view/ViewPagerWithIndicator;->b:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    goto :goto_0
.end method
