.class Lcom/netease/nr/phone/a/b;
.super Lcom/netease/util/fragment/g;


# instance fields
.field final synthetic a:Lcom/netease/nr/phone/a/a;


# direct methods
.method constructor <init>(Lcom/netease/nr/phone/a/a;Landroid/support/v4/app/FragmentManager;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/phone/a/b;->a:Lcom/netease/nr/phone/a/a;

    invoke-direct {p0, p2}, Lcom/netease/util/fragment/g;-><init>(Landroid/support/v4/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/support/v4/app/Fragment;
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-class v0, Lcom/netease/nr/biz/i/b/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/netease/nr/phone/a/b;->a:Lcom/netease/nr/phone/a/a;

    invoke-virtual {v1}, Lcom/netease/nr/phone/a/a;->c_()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0

    :cond_0
    const-class v0, Lcom/netease/nr/biz/i/b/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/view/ViewGroup;ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Lcom/netease/util/fragment/g;->a(Landroid/view/ViewGroup;ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/netease/nr/phone/a/b;->a:Lcom/netease/nr/phone/a/a;

    invoke-virtual {v0}, Lcom/netease/nr/phone/a/a;->a()Lcom/netease/nr/base/view/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netease/nr/base/view/a;->c()Lcom/netease/nr/base/view/DropdownSpinner;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/netease/nr/base/view/DropdownSpinner;->a(IZ)V

    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/phone/a/b;->a:Lcom/netease/nr/phone/a/a;

    const v1, 0x7f0b0134

    invoke-virtual {v0, v1}, Lcom/netease/nr/phone/a/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/phone/a/b;->a:Lcom/netease/nr/phone/a/a;

    const v1, 0x7f0b0133

    invoke-virtual {v0, v1}, Lcom/netease/nr/phone/a/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
