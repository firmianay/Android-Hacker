.class Lcom/netease/nr/phone/main/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/netease/nr/phone/main/MainActivity;


# direct methods
.method constructor <init>(Lcom/netease/nr/phone/main/MainActivity;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/phone/main/a;->b:Lcom/netease/nr/phone/main/MainActivity;

    iput-object p2, p0, Lcom/netease/nr/phone/main/a;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/phone/main/a;->a:Landroid/view/View;

    const v1, 0x7f0c0009

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/ad/AdImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/ad/AdImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

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
