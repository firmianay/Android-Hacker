.class Lcom/netease/nr/biz/pc/a/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/pc/a/f;

.field private b:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/pc/a/f;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/pc/a/h;->a:Lcom/netease/nr/biz/pc/a/f;

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

    iput-object p1, p0, Lcom/netease/nr/biz/pc/a/h;->b:Ljava/lang/CharSequence;

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/biz/pc/a/h;->a:Lcom/netease/nr/biz/pc/a/f;

    iget-object v1, p0, Lcom/netease/nr/biz/pc/a/h;->b:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {v0, v1}, Lcom/netease/nr/biz/pc/a/f;->b(Lcom/netease/nr/biz/pc/a/f;I)I

    iget-object v0, p0, Lcom/netease/nr/biz/pc/a/h;->a:Lcom/netease/nr/biz/pc/a/f;

    invoke-static {v0}, Lcom/netease/nr/biz/pc/a/f;->c(Lcom/netease/nr/biz/pc/a/f;)V

    return-void
.end method
