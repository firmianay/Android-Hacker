.class public Lcom/netease/nr/base/view/SearchListView;
.super Landroid/widget/FrameLayout;


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Landroid/widget/ListView;

.field private c:Landroid/widget/TextView;

.field private d:Lcom/netease/nr/base/view/MyImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

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


# virtual methods
.method public a()V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/netease/nr/base/view/SearchListView;->a:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/nr/base/view/SearchListView;->b:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/nr/base/view/SearchListView;->d:Lcom/netease/nr/base/view/MyImageView;

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/MyImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/nr/base/view/SearchListView;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/nr/base/view/SearchListView;->c:Landroid/widget/TextView;

    const v1, 0x7f0b00ca

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public a(Landroid/widget/BaseAdapter;)V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/netease/nr/base/view/SearchListView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/nr/base/view/SearchListView;->d:Lcom/netease/nr/base/view/MyImageView;

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/MyImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/nr/base/view/SearchListView;->b:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/nr/base/view/SearchListView;->a:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/nr/base/view/SearchListView;->a:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/netease/nr/base/view/SearchListView;->a:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/nr/base/view/SearchListView;->b:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/nr/base/view/SearchListView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/nr/base/view/SearchListView;->d:Lcom/netease/nr/base/view/MyImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/MyImageView;->setVisibility(I)V

    return-void
.end method

.method public b(Landroid/widget/BaseAdapter;)V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/netease/nr/base/view/SearchListView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/nr/base/view/SearchListView;->d:Lcom/netease/nr/base/view/MyImageView;

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/MyImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/nr/base/view/SearchListView;->a:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/nr/base/view/SearchListView;->b:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/nr/base/view/SearchListView;->b:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/view/SearchListView;->b:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/SearchListView;->b:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

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

.method public c()V
    .locals 3

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/netease/nr/base/view/SearchListView;->a:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/nr/base/view/SearchListView;->b:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/nr/base/view/SearchListView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/nr/base/view/SearchListView;->d:Lcom/netease/nr/base/view/MyImageView;

    invoke-virtual {v0, v2}, Lcom/netease/nr/base/view/MyImageView;->setVisibility(I)V

    return-void
.end method

.method public d()Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/view/SearchListView;->b:Landroid/widget/ListView;

    return-object v0
.end method

.method public e()Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/view/SearchListView;->a:Landroid/widget/ListView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 8

    const v7, 0x7f03009c

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, -0x2

    const/16 v3, 0xa

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/netease/nr/base/view/SearchListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v7, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/netease/nr/base/view/SearchListView;->a:Landroid/widget/ListView;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v7, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/netease/nr/base/view/SearchListView;->b:Landroid/widget/ListView;

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/nr/base/view/SearchListView;->c:Landroid/widget/TextView;

    new-instance v0, Lcom/netease/nr/base/view/MyImageView;

    invoke-direct {v0, v1}, Lcom/netease/nr/base/view/MyImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/nr/base/view/SearchListView;->d:Lcom/netease/nr/base/view/MyImageView;

    iget-object v0, p0, Lcom/netease/nr/base/view/SearchListView;->d:Lcom/netease/nr/base/view/MyImageView;

    const v1, 0x7f020234

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/MyImageView;->setImageResource(I)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/netease/nr/base/view/SearchListView;->a:Landroid/widget/ListView;

    invoke-virtual {p0, v1, v0}, Lcom/netease/nr/base/view/SearchListView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/netease/nr/base/view/SearchListView;->b:Landroid/widget/ListView;

    invoke-virtual {p0, v1, v0}, Lcom/netease/nr/base/view/SearchListView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/netease/nr/base/view/SearchListView;->c:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcom/netease/nr/base/view/SearchListView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 v1, 0x78

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/netease/nr/base/view/SearchListView;->d:Lcom/netease/nr/base/view/MyImageView;

    invoke-virtual {p0, v1, v0}, Lcom/netease/nr/base/view/SearchListView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/netease/nr/base/view/SearchListView;->c:Landroid/widget/TextView;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/netease/nr/base/view/SearchListView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/nr/base/view/SearchListView;->d:Lcom/netease/nr/base/view/MyImageView;

    invoke-virtual {v0, v6}, Lcom/netease/nr/base/view/MyImageView;->setVisibility(I)V

    return-void
.end method
