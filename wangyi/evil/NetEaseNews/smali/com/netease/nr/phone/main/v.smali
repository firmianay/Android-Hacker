.class Lcom/netease/nr/phone/main/v;
.super Lcom/netease/util/fragment/g;


# instance fields
.field final synthetic a:Lcom/netease/nr/phone/main/u;


# direct methods
.method constructor <init>(Lcom/netease/nr/phone/main/u;Landroid/support/v4/app/FragmentManager;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/phone/main/v;->a:Lcom/netease/nr/phone/main/u;

    invoke-direct {p0, p2}, Lcom/netease/util/fragment/g;-><init>(Landroid/support/v4/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/support/v4/app/Fragment;
    .locals 4

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const-string v0, "columnId"

    const-string v2, "T1349687019494"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "columnName"

    iget-object v2, p0, Lcom/netease/nr/phone/main/v;->a:Lcom/netease/nr/phone/main/u;

    const v3, 0x7f0b0199

    invoke-virtual {v2, v3}, Lcom/netease/nr/phone/main/u;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-class v0, Lcom/netease/nr/biz/j/c/j;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/netease/nr/phone/main/v;->a:Lcom/netease/nr/phone/main/u;

    invoke-virtual {v2}, Lcom/netease/nr/phone/main/u;->c_()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const-string v0, "columnId"

    const-string v2, "T1349837698345"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "columnName"

    iget-object v2, p0, Lcom/netease/nr/phone/main/v;->a:Lcom/netease/nr/phone/main/u;

    invoke-virtual {v2}, Lcom/netease/nr/phone/main/u;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0b0196

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-class v0, Lcom/netease/nr/biz/j/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "columnId"

    const-string v2, "T1349837670307"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "columnName"

    iget-object v2, p0, Lcom/netease/nr/phone/main/v;->a:Lcom/netease/nr/phone/main/u;

    invoke-virtual {v2}, Lcom/netease/nr/phone/main/u;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0b0197

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-class v0, Lcom/netease/nr/biz/j/b/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/view/ViewGroup;ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Lcom/netease/util/fragment/g;->a(Landroid/view/ViewGroup;ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/netease/nr/phone/main/v;->a:Lcom/netease/nr/phone/main/u;

    invoke-virtual {v0}, Lcom/netease/nr/phone/main/u;->a()Lcom/netease/nr/base/view/a;

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

    iget-object v0, p0, Lcom/netease/nr/phone/main/v;->a:Lcom/netease/nr/phone/main/u;

    invoke-static {v0}, Lcom/netease/nr/phone/main/u;->a(Lcom/netease/nr/phone/main/u;)Lcom/netease/nr/biz/j/a;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/nr/biz/j/a;->a:[I

    array-length v0, v0

    return v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/phone/main/v;->a:Lcom/netease/nr/phone/main/u;

    iget-object v1, p0, Lcom/netease/nr/phone/main/v;->a:Lcom/netease/nr/phone/main/u;

    invoke-static {v1}, Lcom/netease/nr/phone/main/u;->a(Lcom/netease/nr/phone/main/u;)Lcom/netease/nr/biz/j/a;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/nr/biz/j/a;->a:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/netease/nr/phone/main/u;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
