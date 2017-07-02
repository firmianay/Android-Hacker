.class public Lcom/netease/nr/base/fragment/f;
.super Lcom/netease/util/fragment/k;

# interfaces
.implements Lcom/netease/nr/base/view/i;


# instance fields
.field private a:Lcom/netease/nr/base/view/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/netease/util/fragment/k;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    invoke-static {p1, p2}, Lcom/netease/nr/base/view/a;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/view/ViewGroup;)Lcom/netease/nr/base/view/TabletContainer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public a()Lcom/netease/nr/base/view/a;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/fragment/f;->a:Lcom/netease/nr/base/view/a;

    return-object v0
.end method

.method public a(ILandroid/support/v4/content/Loader;Ljava/util/Map;)V
    .locals 3

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b0038

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/netease/nr/base/view/az;->a(Landroid/content/Context;II)Lcom/netease/nr/base/view/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/base/view/az;->show()V

    return-void
.end method

.method public synthetic a(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/netease/nr/base/fragment/f;->c(Landroid/support/v4/content/Loader;Ljava/util/Map;)V

    return-void
.end method

.method public a(Landroid/support/v4/content/Loader;Ljava/util/Map;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/netease/util/fragment/k;->b(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V

    invoke-static {p2}, Lcom/netease/util/e/c;->a(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/netease/nr/base/fragment/f;->b(Landroid/support/v4/content/Loader;Ljava/util/Map;)V

    invoke-virtual {p0, p1}, Lcom/netease/nr/base/fragment/f;->d(Landroid/support/v4/content/Loader;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p2}, Lcom/netease/util/e/c;->b(Ljava/util/Map;)I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/netease/nr/base/fragment/f;->a(ILandroid/support/v4/content/Loader;Ljava/util/Map;)V

    goto :goto_0
.end method

.method protected a(Lcom/netease/util/j/a;Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/netease/util/fragment/k;->a(Lcom/netease/util/j/a;Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/f;->a()Lcom/netease/nr/base/view/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/netease/nr/base/fragment/f;->a(Lcom/netease/util/j/a;Lcom/netease/nr/base/view/a;)V

    :cond_0
    return-void
.end method

.method protected a(Lcom/netease/util/j/a;Lcom/netease/nr/base/view/a;)V
    .locals 0

    invoke-virtual {p2, p1}, Lcom/netease/nr/base/view/a;->a(Lcom/netease/util/j/a;)V

    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    array-length v1, p3

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_0

    aget-object v2, p3, v0

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p2, p1}, Lcom/netease/nr/base/c/a;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/fragment/f;->a:Lcom/netease/nr/base/view/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/fragment/f;->a:Lcom/netease/nr/base/view/a;

    invoke-virtual {v0, p1, p2}, Lcom/netease/nr/base/view/a;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/netease/util/fragment/k;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public a_(II)V
    .locals 0

    return-void
.end method

.method public b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public b(ILandroid/support/v4/content/Loader;Ljava/util/Map;)V
    .locals 3

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b0038

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/netease/nr/base/view/az;->a(Landroid/content/Context;II)Lcom/netease/nr/base/view/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/base/view/az;->show()V

    return-void
.end method

.method public synthetic b(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/netease/nr/base/fragment/f;->a(Landroid/support/v4/content/Loader;Ljava/util/Map;)V

    return-void
.end method

.method public b(Landroid/support/v4/content/Loader;Ljava/util/Map;)V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 1

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    return-void
.end method

.method public c(Landroid/support/v4/content/Loader;Ljava/util/Map;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/netease/util/fragment/k;->a(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V

    invoke-static {p2}, Lcom/netease/util/e/c;->a(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/netease/nr/base/fragment/f;->d(Landroid/support/v4/content/Loader;Ljava/util/Map;)V

    invoke-virtual {p0, p1}, Lcom/netease/nr/base/fragment/f;->d(Landroid/support/v4/content/Loader;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p2}, Lcom/netease/util/e/c;->b(Ljava/util/Map;)I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/netease/nr/base/fragment/f;->b(ILandroid/support/v4/content/Loader;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public d(Landroid/support/v4/content/Loader;Ljava/util/Map;)V
    .locals 0

    return-void
.end method

.method public i_()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/netease/util/fragment/k;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    const/4 v7, 0x3

    const/4 v6, -0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p3}, Lcom/netease/nr/base/fragment/f;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {p0, p2}, Lcom/netease/nr/base/fragment/f;->a(Landroid/view/ViewGroup;)Lcom/netease/nr/base/view/TabletContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0, p3}, Lcom/netease/nr/base/fragment/f;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/TabletContainer;->addView(Landroid/view/View;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/netease/nr/base/fragment/f;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/netease/nr/base/view/a;

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/netease/nr/base/view/a;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/netease/nr/base/fragment/f;->a:Lcom/netease/nr/base/view/a;

    iget-object v0, p0, Lcom/netease/nr/base/fragment/f;->a:Lcom/netease/nr/base/view/a;

    invoke-virtual {v0, p0}, Lcom/netease/nr/base/view/a;->a(Lcom/netease/nr/base/view/i;)V

    const v0, 0x7f03000a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/netease/nr/base/fragment/f;->a(Landroid/view/ViewGroup;)Lcom/netease/nr/base/view/TabletContainer;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, p1, v3, p3}, Lcom/netease/nr/base/fragment/f;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    :goto_1
    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/f;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f080000

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xa

    invoke-virtual {v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v2, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v1, :cond_2

    if-eqz v3, :cond_4

    invoke-virtual {v3, v1}, Lcom/netease/nr/base/view/TabletContainer;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    :cond_2
    :goto_2
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const v3, 0x7f020012

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v3, v7, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1, v0, p3}, Lcom/netease/nr/base/fragment/f;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    goto :goto_1

    :cond_4
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v3, v7, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Lcom/netease/util/fragment/k;->onDestroyView()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/nr/base/fragment/f;->a:Lcom/netease/nr/base/view/a;

    return-void
.end method
