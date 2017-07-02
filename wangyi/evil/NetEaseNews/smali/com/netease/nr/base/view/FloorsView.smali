.class public Lcom/netease/nr/base/view/FloorsView;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:Z

.field private b:Ljava/lang/Object;

.field private c:Lcom/netease/nr/base/view/v;

.field private d:I

.field private e:Lcom/netease/nr/base/view/x;

.field private f:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/netease/nr/base/view/FloorsView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/netease/nr/base/view/FloorsView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/netease/nr/base/view/FloorsView;->setOrientation(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/netease/nr/base/view/FloorsView;->d:I

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/base/view/FloorsView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/netease/nr/base/view/FloorsView;->detachAllViewsFromParent()V

    return-void
.end method

.method private b()Lcom/netease/nr/base/view/w;
    .locals 5

    iget-object v0, p0, Lcom/netease/nr/base/view/FloorsView;->e:Lcom/netease/nr/base/view/x;

    invoke-virtual {v0, p0}, Lcom/netease/nr/base/view/x;->b(Lcom/netease/nr/base/view/FloorsView;)Lcom/netease/nr/base/view/w;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v1, Lcom/netease/nr/base/view/w;

    invoke-virtual {p0}, Lcom/netease/nr/base/view/FloorsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lcom/netease/nr/base/view/w;-><init>(Landroid/content/Context;Lcom/netease/nr/base/view/FloorsView;)V

    iget-object v0, p0, Lcom/netease/nr/base/view/FloorsView;->c:Lcom/netease/nr/base/view/v;

    iget-object v2, p0, Lcom/netease/nr/base/view/FloorsView;->b:Ljava/lang/Object;

    invoke-interface {v0, v2, v1}, Lcom/netease/nr/base/view/v;->a(Ljava/lang/Object;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v0, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    :cond_0
    invoke-virtual {v1, v2, v0}, Lcom/netease/nr/base/view/w;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, v1

    :cond_1
    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/base/view/FloorsView;->c:Lcom/netease/nr/base/view/v;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/base/view/FloorsView;->c:Lcom/netease/nr/base/view/v;

    iget-object v1, p0, Lcom/netease/nr/base/view/FloorsView;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/netease/nr/base/view/v;->a(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/base/view/FloorsView;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/netease/nr/base/view/FloorsView;->invalidate()V

    return-void
.end method

.method public a(Lcom/netease/nr/base/view/v;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/base/view/FloorsView;->c:Lcom/netease/nr/base/view/v;

    return-void
.end method

.method public a(Lcom/netease/nr/base/view/x;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/base/view/FloorsView;->e:Lcom/netease/nr/base/view/x;

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 8

    const/4 v7, 0x4

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/netease/nr/base/view/FloorsView;->b:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/nr/base/view/FloorsView;->a:Z

    iget-object v0, p0, Lcom/netease/nr/base/view/FloorsView;->e:Lcom/netease/nr/base/view/x;

    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/nr/base/view/x;

    invoke-direct {v0}, Lcom/netease/nr/base/view/x;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/base/view/FloorsView;->e:Lcom/netease/nr/base/view/x;

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/base/view/FloorsView;->e:Lcom/netease/nr/base/view/x;

    invoke-virtual {v0, p0}, Lcom/netease/nr/base/view/x;->a(Lcom/netease/nr/base/view/FloorsView;)V

    invoke-virtual {p0}, Lcom/netease/nr/base/view/FloorsView;->a()I

    move-result v3

    iget-object v0, p0, Lcom/netease/nr/base/view/FloorsView;->c:Lcom/netease/nr/base/view/v;

    if-eqz v0, :cond_4

    if-lez v3, :cond_4

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_3

    invoke-direct {p0}, Lcom/netease/nr/base/view/FloorsView;->b()Lcom/netease/nr/base/view/w;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/nr/base/view/w;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    if-nez v0, :cond_1

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v0, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0x31

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, v4, v1, v0}, Lcom/netease/nr/base/view/FloorsView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    :goto_1
    sub-int v5, v3, v1

    add-int/lit8 v5, v5, -0x1

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget v6, p0, Lcom/netease/nr/base/view/FloorsView;->d:I

    mul-int/2addr v5, v6

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    if-nez v1, :cond_2

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget v6, p0, Lcom/netease/nr/base/view/FloorsView;->d:I

    mul-int/2addr v5, v6

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    :goto_2
    iget-object v0, p0, Lcom/netease/nr/base/view/FloorsView;->c:Lcom/netease/nr/base/view/v;

    iget-object v5, p0, Lcom/netease/nr/base/view/FloorsView;->b:Ljava/lang/Object;

    invoke-interface {v0, v4, v1, v5, v3}, Lcom/netease/nr/base/view/v;->a(Landroid/view/ViewGroup;ILjava/lang/Object;I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v4, v1, v0}, Lcom/netease/nr/base/view/FloorsView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_2
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v2}, Lcom/netease/nr/base/view/FloorsView;->setVisibility(I)V

    :goto_3
    return-void

    :cond_4
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/netease/nr/base/view/FloorsView;->setVisibility(I)V

    goto :goto_3
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-virtual {p0}, Lcom/netease/nr/base/view/FloorsView;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/netease/nr/base/view/FloorsView;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/netease/nr/base/view/FloorsView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nr/base/view/FloorsView;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, p0, Lcom/netease/nr/base/view/FloorsView;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    iget-boolean v0, p0, Lcom/netease/nr/base/view/FloorsView;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/nr/base/view/FloorsView;->a:Z

    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    return-void
.end method
