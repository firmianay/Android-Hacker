.class public Lcom/netease/nr/tablet/main/a;
.super Lcom/netease/nr/biz/news/a/b/b;


# instance fields
.field private e:Lcom/netease/nr/base/view/MySlidingDrawer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/netease/nr/biz/news/a/b/b;-><init>()V

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

    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

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
    invoke-super {p0}, Lcom/netease/nr/biz/news/a/b/b;->a()Lcom/netease/nr/base/view/a;

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
    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/tablet/main/MainActivity;

    invoke-virtual {v0}, Lcom/netease/nr/tablet/main/MainActivity;->l()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/a;->x()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

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

    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/tablet/main/MainActivity;

    invoke-virtual {v0}, Lcom/netease/nr/tablet/main/MainActivity;->i()V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/netease/nr/biz/news/a/b/b;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netease/nr/biz/plugin/c/f;->a(Landroid/content/Context;Z)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/netease/nr/tablet/main/a;->e(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/a;->a()Lcom/netease/nr/base/view/a;

    move-result-object v0

    const v1, 0x7f0200c0

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/a;->b(I)V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/tablet/main/a;->e:Lcom/netease/nr/base/view/MySlidingDrawer;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/a;->w()Landroid/support/v4/view/ViewPager;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/ViewPagerForSlider;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/netease/nr/tablet/main/a;->e:Lcom/netease/nr/base/view/MySlidingDrawer;

    invoke-virtual {v1, v0}, Lcom/netease/nr/base/view/MySlidingDrawer;->b(Lcom/netease/nr/base/view/ax;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/nr/tablet/main/a;->e:Lcom/netease/nr/base/view/MySlidingDrawer;

    :cond_1
    invoke-super {p0}, Lcom/netease/nr/biz/news/a/b/b;->onDestroyView()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/netease/nr/biz/news/a/b/b;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/a;->w()Landroid/support/v4/view/ViewPager;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/ViewPagerForSlider;

    if-eqz v0, :cond_0

    const v1, 0x3ed5c28f    # 0.4175f

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/ViewPagerForSlider;->a(F)V

    invoke-virtual {p0}, Lcom/netease/nr/tablet/main/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0c02c1

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/netease/nr/base/view/MySlidingDrawer;

    iput-object v1, p0, Lcom/netease/nr/tablet/main/a;->e:Lcom/netease/nr/base/view/MySlidingDrawer;

    iget-object v1, p0, Lcom/netease/nr/tablet/main/a;->e:Lcom/netease/nr/base/view/MySlidingDrawer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netease/nr/tablet/main/a;->e:Lcom/netease/nr/base/view/MySlidingDrawer;

    invoke-virtual {v1, v0}, Lcom/netease/nr/base/view/MySlidingDrawer;->a(Lcom/netease/nr/base/view/ax;)V

    :cond_0
    return-void
.end method
