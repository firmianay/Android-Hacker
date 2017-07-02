.class public Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;
.super Landroid/widget/ListView;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private a:Z

.field private b:I

.field private c:Landroid/widget/AbsListView$OnScrollListener;

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;->b()V

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;I)I
    .locals 0

    iput p1, p0, Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;->b:I

    return p1
.end method

.method static synthetic a(Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;->a:Z

    return p1
.end method

.method private b()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;->setCacheColorHint(I)V

    invoke-virtual {p0, p0}, Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method private c()V
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;->getChildCount()I

    move-result v2

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method a()V
    .locals 7

    const/4 v1, 0x0

    iget v3, p0, Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;->b:I

    const/4 v0, -0x1

    if-ne v3, v0, :cond_1

    invoke-direct {p0}, Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;->c()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;->getFirstVisiblePosition()I

    move-result v4

    if-lt v3, v4, :cond_2

    invoke-virtual {p0}, Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;->getLastVisiblePosition()I

    move-result v0

    if-le v3, v0, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;->c()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;->getChildCount()I

    move-result v5

    move v2, v1

    :goto_1
    if-ge v2, v5, :cond_0

    invoke-virtual {p0, v2}, Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    add-int v0, v2, v4

    if-ne v0, v3, :cond_4

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v6, v0}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;->d:Z

    return-void
.end method

.method public hasFocus()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;->d:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/ListView;->hasFocus()Z

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

.method public hasWindowFocus()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;->d:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/ListView;->hasWindowFocus()Z

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

.method public isFocused()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;->d:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/ListView;->isFocused()Z

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

.method public isInTouchMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;->d:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;->a:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/ListView;->onLayout(ZIIII)V

    invoke-virtual {p0}, Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;->a()V

    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    invoke-virtual {p0}, Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;->a()V

    iget-object v0, p0, Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;->c:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;->c:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;->c:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;->c:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_0
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    if-ne p1, p0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;->c:Landroid/widget/AbsListView$OnScrollListener;

    goto :goto_0
.end method
