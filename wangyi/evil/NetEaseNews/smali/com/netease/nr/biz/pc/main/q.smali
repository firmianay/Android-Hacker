.class Lcom/netease/nr/biz/pc/main/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/pc/main/o;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/pc/main/o;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/pc/main/q;->a:Lcom/netease/nr/biz/pc/main/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/netease/nr/biz/pc/main/q;->a:Lcom/netease/nr/biz/pc/main/o;

    invoke-virtual {v1}, Lcom/netease/nr/biz/pc/main/o;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/netease/nr/biz/update/AppUpdateService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/netease/nr/biz/pc/main/q;->a:Lcom/netease/nr/biz/pc/main/o;

    invoke-virtual {v1}, Lcom/netease/nr/biz/pc/main/o;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/netease/nr/biz/pc/main/q;->a:Lcom/netease/nr/biz/pc/main/o;

    invoke-virtual {v0}, Lcom/netease/nr/biz/pc/main/o;->dismiss()V

    return-void
.end method
