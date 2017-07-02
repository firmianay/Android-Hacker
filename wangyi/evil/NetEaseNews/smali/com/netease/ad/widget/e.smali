.class public Lcom/netease/ad/widget/e;
.super Landroid/widget/FrameLayout;


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/ad/widget/e;->a:Z

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/netease/ad/widget/e;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private a()Landroid/graphics/Rect;
    .locals 1

    const-string v0, "shadow"

    invoke-virtual {p0, v0}, Lcom/netease/ad/widget/e;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/netease/ad/widget/ShadowView;

    invoke-virtual {v0}, Lcom/netease/ad/widget/ShadowView;->a()Landroid/graphics/Rect;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/netease/ad/widget/e;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u5f00\u59cb\u4e0b\u8f7d"

    const/16 v2, 0x258

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    new-instance v0, Lcom/netease/ad/c/b;

    invoke-direct {v0, p1}, Lcom/netease/ad/c/b;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/netease/ad/widget/f;

    invoke-direct {v1, p0}, Lcom/netease/ad/widget/f;-><init>(Lcom/netease/ad/widget/e;)V

    invoke-virtual {v0, v1}, Lcom/netease/ad/c/b;->a(Lcom/netease/ad/c/e;)V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/netease/ad/widget/e;->a:Z

    const-string v0, "shadow"

    invoke-virtual {p0, v0}, Lcom/netease/ad/widget/e;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    check-cast v0, Lcom/netease/ad/widget/ShadowView;

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcom/netease/ad/widget/ShadowView;->bringToFront()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netease/ad/widget/ShadowView;->setVisibility(I)V

    :goto_1
    invoke-virtual {p0}, Lcom/netease/ad/widget/e;->invalidate()V

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/netease/ad/widget/ShadowView;->setVisibility(I)V

    goto :goto_1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/netease/ad/widget/e;->a:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/netease/ad/widget/e;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/netease/ad/widget/e;->a()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/netease/ad/widget/e;->a()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/netease/ad/widget/e;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ad/b/j;

    invoke-virtual {v0}, Lcom/netease/ad/b/j;->m()Ljava/util/Hashtable;

    move-result-object v0

    const-string v2, "source_url"

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {p0}, Lcom/netease/ad/widget/e;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "\u5373\u5c06\u4e0b\u8f7d\u8be5\u5e94\u7528"

    const/16 v4, 0x320

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    invoke-direct {p0, v0}, Lcom/netease/ad/widget/e;->a(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method
