.class public abstract Lcom/netease/nr/base/view/Indicator;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Landroid/view/animation/Animation;

.field private f:Landroid/os/Handler;

.field private g:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x12c

    iput v0, p0, Lcom/netease/nr/base/view/Indicator;->a:I

    iput v1, p0, Lcom/netease/nr/base/view/Indicator;->b:I

    iput v1, p0, Lcom/netease/nr/base/view/Indicator;->c:I

    iput v1, p0, Lcom/netease/nr/base/view/Indicator;->d:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/base/view/Indicator;->f:Landroid/os/Handler;

    new-instance v0, Lcom/netease/nr/base/view/ah;

    invoke-direct {v0, p0}, Lcom/netease/nr/base/view/ah;-><init>(Lcom/netease/nr/base/view/Indicator;)V

    iput-object v0, p0, Lcom/netease/nr/base/view/Indicator;->g:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Lcom/netease/nr/base/view/Indicator;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x12c

    iput v0, p0, Lcom/netease/nr/base/view/Indicator;->a:I

    iput v1, p0, Lcom/netease/nr/base/view/Indicator;->b:I

    iput v1, p0, Lcom/netease/nr/base/view/Indicator;->c:I

    iput v1, p0, Lcom/netease/nr/base/view/Indicator;->d:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/base/view/Indicator;->f:Landroid/os/Handler;

    new-instance v0, Lcom/netease/nr/base/view/ah;

    invoke-direct {v0, p0}, Lcom/netease/nr/base/view/ah;-><init>(Lcom/netease/nr/base/view/Indicator;)V

    iput-object v0, p0, Lcom/netease/nr/base/view/Indicator;->g:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Lcom/netease/nr/base/view/Indicator;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v0, 0x12c

    iput v0, p0, Lcom/netease/nr/base/view/Indicator;->a:I

    iput v1, p0, Lcom/netease/nr/base/view/Indicator;->b:I

    iput v1, p0, Lcom/netease/nr/base/view/Indicator;->c:I

    iput v1, p0, Lcom/netease/nr/base/view/Indicator;->d:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/base/view/Indicator;->f:Landroid/os/Handler;

    new-instance v0, Lcom/netease/nr/base/view/ah;

    invoke-direct {v0, p0}, Lcom/netease/nr/base/view/ah;-><init>(Lcom/netease/nr/base/view/Indicator;)V

    iput-object v0, p0, Lcom/netease/nr/base/view/Indicator;->g:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Lcom/netease/nr/base/view/Indicator;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/base/view/Indicator;)Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/view/Indicator;->e:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic a(Lcom/netease/nr/base/view/Indicator;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/base/view/Indicator;->e:Landroid/view/animation/Animation;

    return-object p1
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netease/nr/base/view/Indicator;->setFocusable(Z)V

    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected a(Lcom/netease/util/j/a;)V
    .locals 0

    return-void
.end method

.method protected abstract b()V
.end method

.method public b(I)V
    .locals 4

    iget v0, p0, Lcom/netease/nr/base/view/Indicator;->b:I

    if-eq p1, v0, :cond_1

    iput p1, p0, Lcom/netease/nr/base/view/Indicator;->b:I

    invoke-virtual {p0}, Lcom/netease/nr/base/view/Indicator;->a()V

    iget-object v0, p0, Lcom/netease/nr/base/view/Indicator;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netease/nr/base/view/Indicator;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget v0, p0, Lcom/netease/nr/base/view/Indicator;->d:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/Indicator;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netease/nr/base/view/Indicator;->g:Ljava/lang/Runnable;

    iget v2, p0, Lcom/netease/nr/base/view/Indicator;->d:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/netease/nr/base/view/Indicator;->c:I

    :cond_1
    return-void
.end method

.method public final b(Lcom/netease/util/j/a;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/netease/nr/base/view/Indicator;->a(Lcom/netease/util/j/a;)V

    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/netease/nr/base/view/Indicator;->b:I

    return v0
.end method

.method public c(I)V
    .locals 4

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/netease/nr/base/view/Indicator;->b:I

    if-lt p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/netease/nr/base/view/Indicator;->c:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/netease/nr/base/view/Indicator;->c:I

    invoke-virtual {p0}, Lcom/netease/nr/base/view/Indicator;->b()V

    iget-object v0, p0, Lcom/netease/nr/base/view/Indicator;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netease/nr/base/view/Indicator;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget v0, p0, Lcom/netease/nr/base/view/Indicator;->d:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/Indicator;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netease/nr/base/view/Indicator;->g:Ljava/lang/Runnable;

    iget v2, p0, Lcom/netease/nr/base/view/Indicator;->d:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/netease/nr/base/view/Indicator;->c:I

    return v0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/netease/nr/base/view/Indicator;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
