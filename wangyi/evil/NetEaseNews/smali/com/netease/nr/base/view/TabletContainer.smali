.class public Lcom/netease/nr/base/view/TabletContainer;
.super Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 5

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v1, 0x0

    invoke-static {v1, p2}, Lcom/netease/nr/base/view/TabletContainer;->getDefaultSize(II)I

    move-result v2

    invoke-virtual {p0}, Lcom/netease/nr/base/view/TabletContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/util/i/b;->h(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0}, Lcom/netease/nr/base/view/TabletContainer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/netease/util/i/b;->a(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    int-to-float v0, v0

    const v3, 0x3f3851ec    # 0.72f

    mul-float/2addr v0, v3

    float-to-int v0, v0

    :cond_0
    invoke-virtual {p0, v0, v2}, Lcom/netease/nr/base/view/TabletContainer;->setMeasuredDimension(II)V

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p0}, Lcom/netease/nr/base/view/TabletContainer;->getChildCount()I

    move-result v4

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_1

    invoke-virtual {p0, v0}, Lcom/netease/nr/base/view/TabletContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3, v2}, Landroid/view/View;->measure(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
