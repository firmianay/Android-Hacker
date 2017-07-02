.class Lcom/netease/nr/biz/sns/a/c/g;
.super Landroid/os/AsyncTask;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;

.field private b:Lcom/netease/nr/biz/sns/util/category/i/a;

.field private c:Landroid/os/Bundle;

.field private d:Landroid/content/Context;

.field private e:I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/netease/nr/biz/sns/a/c/a;I)V
    .locals 2

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/sns/a/c/g;->d:Landroid/content/Context;

    new-instance v0, Lcom/netease/nr/biz/sns/util/category/i/a;

    iget-object v1, p0, Lcom/netease/nr/biz/sns/a/c/g;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/netease/nr/biz/sns/util/category/i/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/nr/biz/sns/a/c/g;->b:Lcom/netease/nr/biz/sns/util/category/i/a;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/netease/nr/biz/sns/a/c/g;->c:Landroid/os/Bundle;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/netease/nr/biz/sns/a/c/g;->a:Ljava/lang/ref/WeakReference;

    iput p4, p0, Lcom/netease/nr/biz/sns/a/c/g;->e:I

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Object;)Lim/yixin/sdk/api/f;
    .locals 6

    iget-object v0, p0, Lcom/netease/nr/biz/sns/a/c/g;->c:Landroid/os/Bundle;

    const-string v1, "share_title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/netease/nr/biz/sns/a/c/g;->c:Landroid/os/Bundle;

    const-string v1, "share_pic"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/netease/nr/biz/sns/a/c/g;->c:Landroid/os/Bundle;

    const-string v1, "share_content"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/netease/nr/biz/sns/a/c/g;->c:Landroid/os/Bundle;

    const-string v1, "share_other"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    if-nez v5, :cond_0

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/sns/a/c/g;->b:Lcom/netease/nr/biz/sns/util/category/i/a;

    iget v1, p0, Lcom/netease/nr/biz/sns/a/c/g;->e:I

    invoke-virtual/range {v0 .. v5}, Lcom/netease/nr/biz/sns/util/category/i/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lim/yixin/sdk/api/f;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lim/yixin/sdk/api/f;)V
    .locals 5

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/sns/a/c/g;->b:Lcom/netease/nr/biz/sns/util/category/i/a;

    invoke-virtual {v0, p1}, Lcom/netease/nr/biz/sns/util/category/i/a;->a(Lim/yixin/sdk/api/f;)V

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/sns/a/c/g;->b:Lcom/netease/nr/biz/sns/util/category/i/a;

    invoke-virtual {v0}, Lcom/netease/nr/biz/sns/util/category/i/a;->a()V

    iget-object v0, p0, Lcom/netease/nr/biz/sns/a/c/g;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/nr/biz/sns/a/c/g;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/sns/a/c/a;

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/netease/util/k/a;->b()Lcom/netease/util/k/f;

    move-result-object v1

    new-instance v2, Lcom/netease/nr/biz/pc/e/f;

    iget-object v3, p0, Lcom/netease/nr/biz/sns/a/c/g;->d:Landroid/content/Context;

    const-string v4, "score_sharenews_key"

    invoke-direct {v2, v3, v4}, Lcom/netease/nr/biz/pc/e/f;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/netease/util/k/f;->a(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    invoke-virtual {v0}, Lcom/netease/nr/biz/sns/a/c/a;->dismiss()V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/sns/a/c/g;->a([Ljava/lang/Object;)Lim/yixin/sdk/api/f;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/a/c/g;->b:Lcom/netease/nr/biz/sns/util/category/i/a;

    invoke-virtual {v0}, Lcom/netease/nr/biz/sns/util/category/i/a;->a()V

    iget-object v0, p0, Lcom/netease/nr/biz/sns/a/c/g;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/sns/a/c/g;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/sns/a/c/g;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/sns/a/c/a;

    invoke-virtual {v0}, Lcom/netease/nr/biz/sns/a/c/a;->dismiss()V

    :cond_0
    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lim/yixin/sdk/api/f;

    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/sns/a/c/g;->a(Lim/yixin/sdk/api/f;)V

    return-void
.end method
