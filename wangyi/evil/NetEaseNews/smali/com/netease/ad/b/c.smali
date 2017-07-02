.class Lcom/netease/ad/b/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/netease/ad/b/a;


# direct methods
.method constructor <init>(Lcom/netease/ad/b/a;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/ad/b/c;->b:Lcom/netease/ad/b/a;

    iput-object p2, p0, Lcom/netease/ad/b/c;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/ad/b/c;->b:Lcom/netease/ad/b/a;

    invoke-static {v0}, Lcom/netease/ad/b/a;->a(Lcom/netease/ad/b/a;)Lcom/netease/ad/b/j;

    move-result-object v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0xc8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/netease/ad/b/c;->b:Lcom/netease/ad/b/a;

    iget-object v1, p0, Lcom/netease/ad/b/c;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/netease/ad/b/a;->a(Landroid/view/View;)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
