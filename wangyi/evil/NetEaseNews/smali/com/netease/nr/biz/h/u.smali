.class Lcom/netease/nr/biz/h/u;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/h/t;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/h/t;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/h/u;->a:Lcom/netease/nr/biz/h/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/h/u;->a:Lcom/netease/nr/biz/h/t;

    invoke-static {v0}, Lcom/netease/nr/biz/h/t;->a(Lcom/netease/nr/biz/h/t;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
