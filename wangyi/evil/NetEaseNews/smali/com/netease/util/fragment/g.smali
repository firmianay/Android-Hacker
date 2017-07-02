.class public abstract Lcom/netease/util/fragment/g;
.super Lcom/netease/util/fragment/j;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/util/fragment/j;-><init>(Landroid/support/v4/app/FragmentManager;)V

    return-void
.end method

.method public constructor <init>(Lcom/netease/util/fragment/g;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/util/fragment/j;-><init>(Lcom/netease/util/fragment/j;)V

    return-void
.end method


# virtual methods
.method public abstract a(I)Landroid/support/v4/app/Fragment;
.end method

.method public a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/netease/util/fragment/g;->f:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/netease/util/fragment/j;->finishUpdate(Landroid/view/ViewGroup;)V

    invoke-virtual {p0}, Lcom/netease/util/fragment/g;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/support/v4/app/Fragment;

    invoke-static {v0}, Lcom/netease/util/fragment/s;->a(Landroid/support/v4/app/Fragment;)V

    :cond_0
    return-void
.end method

.method public final getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/netease/util/fragment/g;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/util/fragment/s;->b(Landroid/support/v4/app/Fragment;)V

    return-object v0
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 4

    invoke-virtual {p0}, Lcom/netease/util/fragment/g;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-super {p0, p1, p2, p3}, Lcom/netease/util/fragment/j;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/netease/util/fragment/g;->a()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz v1, :cond_1

    move-object v0, v1

    check-cast v0, Landroid/support/v4/app/Fragment;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/netease/util/fragment/s;->a(Landroid/support/v4/app/Fragment;Z)V

    :cond_1
    move-object v0, v2

    check-cast v0, Landroid/support/v4/app/Fragment;

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/netease/util/fragment/s;->a(Landroid/support/v4/app/Fragment;Z)V

    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/netease/util/fragment/g;->a(Landroid/view/ViewGroup;ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method
