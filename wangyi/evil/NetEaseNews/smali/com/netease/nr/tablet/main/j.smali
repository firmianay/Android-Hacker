.class public Lcom/netease/nr/tablet/main/j;
.super Lcom/netease/nr/biz/polymeric/t;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/netease/nr/biz/polymeric/t;-><init>()V

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

    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/j;->getActivity()Landroid/support/v4/app/FragmentActivity;

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
    invoke-super {p0}, Lcom/netease/nr/biz/polymeric/t;->a()Lcom/netease/nr/base/view/a;

    move-result-object v0

    goto :goto_0
.end method

.method public a_(II)V
    .locals 8

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/j;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/tablet/main/MainActivity;

    invoke-virtual {v0}, Lcom/netease/nr/tablet/main/MainActivity;->l()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/j;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/j;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/j;->getActivity()Landroid/support/v4/app/FragmentActivity;

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

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public c()V
    .locals 1

    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/j;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/tablet/main/MainActivity;

    invoke-virtual {v0}, Lcom/netease/nr/tablet/main/MainActivity;->i()V

    return-void
.end method

.method public onDestroyView()V
    .locals 3

    invoke-super {p0}, Lcom/netease/nr/biz/polymeric/t;->onDestroyView()V

    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/j;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c006e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/polymeric/PolymericPager;

    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/j;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0c02c1

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/netease/nr/base/view/MySlidingDrawer;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Lcom/netease/nr/base/view/MySlidingDrawer;->b(Lcom/netease/nr/base/view/ax;)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/netease/nr/biz/polymeric/t;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/j;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c006e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/polymeric/PolymericPager;

    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/j;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0c02c1

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/netease/nr/base/view/MySlidingDrawer;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/netease/nr/base/view/MySlidingDrawer;->a(Lcom/netease/nr/base/view/ax;)V

    :cond_0
    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/j;->a()Lcom/netease/nr/base/view/a;

    move-result-object v0

    if-eqz v0, :cond_1

    const v1, 0x7f0b00da

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/a;->c(I)V

    const v1, 0x7f020268

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/a;->b(I)V

    :cond_1
    return-void
.end method
