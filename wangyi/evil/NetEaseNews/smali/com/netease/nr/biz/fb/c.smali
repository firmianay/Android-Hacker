.class Lcom/netease/nr/biz/fb/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/fb/CreateNewFeedBack;

.field private b:I


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/fb/CreateNewFeedBack;)V
    .locals 1

    iput-object p1, p0, Lcom/netease/nr/biz/fb/c;->a:Lcom/netease/nr/biz/fb/CreateNewFeedBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/nr/biz/fb/c;->b:I

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

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    rsub-int v0, v0, 0x1f4

    iput v0, p0, Lcom/netease/nr/biz/fb/c;->b:I

    iget v0, p0, Lcom/netease/nr/biz/fb/c;->b:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/fb/c;->a:Lcom/netease/nr/biz/fb/CreateNewFeedBack;

    iget-object v1, p0, Lcom/netease/nr/biz/fb/c;->a:Lcom/netease/nr/biz/fb/CreateNewFeedBack;

    const v2, 0x7f0b0219

    invoke-virtual {v1, v2}, Lcom/netease/nr/biz/fb/CreateNewFeedBack;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/netease/nr/base/view/az;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/netease/nr/base/view/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/base/view/az;->show()V

    :cond_0
    return-void
.end method
