.class public Lcom/netease/nr/phone/main/q;
.super Lcom/netease/nr/biz/polymeric/t;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/netease/nr/biz/polymeric/t;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/netease/util/j/a;Lcom/netease/nr/base/view/a;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/netease/nr/biz/polymeric/t;->a(Lcom/netease/util/j/a;Lcom/netease/nr/base/view/a;)V

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

.method public a_(II)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/netease/nr/phone/main/q;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/phone/main/MainActivity;

    invoke-virtual {v0}, Lcom/netease/nr/phone/main/MainActivity;->i()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public c()V
    .locals 1

    invoke-virtual {p0}, Lcom/netease/nr/phone/main/q;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/phone/main/MainActivity;

    invoke-virtual {v0}, Lcom/netease/nr/phone/main/MainActivity;->h()V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/netease/nr/biz/polymeric/t;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/netease/nr/phone/main/q;->a()Lcom/netease/nr/base/view/a;

    move-result-object v0

    const v1, 0x7f020268

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/a;->b(I)V

    invoke-virtual {v0, v3}, Lcom/netease/nr/base/view/a;->c(Z)V

    invoke-virtual {v0, v2}, Lcom/netease/nr/base/view/a;->a(Z)V

    invoke-virtual {v0, v3}, Lcom/netease/nr/base/view/a;->d(Z)V

    const v1, 0x7f030042

    invoke-static {v0, v1}, Lcom/netease/nr/base/view/a;->a(Lcom/netease/nr/base/view/a;I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/netease/nr/base/view/a;->a(ILandroid/view/View;)V

    invoke-virtual {v0, v3}, Lcom/netease/nr/base/view/a;->b(Z)V

    invoke-virtual {v0, v2}, Lcom/netease/nr/base/view/a;->f(Z)V

    const v1, 0x7f0b00da

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/a;->c(I)V

    return-void
.end method

.method public onDestroyView()V
    .locals 3

    invoke-super {p0}, Lcom/netease/nr/biz/polymeric/t;->onDestroyView()V

    invoke-virtual {p0}, Lcom/netease/nr/phone/main/q;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c006e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/polymeric/PolymericPager;

    invoke-virtual {p0}, Lcom/netease/nr/phone/main/q;->getActivity()Landroid/support/v4/app/FragmentActivity;

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

.method public onResume()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/netease/nr/biz/polymeric/t;->onResume()V

    invoke-virtual {p0}, Lcom/netease/nr/phone/main/q;->a()Lcom/netease/nr/base/view/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/netease/nr/base/view/a;->d(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f0c008e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netease/nr/phone/main/q;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/phone/main/MainActivity;

    invoke-virtual {v0}, Lcom/netease/nr/phone/main/MainActivity;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/netease/nr/biz/polymeric/t;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/netease/nr/phone/main/q;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c006e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/polymeric/PolymericPager;

    invoke-virtual {p0}, Lcom/netease/nr/phone/main/q;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0c02c1

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/netease/nr/base/view/MySlidingDrawer;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/netease/nr/base/view/MySlidingDrawer;->a(Lcom/netease/nr/base/view/ax;)V

    :cond_0
    invoke-virtual {p0}, Lcom/netease/nr/phone/main/q;->a()Lcom/netease/nr/base/view/a;

    move-result-object v0

    if-eqz v0, :cond_1

    const v1, 0x7f0b00da

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/a;->c(I)V

    :cond_1
    return-void
.end method
