.class Lcom/netease/nr/phone/main/m;
.super Lcom/netease/util/fragment/g;


# instance fields
.field final synthetic a:Lcom/netease/nr/phone/main/i;


# direct methods
.method constructor <init>(Lcom/netease/nr/phone/main/i;Lcom/netease/util/fragment/g;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/phone/main/m;->a:Lcom/netease/nr/phone/main/i;

    invoke-direct {p0, p2}, Lcom/netease/util/fragment/g;-><init>(Lcom/netease/util/fragment/g;)V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/support/v4/app/Fragment;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/phone/main/m;->a:Lcom/netease/nr/phone/main/i;

    invoke-static {v0}, Lcom/netease/nr/phone/main/i;->b(Lcom/netease/nr/phone/main/i;)Lcom/netease/nr/biz/news/column/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/nr/biz/news/column/a;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    invoke-super {p0, p1, p2, p3, p4}, Lcom/netease/util/fragment/g;->a(Landroid/view/ViewGroup;ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/netease/nr/phone/main/m;->a:Lcom/netease/nr/phone/main/i;

    invoke-static {v0}, Lcom/netease/nr/phone/main/i;->b(Lcom/netease/nr/phone/main/i;)Lcom/netease/nr/biz/news/column/a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/netease/nr/biz/news/column/a;->e(I)V

    iget-object v0, p0, Lcom/netease/nr/phone/main/m;->a:Lcom/netease/nr/phone/main/i;

    invoke-virtual {v0}, Lcom/netease/nr/phone/main/i;->a()Lcom/netease/nr/base/view/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netease/nr/base/view/a;->c()Lcom/netease/nr/base/view/DropdownSpinner;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Lcom/netease/nr/base/view/DropdownSpinner;->a(IZ)V

    iget-object v1, p0, Lcom/netease/nr/phone/main/m;->a:Lcom/netease/nr/phone/main/i;

    invoke-static {v1}, Lcom/netease/nr/phone/main/i;->b(Lcom/netease/nr/phone/main/i;)Lcom/netease/nr/biz/news/column/a;

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

    iget-object v0, p0, Lcom/netease/nr/phone/main/m;->a:Lcom/netease/nr/phone/main/i;

    invoke-static {v0}, Lcom/netease/nr/phone/main/i;->b(Lcom/netease/nr/phone/main/i;)Lcom/netease/nr/biz/news/column/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/biz/news/column/a;->a()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/phone/main/m;->a:Lcom/netease/nr/phone/main/i;

    invoke-static {v0}, Lcom/netease/nr/phone/main/i;->b(Lcom/netease/nr/phone/main/i;)Lcom/netease/nr/biz/news/column/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/nr/biz/news/column/a;->b(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
