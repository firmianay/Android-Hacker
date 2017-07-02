.class Lcom/netease/ad/context/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Landroid/widget/RadioButton;

.field final synthetic c:Landroid/widget/EditText;

.field final synthetic d:Landroid/widget/EditText;

.field final synthetic e:Lcom/netease/ad/context/NTESAdTest;


# direct methods
.method constructor <init>(Lcom/netease/ad/context/NTESAdTest;Landroid/widget/EditText;Landroid/widget/RadioButton;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/ad/context/b;->e:Lcom/netease/ad/context/NTESAdTest;

    iput-object p2, p0, Lcom/netease/ad/context/b;->a:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/netease/ad/context/b;->b:Landroid/widget/RadioButton;

    iput-object p4, p0, Lcom/netease/ad/context/b;->c:Landroid/widget/EditText;

    iput-object p5, p0, Lcom/netease/ad/context/b;->d:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/netease/ad/context/b;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/ad/b/e;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/ad/context/b;->b:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "android"

    :goto_0
    sput-object v0, Lcom/netease/ad/b/e;->b:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "category"

    iget-object v2, p0, Lcom/netease/ad/context/b;->c:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "location"

    iget-object v2, p0, Lcom/netease/ad/context/b;->d:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/netease/ad/context/b;->e:Lcom/netease/ad/context/NTESAdTest;

    iget-object v1, v1, Lcom/netease/ad/context/NTESAdTest;->b:Lcom/netease/ad/a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netease/ad/context/b;->e:Lcom/netease/ad/context/NTESAdTest;

    iget-object v1, v1, Lcom/netease/ad/context/NTESAdTest;->b:Lcom/netease/ad/a;

    invoke-virtual {v1}, Lcom/netease/ad/a;->b()V

    :cond_0
    iget-object v1, p0, Lcom/netease/ad/context/b;->e:Lcom/netease/ad/context/NTESAdTest;

    invoke-static {}, Lcom/netease/ad/f;->a()Lcom/netease/ad/f;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/netease/ad/f;->a(Ljava/util/HashMap;)Lcom/netease/ad/a;

    move-result-object v0

    iput-object v0, v1, Lcom/netease/ad/context/NTESAdTest;->b:Lcom/netease/ad/a;

    return-void

    :cond_1
    const-string v0, "ios"

    goto :goto_0
.end method
