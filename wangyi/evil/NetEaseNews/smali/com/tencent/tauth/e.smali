.class Lcom/tencent/tauth/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/open/b;


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/tencent/tauth/c;

.field final synthetic e:Landroid/app/Activity;

.field final synthetic f:Lcom/tencent/tauth/d;


# direct methods
.method constructor <init>(Lcom/tencent/tauth/d;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tauth/c;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tauth/e;->f:Lcom/tencent/tauth/d;

    iput-object p2, p0, Lcom/tencent/tauth/e;->a:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/tencent/tauth/e;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/tauth/e;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/tencent/tauth/e;->d:Lcom/tencent/tauth/c;

    iput-object p6, p0, Lcom/tencent/tauth/e;->e:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 5

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/tencent/tauth/e;->a:Landroid/os/Bundle;

    const-string v1, "imageLocalUrl"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/tauth/e;->f:Lcom/tencent/tauth/d;

    iget-object v1, p0, Lcom/tencent/tauth/e;->e:Landroid/app/Activity;

    iget-object v2, p0, Lcom/tencent/tauth/e;->a:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/tencent/tauth/e;->d:Lcom/tencent/tauth/c;

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/tauth/d;->a(Lcom/tencent/tauth/d;Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/c;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/tauth/e;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/open/u;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tauth/e;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/open/u;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tauth/e;->d:Lcom/tencent/tauth/c;

    new-instance v1, Lcom/tencent/tauth/f;

    const/4 v2, -0x6

    const-string v3, "\u83b7\u53d6\u5206\u4eab\u56fe\u7247\u5931\u8d25!"

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/tencent/tauth/f;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/tencent/tauth/c;->a(Lcom/tencent/tauth/f;)V

    const-string v0, "shareToQQ"

    const-string v1, "\u83b7\u53d6\u5206\u4eab\u56fe\u7247\u5931\u8d25!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
