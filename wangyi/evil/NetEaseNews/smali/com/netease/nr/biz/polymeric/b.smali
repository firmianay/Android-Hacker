.class Lcom/netease/nr/biz/polymeric/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/polymeric/a;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/polymeric/a;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/polymeric/b;->a:Lcom/netease/nr/biz/polymeric/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/polymeric/b;->a:Lcom/netease/nr/biz/polymeric/a;

    invoke-static {v0}, Lcom/netease/nr/biz/polymeric/a;->a(Lcom/netease/nr/biz/polymeric/a;)Lcom/netease/nr/biz/polymeric/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/polymeric/b;->a:Lcom/netease/nr/biz/polymeric/a;

    invoke-static {v0}, Lcom/netease/nr/biz/polymeric/a;->a(Lcom/netease/nr/biz/polymeric/a;)Lcom/netease/nr/biz/polymeric/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/nr/biz/polymeric/d;->a()V

    :cond_0
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
