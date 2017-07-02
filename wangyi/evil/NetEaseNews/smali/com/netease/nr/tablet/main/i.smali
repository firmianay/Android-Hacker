.class public Lcom/netease/nr/tablet/main/i;
.super Lcom/netease/nr/base/fragment/e;

# interfaces
.implements Lcom/netease/nr/base/view/r;


# instance fields
.field private a:Lcom/netease/nr/biz/pics/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/netease/nr/base/fragment/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public a()Lcom/netease/nr/base/view/a;
    .locals 2

    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/i;->getActivity()Landroid/support/v4/app/FragmentActivity;

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

    invoke-virtual {p0, v0, p2}, Lcom/netease/nr/tablet/main/i;->a_(II)V

    return-void
.end method

.method public a_(II)V
    .locals 1

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/i;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/tablet/main/MainActivity;

    invoke-virtual {v0}, Lcom/netease/nr/tablet/main/MainActivity;->l()V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/netease/nr/tablet/main/i;->a:Lcom/netease/nr/biz/pics/a;

    invoke-virtual {v0, p2}, Lcom/netease/nr/biz/pics/a;->b(I)Lcom/netease/util/fragment/i;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/netease/nr/tablet/main/i;->a(Lcom/netease/util/fragment/i;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x186a2 -> :sswitch_1
    .end sparse-switch
.end method

.method public b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f030103

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 1

    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/i;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/tablet/main/MainActivity;

    invoke-virtual {v0}, Lcom/netease/nr/tablet/main/MainActivity;->i()V

    return-void
.end method

.method public e()I
    .locals 1

    const v0, 0x7f0c02cd

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/netease/nr/base/fragment/e;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/i;->a()Lcom/netease/nr/base/view/a;

    move-result-object v0

    const v1, 0x7f0b0026

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/a;->c(I)V

    const v1, 0x7f02020c

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/a;->b(I)V

    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/i;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c02da

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
    .locals 2

    invoke-super {p0, p1}, Lcom/netease/nr/base/fragment/e;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/i;->u()V

    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/i;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/netease/nr/biz/pics/a;

    invoke-direct {v1, v0}, Lcom/netease/nr/biz/pics/a;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/netease/nr/tablet/main/i;->a:Lcom/netease/nr/biz/pics/a;

    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 9

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/netease/nr/base/fragment/e;->onViewStateRestored(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/i;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c02da

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/tablet/main/NeviContainer;

    invoke-virtual {v0}, Lcom/netease/nr/tablet/main/NeviContainer;->b()Lcom/netease/nr/base/view/DropdownSpinner;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/nr/base/view/DropdownSpinner;->c()I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/netease/nr/tablet/main/i;->a:Lcom/netease/nr/biz/pics/a;

    iget-object v5, v1, Lcom/netease/nr/biz/pics/a;->a:[I

    array-length v6, v5

    move v1, v2

    :goto_0
    if-ge v1, v6, :cond_0

    aget v7, v5, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/netease/nr/base/view/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v4, v1}, Lcom/netease/nr/tablet/main/NeviContainer;->a(Ljava/util/List;I)V

    return-void
.end method
