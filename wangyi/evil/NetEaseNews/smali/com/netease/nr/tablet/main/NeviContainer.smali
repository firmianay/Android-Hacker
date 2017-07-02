.class public Lcom/netease/nr/tablet/main/NeviContainer;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Lcom/netease/nr/base/view/ap;


# instance fields
.field private a:Lcom/netease/nr/base/view/DropdownSpinner;

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/netease/nr/tablet/main/NeviContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/netease/nr/tablet/main/NeviContainer;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/netease/nr/tablet/main/NeviContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/netease/nr/tablet/main/NeviContainer;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/nr/tablet/main/NeviContainer;->c:Z

    invoke-direct {p0, p1}, Lcom/netease/nr/tablet/main/NeviContainer;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/netease/nr/base/view/DropdownSpinner;

    invoke-direct {v0, p1}, Lcom/netease/nr/base/view/DropdownSpinner;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/nr/tablet/main/NeviContainer;->a:Lcom/netease/nr/base/view/DropdownSpinner;

    iget-object v0, p0, Lcom/netease/nr/tablet/main/NeviContainer;->a:Lcom/netease/nr/base/view/DropdownSpinner;

    const v1, 0xff0002

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/DropdownSpinner;->setId(I)V

    iget-object v0, p0, Lcom/netease/nr/tablet/main/NeviContainer;->a:Lcom/netease/nr/base/view/DropdownSpinner;

    invoke-virtual {v0}, Lcom/netease/nr/base/view/DropdownSpinner;->a()Lcom/netease/nr/base/view/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/netease/nr/base/view/ListPopupWindow;->b(Z)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/netease/nr/tablet/main/NeviContainer;->a:Lcom/netease/nr/base/view/DropdownSpinner;

    invoke-virtual {p0, v1, v0}, Lcom/netease/nr/tablet/main/NeviContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/NeviContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/tablet/main/NeviContainer;->b:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/NeviContainer;->requestLayout()V

    return-void
.end method

.method public a(Landroid/widget/ListAdapter;I)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/tablet/main/NeviContainer;->a:Lcom/netease/nr/base/view/DropdownSpinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/DropdownSpinner;->a(Z)V

    iget-object v0, p0, Lcom/netease/nr/tablet/main/NeviContainer;->a:Lcom/netease/nr/base/view/DropdownSpinner;

    new-instance v1, Lcom/netease/nr/tablet/main/n;

    invoke-direct {v1, p0, p1}, Lcom/netease/nr/tablet/main/n;-><init>(Lcom/netease/nr/tablet/main/NeviContainer;Landroid/widget/ListAdapter;)V

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/DropdownSpinner;->a(Lcom/netease/nr/base/view/o;)V

    iget-object v0, p0, Lcom/netease/nr/tablet/main/NeviContainer;->a:Lcom/netease/nr/base/view/DropdownSpinner;

    invoke-virtual {v0, p2}, Lcom/netease/nr/base/view/DropdownSpinner;->d(I)V

    goto :goto_0
.end method

.method public a(Ljava/util/List;I)V
    .locals 6

    const/4 v5, 0x0

    if-nez p1, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    new-instance v0, Lcom/netease/nr/base/view/d;

    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/NeviContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f030013

    new-array v4, v5, [Ljava/lang/String;

    new-array v5, v5, [I

    invoke-direct/range {v0 .. v5}, Lcom/netease/nr/base/view/d;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    invoke-virtual {p0, v0, p2}, Lcom/netease/nr/tablet/main/NeviContainer;->a(Landroid/widget/ListAdapter;I)V

    return-void

    :cond_0
    move-object v2, p1

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/netease/nr/tablet/main/NeviContainer;->c:Z

    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/NeviContainer;->invalidate()V

    return-void
.end method

.method public b()Lcom/netease/nr/base/view/DropdownSpinner;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/tablet/main/NeviContainer;->a:Lcom/netease/nr/base/view/DropdownSpinner;

    return-object v0
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/tablet/main/NeviContainer;->a:Lcom/netease/nr/base/view/DropdownSpinner;

    invoke-virtual {v0}, Lcom/netease/nr/base/view/DropdownSpinner;->a()Lcom/netease/nr/base/view/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/base/view/ListPopupWindow;->i()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/netease/nr/tablet/main/NeviContainer;->addView(Landroid/view/View;)V

    invoke-virtual {v0}, Lcom/netease/nr/base/view/ListPopupWindow;->h()Landroid/widget/ListView;

    move-result-object v0

    const v1, 0xff0003

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setId(I)V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/netease/nr/tablet/main/NeviContainer;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/tablet/main/NeviContainer;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/NeviContainer;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/netease/nr/tablet/main/NeviContainer;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/netease/nr/tablet/main/NeviContainer;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v5, 0x0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/netease/nr/tablet/main/NeviContainer;->setMeasuredDimension(II)V

    iget-object v2, p0, Lcom/netease/nr/tablet/main/NeviContainer;->a:Lcom/netease/nr/base/view/DropdownSpinner;

    invoke-virtual {v2}, Lcom/netease/nr/base/view/DropdownSpinner;->a()Lcom/netease/nr/base/view/ListPopupWindow;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/nr/base/view/ListPopupWindow;->j()I

    move-result v3

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    invoke-virtual {v2}, Lcom/netease/nr/base/view/ListPopupWindow;->i()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/netease/nr/base/view/ListPopupWindow;->h()Landroid/widget/ListView;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v3, v0, v1}, Landroid/view/View;->measure(II)V

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/tablet/main/NeviContainer;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/tablet/main/NeviContainer;->b:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/netease/nr/tablet/main/NeviContainer;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/NeviContainer;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v5, v5, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_1
    return-void
.end method
