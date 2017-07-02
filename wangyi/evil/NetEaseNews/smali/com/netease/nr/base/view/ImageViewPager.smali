.class public Lcom/netease/nr/base/view/ImageViewPager;
.super Landroid/support/v4/view/ViewPager;


# instance fields
.field private a:Lcom/netease/nr/base/view/z;

.field private b:Landroid/view/View$OnTouchListener;

.field private c:Z

.field private d:Lcom/netease/nr/base/view/y;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/netease/nr/base/view/y;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/base/view/ImageViewPager;->d:Lcom/netease/nr/base/view/y;

    return-void
.end method

.method public a(Lcom/netease/nr/base/view/z;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/base/view/ImageViewPager;->a:Lcom/netease/nr/base/view/z;

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/view/ImageViewPager;->b:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/ImageViewPager;->b:Landroid/view/View$OnTouchListener;

    invoke-interface {v0, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/netease/nr/base/view/ImageViewPager;->d:Lcom/netease/nr/base/view/y;

    if-nez v2, :cond_3

    :cond_0
    :goto_0
    iput-boolean v0, p0, Lcom/netease/nr/base/view/ImageViewPager;->c:Z

    :cond_1
    iget-boolean v0, p0, Lcom/netease/nr/base/view/ImageViewPager;->c:Z

    if-eqz v0, :cond_2

    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :cond_2
    return v1

    :cond_3
    iget-object v2, p0, Lcom/netease/nr/base/view/ImageViewPager;->d:Lcom/netease/nr/base/view/y;

    invoke-interface {v2, p0}, Lcom/netease/nr/base/view/y;->a(Lcom/netease/nr/base/view/ImageViewPager;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method protected onScrollChanged(IIII)V
    .locals 6

    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/view/ViewPager;->onScrollChanged(IIII)V

    iget-object v0, p0, Lcom/netease/nr/base/view/ImageViewPager;->a:Lcom/netease/nr/base/view/z;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/ImageViewPager;->a:Lcom/netease/nr/base/view/z;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/netease/nr/base/view/z;->a(Landroid/support/v4/view/ViewPager;IIII)V

    :cond_0
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iput-object p1, p0, Lcom/netease/nr/base/view/ImageViewPager;->b:Landroid/view/View$OnTouchListener;

    return-void
.end method
