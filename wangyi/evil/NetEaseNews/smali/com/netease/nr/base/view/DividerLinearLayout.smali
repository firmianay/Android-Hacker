.class public Lcom/netease/nr/base/view/DividerLinearLayout;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/base/view/DividerLinearLayout;->f:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/base/view/DividerLinearLayout;->f:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/base/view/DividerLinearLayout;->f:Ljava/util/List;

    return-void
.end method

.method private a()V
    .locals 4

    iget-object v0, p0, Lcom/netease/nr/base/view/DividerLinearLayout;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/netease/nr/base/view/DividerLinearLayout;->getChildCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/netease/nr/base/view/DividerLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/netease/nr/base/view/DividerLinearLayout;->f:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/base/view/DividerLinearLayout;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/DividerLinearLayout;->a:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    invoke-virtual {p0}, Lcom/netease/nr/base/view/DividerLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/base/view/DividerLinearLayout;->a:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8

    const/4 v5, 0x1

    const/4 v0, 0x0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/netease/nr/base/view/DividerLinearLayout;->getChildCount()I

    move-result v1

    if-le v1, v5, :cond_2

    iget-object v1, p0, Lcom/netease/nr/base/view/DividerLinearLayout;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/netease/nr/base/view/DividerLinearLayout;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/netease/nr/base/view/DividerLinearLayout;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    div-int/lit8 v1, v1, 0x2

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v1, v2, 0x1

    div-int/lit8 v1, v1, 0x2

    mul-int/lit8 v2, v1, 0x2

    invoke-direct {p0}, Lcom/netease/nr/base/view/DividerLinearLayout;->a()V

    iget-object v1, p0, Lcom/netease/nr/base/view/DividerLinearLayout;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p0}, Lcom/netease/nr/base/view/DividerLinearLayout;->getOrientation()I

    move-result v1

    if-ne v1, v5, :cond_0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    iget-object v0, p0, Lcom/netease/nr/base/view/DividerLinearLayout;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget v3, p0, Lcom/netease/nr/base/view/DividerLinearLayout;->b:I

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/netease/nr/base/view/DividerLinearLayout;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/netease/nr/base/view/DividerLinearLayout;->d:I

    sub-int/2addr v5, v6

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int v6, v0, v2

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget-object v7, p0, Lcom/netease/nr/base/view/DividerLinearLayout;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v3, v0, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/netease/nr/base/view/DividerLinearLayout;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_1
    if-ge v1, v4, :cond_1

    iget-object v0, p0, Lcom/netease/nr/base/view/DividerLinearLayout;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    iget v2, p0, Lcom/netease/nr/base/view/DividerLinearLayout;->c:I

    add-int v5, v0, v3

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {p0}, Lcom/netease/nr/base/view/DividerLinearLayout;->getHeight()I

    move-result v6

    iget v7, p0, Lcom/netease/nr/base/view/DividerLinearLayout;->e:I

    sub-int/2addr v6, v7

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget-object v7, p0, Lcom/netease/nr/base/view/DividerLinearLayout;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v0, v2, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/netease/nr/base/view/DividerLinearLayout;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/base/view/DividerLinearLayout;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_2
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    const/4 v5, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/netease/nr/base/view/DividerLinearLayout;->getChildCount()I

    move-result v1

    if-le v1, v5, :cond_6

    iget-object v1, p0, Lcom/netease/nr/base/view/DividerLinearLayout;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/netease/nr/base/view/DividerLinearLayout;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/netease/nr/base/view/DividerLinearLayout;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    div-int/lit8 v3, v1, 0x2

    add-int/lit8 v1, v2, 0x1

    div-int/lit8 v2, v1, 0x2

    invoke-direct {p0}, Lcom/netease/nr/base/view/DividerLinearLayout;->a()V

    iget-object v1, p0, Lcom/netease/nr/base/view/DividerLinearLayout;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {p0}, Lcom/netease/nr/base/view/DividerLinearLayout;->getOrientation()I

    move-result v1

    if-ne v1, v5, :cond_2

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_5

    iget-object v0, p0, Lcom/netease/nr/base/view/DividerLinearLayout;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_0

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    :cond_0
    add-int/lit8 v3, v4, -0x1

    if-eq v1, v3, :cond_1

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_1
    if-ge v1, v4, :cond_5

    iget-object v0, p0, Lcom/netease/nr/base/view/DividerLinearLayout;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    :cond_3
    add-int/lit8 v2, v4, -0x1

    if-eq v1, v2, :cond_4

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/netease/nr/base/view/DividerLinearLayout;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_6
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method
