.class Lcom/netease/nr/biz/ad/v;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/ad/s;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/ad/s;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/ad/v;->a:Lcom/netease/nr/biz/ad/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/ad/v;->a:Lcom/netease/nr/biz/ad/s;

    invoke-virtual {v0}, Lcom/netease/nr/biz/ad/s;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/ad/a;

    invoke-virtual {v0}, Lcom/netease/nr/biz/ad/a;->e()V

    return-void
.end method
