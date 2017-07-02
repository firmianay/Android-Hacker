.class public Lcom/netease/nr/phone/main/i;
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

    new-instance v0, Lcom/netease/nr/phone/main/j;

    invoke-direct {v0, p0}, Lcom/netease/nr/phone/main/j;-><init>(Lcom/netease/nr/phone/main/i;)V

    iput-object v0, p0, Lcom/netease/nr/phone/main/i;->l:Landroid/database/DataSetObserver;

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/phone/main/i;)Lcom/netease/util/fragment/g;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/phone/main/i;->j:Lcom/netease/util/fragment/g;

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/netease/nr/phone/main/i;->j:Lcom/netease/util/fragment/g;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :try_start_0
    iget-object v1, p0, Lcom/netease/nr/phone/main/i;->a:Lcom/netease/nr/biz/news/column/a;

    invoke-virtual {v1, p1}, Lcom/netease/nr/biz/news/column/a;->a(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/netease/nr/phone/main/i;->j:Lcom/netease/util/fragment/g;

    invoke-virtual {v1}, Lcom/netease/util/fragment/g;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/netease/nr/phone/main/i;->g:Lcom/netease/nr/base/view/ViewPagerForSlider;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/netease/nr/base/view/ViewPagerForSlider;->setCurrentItem(IZ)V

    :cond_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/netease/nr/phone/main/i;)Lcom/netease/nr/biz/news/column/a;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/phone/main/i;->a:Lcom/netease/nr/biz/news/column/a;

    return-object v0
.end method

.method private j()V
    .locals 4

    const v3, 0x7f0c02cc

    iget-boolean v0, p0, Lcom/netease/nr/phone/main/i;->k:Z

    invoke-virtual {p0}, Lcom/netease/nr/phone/main/i;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "\u7cbe\u9009"

    invoke-static {v1, v2}, Lcom/netease/nr/biz/news/column/g;->l(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/netease/nr/phone/main/i;->k:Z

    iget-boolean v1, p0, Lcom/netease/nr/phone/main/i;->k:Z

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/phone/main/i;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/netease/nr/phone/main/i;->k:Z

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

    iget-object v1, p0, Lcom/netease/nr/phone/main/i;->a:Lcom/netease/nr/biz/news/column/a;

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

    return-void
.end method

.method protected a(Lcom/netease/util/j/a;Lcom/netease/nr/base/view/a;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/fragment/e;->a(Lcom/netease/util/j/a;Lcom/netease/nr/base/view/a;)V

    invoke-virtual {p2}, Lcom/netease/nr/base/view/a;->d()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/nr/phone/main/i;->getActivity()Landroid/support/v4/app/FragmentActivity;

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

    iget-object v0, p0, Lcom/netease/nr/phone/main/i;->e:Lcom/netease/nr/base/view/GuideContainer;

    const-string v1, "guide_navi_key"

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/GuideContainer;->a(Ljava/lang/String;)Z

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/phone/main/i;->e:Lcom/netease/nr/base/view/GuideContainer;

    const-string v1, "guide_slide_column_key"

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/GuideContainer;->a(Ljava/lang/String;)Z

    return-void
.end method

.method public a_(II)V
    .locals 8

    const/4 v4, 0x0

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/netease/nr/phone/main/i;->g:Lcom/netease/nr/base/view/ViewPagerForSlider;

    invoke-virtual {v0}, Lcom/netease/nr/base/view/ViewPagerForSlider;->getCurrentItem()I

    move-result v0

    if-eq v0, p2, :cond_0

    iget-object v0, p0, Lcom/netease/nr/phone/main/i;->g:Lcom/netease/nr/base/view/ViewPagerForSlider;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/netease/nr/base/view/ViewPagerForSlider;->setCurrentItem(IZ)V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/netease/nr/phone/main/i;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/phone/main/MainActivity;

    invoke-virtual {v0}, Lcom/netease/nr/phone/main/MainActivity;->i()V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/netease/nr/phone/main/i;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {p0}, Lcom/netease/nr/phone/main/i;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/nr/phone/main/i;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/netease/nr/biz/plugin/c/m;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SelectCityFragment"

    const-class v6, Lcom/netease/nr/base/activity/BaseActivity;

    move-object v5, v4

    invoke-static/range {v0 .. v6}, Lcom/netease/util/fragment/ab;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x186a2 -> :sswitch_0
    .end sparse-switch
.end method

.method public b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0300f9

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public b(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/netease/nr/phone/main/i;->a()Lcom/netease/nr/base/view/a;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/netease/nr/phone/main/i;->h:Z

    if-nez v0, :cond_1

    iput p1, p0, Lcom/netease/nr/phone/main/i;->i:I

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/netease/nr/phone/main/i;->i:I

    iget-object v0, p0, Lcom/netease/nr/phone/main/i;->g:Lcom/netease/nr/base/view/ViewPagerForSlider;

    iget-object v1, p0, Lcom/netease/nr/phone/main/i;->j:Lcom/netease/util/fragment/g;

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/ViewPagerForSlider;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v0, p0, Lcom/netease/nr/phone/main/i;->g:Lcom/netease/nr/base/view/ViewPagerForSlider;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/netease/nr/base/view/ViewPagerForSlider;->setCurrentItem(IZ)V

    iget-object v0, p0, Lcom/netease/nr/phone/main/i;->g:Lcom/netease/nr/base/view/ViewPagerForSlider;

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

    invoke-virtual {p0}, Lcom/netease/nr/phone/main/i;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/phone/main/MainActivity;

    invoke-virtual {v0}, Lcom/netease/nr/phone/main/MainActivity;->h()V

    iget-object v0, p0, Lcom/netease/nr/phone/main/i;->e:Lcom/netease/nr/base/view/GuideContainer;

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

    iget-object v0, p0, Lcom/netease/nr/phone/main/i;->j:Lcom/netease/util/fragment/g;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/phone/main/i;->j:Lcom/netease/util/fragment/g;

    invoke-virtual {v0}, Lcom/netease/util/fragment/g;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/netease/nr/base/view/i;

    invoke-interface {v0}, Lcom/netease/nr/base/view/i;->i_()V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-super {p0, p1}, Lcom/netease/nr/base/fragment/e;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/netease/nr/phone/main/i;->z()V

    invoke-virtual {p0}, Lcom/netease/nr/phone/main/i;->a()Lcom/netease/nr/base/view/a;

    move-result-object v0

    const v1, 0x7f020140

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/a;->b(I)V

    invoke-virtual {v0, v3}, Lcom/netease/nr/base/view/a;->c(Z)V

    invoke-virtual {v0, v3}, Lcom/netease/nr/base/view/a;->d(Z)V

    const-string v1, ""

    const v2, 0x7f020003

    invoke-virtual {v0, v3, v1, v2}, Lcom/netease/nr/base/view/a;->a(ILjava/lang/String;I)V

    const v1, 0x7f030042

    invoke-static {v0, v1}, Lcom/netease/nr/base/view/a;->a(Lcom/netease/nr/base/view/a;I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/netease/nr/base/view/a;->a(ILandroid/view/View;)V

    invoke-virtual {v0, v3, v4}, Lcom/netease/nr/base/view/a;->a(IZ)V

    const v1, 0x7f0b0023

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/a;->c(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/netease/nr/phone/main/i;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u7cbe\u9009"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/netease/nr/biz/news/column/g;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/netease/nr/phone/main/i;->j()V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v0, "param_source"

    const-string v1, "source_columns"

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netease/nr/phone/main/i;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {p0}, Lcom/netease/nr/phone/main/i;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/nr/phone/main/i;->getActivity()Landroid/support/v4/app/FragmentActivity;

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

    goto :goto_0

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

    invoke-virtual {p0, v0, v1}, Lcom/netease/nr/phone/main/i;->a(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netease/nr/phone/main/i;->u()V

    new-instance v0, Lcom/netease/nr/biz/news/column/a;

    invoke-virtual {p0}, Lcom/netease/nr/phone/main/i;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netease/nr/biz/news/column/a;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/netease/nr/phone/main/i;->a:Lcom/netease/nr/biz/news/column/a;

    iget-object v0, p0, Lcom/netease/nr/phone/main/i;->a:Lcom/netease/nr/biz/news/column/a;

    invoke-virtual {v0, p0}, Lcom/netease/nr/biz/news/column/a;->a(Lcom/netease/nr/biz/news/column/e;)V

    iget-object v0, p0, Lcom/netease/nr/phone/main/i;->a:Lcom/netease/nr/biz/news/column/a;

    iget-object v1, p0, Lcom/netease/nr/phone/main/i;->l:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/news/column/a;->a(Landroid/database/DataSetObserver;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/netease/nr/base/fragment/e;->onDestroy()V

    iget-object v0, p0, Lcom/netease/nr/phone/main/i;->a:Lcom/netease/nr/biz/news/column/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/phone/main/i;->a:Lcom/netease/nr/biz/news/column/a;

    iget-object v1, p0, Lcom/netease/nr/phone/main/i;->l:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/news/column/a;->b(Landroid/database/DataSetObserver;)V

    iget-object v0, p0, Lcom/netease/nr/phone/main/i;->a:Lcom/netease/nr/biz/news/column/a;

    invoke-virtual {v0}, Lcom/netease/nr/biz/news/column/a;->b()V

    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/netease/nr/base/fragment/e;->onDestroyView()V

    invoke-virtual {p0}, Lcom/netease/nr/phone/main/i;->A()V

    iget-object v0, p0, Lcom/netease/nr/phone/main/i;->f:Lcom/netease/nr/base/view/MySlidingDrawer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/phone/main/i;->f:Lcom/netease/nr/base/view/MySlidingDrawer;

    invoke-virtual {v0, p0}, Lcom/netease/nr/base/view/MySlidingDrawer;->b(Lcom/netease/nr/base/view/aw;)V

    iget-object v0, p0, Lcom/netease/nr/phone/main/i;->f:Lcom/netease/nr/base/view/MySlidingDrawer;

    iget-object v1, p0, Lcom/netease/nr/phone/main/i;->g:Lcom/netease/nr/base/view/ViewPagerForSlider;

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/MySlidingDrawer;->b(Lcom/netease/nr/base/view/ax;)V

    iput-object v2, p0, Lcom/netease/nr/phone/main/i;->f:Lcom/netease/nr/base/view/MySlidingDrawer;

    :cond_0
    iput-object v2, p0, Lcom/netease/nr/phone/main/i;->g:Lcom/netease/nr/base/view/ViewPagerForSlider;

    iget-object v0, p0, Lcom/netease/nr/phone/main/i;->j:Lcom/netease/util/fragment/g;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/netease/nr/phone/main/m;

    iget-object v1, p0, Lcom/netease/nr/phone/main/i;->j:Lcom/netease/util/fragment/g;

    invoke-direct {v0, p0, v1}, Lcom/netease/nr/phone/main/m;-><init>(Lcom/netease/nr/phone/main/i;Lcom/netease/util/fragment/g;)V

    iput-object v0, p0, Lcom/netease/nr/phone/main/i;->j:Lcom/netease/util/fragment/g;

    :cond_1
    iput-object v2, p0, Lcom/netease/nr/phone/main/i;->e:Lcom/netease/nr/base/view/GuideContainer;

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/netease/nr/base/fragment/e;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/nr/phone/main/i;->h:Z

    return-void
.end method

.method public onResume()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-super {p0}, Lcom/netease/nr/base/fragment/e;->onResume()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/nr/phone/main/i;->h:Z

    iget v0, p0, Lcom/netease/nr/phone/main/i;->i:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/netease/nr/phone/main/i;->i:I

    iput v1, p0, Lcom/netease/nr/phone/main/i;->i:I

    invoke-virtual {p0, v0}, Lcom/netease/nr/phone/main/i;->b(I)V

    :cond_0
    invoke-direct {p0}, Lcom/netease/nr/phone/main/i;->j()V

    invoke-virtual {p0}, Lcom/netease/nr/phone/main/i;->a()Lcom/netease/nr/base/view/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/netease/nr/base/view/a;->d(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const v1, 0x7f0c008e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netease/nr/phone/main/i;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/phone/main/MainActivity;

    invoke-virtual {v0}, Lcom/netease/nr/phone/main/MainActivity;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/netease/nr/phone/main/i;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "news_column_tid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/netease/nr/phone/main/i;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "news_column_tid"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/netease/nr/phone/main/i;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    return-void

    :cond_3
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :catch_0
    move-exception v0

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

    iput-object v0, p0, Lcom/netease/nr/phone/main/i;->e:Lcom/netease/nr/base/view/GuideContainer;

    invoke-virtual {p0}, Lcom/netease/nr/phone/main/i;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/util/i/b;->k(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/netease/nr/phone/main/i;->e:Lcom/netease/nr/base/view/GuideContainer;

    invoke-virtual {v0}, Lcom/netease/nr/base/view/GuideContainer;->a()V

    :goto_0
    iget-boolean v0, p0, Lcom/netease/nr/phone/main/i;->k:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcom/netease/nr/phone/main/i;->e:Lcom/netease/nr/base/view/GuideContainer;

    invoke-virtual {v0, p0}, Lcom/netease/nr/base/view/GuideContainer;->a(Lcom/netease/nr/biz/f/d;)V

    const v0, 0x7f0c006e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/ViewPagerForSlider;

    iput-object v0, p0, Lcom/netease/nr/phone/main/i;->g:Lcom/netease/nr/base/view/ViewPagerForSlider;

    iget-object v0, p0, Lcom/netease/nr/phone/main/i;->j:Lcom/netease/util/fragment/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/nr/phone/main/k;

    invoke-virtual {p0}, Lcom/netease/nr/phone/main/i;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/netease/nr/phone/main/k;-><init>(Lcom/netease/nr/phone/main/i;Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lcom/netease/nr/phone/main/i;->j:Lcom/netease/util/fragment/g;

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/phone/main/i;->g:Lcom/netease/nr/base/view/ViewPagerForSlider;

    iget-object v1, p0, Lcom/netease/nr/phone/main/i;->j:Lcom/netease/util/fragment/g;

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/ViewPagerForSlider;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    invoke-virtual {p0}, Lcom/netease/nr/phone/main/i;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0c02c1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/MySlidingDrawer;

    iput-object v0, p0, Lcom/netease/nr/phone/main/i;->f:Lcom/netease/nr/base/view/MySlidingDrawer;

    iget-object v0, p0, Lcom/netease/nr/phone/main/i;->f:Lcom/netease/nr/base/view/MySlidingDrawer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/phone/main/i;->f:Lcom/netease/nr/base/view/MySlidingDrawer;

    invoke-virtual {v0, p0}, Lcom/netease/nr/base/view/MySlidingDrawer;->a(Lcom/netease/nr/base/view/aw;)V

    iget-object v0, p0, Lcom/netease/nr/phone/main/i;->f:Lcom/netease/nr/base/view/MySlidingDrawer;

    iget-object v1, p0, Lcom/netease/nr/phone/main/i;->g:Lcom/netease/nr/base/view/ViewPagerForSlider;

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/MySlidingDrawer;->a(Lcom/netease/nr/base/view/ax;)V

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/phone/main/i;->g:Lcom/netease/nr/base/view/ViewPagerForSlider;

    const v1, 0x7f0c00e7

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/ViewPagerForSlider;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/netease/nr/phone/main/l;

    invoke-direct {v1, p0}, Lcom/netease/nr/phone/main/l;-><init>(Lcom/netease/nr/phone/main/i;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/netease/nr/phone/main/i;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/util/i/b;->l(Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public q_()Z
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/phone/main/i;->f:Lcom/netease/nr/base/view/MySlidingDrawer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/phone/main/i;->f:Lcom/netease/nr/base/view/MySlidingDrawer;

    invoke-virtual {v0}, Lcom/netease/nr/base/view/MySlidingDrawer;->h()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
