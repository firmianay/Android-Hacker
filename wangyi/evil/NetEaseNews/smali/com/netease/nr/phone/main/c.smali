.class public Lcom/netease/nr/phone/main/c;
.super Lcom/netease/nr/base/fragment/e;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/netease/nr/base/view/aw;
.implements Lcom/netease/nr/biz/f/d;
.implements Lcom/netease/nr/biz/news/column/e;


# instance fields
.field private a:Lcom/netease/nr/biz/news/column/a;

.field private e:Lcom/netease/nr/base/view/GuideContainer;

.field private f:Lcom/netease/nr/base/view/MySlidingDrawer;

.field private g:Lcom/netease/nr/base/view/ViewPagerForSlider;

.field private h:Z

.field private i:I

.field private j:Lcom/netease/util/fragment/g;

.field private k:Z

.field private l:Landroid/database/DataSetObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/netease/nr/base/fragment/e;-><init>()V

    new-instance v0, Lcom/netease/nr/phone/main/d;

    invoke-direct {v0, p0}, Lcom/netease/nr/phone/main/d;-><init>(Lcom/netease/nr/phone/main/c;)V

    iput-object v0, p0, Lcom/netease/nr/phone/main/c;->l:Landroid/database/DataSetObserver;

    return-void
.end method

.method private a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const v0, 0x7f030041

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/netease/nr/phone/main/c;)Lcom/netease/util/fragment/g;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/phone/main/c;->j:Lcom/netease/util/fragment/g;

    return-object v0
.end method

.method static synthetic b(Lcom/netease/nr/phone/main/c;)Lcom/netease/nr/biz/news/column/a;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/phone/main/c;->a:Lcom/netease/nr/biz/news/column/a;

    return-object v0
.end method

.method static synthetic c(Lcom/netease/nr/phone/main/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/nr/phone/main/c;->j()V

    return-void
.end method

.method private j()V
    .locals 8

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v0, "param_source"

    const-string v1, "source_media"

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netease/nr/phone/main/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {p0}, Lcom/netease/nr/phone/main/c;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/nr/phone/main/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/netease/nr/biz/h/d;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/netease/nr/biz/h/d;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const-class v6, Lcom/netease/nr/base/activity/BaseActivity;

    invoke-static/range {v0 .. v6}, Lcom/netease/util/fragment/ab;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private k()V
    .locals 4

    const v3, 0x7f0c02cc

    iget-boolean v0, p0, Lcom/netease/nr/phone/main/c;->k:Z

    invoke-virtual {p0}, Lcom/netease/nr/phone/main/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "\u9605\u8bfb"

    invoke-static {v1, v2}, Lcom/netease/nr/biz/news/column/g;->l(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/netease/nr/phone/main/c;->k:Z

    iget-boolean v1, p0, Lcom/netease/nr/phone/main/c;->k:Z

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/phone/main/c;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/netease/nr/phone/main/c;->k:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected a(Lcom/netease/util/j/a;Landroid/view/View;)V
    .locals 4

    const v3, 0x7f0201c5

    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/fragment/e;->a(Lcom/netease/util/j/a;Landroid/view/View;)V

    const v0, 0x7f0c006e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/ViewPagerForSlider;

    const v1, 0x7f070014

    invoke-virtual {p1, v0, v1}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    invoke-virtual {v0, p1}, Lcom/netease/nr/base/view/ViewPagerForSlider;->a(Lcom/netease/util/j/a;)V

    iget-object v1, p0, Lcom/netease/nr/phone/main/c;->a:Lcom/netease/nr/biz/news/column/a;

    invoke-virtual {v1}, Lcom/netease/nr/biz/news/column/a;->a()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Landroid/widget/BaseAdapter;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    const v1, 0x7f0c0070

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/ViewPagerForSlider;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/phone/main/NewsPagerIndicator;

    const v1, 0x7f0c0022

    invoke-virtual {v0, v1}, Lcom/netease/nr/phone/main/NewsPagerIndicator;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f020114

    invoke-virtual {p1, v1, v2}, Lcom/netease/util/j/a;->a(Landroid/widget/ImageView;I)V

    const v1, 0x7f0c00e7

    invoke-virtual {v0, v1}, Lcom/netease/nr/phone/main/NewsPagerIndicator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f020118

    invoke-virtual {p1, v0, v1}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    const v1, 0x7f020117

    invoke-virtual {p1, v0, v1}, Lcom/netease/util/j/a;->a(Landroid/widget/ImageView;I)V

    const v0, 0x7f0c02cc

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p1, v0, v3}, Lcom/netease/util/j/a;->a(Landroid/widget/ImageView;I)V

    const v0, 0x7f0c00e6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p1, v0, v3}, Lcom/netease/util/j/a;->a(Landroid/widget/ImageView;I)V

    const v0, 0x7f0c00c2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0700cc

    invoke-virtual {p1, v0, v1}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    const v0, 0x7f0c00c4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0202ad

    invoke-virtual {p1, v0, v1}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    const v0, 0x7f0c00c3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0202a9

    invoke-virtual {p1, v0, v1}, Lcom/netease/util/j/a;->a(Landroid/widget/ImageView;I)V

    const v0, 0x7f0c00c5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0202a8

    invoke-virtual {p1, v0, v1}, Lcom/netease/util/j/a;->a(Landroid/widget/ImageView;I)V

    const v0, 0x7f0c00c6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0700ce

    invoke-virtual {p1, v0, v1}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    return-void
.end method

.method protected a(Lcom/netease/util/j/a;Lcom/netease/nr/base/view/a;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/fragment/e;->a(Lcom/netease/util/j/a;Lcom/netease/nr/base/view/a;)V

    invoke-virtual {p2}, Lcom/netease/nr/base/view/a;->d()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/nr/phone/main/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f02033e

    invoke-virtual {p1, v1, v2}, Lcom/netease/util/j/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/netease/nr/base/view/a;->d(I)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0c0081

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v2, 0x7f02003c

    invoke-virtual {p1, v0, v2}, Lcom/netease/util/j/a;->a(Landroid/widget/ImageView;I)V

    const v0, 0x7f0c008e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0201c6

    invoke-virtual {p1, v0, v1}, Lcom/netease/util/j/a;->a(Landroid/widget/ImageView;I)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0

    return-void
.end method

.method public a(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netease/nr/phone/main/c;->e:Lcom/netease/nr/base/view/GuideContainer;

    const-string v1, "guide_navi_key"

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/GuideContainer;->a(Ljava/lang/String;)Z

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/phone/main/c;->e:Lcom/netease/nr/base/view/GuideContainer;

    const-string v1, "guide_slide_column_key"

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/GuideContainer;->a(Ljava/lang/String;)Z

    return-void
.end method

.method public a_(II)V
    .locals 2

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/netease/nr/phone/main/c;->g:Lcom/netease/nr/base/view/ViewPagerForSlider;

    invoke-virtual {v0}, Lcom/netease/nr/base/view/ViewPagerForSlider;->getCurrentItem()I

    move-result v0

    if-eq v0, p2, :cond_0

    iget-object v0, p0, Lcom/netease/nr/phone/main/c;->g:Lcom/netease/nr/base/view/ViewPagerForSlider;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/netease/nr/base/view/ViewPagerForSlider;->setCurrentItem(IZ)V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/netease/nr/phone/main/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/phone/main/MainActivity;

    invoke-virtual {v0}, Lcom/netease/nr/phone/main/MainActivity;->i()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x186a2 -> :sswitch_0
    .end sparse-switch
.end method

.method public b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const/4 v3, -0x1

    const v0, 0x7f0300f9

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, p1, p2}, Lcom/netease/nr/phone/main/c;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-object v0
.end method

.method public b(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/netease/nr/phone/main/c;->a()Lcom/netease/nr/base/view/a;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/netease/nr/phone/main/c;->h:Z

    if-nez v0, :cond_1

    iput p1, p0, Lcom/netease/nr/phone/main/c;->i:I

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/netease/nr/phone/main/c;->i:I

    iget-object v0, p0, Lcom/netease/nr/phone/main/c;->g:Lcom/netease/nr/base/view/ViewPagerForSlider;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/netease/nr/base/view/ViewPagerForSlider;->setCurrentItem(IZ)V

    iget-object v0, p0, Lcom/netease/nr/phone/main/c;->g:Lcom/netease/nr/base/view/ViewPagerForSlider;

    const v1, 0x7f0c0070

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/ViewPagerForSlider;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/ba;

    invoke-interface {v0}, Lcom/netease/nr/base/view/ba;->b()V

    goto :goto_0
.end method

.method public b(Z)V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 2

    invoke-virtual {p0}, Lcom/netease/nr/phone/main/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/phone/main/MainActivity;

    invoke-virtual {v0}, Lcom/netease/nr/phone/main/MainActivity;->h()V

    iget-object v0, p0, Lcom/netease/nr/phone/main/c;->e:Lcom/netease/nr/base/view/GuideContainer;

    const-string v1, "guide_navi_key"

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/GuideContainer;->a(Ljava/lang/String;)Z

    return-void
.end method

.method public c(Z)V
    .locals 0

    return-void
.end method

.method public e()I
    .locals 1

    const v0, 0x7f0c02d8

    return v0
.end method

.method public i_()V
    .locals 1

    invoke-super {p0}, Lcom/netease/nr/base/fragment/e;->i_()V

    iget-object v0, p0, Lcom/netease/nr/phone/main/c;->j:Lcom/netease/util/fragment/g;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/phone/main/c;->j:Lcom/netease/util/fragment/g;

    invoke-virtual {v0}, Lcom/netease/util/fragment/g;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/netease/nr/base/view/i;

    invoke-interface {v0}, Lcom/netease/nr/base/view/i;->i_()V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcom/netease/nr/base/fragment/e;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/netease/nr/phone/main/c;->z()V

    invoke-virtual {p0}, Lcom/netease/nr/phone/main/c;->a()Lcom/netease/nr/base/view/a;

    move-result-object v0

    const v1, 0x7f02027f

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/a;->b(I)V

    invoke-virtual {v0, v2}, Lcom/netease/nr/base/view/a;->c(Z)V

    invoke-virtual {v0, v2}, Lcom/netease/nr/base/view/a;->d(Z)V

    const v1, 0x7f030042

    invoke-static {v0, v1}, Lcom/netease/nr/base/view/a;->a(Lcom/netease/nr/base/view/a;I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/netease/nr/base/view/a;->a(ILandroid/view/View;)V

    const v1, 0x7f0b0024

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/a;->c(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/netease/nr/phone/main/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u9605\u8bfb"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/netease/nr/biz/news/column/g;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/netease/nr/phone/main/c;->k()V

    invoke-direct {p0}, Lcom/netease/nr/phone/main/c;->j()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0c00e4
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/netease/nr/base/fragment/e;->onCreate(Landroid/os/Bundle;)V

    sget-object v0, Lcom/netease/nr/base/c/a;->a:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/netease/nr/base/c/a;->b:Ljava/util/Map;

    sget-object v2, Lcom/netease/nr/base/c/a;->a:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/netease/nr/phone/main/c;->a(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netease/nr/phone/main/c;->u()V

    new-instance v0, Lcom/netease/nr/biz/news/column/a;

    invoke-virtual {p0}, Lcom/netease/nr/phone/main/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/netease/nr/biz/news/column/a;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/netease/nr/phone/main/c;->a:Lcom/netease/nr/biz/news/column/a;

    iget-object v0, p0, Lcom/netease/nr/phone/main/c;->a:Lcom/netease/nr/biz/news/column/a;

    invoke-virtual {v0, p0}, Lcom/netease/nr/biz/news/column/a;->a(Lcom/netease/nr/biz/news/column/e;)V

    iget-object v0, p0, Lcom/netease/nr/phone/main/c;->a:Lcom/netease/nr/biz/news/column/a;

    iget-object v1, p0, Lcom/netease/nr/phone/main/c;->l:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/news/column/a;->a(Landroid/database/DataSetObserver;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/netease/nr/base/fragment/e;->onDestroy()V

    iget-object v0, p0, Lcom/netease/nr/phone/main/c;->a:Lcom/netease/nr/biz/news/column/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/phone/main/c;->a:Lcom/netease/nr/biz/news/column/a;

    invoke-virtual {v0}, Lcom/netease/nr/biz/news/column/a;->b()V

    iget-object v0, p0, Lcom/netease/nr/phone/main/c;->a:Lcom/netease/nr/biz/news/column/a;

    iget-object v1, p0, Lcom/netease/nr/phone/main/c;->l:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/news/column/a;->b(Landroid/database/DataSetObserver;)V

    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/netease/nr/base/fragment/e;->onDestroyView()V

    invoke-virtual {p0}, Lcom/netease/nr/phone/main/c;->A()V

    iget-object v0, p0, Lcom/netease/nr/phone/main/c;->f:Lcom/netease/nr/base/view/MySlidingDrawer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/phone/main/c;->f:Lcom/netease/nr/base/view/MySlidingDrawer;

    invoke-virtual {v0, p0}, Lcom/netease/nr/base/view/MySlidingDrawer;->b(Lcom/netease/nr/base/view/aw;)V

    iget-object v0, p0, Lcom/netease/nr/phone/main/c;->f:Lcom/netease/nr/base/view/MySlidingDrawer;

    iget-object v1, p0, Lcom/netease/nr/phone/main/c;->g:Lcom/netease/nr/base/view/ViewPagerForSlider;

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/MySlidingDrawer;->b(Lcom/netease/nr/base/view/ax;)V

    iput-object v2, p0, Lcom/netease/nr/phone/main/c;->f:Lcom/netease/nr/base/view/MySlidingDrawer;

    :cond_0
    iput-object v2, p0, Lcom/netease/nr/phone/main/c;->g:Lcom/netease/nr/base/view/ViewPagerForSlider;

    iget-object v0, p0, Lcom/netease/nr/phone/main/c;->j:Lcom/netease/util/fragment/g;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/netease/nr/phone/main/h;

    iget-object v1, p0, Lcom/netease/nr/phone/main/c;->j:Lcom/netease/util/fragment/g;

    invoke-direct {v0, p0, v1}, Lcom/netease/nr/phone/main/h;-><init>(Lcom/netease/nr/phone/main/c;Lcom/netease/util/fragment/g;)V

    iput-object v0, p0, Lcom/netease/nr/phone/main/c;->j:Lcom/netease/util/fragment/g;

    :cond_1
    iput-object v2, p0, Lcom/netease/nr/phone/main/c;->e:Lcom/netease/nr/base/view/GuideContainer;

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/netease/nr/base/fragment/e;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/nr/phone/main/c;->h:Z

    return-void
.end method

.method public onResume()V
    .locals 7

    const/4 v6, 0x1

    const/4 v1, -0x1

    const/16 v5, 0x8

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/netease/nr/base/fragment/e;->onResume()V

    iput-boolean v6, p0, Lcom/netease/nr/phone/main/c;->h:Z

    iget v0, p0, Lcom/netease/nr/phone/main/c;->i:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/netease/nr/phone/main/c;->i:I

    iput v1, p0, Lcom/netease/nr/phone/main/c;->i:I

    invoke-virtual {p0, v0}, Lcom/netease/nr/phone/main/c;->b(I)V

    :cond_0
    invoke-direct {p0}, Lcom/netease/nr/phone/main/c;->k()V

    invoke-virtual {p0}, Lcom/netease/nr/phone/main/c;->a()Lcom/netease/nr/base/view/a;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/netease/nr/base/view/a;->d(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const v1, 0x7f0c008e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netease/nr/phone/main/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/phone/main/MainActivity;

    invoke-virtual {v0}, Lcom/netease/nr/phone/main/MainActivity;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/netease/nr/phone/main/c;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c00c2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/nr/phone/main/c;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0c006e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/netease/nr/phone/main/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "show_subscribe_guide_key"

    invoke-static {v2, v3, v6}, Lcom/netease/util/g/a;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0c00c3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const v1, 0x7f0c02cc

    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/fragment/e;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x7f0c02ca

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/GuideContainer;

    iput-object v0, p0, Lcom/netease/nr/phone/main/c;->e:Lcom/netease/nr/base/view/GuideContainer;

    invoke-virtual {p0}, Lcom/netease/nr/phone/main/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/util/i/b;->k(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_0
    iget-boolean v0, p0, Lcom/netease/nr/phone/main/c;->k:Z

    if-eqz v0, :cond_4

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/netease/nr/phone/main/c;->e:Lcom/netease/nr/base/view/GuideContainer;

    invoke-virtual {v0, p0}, Lcom/netease/nr/base/view/GuideContainer;->a(Lcom/netease/nr/biz/f/d;)V

    const v0, 0x7f0c006e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/ViewPagerForSlider;

    iput-object v0, p0, Lcom/netease/nr/phone/main/c;->g:Lcom/netease/nr/base/view/ViewPagerForSlider;

    iget-object v0, p0, Lcom/netease/nr/phone/main/c;->j:Lcom/netease/util/fragment/g;

    if-nez v0, :cond_1

    new-instance v0, Lcom/netease/nr/phone/main/e;

    invoke-virtual {p0}, Lcom/netease/nr/phone/main/c;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/netease/nr/phone/main/e;-><init>(Lcom/netease/nr/phone/main/c;Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lcom/netease/nr/phone/main/c;->j:Lcom/netease/util/fragment/g;

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/phone/main/c;->g:Lcom/netease/nr/base/view/ViewPagerForSlider;

    iget-object v1, p0, Lcom/netease/nr/phone/main/c;->j:Lcom/netease/util/fragment/g;

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/ViewPagerForSlider;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    invoke-virtual {p0}, Lcom/netease/nr/phone/main/c;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c00c4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Lcom/netease/nr/phone/main/f;

    invoke-direct {v1, p0}, Lcom/netease/nr/phone/main/f;-><init>(Lcom/netease/nr/phone/main/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    invoke-virtual {p0}, Lcom/netease/nr/phone/main/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0c02c1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/MySlidingDrawer;

    iput-object v0, p0, Lcom/netease/nr/phone/main/c;->f:Lcom/netease/nr/base/view/MySlidingDrawer;

    iget-object v0, p0, Lcom/netease/nr/phone/main/c;->f:Lcom/netease/nr/base/view/MySlidingDrawer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netease/nr/phone/main/c;->f:Lcom/netease/nr/base/view/MySlidingDrawer;

    invoke-virtual {v0, p0}, Lcom/netease/nr/base/view/MySlidingDrawer;->a(Lcom/netease/nr/base/view/aw;)V

    iget-object v0, p0, Lcom/netease/nr/phone/main/c;->f:Lcom/netease/nr/base/view/MySlidingDrawer;

    iget-object v1, p0, Lcom/netease/nr/phone/main/c;->g:Lcom/netease/nr/base/view/ViewPagerForSlider;

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/MySlidingDrawer;->a(Lcom/netease/nr/base/view/ax;)V

    :cond_3
    iget-object v0, p0, Lcom/netease/nr/phone/main/c;->g:Lcom/netease/nr/base/view/ViewPagerForSlider;

    const v1, 0x7f0c00e7

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/ViewPagerForSlider;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/netease/nr/phone/main/g;

    invoke-direct {v1, p0}, Lcom/netease/nr/phone/main/g;-><init>(Lcom/netease/nr/phone/main/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_4
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public q_()Z
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/phone/main/c;->f:Lcom/netease/nr/base/view/MySlidingDrawer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/phone/main/c;->f:Lcom/netease/nr/base/view/MySlidingDrawer;

    invoke-virtual {v0}, Lcom/netease/nr/base/view/MySlidingDrawer;->h()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
