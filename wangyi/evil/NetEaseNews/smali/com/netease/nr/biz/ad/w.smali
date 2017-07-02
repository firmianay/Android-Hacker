.class Lcom/netease/nr/biz/ad/w;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/ad/s;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/ad/s;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/ad/w;->a:Lcom/netease/nr/biz/ad/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/ad/w;->a:Lcom/netease/nr/biz/ad/s;

    invoke-virtual {v0}, Lcom/netease/nr/biz/ad/s;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nr/base/c/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/ad/w;->a:Lcom/netease/nr/biz/ad/s;

    invoke-virtual {v0}, Lcom/netease/nr/biz/ad/s;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/util/f/b;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/ad/w;->a:Lcom/netease/nr/biz/ad/s;

    invoke-virtual {v0}, Lcom/netease/nr/biz/ad/s;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/ad/a;

    invoke-virtual {v0}, Lcom/netease/nr/biz/ad/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/ad/w;->a:Lcom/netease/nr/biz/ad/s;

    invoke-virtual {v0}, Lcom/netease/nr/biz/ad/s;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/ad/a;

    invoke-virtual {v0}, Lcom/netease/nr/biz/ad/a;->e()V

    goto :goto_0
.end method
