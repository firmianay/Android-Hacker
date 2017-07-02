.class Lcom/netease/nr/biz/plugin/c/w;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/plugin/c/m;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/plugin/c/m;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/plugin/c/w;->a:Lcom/netease/nr/biz/plugin/c/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/c/w;->a:Lcom/netease/nr/biz/plugin/c/m;

    invoke-static {v0}, Lcom/netease/nr/biz/plugin/c/m;->d(Lcom/netease/nr/biz/plugin/c/m;)Lcom/netease/nr/biz/plugin/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/biz/plugin/c/a;->getCount()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return v7

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/netease/nr/biz/plugin/c/w;->a:Lcom/netease/nr/biz/plugin/c/m;

    invoke-static {v0, v6}, Lcom/netease/nr/biz/plugin/c/m;->a(Lcom/netease/nr/biz/plugin/c/m;I)I

    goto :goto_0

    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v2, v0

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/c/w;->a:Lcom/netease/nr/biz/plugin/c/m;

    invoke-static {v0}, Lcom/netease/nr/biz/plugin/c/m;->g(Lcom/netease/nr/biz/plugin/c/m;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    move v0, v1

    :goto_1
    if-ge v0, v4, :cond_0

    iget-object v5, p0, Lcom/netease/nr/biz/plugin/c/w;->a:Lcom/netease/nr/biz/plugin/c/m;

    invoke-static {v5}, Lcom/netease/nr/biz/plugin/c/m;->g(Lcom/netease/nr/biz/plugin/c/m;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    invoke-virtual {v3, v5, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v2, p0, Lcom/netease/nr/biz/plugin/c/w;->a:Lcom/netease/nr/biz/plugin/c/m;

    invoke-static {v2}, Lcom/netease/nr/biz/plugin/c/m;->m(Lcom/netease/nr/biz/plugin/c/m;)I

    move-result v2

    if-eq v2, v0, :cond_0

    iget-object v2, p0, Lcom/netease/nr/biz/plugin/c/w;->a:Lcom/netease/nr/biz/plugin/c/m;

    invoke-static {v2, v0}, Lcom/netease/nr/biz/plugin/c/m;->a(Lcom/netease/nr/biz/plugin/c/m;I)I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/c/w;->a:Lcom/netease/nr/biz/plugin/c/m;

    invoke-static {v0}, Lcom/netease/nr/biz/plugin/c/m;->f(Lcom/netease/nr/biz/plugin/c/m;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/c/w;->a:Lcom/netease/nr/biz/plugin/c/m;

    invoke-static {v0}, Lcom/netease/nr/biz/plugin/c/m;->n(Lcom/netease/nr/biz/plugin/c/m;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/netease/nr/biz/plugin/c/m;->f()[Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v2, v0

    iget-object v2, p0, Lcom/netease/nr/biz/plugin/c/w;->a:Lcom/netease/nr/biz/plugin/c/m;

    invoke-static {v2}, Lcom/netease/nr/biz/plugin/c/m;->d(Lcom/netease/nr/biz/plugin/c/m;)Lcom/netease/nr/biz/plugin/c/a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/netease/nr/biz/plugin/c/a;->a(Ljava/lang/Object;)I

    move-result v2

    if-eq v2, v6, :cond_0

    iget-object v3, p0, Lcom/netease/nr/biz/plugin/c/w;->a:Lcom/netease/nr/biz/plugin/c/m;

    invoke-static {v3}, Lcom/netease/nr/biz/plugin/c/m;->o(Lcom/netease/nr/biz/plugin/c/m;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/c/w;->a:Lcom/netease/nr/biz/plugin/c/m;

    invoke-static {v0}, Lcom/netease/nr/biz/plugin/c/m;->f(Lcom/netease/nr/biz/plugin/c/m;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v3, p0, Lcom/netease/nr/biz/plugin/c/w;->a:Lcom/netease/nr/biz/plugin/c/m;

    invoke-static {v3}, Lcom/netease/nr/biz/plugin/c/m;->d(Lcom/netease/nr/biz/plugin/c/m;)Lcom/netease/nr/biz/plugin/c/a;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/netease/nr/biz/plugin/c/a;->a(I)I

    move-result v2

    iget-object v3, p0, Lcom/netease/nr/biz/plugin/c/w;->a:Lcom/netease/nr/biz/plugin/c/m;

    invoke-static {v3}, Lcom/netease/nr/biz/plugin/c/m;->f(Lcom/netease/nr/biz/plugin/c/m;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelection(I)V

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/c/w;->a:Lcom/netease/nr/biz/plugin/c/m;

    invoke-static {v0}, Lcom/netease/nr/biz/plugin/c/m;->n(Lcom/netease/nr/biz/plugin/c/m;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/c/w;->a:Lcom/netease/nr/biz/plugin/c/m;

    invoke-static {v0}, Lcom/netease/nr/biz/plugin/c/m;->n(Lcom/netease/nr/biz/plugin/c/m;)Landroid/widget/PopupWindow;

    move-result-object v0

    iget-object v2, p0, Lcom/netease/nr/biz/plugin/c/w;->a:Lcom/netease/nr/biz/plugin/c/m;

    invoke-static {v2}, Lcom/netease/nr/biz/plugin/c/m;->f(Lcom/netease/nr/biz/plugin/c/m;)Landroid/widget/ListView;

    move-result-object v2

    const/16 v3, 0x11

    invoke-virtual {v0, v2, v3, v1, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/netease/nr/biz/plugin/c/w;->a:Lcom/netease/nr/biz/plugin/c/m;

    invoke-static {v0}, Lcom/netease/nr/biz/plugin/c/m;->n(Lcom/netease/nr/biz/plugin/c/m;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
