.class public Lcom/netease/nr/tablet/main/f;
.super Lcom/netease/nr/base/fragment/e;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/netease/nr/base/view/an;
.implements Lcom/netease/nr/base/view/aw;
.implements Lcom/netease/nr/base/view/l;
.implements Lcom/netease/nr/base/view/r;
.implements Lcom/netease/nr/biz/f/d;
.implements Lcom/netease/nr/biz/news/column/e;


# instance fields
.field private a:Lcom/netease/nr/biz/news/column/a;

.field private e:Landroid/view/View;

.field private f:Lcom/netease/nr/base/view/MySlidingDrawer;

.field private g:Z

.field private h:I

.field private i:Landroid/os/Handler;

.field private j:Z

.field private k:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/netease/nr/base/fragment/e;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/netease/nr/tablet/main/f;->h:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/tablet/main/f;->i:Landroid/os/Handler;

    new-instance v0, Lcom/netease/nr/tablet/main/g;

    invoke-direct {v0, p0}, Lcom/netease/nr/tablet/main/g;-><init>(Lcom/netease/nr/tablet/main/f;)V

    iput-object v0, p0, Lcom/netease/nr/tablet/main/f;->k:Ljava/lang/Runnable;

    return-void
.end method

.method private j()V
    .locals 4

    const v3, 0x7f0c00e6

    iget-boolean v0, p0, Lcom/netease/nr/tablet/main/f;->j:Z

    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "\u7cbe\u9009"

    invoke-static {v1, v2}, Lcom/netease/nr/biz/news/column/g;->l(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/netease/nr/tablet/main/f;->j:Z

    iget-boolean v1, p0, Lcom/netease/nr/tablet/main/f;->j:Z

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/f;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/netease/nr/tablet/main/f;->j:Z

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

.method private k()V
    .locals 8

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v0, "param_source"

    const-string v1, "source_columns"

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/f;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

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

.method private l()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/netease/nr/tablet/main/f;->e:Landroid/view/View;

    const v1, 0x7f0c00e3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/nr/tablet/main/f;->e:Landroid/view/View;

    const v1, 0x7f0c00e9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/f;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate()Z

    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/f;->a()Lcom/netease/nr/base/view/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netease/nr/base/view/a;->d()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f0b0023

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/f;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02033e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/view/LayoutInflater;)Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;
    .locals 3

    const v0, 0x7f030066

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/news/column/ColumnListView;

    iget-object v1, p0, Lcom/netease/nr/tablet/main/f;->a:Lcom/netease/nr/biz/news/column/a;

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/news/column/ColumnListView;->a(Lcom/netease/nr/biz/news/column/a;)V

    invoke-virtual {v0, p0}, Lcom/netease/nr/biz/news/column/ColumnListView;->a(Lcom/netease/nr/base/view/l;)V

    return-object v0
.end method

.method public a()Lcom/netease/nr/base/view/a;
    .locals 2

    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    instance-of v1, v0, Lcom/netease/nr/tablet/main/MainActivity;

    if-eqz v1, :cond_1

    :cond_0
    check-cast v0, Lcom/netease/nr/tablet/main/MainActivity;

    invoke-virtual {v0}, Lcom/netease/nr/tablet/main/MainActivity;->h()Lcom/netease/nr/base/view/a;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    invoke-super {p0}, Lcom/netease/nr/base/fragment/e;->a()Lcom/netease/nr/base/view/a;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/netease/nr/base/view/DropdownSpinner;I)V
    .locals 1

    const v0, 0x186a2

    invoke-virtual {p0, v0, p2}, Lcom/netease/nr/tablet/main/f;->a_(II)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 8

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/f;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v1, 0x7f0c00eb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const v0, 0x7f0c00ec

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v3

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-static {v1}, Lcom/netease/nr/biz/news/column/a;->a(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_6

    add-int/lit8 v1, v2, 0x1

    :goto_2
    move v2, v1

    goto :goto_1

    :cond_2
    move v2, v3

    :cond_3
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    move v1, v4

    :goto_3
    const v6, 0x7f0b00ee

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v3

    invoke-virtual {p0, v6, v4}, Lcom/netease/nr/tablet/main/f;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-lez v2, :cond_5

    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f04001f

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_4
    move v1, v3

    goto :goto_3

    :cond_5
    const/16 v0, 0x8

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f040020

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_6
    move v1, v2

    goto :goto_2
.end method

.method public a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    :cond_0
    return-void
.end method

.method public a(I)Z
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a_(II)V
    .locals 8

    const/4 v4, 0x0

    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "param_source"

    const-string v2, "source_columns"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "columnCId"

    iget-object v2, p0, Lcom/netease/nr/tablet/main/f;->a:Lcom/netease/nr/biz/news/column/a;

    invoke-virtual {v2, p2}, Lcom/netease/nr/biz/news/column/a;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netease/nr/tablet/main/f;->a:Lcom/netease/nr/biz/news/column/a;

    invoke-virtual {v1, p2, v0}, Lcom/netease/nr/biz/news/column/a;->a(ILandroid/os/Bundle;)Lcom/netease/util/fragment/i;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/netease/nr/tablet/main/f;->a(Lcom/netease/util/fragment/i;)V

    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/f;->a()Lcom/netease/nr/base/view/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/tablet/main/f;->a:Lcom/netease/nr/biz/news/column/a;

    invoke-virtual {v0, p2}, Lcom/netease/nr/biz/news/column/a;->c(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "T1351840906470"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/f;->a()Lcom/netease/nr/base/view/a;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Lcom/netease/nr/base/view/a;->a(IZ)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/f;->a()Lcom/netease/nr/base/view/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Lcom/netease/nr/base/view/a;->a(IZ)V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/tablet/main/MainActivity;

    invoke-virtual {v0}, Lcom/netease/nr/tablet/main/MainActivity;->l()V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/f;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

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

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x186a2 -> :sswitch_0
    .end sparse-switch
.end method

.method public b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f030102

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public b(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/f;->a()Lcom/netease/nr/base/view/a;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/netease/nr/tablet/main/f;->g:Z

    if-nez v0, :cond_1

    iput p1, p0, Lcom/netease/nr/tablet/main/f;->h:I

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/netease/nr/tablet/main/f;->h:I

    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/f;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c02d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/tablet/main/NeviContainer;

    invoke-virtual {v0}, Lcom/netease/nr/tablet/main/NeviContainer;->b()Lcom/netease/nr/base/view/DropdownSpinner;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/nr/base/view/DropdownSpinner;->d(I)V

    goto :goto_0
.end method

.method public b(II)V
    .locals 0

    return-void
.end method

.method public b(Z)V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 1

    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/f;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/tablet/main/MainActivity;

    invoke-virtual {v0}, Lcom/netease/nr/tablet/main/MainActivity;->i()V

    :cond_0
    return-void
.end method

.method public c(II)V
    .locals 3

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netease/nr/tablet/main/f;->a:Lcom/netease/nr/biz/news/column/a;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/f;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/tablet/main/f;->a:Lcom/netease/nr/biz/news/column/a;

    invoke-virtual {v0, p1, p2}, Lcom/netease/nr/biz/news/column/a;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/f;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c02d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/tablet/main/NeviContainer;

    invoke-virtual {v0}, Lcom/netease/nr/tablet/main/NeviContainer;->b()Lcom/netease/nr/base/view/DropdownSpinner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/base/view/DropdownSpinner;->c()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-lt v1, v2, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-gt v1, v2, :cond_0

    if-ne p1, v1, :cond_2

    invoke-virtual {v0, p2}, Lcom/netease/nr/base/view/DropdownSpinner;->d(I)V

    goto :goto_0

    :cond_2
    if-le p1, p2, :cond_3

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/DropdownSpinner;->d(I)V

    goto :goto_0

    :cond_3
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/DropdownSpinner;->d(I)V

    goto :goto_0
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

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/netease/nr/base/fragment/e;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/f;->a()Lcom/netease/nr/base/view/a;

    move-result-object v0

    const v1, 0x7f0b0023

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/a;->c(I)V

    const v1, 0x7f020140

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/a;->b(I)V

    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/f;->getView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0c02d7

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/tablet/main/NeviContainer;

    invoke-virtual {v0, v5}, Lcom/netease/nr/tablet/main/NeviContainer;->a(Z)V

    invoke-virtual {v0}, Lcom/netease/nr/tablet/main/NeviContainer;->b()Lcom/netease/nr/base/view/DropdownSpinner;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/netease/nr/base/view/DropdownSpinner;->a(Lcom/netease/nr/base/view/r;)V

    new-instance v3, Lcom/netease/nr/tablet/main/h;

    invoke-direct {v3, p0}, Lcom/netease/nr/tablet/main/h;-><init>(Lcom/netease/nr/tablet/main/f;)V

    invoke-virtual {v2, v3}, Lcom/netease/nr/base/view/DropdownSpinner;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/f;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v2}, Lcom/netease/nr/base/view/DropdownSpinner;->a()Lcom/netease/nr/base/view/ListPopupWindow;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/netease/nr/base/view/ListPopupWindow;->a(Lcom/netease/nr/base/view/an;)V

    const/high16 v4, 0x433e0000    # 190.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/netease/nr/base/view/ListPopupWindow;->e(I)V

    new-instance v2, Lcom/netease/nr/biz/news/column/a;

    invoke-direct {v2, v1, v5}, Lcom/netease/nr/biz/news/column/a;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/netease/nr/tablet/main/f;->a:Lcom/netease/nr/biz/news/column/a;

    iget-object v1, p0, Lcom/netease/nr/tablet/main/f;->a:Lcom/netease/nr/biz/news/column/a;

    invoke-virtual {v1, p0}, Lcom/netease/nr/biz/news/column/a;->a(Lcom/netease/nr/biz/news/column/e;)V

    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/f;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0c02d6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/nr/tablet/main/f;->e:Landroid/view/View;

    iget-object v1, p0, Lcom/netease/nr/tablet/main/f;->e:Landroid/view/View;

    const v2, 0x7f0c00e3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/netease/nr/base/view/DividerLinearLayout;

    const v2, 0x7f0200f0

    invoke-virtual {v1, v2}, Lcom/netease/nr/base/view/DividerLinearLayout;->a(I)V

    iget-object v1, p0, Lcom/netease/nr/tablet/main/f;->e:Landroid/view/View;

    const v2, 0x7f0c00e4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcom/netease/nr/tablet/main/NeviContainer;->c()V

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
    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u7cbe\u9009"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/netease/nr/biz/news/column/g;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/netease/nr/tablet/main/f;->k()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0c00e4
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/netease/nr/base/fragment/e;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/f;->u()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/netease/nr/base/fragment/e;->onDestroy()V

    iget-object v0, p0, Lcom/netease/nr/tablet/main/f;->a:Lcom/netease/nr/biz/news/column/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/tablet/main/f;->a:Lcom/netease/nr/biz/news/column/a;

    invoke-virtual {v0}, Lcom/netease/nr/biz/news/column/a;->b()V

    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    invoke-super {p0}, Lcom/netease/nr/base/fragment/e;->onDestroyView()V

    iget-object v0, p0, Lcom/netease/nr/tablet/main/f;->f:Lcom/netease/nr/base/view/MySlidingDrawer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/tablet/main/f;->f:Lcom/netease/nr/base/view/MySlidingDrawer;

    invoke-virtual {v0, p0}, Lcom/netease/nr/base/view/MySlidingDrawer;->b(Lcom/netease/nr/base/view/aw;)V

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/tablet/main/f;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netease/nr/tablet/main/f;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/netease/nr/base/fragment/e;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/nr/tablet/main/f;->g:Z

    invoke-direct {p0}, Lcom/netease/nr/tablet/main/f;->l()V

    return-void
.end method

.method public onResume()V
    .locals 2

    const/4 v1, -0x1

    invoke-super {p0}, Lcom/netease/nr/base/fragment/e;->onResume()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/nr/tablet/main/f;->g:Z

    invoke-direct {p0}, Lcom/netease/nr/tablet/main/f;->j()V

    iget v0, p0, Lcom/netease/nr/tablet/main/f;->h:I

    if-eq v0, v1, :cond_0

    iput v1, p0, Lcom/netease/nr/tablet/main/f;->h:I

    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/f;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c02d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/tablet/main/NeviContainer;

    invoke-virtual {v0}, Lcom/netease/nr/tablet/main/NeviContainer;->b()Lcom/netease/nr/base/view/DropdownSpinner;

    move-result-object v0

    iget v1, p0, Lcom/netease/nr/tablet/main/f;->h:I

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/DropdownSpinner;->d(I)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    const v4, 0x7f0c00e6

    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/fragment/e;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/util/i/b;->k(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/tablet/main/MainActivity;

    invoke-virtual {v0}, Lcom/netease/nr/tablet/main/MainActivity;->j()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/tablet/main/MainActivity;

    invoke-virtual {v0}, Lcom/netease/nr/tablet/main/MainActivity;->k()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/tablet/main/f;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netease/nr/tablet/main/f;->k:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iget-boolean v0, p0, Lcom/netease/nr/tablet/main/f;->j:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/util/i/b;->l(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0c02c1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/MySlidingDrawer;

    iput-object v0, p0, Lcom/netease/nr/tablet/main/f;->f:Lcom/netease/nr/base/view/MySlidingDrawer;

    iget-object v0, p0, Lcom/netease/nr/tablet/main/f;->f:Lcom/netease/nr/base/view/MySlidingDrawer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/tablet/main/f;->f:Lcom/netease/nr/base/view/MySlidingDrawer;

    invoke-virtual {v0, p0}, Lcom/netease/nr/base/view/MySlidingDrawer;->a(Lcom/netease/nr/base/view/aw;)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/netease/nr/base/fragment/e;->onViewStateRestored(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/f;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c02d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/tablet/main/NeviContainer;

    invoke-virtual {v0}, Lcom/netease/nr/tablet/main/NeviContainer;->b()Lcom/netease/nr/base/view/DropdownSpinner;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/nr/base/view/DropdownSpinner;->c()I

    move-result v1

    iget-object v2, p0, Lcom/netease/nr/tablet/main/f;->a:Lcom/netease/nr/biz/news/column/a;

    invoke-virtual {v2}, Lcom/netease/nr/biz/news/column/a;->a()Landroid/widget/ListAdapter;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/netease/nr/tablet/main/NeviContainer;->a(Landroid/widget/ListAdapter;I)V

    return-void
.end method

.method public q_()Z
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/tablet/main/f;->f:Lcom/netease/nr/base/view/MySlidingDrawer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/tablet/main/f;->f:Lcom/netease/nr/base/view/MySlidingDrawer;

    invoke-virtual {v0}, Lcom/netease/nr/base/view/MySlidingDrawer;->h()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
