.class Lcom/netease/nr/base/fragment/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/netease/nr/base/fragment/BaseWebFragment;


# direct methods
.method constructor <init>(Lcom/netease/nr/base/fragment/BaseWebFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/base/fragment/r;->a:Lcom/netease/nr/base/fragment/BaseWebFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/netease/nr/base/fragment/r;->a:Lcom/netease/nr/base/fragment/BaseWebFragment;

    invoke-virtual {v0}, Lcom/netease/nr/base/fragment/BaseWebFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v1, 0x7f0c007b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/netease/nr/base/fragment/r;->a:Lcom/netease/nr/base/fragment/BaseWebFragment;

    invoke-static {v0}, Lcom/netease/nr/base/fragment/BaseWebFragment;->a(Lcom/netease/nr/base/fragment/BaseWebFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/netease/nr/base/fragment/r;->a:Lcom/netease/nr/base/fragment/BaseWebFragment;

    invoke-static {v0}, Lcom/netease/nr/base/fragment/BaseWebFragment;->b(Lcom/netease/nr/base/fragment/BaseWebFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/fragment/r;->a:Lcom/netease/nr/base/fragment/BaseWebFragment;

    invoke-static {v0}, Lcom/netease/nr/base/fragment/BaseWebFragment;->c(Lcom/netease/nr/base/fragment/BaseWebFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/fragment/r;->a:Lcom/netease/nr/base/fragment/BaseWebFragment;

    invoke-static {v0}, Lcom/netease/nr/base/fragment/BaseWebFragment;->d(Lcom/netease/nr/base/fragment/BaseWebFragment;)Lcom/netease/nr/biz/i/a/a/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/fragment/r;->a:Lcom/netease/nr/base/fragment/BaseWebFragment;

    invoke-static {v0}, Lcom/netease/nr/base/fragment/BaseWebFragment;->d(Lcom/netease/nr/base/fragment/BaseWebFragment;)Lcom/netease/nr/biz/i/a/a/d;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/base/fragment/r;->a:Lcom/netease/nr/base/fragment/BaseWebFragment;

    invoke-static {v1}, Lcom/netease/nr/base/fragment/BaseWebFragment;->b(Lcom/netease/nr/base/fragment/BaseWebFragment;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nr/base/fragment/r;->a:Lcom/netease/nr/base/fragment/BaseWebFragment;

    invoke-static {v2}, Lcom/netease/nr/base/fragment/BaseWebFragment;->c(Lcom/netease/nr/base/fragment/BaseWebFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netease/nr/biz/i/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/nr/base/fragment/r;->a:Lcom/netease/nr/base/fragment/BaseWebFragment;

    invoke-static {v0}, Lcom/netease/nr/base/fragment/BaseWebFragment;->d(Lcom/netease/nr/base/fragment/BaseWebFragment;)Lcom/netease/nr/biz/i/a/a/d;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/i/a/a/d;->a(Z)V

    goto :goto_0

    :cond_3
    const/16 v0, 0x8

    goto :goto_1
.end method
