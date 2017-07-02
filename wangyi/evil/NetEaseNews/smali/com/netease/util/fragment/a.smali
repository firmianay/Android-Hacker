.class public Lcom/netease/util/fragment/a;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;


# instance fields
.field public a:Lcom/netease/util/fragment/FragmentActivity;

.field private b:Z

.field private c:F

.field private d:F

.field private e:F

.field private f:J


# direct methods
.method public constructor <init>(Lcom/netease/util/fragment/FragmentActivity;)V
    .locals 3

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/netease/util/fragment/a;->f:J

    iput-object p1, p0, Lcom/netease/util/fragment/a;->a:Lcom/netease/util/fragment/FragmentActivity;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    const/high16 v1, 0x42480000    # 50.0f

    invoke-virtual {p1}, Lcom/netease/util/fragment/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/netease/util/fragment/a;->d:F

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    int-to-float v0, v0

    iput v0, p0, Lcom/netease/util/fragment/a;->e:F

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 5

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/netease/util/fragment/a;->a:Lcom/netease/util/fragment/FragmentActivity;

    invoke-virtual {v0}, Lcom/netease/util/fragment/FragmentActivity;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/netease/util/fragment/a;->f:J

    iget-wide v0, p0, Lcom/netease/util/fragment/a;->f:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/netease/util/fragment/a;->b:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/util/fragment/a;->c:F

    return v4

    :cond_0
    move-wide v0, v2

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/netease/util/fragment/a;->b:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/netease/util/fragment/a;->d:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x3f400000    # 0.75f

    mul-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    iget v1, p0, Lcom/netease/util/fragment/a;->e:F

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/netease/util/fragment/a;->a:Lcom/netease/util/fragment/FragmentActivity;

    invoke-virtual {v0}, Lcom/netease/util/fragment/FragmentActivity;->f()Z

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/netease/util/fragment/a;->a:Lcom/netease/util/fragment/FragmentActivity;

    invoke-virtual {v0}, Lcom/netease/util/fragment/FragmentActivity;->e()Z

    move-result v0

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/netease/util/fragment/a;->b:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/netease/util/fragment/a;->c:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/netease/util/fragment/a;->c:F

    mul-float/2addr v0, p3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/netease/util/fragment/a;->b:Z

    :cond_0
    iput p3, p0, Lcom/netease/util/fragment/a;->c:F

    iget-boolean v0, p0, Lcom/netease/util/fragment/a;->b:Z

    if-eqz v0, :cond_1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v3, 0x3f400000    # 0.75f

    mul-float/2addr v0, v3

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_3

    :goto_1
    iput-boolean v1, p0, Lcom/netease/util/fragment/a;->b:Z

    :cond_1
    return v2

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method
