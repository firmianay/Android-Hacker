.class public Lcom/netease/nr/base/view/draggrid/DragLayer;
.super Landroid/widget/FrameLayout;


# instance fields
.field private a:Lcom/netease/nr/base/view/draggrid/c;

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/nr/base/view/draggrid/DragLayer;->b:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/netease/nr/base/view/draggrid/c;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/base/view/draggrid/DragLayer;->a:Lcom/netease/nr/base/view/draggrid/c;

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/view/draggrid/DragLayer;->a:Lcom/netease/nr/base/view/draggrid/c;

    invoke-virtual {v0, p1}, Lcom/netease/nr/base/view/draggrid/c;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/view/draggrid/DragLayer;->a:Lcom/netease/nr/base/view/draggrid/c;

    invoke-virtual {v0, p1, p2}, Lcom/netease/nr/base/view/draggrid/c;->a(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/view/draggrid/DragLayer;->a:Lcom/netease/nr/base/view/draggrid/c;

    invoke-virtual {v0, p1}, Lcom/netease/nr/base/view/draggrid/c;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/view/draggrid/DragLayer;->a:Lcom/netease/nr/base/view/draggrid/c;

    invoke-virtual {v0, p1}, Lcom/netease/nr/base/view/draggrid/c;->b(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
