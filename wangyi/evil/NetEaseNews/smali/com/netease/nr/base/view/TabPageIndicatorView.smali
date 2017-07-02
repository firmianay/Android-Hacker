.class public Lcom/netease/nr/base/view/TabPageIndicatorView;
.super Lcom/netease/nr/base/view/MyTextView;


# instance fields
.field private a:I

.field private b:Lcom/netease/nr/base/view/TabPageIndicator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netease/nr/base/view/MyTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/netease/nr/base/view/MyTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static a(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03001b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0c0008

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/TabPageIndicatorView;

    iput p1, v0, Lcom/netease/nr/base/view/TabPageIndicatorView;->a:I

    return-object v1
.end method


# virtual methods
.method public b()I
    .locals 1

    iget v0, p0, Lcom/netease/nr/base/view/TabPageIndicatorView;->a:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Lcom/netease/nr/base/view/MyTextView;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/netease/nr/base/view/TabPageIndicatorView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/netease/nr/base/view/TabPageIndicator;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/netease/nr/base/view/TabPageIndicator;

    :goto_0
    iput-object v0, p0, Lcom/netease/nr/base/view/TabPageIndicatorView;->b:Lcom/netease/nr/base/view/TabPageIndicator;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Lcom/netease/nr/base/view/MyTextView;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/nr/base/view/TabPageIndicatorView;->b:Lcom/netease/nr/base/view/TabPageIndicator;

    return-void
.end method

.method public onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/view/MyTextView;->onMeasure(II)V

    iget-object v0, p0, Lcom/netease/nr/base/view/TabPageIndicatorView;->b:Lcom/netease/nr/base/view/TabPageIndicator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/base/view/TabPageIndicatorView;->b:Lcom/netease/nr/base/view/TabPageIndicator;

    invoke-virtual {v0}, Lcom/netease/nr/base/view/TabPageIndicator;->c()I

    move-result v0

    :goto_0
    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/base/view/TabPageIndicatorView;->getMeasuredWidth()I

    move-result v1

    if-le v1, v0, :cond_0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v0, p2}, Lcom/netease/nr/base/view/MyTextView;->onMeasure(II)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
