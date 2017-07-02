.class public Lcom/netease/util/fragment/k;
.super Lcom/netease/util/fragment/h;

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# instance fields
.field private a:Lcom/netease/util/fragment/l;

.field private e:Landroid/widget/TabHost;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/netease/util/fragment/h;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/util/fragment/k;->a:Lcom/netease/util/fragment/l;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "please call addChild() after onViewCreated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/netease/util/fragment/k;->f()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/util/fragment/k;->a:Lcom/netease/util/fragment/l;

    invoke-virtual {v0, p1, p2, p3}, Lcom/netease/util/fragment/l;->a(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public final a(Lcom/netease/util/fragment/i;)V
    .locals 0

    return-void
.end method

.method public final j()Landroid/widget/TabHost;
    .locals 1

    iget-object v0, p0, Lcom/netease/util/fragment/k;->e:Landroid/widget/TabHost;

    return-object v0
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1, p2}, Lcom/netease/util/fragment/h;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x1020012

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lcom/netease/util/fragment/k;->e:Landroid/widget/TabHost;

    iget-object v0, p0, Lcom/netease/util/fragment/k;->e:Landroid/widget/TabHost;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "view in FragmentTab must have TabHost and the id must be android.R.id.tabhost"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/netease/util/fragment/k;->e:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->setup()V

    new-instance v1, Lcom/netease/util/fragment/l;

    invoke-virtual {p0}, Lcom/netease/util/fragment/k;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/netease/util/fragment/FragmentActivity;

    invoke-virtual {p0}, Lcom/netease/util/fragment/k;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/util/fragment/k;->e:Landroid/widget/TabHost;

    invoke-virtual {p0}, Lcom/netease/util/fragment/k;->f()I

    move-result v4

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/netease/util/fragment/l;-><init>(Lcom/netease/util/fragment/FragmentActivity;Landroid/support/v4/app/FragmentManager;Landroid/widget/TabHost;I)V

    iput-object v1, p0, Lcom/netease/util/fragment/k;->a:Lcom/netease/util/fragment/l;

    iget-object v0, p0, Lcom/netease/util/fragment/k;->a:Lcom/netease/util/fragment/l;

    invoke-virtual {v0, p0}, Lcom/netease/util/fragment/l;->a(Landroid/widget/TabHost$OnTabChangeListener;)V

    return-void
.end method
