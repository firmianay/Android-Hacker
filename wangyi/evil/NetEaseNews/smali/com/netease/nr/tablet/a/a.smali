.class public Lcom/netease/nr/tablet/a/a;
.super Lcom/netease/nr/base/fragment/f;

# interfaces
.implements Lcom/netease/nr/base/view/r;
.implements Lcom/netease/nr/biz/pc/a/o;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/netease/nr/base/fragment/f;-><init>()V

    return-void
.end method

.method private b(I)V
    .locals 2

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/tablet/a/a;->j()Landroid/widget/TabHost;

    move-result-object v0

    const-string v1, "my_comment"

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/netease/nr/tablet/a/a;->j()Landroid/widget/TabHost;

    move-result-object v0

    const-string v1, "reply_me"

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/netease/nr/base/view/DropdownSpinner;I)V
    .locals 1

    const v0, 0x186a2

    invoke-virtual {p0, v0, p2}, Lcom/netease/nr/tablet/a/a;->a_(II)V

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 0

    return-void
.end method

.method public a_(II)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, p2}, Lcom/netease/nr/tablet/a/a;->b(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x186a2
        :pswitch_0
    .end packed-switch
.end method

.method public a_(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/netease/nr/tablet/a/a;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c02d2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/netease/nr/tablet/a/a;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c02d1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f030107

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public e()I
    .locals 1

    const v0, 0x7f0c02d1

    return v0
.end method

.method public m_()V
    .locals 2

    invoke-virtual {p0}, Lcom/netease/nr/tablet/a/a;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c02d2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/netease/nr/tablet/a/a;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c02d1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-super {p0, p1}, Lcom/netease/nr/base/fragment/f;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/netease/nr/tablet/a/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/nr/tablet/a/a;->j()Landroid/widget/TabHost;

    move-result-object v1

    const-string v2, "my_comment"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    new-instance v3, Landroid/view/View;

    invoke-direct {v3, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    const-class v3, Lcom/netease/nr/biz/i/b/a;

    invoke-virtual {p0, v2, v3, v5}, Lcom/netease/nr/tablet/a/a;->a(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    const-string v2, "reply_me"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    new-instance v2, Landroid/view/View;

    invoke-direct {v2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    const-class v1, Lcom/netease/nr/biz/i/b/e;

    invoke-virtual {p0, v0, v1, v5}, Lcom/netease/nr/tablet/a/a;->a(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/netease/nr/tablet/a/a;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c02dd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/tablet/main/NeviContainer;

    invoke-virtual {v0}, Lcom/netease/nr/tablet/main/NeviContainer;->b()Lcom/netease/nr/base/view/DropdownSpinner;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/netease/nr/base/view/DropdownSpinner;->a(Lcom/netease/nr/base/view/r;)V

    invoke-virtual {v0}, Lcom/netease/nr/tablet/main/NeviContainer;->c()V

    invoke-virtual {p0}, Lcom/netease/nr/tablet/a/a;->a()Lcom/netease/nr/base/view/a;

    move-result-object v0

    const v1, 0x7f0b0133

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/a;->c(I)V

    invoke-virtual {v0, v4}, Lcom/netease/nr/base/view/a;->b(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/a;->f(Z)V

    invoke-virtual {v0, v4}, Lcom/netease/nr/base/view/a;->d(Z)V

    invoke-virtual {p0}, Lcom/netease/nr/tablet/a/a;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c02d2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/netease/nr/tablet/a/b;

    invoke-direct {v1, p0}, Lcom/netease/nr/tablet/a/b;-><init>(Lcom/netease/nr/tablet/a/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/netease/nr/tablet/a/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nr/biz/pc/a/n;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/tablet/a/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nr/biz/pc/a/n;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/nr/tablet/a/a;->a_(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/netease/nr/tablet/a/a;->m_()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/netease/nr/base/fragment/f;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/netease/nr/biz/pc/a/n;->a(Lcom/netease/nr/biz/pc/a/o;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/netease/nr/base/fragment/f;->onDestroy()V

    invoke-static {p0}, Lcom/netease/nr/biz/pc/a/n;->b(Lcom/netease/nr/biz/pc/a/o;)V

    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/netease/nr/base/fragment/f;->onViewStateRestored(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/netease/nr/tablet/a/a;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c02dd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/tablet/main/NeviContainer;

    invoke-virtual {v0}, Lcom/netease/nr/tablet/main/NeviContainer;->b()Lcom/netease/nr/base/view/DropdownSpinner;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/nr/base/view/DropdownSpinner;->c()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const v3, 0x7f0b0133

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/netease/nr/base/view/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v3, 0x7f0b0134

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/netease/nr/base/view/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/netease/nr/tablet/main/NeviContainer;->a(Ljava/util/List;I)V

    return-void
.end method
