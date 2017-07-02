.class Lcom/netease/nr/biz/j/d/f;
.super Landroid/os/AsyncTask;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/netease/nr/biz/j/d/f;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/netease/nr/biz/j/d/f;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/nr/biz/j/d/f;->c:Landroid/content/Context;

    iput-object p1, p0, Lcom/netease/nr/biz/j/d/f;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/netease/nr/biz/j/d/f;->b:Ljava/lang/String;

    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/j/d/f;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 3

    iget-object v0, p0, Lcom/netease/nr/biz/j/d/f;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/netease/nr/biz/j/d/f;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/nr/biz/j/d/f;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/nr/biz/news/detailpage/a/a/s;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/j/d/f;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/netease/nr/biz/j/d/f;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b01a1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/netease/nr/base/view/az;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/netease/nr/base/view/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/base/view/az;->show()V

    invoke-static {}, Lcom/netease/util/k/a;->b()Lcom/netease/util/k/f;

    move-result-object v0

    new-instance v1, Lcom/netease/nr/biz/pc/e/f;

    iget-object v2, p0, Lcom/netease/nr/biz/j/d/f;->c:Landroid/content/Context;

    const-string v3, "score_vote_key"

    invoke-direct {v1, v2, v3}, Lcom/netease/nr/biz/pc/e/f;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/netease/util/k/f;->a(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/j/d/f;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/netease/nr/biz/j/d/f;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b01a2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/netease/nr/base/view/az;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/netease/nr/base/view/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/base/view/az;->show()V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/j/d/f;->a([Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/j/d/f;->a(Ljava/lang/Boolean;)V

    return-void
.end method
