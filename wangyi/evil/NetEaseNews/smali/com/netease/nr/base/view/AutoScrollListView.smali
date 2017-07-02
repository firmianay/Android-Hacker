.class public Lcom/netease/nr/base/view/AutoScrollListView;
.super Landroid/widget/FrameLayout;


# instance fields
.field private a:Lcom/netease/nr/base/view/AutoScrollView;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/base/view/AutoScrollListView;->a:Lcom/netease/nr/base/view/AutoScrollView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/base/view/AutoScrollListView;->a:Lcom/netease/nr/base/view/AutoScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/AutoScrollView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/netease/nr/base/view/AutoScrollListView;->a:Lcom/netease/nr/base/view/AutoScrollView;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/AutoScrollView;->setSelector(I)V

    iget-object v0, p0, Lcom/netease/nr/base/view/AutoScrollListView;->a:Lcom/netease/nr/base/view/AutoScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/AutoScrollView;->setVerticalScrollBarEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 6

    const/4 v5, 0x0

    const/16 v4, 0x8

    const/4 v2, -0x1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/netease/nr/base/view/AutoScrollListView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    new-instance v2, Lcom/netease/nr/base/view/AutoScrollView;

    invoke-direct {v2, v0}, Lcom/netease/nr/base/view/AutoScrollView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/netease/nr/base/view/AutoScrollListView;->a:Lcom/netease/nr/base/view/AutoScrollView;

    iget-object v2, p0, Lcom/netease/nr/base/view/AutoScrollListView;->a:Lcom/netease/nr/base/view/AutoScrollView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/netease/nr/base/view/AutoScrollView;->setVisibility(I)V

    iget-object v2, p0, Lcom/netease/nr/base/view/AutoScrollListView;->a:Lcom/netease/nr/base/view/AutoScrollView;

    invoke-virtual {p0, v2, v1}, Lcom/netease/nr/base/view/AutoScrollListView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030011

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/netease/nr/base/view/AutoScrollListView;->b:Landroid/view/View;

    iget-object v2, p0, Lcom/netease/nr/base/view/AutoScrollListView;->b:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/netease/nr/base/view/AutoScrollListView;->b:Landroid/view/View;

    invoke-virtual {p0, v2, v1}, Lcom/netease/nr/base/view/AutoScrollListView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f03000d

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netease/nr/base/view/AutoScrollListView;->c:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/netease/nr/base/view/AutoScrollListView;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/nr/base/view/AutoScrollListView;->c:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/netease/nr/base/view/AutoScrollListView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/netease/nr/base/view/AutoScrollListView;->a()V

    return-void
.end method
