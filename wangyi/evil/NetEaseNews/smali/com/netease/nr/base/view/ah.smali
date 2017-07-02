.class Lcom/netease/nr/base/view/ah;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/netease/nr/base/view/Indicator;


# direct methods
.method constructor <init>(Lcom/netease/nr/base/view/Indicator;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/base/view/ah;->a:Lcom/netease/nr/base/view/Indicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/netease/nr/base/view/ah;->a:Lcom/netease/nr/base/view/Indicator;

    invoke-static {v0}, Lcom/netease/nr/base/view/Indicator;->a(Lcom/netease/nr/base/view/Indicator;)Landroid/view/animation/Animation;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/ah;->a:Lcom/netease/nr/base/view/Indicator;

    iget-object v1, p0, Lcom/netease/nr/base/view/ah;->a:Lcom/netease/nr/base/view/Indicator;

    invoke-virtual {v1}, Lcom/netease/nr/base/view/Indicator;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040020

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/nr/base/view/Indicator;->a(Lcom/netease/nr/base/view/Indicator;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/netease/nr/base/view/ah;->a:Lcom/netease/nr/base/view/Indicator;

    invoke-static {v0}, Lcom/netease/nr/base/view/Indicator;->a(Lcom/netease/nr/base/view/Indicator;)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/base/view/ah;->a:Lcom/netease/nr/base/view/Indicator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/base/view/ah;->a:Lcom/netease/nr/base/view/Indicator;

    iget-object v1, p0, Lcom/netease/nr/base/view/ah;->a:Lcom/netease/nr/base/view/Indicator;

    invoke-static {v1}, Lcom/netease/nr/base/view/Indicator;->a(Lcom/netease/nr/base/view/Indicator;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/Indicator;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
