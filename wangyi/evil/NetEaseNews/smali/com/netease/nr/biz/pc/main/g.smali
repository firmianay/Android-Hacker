.class final Lcom/netease/nr/biz/pc/main/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Landroid/widget/ViewFlipper;

.field final synthetic b:I


# direct methods
.method constructor <init>(Landroid/widget/ViewFlipper;I)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/pc/main/g;->a:Landroid/widget/ViewFlipper;

    iput p2, p0, Lcom/netease/nr/biz/pc/main/g;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/biz/pc/main/g;->a:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/netease/nr/biz/pc/main/g;->b:I

    mul-int/lit8 v1, v1, 0x2

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Lcom/netease/nr/biz/pc/main/g;->a:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->stopFlipping()V

    :cond_0
    iget-object v1, p0, Lcom/netease/nr/biz/pc/main/g;->a:Landroid/widget/ViewFlipper;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ViewFlipper;->setTag(Ljava/lang/Object;)V

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
