.class Lcom/netease/nr/biz/ad/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/netease/nr/biz/ad/a;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/ad/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/ad/e;->e:Lcom/netease/nr/biz/ad/a;

    iput-object p2, p0, Lcom/netease/nr/biz/ad/e;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/nr/biz/ad/e;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/nr/biz/ad/e;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/netease/nr/biz/ad/e;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/netease/nr/biz/ad/e;->e:Lcom/netease/nr/biz/ad/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netease/nr/biz/ad/a;->a(Lcom/netease/nr/biz/ad/a;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/netease/nr/biz/ad/e;->e:Lcom/netease/nr/biz/ad/a;

    invoke-virtual {v0}, Lcom/netease/nr/biz/ad/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/netease/nr/biz/ad/s;

    invoke-direct {v0}, Lcom/netease/nr/biz/ad/s;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "app_version"

    iget-object v3, p0, Lcom/netease/nr/biz/ad/e;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "title"

    iget-object v3, p0, Lcom/netease/nr/biz/ad/e;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "content"

    iget-object v3, p0, Lcom/netease/nr/biz/ad/e;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "type"

    iget-object v3, p0, Lcom/netease/nr/biz/ad/e;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/netease/nr/biz/ad/e;->e:Lcom/netease/nr/biz/ad/a;

    invoke-virtual {v2}, Lcom/netease/nr/biz/ad/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/netease/nr/base/c/b;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/netease/nr/biz/ad/e;->e:Lcom/netease/nr/biz/ad/a;

    iget-object v3, p0, Lcom/netease/nr/biz/ad/e;->e:Lcom/netease/nr/biz/ad/a;

    invoke-virtual {v3}, Lcom/netease/nr/biz/ad/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/nr/biz/ad/a;->a(Lcom/netease/nr/biz/ad/a;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "update_ok_title"

    iget-object v3, p0, Lcom/netease/nr/biz/ad/e;->e:Lcom/netease/nr/biz/ad/a;

    invoke-virtual {v3}, Lcom/netease/nr/biz/ad/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f0b003f

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/ad/s;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {v0, v5}, Lcom/netease/nr/biz/ad/s;->setCancelable(Z)V

    iget-object v1, p0, Lcom/netease/nr/biz/ad/e;->e:Lcom/netease/nr/biz/ad/a;

    invoke-virtual {v0, v1, v5}, Lcom/netease/nr/biz/ad/s;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    iget-object v1, p0, Lcom/netease/nr/biz/ad/e;->e:Lcom/netease/nr/biz/ad/a;

    invoke-virtual {v1}, Lcom/netease/nr/biz/ad/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/ad/s;->a(Landroid/support/v4/app/FragmentActivity;)V

    goto :goto_0
.end method
