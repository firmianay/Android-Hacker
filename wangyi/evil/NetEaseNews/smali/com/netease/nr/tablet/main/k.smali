.class public Lcom/netease/nr/tablet/main/k;
.super Lcom/netease/nr/base/fragment/f;

# interfaces
.implements Lcom/netease/nr/base/view/r;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/netease/nr/base/fragment/f;-><init>()V

    return-void
.end method

.method private b(I)V
    .locals 2

    if-lez p1, :cond_0

    const-string v0, "today"

    :goto_0
    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/k;->j()Landroid/widget/TabHost;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "top"

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public a()Lcom/netease/nr/base/view/a;
    .locals 2

    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/k;->getActivity()Landroid/support/v4/app/FragmentActivity;

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
    invoke-super {p0}, Lcom/netease/nr/base/fragment/f;->a()Lcom/netease/nr/base/view/a;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/netease/nr/base/view/DropdownSpinner;I)V
    .locals 1

    const v0, 0x186a2

    invoke-virtual {p0, v0, p2}, Lcom/netease/nr/tablet/main/k;->a_(II)V

    return-void
.end method

.method public a_(II)V
    .locals 1

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-direct {p0, p2}, Lcom/netease/nr/tablet/main/k;->b(I)V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/k;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/tablet/main/MainActivity;

    invoke-virtual {v0}, Lcom/netease/nr/tablet/main/MainActivity;->l()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x186a2 -> :sswitch_0
    .end sparse-switch
.end method

.method public b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f030104

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 1

    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/k;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/tablet/main/MainActivity;

    invoke-virtual {v0}, Lcom/netease/nr/tablet/main/MainActivity;->i()V

    return-void
.end method

.method public e()I
    .locals 1

    const v0, 0x7f0c02ce

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/netease/nr/base/fragment/f;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/k;->a()Lcom/netease/nr/base/view/a;

    move-result-object v0

    const v1, 0x7f0b0028

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/a;->c(I)V

    const v1, 0x7f0202d5

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/a;->b(I)V

    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/k;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/k;->j()Landroid/widget/TabHost;

    move-result-object v1

    const-string v2, "top"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    new-instance v3, Landroid/view/View;

    invoke-direct {v3, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    const-class v3, Lcom/netease/nr/biz/i/c/e;

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/netease/nr/tablet/main/k;->a(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "rank_type"

    const-string v4, "today"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "today"

    invoke-virtual {v1, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    new-instance v3, Landroid/view/View;

    invoke-direct {v3, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    const-class v1, Lcom/netease/nr/biz/i/c/b;

    invoke-virtual {p0, v0, v1, v2}, Lcom/netease/nr/tablet/main/k;->a(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/k;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c02db

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/tablet/main/NeviContainer;

    invoke-virtual {v0}, Lcom/netease/nr/tablet/main/NeviContainer;->b()Lcom/netease/nr/base/view/DropdownSpinner;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/netease/nr/base/view/DropdownSpinner;->a(Lcom/netease/nr/base/view/r;)V

    invoke-virtual {v0}, Lcom/netease/nr/tablet/main/NeviContainer;->c()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/netease/nr/base/fragment/f;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/k;->u()V

    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/netease/nr/base/fragment/f;->onViewStateRestored(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/k;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const v1, 0x7f0c02db

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/tablet/main/NeviContainer;

    invoke-virtual {v0}, Lcom/netease/nr/tablet/main/NeviContainer;->b()Lcom/netease/nr/base/view/DropdownSpinner;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/nr/base/view/DropdownSpinner;->c()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const v3, 0x7f0b0126

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/netease/nr/base/view/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v3, 0x7f0b0127

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/netease/nr/base/view/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/netease/nr/tablet/main/NeviContainer;->a(Ljava/util/List;I)V

    goto :goto_0
.end method
