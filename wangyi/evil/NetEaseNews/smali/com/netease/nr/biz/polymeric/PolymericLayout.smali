.class public Lcom/netease/nr/biz/polymeric/PolymericLayout;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Lcom/netease/nr/base/view/ax;


# instance fields
.field private a:Lcom/netease/nr/biz/polymeric/e;

.field private b:F

.field private c:F

.field private d:I

.field private e:Z

.field private f:Z

.field private g:J

.field private h:Landroid/view/GestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/netease/nr/biz/polymeric/PolymericLayout;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/netease/nr/biz/polymeric/PolymericLayout;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/netease/nr/biz/polymeric/PolymericLayout;->a()V

    return-void
.end method

.method private a()V
    .locals 2

    invoke-virtual {p0}, Lcom/netease/nr/biz/polymeric/PolymericLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v1

    iput v1, p0, Lcom/netease/nr/biz/polymeric/PolymericLayout;->d:I

    new-instance v1, Landroid/view/GestureDetector;

    invoke-direct {v1, v0, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/netease/nr/biz/polymeric/PolymericLayout;->h:Landroid/view/GestureDetector;

    return-void
.end method


# virtual methods
.method public a(Lcom/netease/nr/biz/polymeric/e;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/polymeric/PolymericLayout;->a:Lcom/netease/nr/biz/polymeric/e;

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/netease/nr/biz/polymeric/PolymericLayout;->a:Lcom/netease/nr/biz/polymeric/e;

    goto :goto_0
.end method

.method public a(Landroid/view/MotionEvent;Z)Z
    .locals 5

    const/4 v0, 0x0

    iget-wide v1, p0, Lcom/netease/nr/biz/polymeric/PolymericLayout;->g:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/netease/nr/biz/polymeric/PolymericLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/netease/nr/biz/polymeric/PolymericLayout;->c()I

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p2, :cond_2

    invoke-virtual {p0}, Lcom/netease/nr/biz/polymeric/PolymericLayout;->c()I

    move-result v1

    invoke-virtual {p0}, Lcom/netease/nr/biz/polymeric/PolymericLayout;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public c()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/netease/nr/biz/polymeric/PolymericLayout;->e:Z

    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-gez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/netease/nr/biz/polymeric/PolymericLayout;->f:Z

    return v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_1
    return v0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netease/nr/biz/polymeric/PolymericLayout;->g:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/netease/nr/biz/polymeric/PolymericLayout;->b:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/netease/nr/biz/polymeric/PolymericLayout;->c:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/nr/biz/polymeric/PolymericLayout;->e:Z

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/netease/nr/biz/polymeric/PolymericLayout;->b:F

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/netease/nr/biz/polymeric/PolymericLayout;->c:F

    sub-float/2addr v1, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Lcom/netease/nr/biz/polymeric/PolymericLayout;->d:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/netease/nr/biz/polymeric/PolymericLayout;->d:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    const/4 v1, 0x1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v2, 0x41200000    # 10.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    iput-boolean v1, p0, Lcom/netease/nr/biz/polymeric/PolymericLayout;->e:Z

    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-gez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/netease/nr/biz/polymeric/PolymericLayout;->f:Z

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/netease/nr/biz/polymeric/PolymericLayout;->h:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/netease/nr/biz/polymeric/PolymericLayout;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/polymeric/PolymericLayout;->a:Lcom/netease/nr/biz/polymeric/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/polymeric/PolymericLayout;->a:Lcom/netease/nr/biz/polymeric/e;

    iget-boolean v1, p0, Lcom/netease/nr/biz/polymeric/PolymericLayout;->f:Z

    invoke-interface {v0, p0, v1}, Lcom/netease/nr/biz/polymeric/e;->a(Lcom/netease/nr/biz/polymeric/PolymericLayout;Z)V

    :cond_0
    return v2
.end method
