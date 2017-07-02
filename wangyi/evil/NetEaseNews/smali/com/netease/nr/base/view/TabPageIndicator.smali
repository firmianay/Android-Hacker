.class public Lcom/netease/nr/base/view/TabPageIndicator;
.super Landroid/widget/HorizontalScrollView;

# interfaces
.implements Lcom/netease/nr/base/view/ba;


# static fields
.field private static final a:Ljava/lang/CharSequence;


# instance fields
.field private b:Ljava/lang/Runnable;

.field private final c:Landroid/view/View$OnClickListener;

.field private final d:Landroid/widget/LinearLayout;

.field private e:Landroid/support/v4/view/ViewPager;

.field private f:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private g:I

.field private h:I

.field private i:Lcom/netease/nr/base/view/bs;

.field private j:Landroid/graphics/drawable/Drawable;

.field private k:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ""

    sput-object v0, Lcom/netease/nr/base/view/TabPageIndicator;->a:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/netease/nr/base/view/TabPageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/netease/nr/base/view/bq;

    invoke-direct {v0, p0}, Lcom/netease/nr/base/view/bq;-><init>(Lcom/netease/nr/base/view/TabPageIndicator;)V

    iput-object v0, p0, Lcom/netease/nr/base/view/TabPageIndicator;->c:Landroid/view/View$OnClickListener;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netease/nr/base/view/TabPageIndicator;->setHorizontalScrollBarEnabled(Z)V

    invoke-virtual {p0}, Lcom/netease/nr/base/view/TabPageIndicator;->e()Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/base/view/TabPageIndicator;->d:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/netease/nr/base/view/TabPageIndicator;->d:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/netease/nr/base/view/TabPageIndicator;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/netease/nr/base/view/TabPageIndicator;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/base/view/TabPageIndicator;->j:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/base/view/TabPageIndicator;)Landroid/support/v4/view/ViewPager;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/view/TabPageIndicator;->e:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic a(Lcom/netease/nr/base/view/TabPageIndicator;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/base/view/TabPageIndicator;->b:Ljava/lang/Runnable;

    return-object p1
.end method

.method private a(Ljava/lang/CharSequence;I)V
    .locals 6

    invoke-static {p0, p2}, Lcom/netease/nr/base/view/TabPageIndicatorView;->a(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/netease/nr/base/view/TabPageIndicator;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c0008

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/TabPageIndicatorView;

    invoke-virtual {v0, p1}, Lcom/netease/nr/base/view/TabPageIndicatorView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netease/nr/base/view/TabPageIndicator;->d:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic b(Lcom/netease/nr/base/view/TabPageIndicator;)Lcom/netease/nr/base/view/bs;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/view/TabPageIndicator;->i:Lcom/netease/nr/base/view/bs;

    return-object v0
.end method

.method private b(I)V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/base/view/TabPageIndicator;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/base/view/TabPageIndicator;->b:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netease/nr/base/view/TabPageIndicator;->b:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/netease/nr/base/view/TabPageIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    new-instance v1, Lcom/netease/nr/base/view/br;

    invoke-direct {v1, p0, v0}, Lcom/netease/nr/base/view/br;-><init>(Lcom/netease/nr/base/view/TabPageIndicator;Landroid/view/View;)V

    iput-object v1, p0, Lcom/netease/nr/base/view/TabPageIndicator;->b:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/netease/nr/base/view/TabPageIndicator;->b:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/netease/nr/base/view/TabPageIndicator;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public a()Landroid/support/v4/view/ViewPager;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/view/TabPageIndicator;->e:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method public a(I)V
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/netease/nr/base/view/TabPageIndicator;->e:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager has not been bound."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/base/view/TabPageIndicator;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Lcom/netease/nr/base/view/TabPageIndicator;->h:I

    iget-object v0, p0, Lcom/netease/nr/base/view/TabPageIndicator;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v4}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    iget-object v0, p0, Lcom/netease/nr/base/view/TabPageIndicator;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    move v3, v1

    :goto_1
    if-ge v3, v5, :cond_4

    iget-object v0, p0, Lcom/netease/nr/base/view/TabPageIndicator;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-ne v3, v4, :cond_3

    const/4 v0, 0x1

    move v2, v0

    :goto_2
    invoke-virtual {v6, v2}, Landroid/view/View;->setSelected(Z)V

    const v0, 0x7f0c0008

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/TabPageIndicatorView;

    invoke-virtual {v0, v2}, Lcom/netease/nr/base/view/TabPageIndicatorView;->setSelected(Z)V

    if-eqz v2, :cond_1

    invoke-direct {p0, v4}, Lcom/netease/nr/base/view/TabPageIndicator;->b(I)V

    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    goto :goto_0

    :cond_3
    move v2, v1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public a(Landroid/support/v4/view/ViewPager;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/base/view/TabPageIndicator;->e:Landroid/support/v4/view/ViewPager;

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/base/view/TabPageIndicator;->e:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/base/view/TabPageIndicator;->e:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    :cond_1
    iput-object p1, p0, Lcom/netease/nr/base/view/TabPageIndicator;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    invoke-virtual {p0}, Lcom/netease/nr/base/view/TabPageIndicator;->b()V

    goto :goto_0
.end method

.method public a(Landroid/support/v4/view/ViewPager;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/netease/nr/base/view/TabPageIndicator;->a(Landroid/support/v4/view/ViewPager;)V

    invoke-virtual {p0, p2}, Lcom/netease/nr/base/view/TabPageIndicator;->a(I)V

    return-void
.end method

.method public a(Landroid/support/v4/view/ViewPager;Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/base/view/TabPageIndicator;->j:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Lcom/netease/nr/base/view/TabPageIndicator;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/netease/nr/base/view/TabPageIndicator;->getBottom()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/netease/nr/base/view/TabPageIndicator;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    return-void
.end method

.method public a(Lcom/netease/util/j/a;)V
    .locals 4

    iget-object v0, p0, Lcom/netease/nr/base/view/TabPageIndicator;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/TabPageIndicator;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0c0008

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f070141

    invoke-virtual {p1, v0, v3}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    const v3, 0x7f02004f

    invoke-virtual {p1, v0, v3}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(JZ)Z
    .locals 2

    iget-wide v0, p0, Lcom/netease/nr/base/view/TabPageIndicator;->k:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/netease/nr/base/view/TabPageIndicator;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/netease/nr/base/view/TabPageIndicator;->e:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/base/view/TabPageIndicator;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v3

    if-nez v3, :cond_2

    move v0, v1

    :goto_1
    move v2, v1

    :goto_2
    if-ge v2, v0, :cond_3

    invoke-virtual {v3, v2}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/netease/nr/base/view/TabPageIndicator;->a:Ljava/lang/CharSequence;

    :cond_1
    invoke-direct {p0, v1, v2}, Lcom/netease/nr/base/view/TabPageIndicator;->a(Ljava/lang/CharSequence;I)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    goto :goto_1

    :cond_3
    iget v1, p0, Lcom/netease/nr/base/view/TabPageIndicator;->h:I

    if-le v1, v0, :cond_4

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/netease/nr/base/view/TabPageIndicator;->h:I

    :cond_4
    iget v0, p0, Lcom/netease/nr/base/view/TabPageIndicator;->h:I

    invoke-virtual {p0, v0}, Lcom/netease/nr/base/view/TabPageIndicator;->a(I)V

    invoke-virtual {p0}, Lcom/netease/nr/base/view/TabPageIndicator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/util/j/a;->a(Landroid/content/Context;)Lcom/netease/util/j/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/nr/base/view/TabPageIndicator;->a(Lcom/netease/util/j/a;)V

    invoke-virtual {p0}, Lcom/netease/nr/base/view/TabPageIndicator;->requestLayout()V

    goto :goto_0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/netease/nr/base/view/TabPageIndicator;->g:I

    return v0
.end method

.method protected d()Landroid/graphics/drawable/Drawable;
    .locals 2

    invoke-virtual {p0}, Lcom/netease/nr/base/view/TabPageIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020041

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected e()Landroid/widget/LinearLayout;
    .locals 2

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/netease/nr/base/view/TabPageIndicator;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/netease/nr/base/view/TabPageIndicator;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v2, v0, Lcom/netease/nr/base/view/ba;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/netease/nr/base/view/ba;

    invoke-interface {v0}, Lcom/netease/nr/base/view/ba;->a()Landroid/support/v4/view/ViewPager;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PagerTitleStrip must be a direct child of a ViewPager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    instance-of v2, v0, Landroid/support/v4/view/ViewPager;

    if-eqz v2, :cond_3

    check-cast v0, Landroid/support/v4/view/ViewPager;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/netease/nr/base/view/TabPageIndicator;->a(Landroid/support/v4/view/ViewPager;I)V

    iget-object v0, p0, Lcom/netease/nr/base/view/TabPageIndicator;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/nr/base/view/TabPageIndicator;->b:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/netease/nr/base/view/TabPageIndicator;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/netease/nr/base/view/TabPageIndicator;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/TabPageIndicator;->b:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/netease/nr/base/view/TabPageIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netease/nr/base/view/TabPageIndicator;->k:J

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onMeasure(II)V
    .locals 6

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    if-ne v3, v5, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/netease/nr/base/view/TabPageIndicator;->setFillViewport(Z)V

    iget-object v4, p0, Lcom/netease/nr/base/view/TabPageIndicator;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-le v4, v1, :cond_5

    if-eq v3, v5, :cond_0

    const/high16 v1, -0x80000000

    if-ne v3, v1, :cond_5

    :cond_0
    const/4 v1, 0x2

    if-le v4, v1, :cond_4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    int-to-float v1, v1

    const v3, 0x3ecccccd    # 0.4f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Lcom/netease/nr/base/view/TabPageIndicator;->g:I

    :goto_1
    invoke-virtual {p0}, Lcom/netease/nr/base/view/TabPageIndicator;->getMeasuredWidth()I

    move-result v1

    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/netease/nr/base/view/TabPageIndicator;->getMeasuredWidth()I

    move-result v3

    if-eqz v0, :cond_1

    if-eq v1, v3, :cond_1

    iget v0, p0, Lcom/netease/nr/base/view/TabPageIndicator;->h:I

    invoke-virtual {p0, v0}, Lcom/netease/nr/base/view/TabPageIndicator;->a(I)V

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/base/view/TabPageIndicator;->j:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/nr/base/view/TabPageIndicator;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/netease/nr/base/view/TabPageIndicator;->getMeasuredWidth()I

    move-result v1

    iget-object v3, p0, Lcom/netease/nr/base/view/TabPageIndicator;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v0, v2, v2, v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_2
    return-void

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/netease/nr/base/view/TabPageIndicator;->g:I

    goto :goto_1

    :cond_5
    const/4 v1, -0x1

    iput v1, p0, Lcom/netease/nr/base/view/TabPageIndicator;->g:I

    goto :goto_1
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/view/TabPageIndicator;->f:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/TabPageIndicator;->f:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/view/TabPageIndicator;->f:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/TabPageIndicator;->f:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/netease/nr/base/view/TabPageIndicator;->a(I)V

    iget-object v0, p0, Lcom/netease/nr/base/view/TabPageIndicator;->f:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/TabPageIndicator;->f:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_0
    return-void
.end method
