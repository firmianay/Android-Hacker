.class public Lcom/netease/nr/base/view/VerticalViewPager$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;


# instance fields
.field public a:Z

.field public b:I

.field c:F

.field d:F

.field e:Z

.field f:I

.field g:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iput v0, p0, Lcom/netease/nr/base/view/VerticalViewPager$LayoutParams;->c:F

    iput v0, p0, Lcom/netease/nr/base/view/VerticalViewPager$LayoutParams;->d:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/netease/nr/base/view/VerticalViewPager$LayoutParams;->c:F

    iput v0, p0, Lcom/netease/nr/base/view/VerticalViewPager$LayoutParams;->d:F

    invoke-static {}, Lcom/netease/nr/base/view/VerticalViewPager;->e()[I

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x30

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/netease/nr/base/view/VerticalViewPager$LayoutParams;->b:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
