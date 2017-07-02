.class public Lcom/netease/nr/base/view/FrendlyScrollView;
.super Landroid/widget/ScrollView;


# instance fields
.field private a:I

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/netease/nr/base/view/FrendlyScrollView;->a:I

    iput-boolean v0, p0, Lcom/netease/nr/base/view/FrendlyScrollView;->b:Z

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_1
    return v0

    :pswitch_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/nr/base/view/FrendlyScrollView;->b:Z

    goto :goto_0

    :pswitch_2
    iget-boolean v1, p0, Lcom/netease/nr/base/view/FrendlyScrollView;->b:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/netease/nr/base/view/FrendlyScrollView;->a:I

    invoke-virtual {p0, v0, v1}, Lcom/netease/nr/base/view/FrendlyScrollView;->smoothScrollTo(II)V

    iput-boolean v0, p0, Lcom/netease/nr/base/view/FrendlyScrollView;->b:Z

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    iput p2, p0, Lcom/netease/nr/base/view/FrendlyScrollView;->a:I

    return-void
.end method
