.class Lcom/netease/nr/phone/main/e;
.super Lcom/netease/util/fragment/g;


# instance fields
.field final synthetic a:Lcom/netease/nr/phone/main/c;


# direct methods
.method constructor <init>(Lcom/netease/nr/phone/main/c;Landroid/support/v4/app/FragmentManager;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/phone/main/e;->a:Lcom/netease/nr/phone/main/c;

    invoke-direct {p0, p2}, Lcom/netease/util/fragment/g;-><init>(Landroid/support/v4/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/support/v4/app/Fragment;
    .locals 4

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/netease/nr/phone/main/e;->a:Lcom/netease/nr/phone/main/c;

    invoke-virtual {v0}, Lcom/netease/nr/phone/main/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/netease/nr/biz/news/a/c/c/f;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "param_source"

    const-string v2, "source_media"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "columnCId"

    iget-object v2, p0, Lcom/netease/nr/phone/main/e;->a:Lcom/netease/nr/phone/main/c;

    invoke-static {v2}, Lcom/netease/nr/phone/main/c;->b(Lcom/netease/nr/phone/main/c;)Lcom/netease/nr/biz/news/column/a;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/netease/nr/biz/news/column/a;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netease/nr/phone/main/e;->a:Lcom/netease/nr/phone/main/c;

    invoke-virtual {v1}, Lcom/netease/nr/phone/main/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nr/phone/main/e;->a:Lcom/netease/nr/phone/main/c;

    invoke-static {v2}, Lcom/netease/nr/phone/main/c;->b(Lcom/netease/nr/phone/main/c;)Lcom/netease/nr/biz/news/column/a;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/netease/nr/biz/news/column/a;->c(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/nr/phone/main/e;->a:Lcom/netease/nr/phone/main/c;

    invoke-static {v3}, Lcom/netease/nr/phone/main/c;->b(Lcom/netease/nr/phone/main/c;)Lcom/netease/nr/biz/news/column/a;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/netease/nr/biz/news/column/a;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/netease/nr/biz/news/column/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/view/ViewGroup;ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    invoke-super {p0, p1, p2, p3, p4}, Lcom/netease/util/fragment/g;->a(Landroid/view/ViewGroup;ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/netease/nr/phone/main/e;->a:Lcom/netease/nr/phone/main/c;

    invoke-static {v0}, Lcom/netease/nr/phone/main/c;->b(Lcom/netease/nr/phone/main/c;)Lcom/netease/nr/biz/news/column/a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/netease/nr/biz/news/column/a;->e(I)V

    iget-object v0, p0, Lcom/netease/nr/phone/main/e;->a:Lcom/netease/nr/phone/main/c;

    invoke-virtual {v0}, Lcom/netease/nr/phone/main/c;->a()Lcom/netease/nr/base/view/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netease/nr/base/view/a;->c()Lcom/netease/nr/base/view/DropdownSpinner;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Lcom/netease/nr/base/view/DropdownSpinner;->a(IZ)V

    iget-object v1, p0, Lcom/netease/nr/phone/main/e;->a:Lcom/netease/nr/phone/main/c;

    invoke-static {v1}, Lcom/netease/nr/phone/main/c;->b(Lcom/netease/nr/phone/main/c;)Lcom/netease/nr/biz/news/column/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/nr/biz/news/column/a;->c()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "T1351840906470"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/netease/nr/base/view/a;->a(IZ)V

    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/phone/main/e;->a:Lcom/netease/nr/phone/main/c;

    invoke-static {v0}, Lcom/netease/nr/phone/main/c;->b(Lcom/netease/nr/phone/main/c;)Lcom/netease/nr/biz/news/column/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/biz/news/column/a;->a()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/phone/main/e;->a:Lcom/netease/nr/phone/main/c;

    invoke-static {v0}, Lcom/netease/nr/phone/main/c;->b(Lcom/netease/nr/phone/main/c;)Lcom/netease/nr/biz/news/column/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/nr/biz/news/column/a;->b(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
