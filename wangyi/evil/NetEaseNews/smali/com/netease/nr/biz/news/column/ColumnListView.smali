.class public Lcom/netease/nr/biz/news/column/ColumnListView;
.super Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;

# interfaces
.implements Lcom/netease/nr/base/view/ax;
.implements Lcom/netease/nr/base/view/m;


# instance fields
.field private a:Lcom/netease/nr/base/view/k;

.field private b:F

.field private c:Lcom/netease/nr/biz/news/column/a;

.field private d:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/netease/nr/biz/news/column/ColumnListView;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/netease/nr/biz/news/column/ColumnListView;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/netease/nr/biz/news/column/ColumnListView;->b()V

    return-void
.end method

.method private b()V
    .locals 2

    new-instance v0, Lcom/netease/nr/base/view/k;

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/column/ColumnListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/netease/nr/base/view/k;-><init>(Landroid/content/Context;Landroid/widget/ListView;)V

    iput-object v0, p0, Lcom/netease/nr/biz/news/column/ColumnListView;->a:Lcom/netease/nr/base/view/k;

    iget-object v0, p0, Lcom/netease/nr/biz/news/column/ColumnListView;->a:Lcom/netease/nr/base/view/k;

    invoke-virtual {v0, p0}, Lcom/netease/nr/base/view/k;->a(Lcom/netease/nr/base/view/m;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/netease/nr/base/view/l;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/news/column/ColumnListView;->a:Lcom/netease/nr/base/view/k;

    invoke-virtual {v0, p1}, Lcom/netease/nr/base/view/k;->a(Lcom/netease/nr/base/view/l;)V

    return-void
.end method

.method public a(Lcom/netease/nr/biz/news/column/a;)V
    .locals 1

    iput-object p1, p0, Lcom/netease/nr/biz/news/column/ColumnListView;->c:Lcom/netease/nr/biz/news/column/a;

    iget-object v0, p0, Lcom/netease/nr/biz/news/column/ColumnListView;->c:Lcom/netease/nr/biz/news/column/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/column/ColumnListView;->c:Lcom/netease/nr/biz/news/column/a;

    invoke-virtual {v0}, Lcom/netease/nr/biz/news/column/a;->e()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/netease/nr/biz/news/column/ColumnListView;->b:F

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/nr/biz/news/column/ColumnListView;->b:F

    goto :goto_0
.end method

.method public a(Landroid/view/MotionEvent;Z)Z
    .locals 4

    iget-wide v0, p0, Lcom/netease/nr/biz/news/column/ColumnListView;->d:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/biz/news/column/ColumnListView;->c:Lcom/netease/nr/biz/news/column/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/column/ColumnListView;->c:Lcom/netease/nr/biz/news/column/a;

    invoke-virtual {v0}, Lcom/netease/nr/biz/news/column/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/column/ColumnListView;->a:Lcom/netease/nr/base/view/k;

    invoke-virtual {v0}, Lcom/netease/nr/base/view/k;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/netease/nr/biz/news/column/ColumnListView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/column/ColumnListView;->getFirstVisiblePosition()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/netease/nr/biz/news/column/ColumnListView;->a:Lcom/netease/nr/base/view/k;

    invoke-virtual {v1}, Lcom/netease/nr/base/view/k;->c()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/netease/nr/biz/news/column/ColumnListView;->c:Lcom/netease/nr/biz/news/column/a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netease/nr/biz/news/column/ColumnListView;->c:Lcom/netease/nr/biz/news/column/a;

    invoke-virtual {v1}, Lcom/netease/nr/biz/news/column/a;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netease/nr/biz/news/column/ColumnListView;->a:Lcom/netease/nr/base/view/k;

    invoke-virtual {v1, p1}, Lcom/netease/nr/base/view/k;->b(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/netease/nr/biz/news/column/ColumnListView;->d:J

    iget-object v1, p0, Lcom/netease/nr/biz/news/column/ColumnListView;->c:Lcom/netease/nr/biz/news/column/a;

    invoke-virtual {v1, v0}, Lcom/netease/nr/biz/news/column/a;->a(Z)V

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;->onMeasure(II)V

    iget-object v0, p0, Lcom/netease/nr/biz/news/column/ColumnListView;->a:Lcom/netease/nr/base/view/k;

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/column/ColumnListView;->getMeasuredWidth()I

    move-result v1

    iput v1, v0, Lcom/netease/nr/base/view/k;->b:I

    iget-object v0, p0, Lcom/netease/nr/biz/news/column/ColumnListView;->a:Lcom/netease/nr/base/view/k;

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/column/ColumnListView;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/netease/nr/biz/news/column/ColumnListView;->b:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/netease/nr/base/view/k;->a:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/news/column/ColumnListView;->c:Lcom/netease/nr/biz/news/column/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/column/ColumnListView;->c:Lcom/netease/nr/biz/news/column/a;

    invoke-virtual {v0}, Lcom/netease/nr/biz/news/column/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/column/ColumnListView;->a:Lcom/netease/nr/base/view/k;

    invoke-virtual {v0, p1}, Lcom/netease/nr/base/view/k;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method
