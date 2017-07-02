.class Lcom/netease/nr/base/fragment/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/netease/nr/base/fragment/k;


# direct methods
.method constructor <init>(Lcom/netease/nr/base/fragment/k;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/base/fragment/m;->a:Lcom/netease/nr/base/fragment/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/netease/nr/base/fragment/m;->a:Lcom/netease/nr/base/fragment/k;

    invoke-virtual {v0}, Lcom/netease/nr/base/fragment/k;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/base/fragment/m;->a:Lcom/netease/nr/base/fragment/k;

    invoke-virtual {v0}, Lcom/netease/nr/base/fragment/k;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/util/f/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/base/fragment/m;->a:Lcom/netease/nr/base/fragment/k;

    invoke-virtual {v0}, Lcom/netease/nr/base/fragment/k;->E()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/base/fragment/m;->a:Lcom/netease/nr/base/fragment/k;

    invoke-virtual {v0}, Lcom/netease/nr/base/fragment/k;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b0010

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/netease/nr/base/view/az;->a(Landroid/content/Context;II)Lcom/netease/nr/base/view/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/base/view/az;->show()V

    goto :goto_0
.end method
