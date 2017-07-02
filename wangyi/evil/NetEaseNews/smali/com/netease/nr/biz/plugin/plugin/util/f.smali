.class public Lcom/netease/nr/biz/plugin/plugin/util/f;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private a:Ljava/util/List;

.field private b:Landroid/view/LayoutInflater;

.field private c:Lcom/netease/util/j/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netease/util/j/a;Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/f;->b:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/netease/nr/biz/plugin/plugin/util/f;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/netease/nr/biz/plugin/plugin/util/f;->c:Lcom/netease/util/j/a;

    return-void
.end method


# virtual methods
.method public a(I)Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/f;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;

    return-object v0
.end method

.method protected a(Lcom/netease/util/j/a;Landroid/view/View;Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;)V
    .locals 0

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/f;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/plugin/plugin/util/f;->a(I)Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/plugin/plugin/util/f;->a(I)Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;

    move-result-object v0

    iget v0, v0, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->d:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v1, 0x0

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/f;->b:Landroid/view/LayoutInflater;

    const v2, 0x7f030014

    invoke-virtual {v0, v2, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v2, Lcom/netease/nr/biz/plugin/plugin/util/h;

    invoke-direct {v2, p0, v1}, Lcom/netease/nr/biz/plugin/plugin/util/h;-><init>(Lcom/netease/nr/biz/plugin/plugin/util/f;Lcom/netease/nr/biz/plugin/plugin/util/g;)V

    const v0, 0x7f0c001c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v2, v0}, Lcom/netease/nr/biz/plugin/plugin/util/h;->a(Lcom/netease/nr/biz/plugin/plugin/util/h;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    const v0, 0x7f0c001d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v2, v0}, Lcom/netease/nr/biz/plugin/plugin/util/h;->a(Lcom/netease/nr/biz/plugin/plugin/util/h;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v0, 0x7f0c001f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-static {v2, v0}, Lcom/netease/nr/biz/plugin/plugin/util/h;->a(Lcom/netease/nr/biz/plugin/plugin/util/h;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/plugin/plugin/util/f;->a(I)Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/plugin/plugin/util/h;

    invoke-static {v0}, Lcom/netease/nr/biz/plugin/plugin/util/h;->a(Lcom/netease/nr/biz/plugin/plugin/util/h;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {v0}, Lcom/netease/nr/biz/plugin/plugin/util/h;->a(Lcom/netease/nr/biz/plugin/plugin/util/h;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {v0}, Lcom/netease/nr/biz/plugin/plugin/util/h;->b(Lcom/netease/nr/biz/plugin/plugin/util/h;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {v0}, Lcom/netease/nr/biz/plugin/plugin/util/h;->b(Lcom/netease/nr/biz/plugin/plugin/util/h;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-static {v0}, Lcom/netease/nr/biz/plugin/plugin/util/h;->b(Lcom/netease/nr/biz/plugin/plugin/util/h;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/netease/nr/biz/plugin/plugin/util/h;->c(Lcom/netease/nr/biz/plugin/plugin/util/h;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-static {v0}, Lcom/netease/nr/biz/plugin/plugin/util/h;->c(Lcom/netease/nr/biz/plugin/plugin/util/h;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-boolean v3, v2, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->h:Z

    if-nez v3, :cond_1

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->h:Z

    iget-object v3, p0, Lcom/netease/nr/biz/plugin/plugin/util/f;->b:Landroid/view/LayoutInflater;

    invoke-static {v0}, Lcom/netease/nr/biz/plugin/plugin/util/h;->c(Lcom/netease/nr/biz/plugin/plugin/util/h;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->a(Landroid/view/LayoutInflater;Landroid/widget/FrameLayout;)Landroid/view/View;

    move-result-object v3

    iput-object v3, v2, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->g:Landroid/view/View;

    :cond_1
    iget-object v3, v2, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->g:Landroid/view/View;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    if-eqz v3, :cond_4

    invoke-static {v0}, Lcom/netease/nr/biz/plugin/plugin/util/h;->c(Lcom/netease/nr/biz/plugin/plugin/util/h;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_4
    invoke-static {v0}, Lcom/netease/nr/biz/plugin/plugin/util/h;->a(Lcom/netease/nr/biz/plugin/plugin/util/h;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v0}, Lcom/netease/nr/biz/plugin/plugin/util/h;->b(Lcom/netease/nr/biz/plugin/plugin/util/h;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {v0}, Lcom/netease/nr/biz/plugin/plugin/util/h;->c(Lcom/netease/nr/biz/plugin/plugin/util/h;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v2, v1, v3, v4}, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->a(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/FrameLayout;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {v0}, Lcom/netease/nr/biz/plugin/plugin/util/h;->b(Lcom/netease/nr/biz/plugin/plugin/util/h;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v3, v2, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/netease/nr/biz/plugin/plugin/util/f;->c:Lcom/netease/util/j/a;

    invoke-static {v0}, Lcom/netease/nr/biz/plugin/plugin/util/h;->a(Lcom/netease/nr/biz/plugin/plugin/util/h;)Landroid/widget/ImageView;

    move-result-object v3

    iget v4, v2, Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;->c:I

    invoke-virtual {v1, v3, v4}, Lcom/netease/util/j/a;->a(Landroid/widget/ImageView;I)V

    iget-object v1, p0, Lcom/netease/nr/biz/plugin/plugin/util/f;->c:Lcom/netease/util/j/a;

    invoke-static {v0}, Lcom/netease/nr/biz/plugin/plugin/util/h;->b(Lcom/netease/nr/biz/plugin/plugin/util/h;)Landroid/widget/TextView;

    move-result-object v3

    const v4, 0x7f07002f

    invoke-virtual {v1, v3, v4}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    iget-object v1, p0, Lcom/netease/nr/biz/plugin/plugin/util/f;->c:Lcom/netease/util/j/a;

    invoke-virtual {p0, v1, p2, v2}, Lcom/netease/nr/biz/plugin/plugin/util/f;->a(Lcom/netease/util/j/a;Landroid/view/View;Lcom/netease/nr/biz/plugin/plugin/util/NRPlugin;)V

    invoke-static {v0}, Lcom/netease/nr/biz/plugin/plugin/util/h;->c(Lcom/netease/nr/biz/plugin/plugin/util/h;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_0
    return-object p2

    :cond_5
    invoke-static {v0}, Lcom/netease/nr/biz/plugin/plugin/util/h;->c(Lcom/netease/nr/biz/plugin/plugin/util/h;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method
