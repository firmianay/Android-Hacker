.class Lcom/netease/ad/h/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/ad/c/e;


# instance fields
.field final synthetic a:Lcom/netease/ad/h/a;


# direct methods
.method constructor <init>(Lcom/netease/ad/h/a;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/ad/h/b;->a:Lcom/netease/ad/h/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/netease/ad/e/a;)V
    .locals 3

    const/16 v2, 0x258

    iget v0, p1, Lcom/netease/ad/e/a;->c:I

    if-nez v0, :cond_1

    check-cast p1, Lcom/netease/ad/e/b;

    iget-object v0, p1, Lcom/netease/ad/e/b;->d:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ad/h/b;->a:Lcom/netease/ad/h/a;

    invoke-static {v0}, Lcom/netease/ad/h/a;->a(Lcom/netease/ad/h/a;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u4e0b\u8f7d\u5b8c\u6210"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p1, Lcom/netease/ad/e/b;->d:Ljava/io/File;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/netease/ad/h/b;->a:Lcom/netease/ad/h/a;

    invoke-static {v1}, Lcom/netease/ad/h/a;->a(Lcom/netease/ad/h/a;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/ad/h/b;->a:Lcom/netease/ad/h/a;

    invoke-static {v0}, Lcom/netease/ad/h/a;->a(Lcom/netease/ad/h/a;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u4e0b\u8f7d\u5931\u8d25"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
