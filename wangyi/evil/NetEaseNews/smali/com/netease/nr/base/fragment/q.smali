.class public Lcom/netease/nr/base/fragment/q;
.super Lcom/netease/nr/base/fragment/k;

# interfaces
.implements Lcom/netease/nr/base/view/bi;


# instance fields
.field private b:Lcom/netease/nr/base/view/PullRefreshListView;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/netease/nr/base/fragment/k;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/content/Loader;Ljava/util/Map;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/fragment/k;->a(Landroid/support/v4/content/Loader;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/netease/nr/base/fragment/q;->b:Lcom/netease/nr/base/view/PullRefreshListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/fragment/q;->b:Lcom/netease/nr/base/view/PullRefreshListView;

    invoke-virtual {v0}, Lcom/netease/nr/base/view/PullRefreshListView;->e()V

    :cond_0
    return-void
.end method

.method protected a(Lcom/netease/util/j/a;Landroid/view/View;)V
    .locals 4

    const v3, 0x7f070004

    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/fragment/k;->a(Lcom/netease/util/j/a;Landroid/view/View;)V

    iget-object v0, p0, Lcom/netease/nr/base/fragment/q;->b:Lcom/netease/nr/base/view/PullRefreshListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/fragment/q;->b:Lcom/netease/nr/base/view/PullRefreshListView;

    invoke-virtual {v0}, Lcom/netease/nr/base/view/PullRefreshListView;->i()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const v0, 0x7f0c002a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v2, 0x7f020047

    invoke-virtual {p1, v0, v2}, Lcom/netease/util/j/a;->a(Landroid/widget/ImageView;I)V

    const v0, 0x7f0c0027

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1, v0, v3}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    const v0, 0x7f0c0028

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1, v0, v3}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/view/View;II)V
    .locals 10

    const v9, 0x7f040002

    const/4 v8, 0x1

    const/4 v7, 0x4

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/q;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v0, 0x7f0c0027

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0c002a

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v1, 0x7f0c0029

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-nez p3, :cond_0

    const v1, 0x7f0c0028

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v2, p1}, Lcom/netease/nr/base/c/s;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    packed-switch p4, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v3, v8}, Landroid/view/View;->setEnabled(Z)V

    const/4 v1, 0x2

    if-ne p3, v1, :cond_1

    invoke-static {v2, v9}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    const v1, 0x7f0b0035

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setEnabled(Z)V

    if-ne p3, v8, :cond_2

    invoke-static {v2, v9}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    const v1, 0x7f0b0036

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    const v1, 0x7f0b0037

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public a(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/q;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {v1}, Lcom/netease/util/f/b;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/netease/nr/base/fragment/q;->c:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/q;->d_()Z

    move-result v2

    if-nez v2, :cond_0

    const v2, 0x7f0b0010

    invoke-static {v1, v2, v0}, Lcom/netease/nr/base/view/az;->a(Landroid/content/Context;II)Lcom/netease/nr/base/view/az;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/nr/base/view/az;->show()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f03001a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/netease/nr/base/fragment/q;->a(Landroid/support/v4/content/Loader;Ljava/util/Map;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/q;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/q;->h()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/q;->E()V

    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/netease/nr/base/fragment/k;->c(I)V

    const/16 v0, 0x3ea

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/fragment/q;->b:Lcom/netease/nr/base/view/PullRefreshListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/fragment/q;->b:Lcom/netease/nr/base/view/PullRefreshListView;

    invoke-virtual {v0}, Lcom/netease/nr/base/view/PullRefreshListView;->g()V

    :cond_0
    return-void
.end method

.method protected j()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public k()Lcom/netease/nr/base/view/PullRefreshListView;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/fragment/q;->b:Lcom/netease/nr/base/view/PullRefreshListView;

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Lcom/netease/nr/base/fragment/k;->onDestroyView()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/nr/base/fragment/q;->b:Lcom/netease/nr/base/view/PullRefreshListView;

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/netease/nr/base/fragment/k;->onResume()V

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/q;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/nr/base/fragment/q;->c:Z

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/q;->B()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/base/fragment/q;->b:Lcom/netease/nr/base/view/PullRefreshListView;

    invoke-virtual {v0}, Lcom/netease/nr/base/view/PullRefreshListView;->h()V

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/nr/base/fragment/q;->c:Z

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/base/fragment/q;->b:Lcom/netease/nr/base/view/PullRefreshListView;

    invoke-virtual {v0}, Lcom/netease/nr/base/view/PullRefreshListView;->f()V

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/fragment/k;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/q;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c0025

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/PullRefreshListView;

    iput-object v0, p0, Lcom/netease/nr/base/fragment/q;->b:Lcom/netease/nr/base/view/PullRefreshListView;

    iget-object v0, p0, Lcom/netease/nr/base/fragment/q;->b:Lcom/netease/nr/base/view/PullRefreshListView;

    iget-object v1, p0, Lcom/netease/nr/base/fragment/q;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/netease/nr/base/view/PullRefreshListView;->a(Ljava/lang/String;Lcom/netease/nr/base/view/bi;)V

    invoke-virtual {p0}, Lcom/netease/nr/base/fragment/q;->j()I

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f030019

    :cond_0
    iget-object v1, p0, Lcom/netease/nr/base/fragment/q;->b:Lcom/netease/nr/base/view/PullRefreshListView;

    invoke-virtual {v1, v0}, Lcom/netease/nr/base/view/PullRefreshListView;->a(I)V

    return-void
.end method
