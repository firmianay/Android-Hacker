.class Lcom/netease/nr/biz/h/w;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/h/t;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/h/t;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/h/w;->a:Lcom/netease/nr/biz/h/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    const/16 v2, 0x8

    const-string v0, ""

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/netease/nr/biz/h/w;->a:Lcom/netease/nr/biz/h/t;

    invoke-static {v1, v0}, Lcom/netease/nr/biz/h/t;->a(Lcom/netease/nr/biz/h/t;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/h/w;->a:Lcom/netease/nr/biz/h/t;

    invoke-static {v0}, Lcom/netease/nr/biz/h/t;->c(Lcom/netease/nr/biz/h/t;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/nr/biz/h/w;->a:Lcom/netease/nr/biz/h/t;

    invoke-static {v0}, Lcom/netease/nr/biz/h/t;->d(Lcom/netease/nr/biz/h/t;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/nr/biz/h/w;->a:Lcom/netease/nr/biz/h/t;

    invoke-static {v0}, Lcom/netease/nr/biz/h/t;->e(Lcom/netease/nr/biz/h/t;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
