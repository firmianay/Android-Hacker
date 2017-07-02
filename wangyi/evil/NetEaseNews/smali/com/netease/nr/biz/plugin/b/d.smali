.class Lcom/netease/nr/biz/plugin/b/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/plugin/b/c;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/plugin/b/c;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/plugin/b/d;->a:Lcom/netease/nr/biz/plugin/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/b/d;->a:Lcom/netease/nr/biz/plugin/b/c;

    invoke-static {v0}, Lcom/netease/nr/biz/plugin/b/c;->a(Lcom/netease/nr/biz/plugin/b/c;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/b/d;->a:Lcom/netease/nr/biz/plugin/b/c;

    invoke-static {v0}, Lcom/netease/nr/biz/plugin/b/c;->b(Lcom/netease/nr/biz/plugin/b/c;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/b/d;->a:Lcom/netease/nr/biz/plugin/b/c;

    invoke-static {v0}, Lcom/netease/nr/biz/plugin/b/c;->c(Lcom/netease/nr/biz/plugin/b/c;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/plugin/b/d;->a:Lcom/netease/nr/biz/plugin/b/c;

    invoke-static {v0}, Lcom/netease/nr/biz/plugin/b/c;->d(Lcom/netease/nr/biz/plugin/b/c;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c00f8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/b/d;->a:Lcom/netease/nr/biz/plugin/b/c;

    invoke-static {v0}, Lcom/netease/nr/biz/plugin/b/c;->b(Lcom/netease/nr/biz/plugin/b/c;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
