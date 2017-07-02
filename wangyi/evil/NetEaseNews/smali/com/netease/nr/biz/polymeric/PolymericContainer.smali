.class public Lcom/netease/nr/biz/polymeric/PolymericContainer;
.super Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public a(Landroid/util/AttributeSet;)Lcom/netease/nr/biz/polymeric/PolymericContainer$LayoutParams;
    .locals 2

    new-instance v0, Lcom/netease/nr/biz/polymeric/PolymericContainer$LayoutParams;

    invoke-virtual {p0}, Lcom/netease/nr/biz/polymeric/PolymericContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/netease/nr/biz/polymeric/PolymericContainer$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Lcom/netease/nr/biz/polymeric/PolymericContainer$LayoutParams;

    return v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    const/4 v1, -0x2

    new-instance v0, Lcom/netease/nr/biz/polymeric/PolymericContainer$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/netease/nr/biz/polymeric/PolymericContainer$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/polymeric/PolymericContainer;->a(Landroid/util/AttributeSet;)Lcom/netease/nr/biz/polymeric/PolymericContainer$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Lcom/netease/nr/biz/polymeric/PolymericContainer$LayoutParams;

    invoke-direct {v0, p1}, Lcom/netease/nr/biz/polymeric/PolymericContainer$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/polymeric/PolymericContainer;->a(Landroid/util/AttributeSet;)Lcom/netease/nr/biz/polymeric/PolymericContainer$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 13

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v12, -0x1

    const/high16 v11, 0x42c80000    # 100.0f

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {p0}, Lcom/netease/nr/biz/polymeric/PolymericContainer;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v0, v5

    invoke-virtual {p0}, Lcom/netease/nr/biz/polymeric/PolymericContainer;->getPaddingRight()I

    move-result v5

    sub-int v5, v0, v5

    invoke-virtual {p0}, Lcom/netease/nr/biz/polymeric/PolymericContainer;->getPaddingTop()I

    move-result v0

    sub-int v0, v1, v0

    invoke-virtual {p0}, Lcom/netease/nr/biz/polymeric/PolymericContainer;->getPaddingBottom()I

    move-result v1

    sub-int v6, v0, v1

    invoke-virtual {p0}, Lcom/netease/nr/biz/polymeric/PolymericContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v7, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {p0}, Lcom/netease/nr/biz/polymeric/PolymericContainer;->getChildCount()I

    move-result v8

    move v1, v2

    :goto_0
    if-ge v1, v8, :cond_3

    invoke-virtual {p0, v1}, Lcom/netease/nr/biz/polymeric/PolymericContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/polymeric/PolymericContainer$LayoutParams;

    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/nr/biz/polymeric/PolymericContainer$LayoutParams;

    invoke-direct {v0, v2, v2}, Lcom/netease/nr/biz/polymeric/PolymericContainer$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget v9, v0, Lcom/netease/nr/biz/polymeric/PolymericContainer$LayoutParams;->a:I

    if-ne v9, v12, :cond_1

    iget v9, v0, Lcom/netease/nr/biz/polymeric/PolymericContainer$LayoutParams;->width:I

    invoke-static {v2, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v7

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    iput v9, v0, Lcom/netease/nr/biz/polymeric/PolymericContainer$LayoutParams;->a:I

    :cond_1
    iget v9, v0, Lcom/netease/nr/biz/polymeric/PolymericContainer$LayoutParams;->b:I

    if-ne v9, v12, :cond_2

    iget v9, v0, Lcom/netease/nr/biz/polymeric/PolymericContainer$LayoutParams;->height:I

    invoke-static {v2, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v7

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    iput v9, v0, Lcom/netease/nr/biz/polymeric/PolymericContainer$LayoutParams;->b:I

    :cond_2
    iget v9, v0, Lcom/netease/nr/biz/polymeric/PolymericContainer$LayoutParams;->a:I

    mul-int/2addr v9, v5

    int-to-float v9, v9

    div-float/2addr v9, v11

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    iget v10, v0, Lcom/netease/nr/biz/polymeric/PolymericContainer$LayoutParams;->leftMargin:I

    sub-int/2addr v9, v10

    iget v10, v0, Lcom/netease/nr/biz/polymeric/PolymericContainer$LayoutParams;->rightMargin:I

    sub-int/2addr v9, v10

    iput v9, v0, Lcom/netease/nr/biz/polymeric/PolymericContainer$LayoutParams;->width:I

    iget v9, v0, Lcom/netease/nr/biz/polymeric/PolymericContainer$LayoutParams;->b:I

    mul-int/2addr v9, v6

    int-to-float v9, v9

    div-float/2addr v9, v11

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    iget v10, v0, Lcom/netease/nr/biz/polymeric/PolymericContainer$LayoutParams;->topMargin:I

    sub-int/2addr v9, v10

    iget v10, v0, Lcom/netease/nr/biz/polymeric/PolymericContainer$LayoutParams;->bottomMargin:I

    sub-int/2addr v9, v10

    iput v9, v0, Lcom/netease/nr/biz/polymeric/PolymericContainer$LayoutParams;->height:I

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    invoke-super {p0, v3, v4}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    return-void
.end method
