.class Lcom/netease/nr/phone/main/p;
.super Lcom/netease/util/fragment/g;


# instance fields
.field final synthetic a:Lcom/netease/nr/phone/main/n;


# direct methods
.method constructor <init>(Lcom/netease/nr/phone/main/n;Lcom/netease/util/fragment/g;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/phone/main/p;->a:Lcom/netease/nr/phone/main/n;

    invoke-direct {p0, p2}, Lcom/netease/util/fragment/g;-><init>(Lcom/netease/util/fragment/g;)V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/support/v4/app/Fragment;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/phone/main/p;->a:Lcom/netease/nr/phone/main/n;

    invoke-static {v0}, Lcom/netease/nr/phone/main/n;->a(Lcom/netease/nr/phone/main/n;)Lcom/netease/nr/biz/pics/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/nr/biz/pics/a;->c(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Lcom/netease/util/fragment/g;->a(Landroid/view/ViewGroup;ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/netease/nr/phone/main/p;->a:Lcom/netease/nr/phone/main/n;

    invoke-virtual {v0}, Lcom/netease/nr/phone/main/n;->a()Lcom/netease/nr/base/view/a;

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

    iget-object v0, p0, Lcom/netease/nr/phone/main/p;->a:Lcom/netease/nr/phone/main/n;

    invoke-static {v0}, Lcom/netease/nr/phone/main/n;->a(Lcom/netease/nr/phone/main/n;)Lcom/netease/nr/biz/pics/a;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/nr/biz/pics/a;->a:[I

    array-length v0, v0

    return v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/phone/main/p;->a:Lcom/netease/nr/phone/main/n;

    iget-object v1, p0, Lcom/netease/nr/phone/main/p;->a:Lcom/netease/nr/phone/main/n;

    invoke-static {v1}, Lcom/netease/nr/phone/main/n;->a(Lcom/netease/nr/phone/main/n;)Lcom/netease/nr/biz/pics/a;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/nr/biz/pics/a;->a:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/netease/nr/phone/main/n;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
