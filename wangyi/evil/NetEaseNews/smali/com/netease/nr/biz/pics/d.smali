.class Lcom/netease/nr/biz/pics/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/pics/b;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/pics/b;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/pics/d;->a:Lcom/netease/nr/biz/pics/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/pics/d;->a:Lcom/netease/nr/biz/pics/b;

    invoke-static {v0}, Lcom/netease/nr/biz/pics/b;->b(Lcom/netease/nr/biz/pics/b;)Lcom/netease/nr/biz/i/a/a/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/pics/d;->a:Lcom/netease/nr/biz/pics/b;

    invoke-static {v0}, Lcom/netease/nr/biz/pics/b;->b(Lcom/netease/nr/biz/pics/b;)Lcom/netease/nr/biz/i/a/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/biz/i/a/a/d;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/pics/d;->a:Lcom/netease/nr/biz/pics/b;

    invoke-static {v0}, Lcom/netease/nr/biz/pics/b;->b(Lcom/netease/nr/biz/pics/b;)Lcom/netease/nr/biz/i/a/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/biz/i/a/a/d;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/pics/d;->a:Lcom/netease/nr/biz/pics/b;

    invoke-static {v0}, Lcom/netease/nr/biz/pics/b;->b(Lcom/netease/nr/biz/pics/b;)Lcom/netease/nr/biz/i/a/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/biz/i/a/a/d;->b()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
