.class public Lcom/netease/util/fragment/h;
.super Lcom/netease/util/fragment/o;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/netease/util/fragment/o;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/netease/util/fragment/i;)V
    .locals 5

    invoke-virtual {p0}, Lcom/netease/util/fragment/h;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/netease/util/fragment/FragmentActivity;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/netease/util/fragment/h;->f()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/netease/util/fragment/h;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object v2, p1, Lcom/netease/util/fragment/i;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p1, Lcom/netease/util/fragment/i;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_0

    :cond_2
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    iget-object v3, p1, Lcom/netease/util/fragment/i;->d:Landroid/support/v4/app/Fragment;

    if-nez v3, :cond_3

    iget-object v3, p1, Lcom/netease/util/fragment/i;->b:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/netease/util/fragment/i;->c:Landroid/os/Bundle;

    invoke-static {v0, v3, v4}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    iput-object v0, p1, Lcom/netease/util/fragment/i;->d:Landroid/support/v4/app/Fragment;

    :cond_3
    iget v0, p0, Lcom/netease/util/fragment/h;->a:I

    iget-object v3, p1, Lcom/netease/util/fragment/i;->d:Landroid/support/v4/app/Fragment;

    iget-object v4, p1, Lcom/netease/util/fragment/i;->a:Ljava/lang/String;

    invoke-virtual {v2, v0, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    goto :goto_0
.end method

.method public e()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method f()I
    .locals 1

    iget v0, p0, Lcom/netease/util/fragment/h;->a:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/util/fragment/h;->e()I

    move-result v0

    iput v0, p0, Lcom/netease/util/fragment/h;->a:I

    :cond_0
    iget v0, p0, Lcom/netease/util/fragment/h;->a:I

    return v0
.end method
