.class Lcom/netease/nr/biz/sns/a/c/f;
.super Landroid/os/AsyncTask;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;

.field private b:Landroid/content/Context;

.field private c:Lcom/netease/nr/biz/sns/util/category/h/a;

.field private d:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/netease/nr/biz/sns/a/c/a;)V
    .locals 2

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/sns/a/c/f;->b:Landroid/content/Context;

    new-instance v0, Lcom/netease/nr/biz/sns/util/category/h/a;

    iget-object v1, p0, Lcom/netease/nr/biz/sns/a/c/f;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/netease/nr/biz/sns/util/category/h/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/nr/biz/sns/a/c/f;->c:Lcom/netease/nr/biz/sns/util/category/h/a;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/netease/nr/biz/sns/a/c/f;->d:Landroid/os/Bundle;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/netease/nr/biz/sns/a/c/f;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Object;)Lcom/yiliao/android/openapis/model/YLMediaMessage;
    .locals 6

    iget-object v0, p0, Lcom/netease/nr/biz/sns/a/c/f;->d:Landroid/os/Bundle;

    const-string v1, "share_title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/netease/nr/biz/sns/a/c/f;->d:Landroid/os/Bundle;

    const-string v1, "share_pic"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/sns/a/c/f;->d:Landroid/os/Bundle;

    const-string v3, "share_content"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/netease/nr/biz/sns/a/c/f;->d:Landroid/os/Bundle;

    const-string v3, "share_other"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    if-nez v5, :cond_0

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/netease/nr/base/c/y;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netease/nr/biz/sns/a/c/f;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/netease/nr/base/c/y;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string v1, "yiliao_img_url"

    invoke-virtual {v5, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netease/nr/biz/sns/a/c/f;->b:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/netease/nr/base/c/a/j;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/netease/nr/base/c/a/j;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netease/nr/base/c/a/j;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    :goto_0
    iget-object v0, p0, Lcom/netease/nr/biz/sns/a/c/f;->c:Lcom/netease/nr/biz/sns/util/category/h/a;

    iget-object v1, p0, Lcom/netease/nr/biz/sns/a/c/f;->b:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/netease/nr/biz/sns/util/category/h/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/yiliao/android/openapis/model/YLMediaMessage;

    move-result-object v0

    return-object v0

    :cond_2
    move-object v3, v0

    goto :goto_0
.end method

.method protected a(Lcom/yiliao/android/openapis/model/YLMediaMessage;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/netease/nr/biz/sns/a/c/f;->c:Lcom/netease/nr/biz/sns/util/category/h/a;

    invoke-virtual {v0, p1}, Lcom/netease/nr/biz/sns/util/category/h/a;->a(Lcom/yiliao/android/openapis/model/YLMediaMessage;)V

    iget-object v0, p0, Lcom/netease/nr/biz/sns/a/c/f;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/a/c/f;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/sns/a/c/a;

    :goto_0
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/netease/util/k/a;->b()Lcom/netease/util/k/f;

    move-result-object v1

    new-instance v2, Lcom/netease/nr/biz/pc/e/f;

    iget-object v3, p0, Lcom/netease/nr/biz/sns/a/c/f;->b:Landroid/content/Context;

    const-string v4, "score_sharenews_key"

    invoke-direct {v2, v3, v4}, Lcom/netease/nr/biz/pc/e/f;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/netease/util/k/f;->a(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    invoke-virtual {v0}, Lcom/netease/nr/biz/sns/a/c/a;->j()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/sns/a/c/f;->a([Ljava/lang/Object;)Lcom/yiliao/android/openapis/model/YLMediaMessage;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    iget-object v0, p0, Lcom/netease/nr/biz/sns/a/c/f;->c:Lcom/netease/nr/biz/sns/util/category/h/a;

    invoke-virtual {v0}, Lcom/netease/nr/biz/sns/util/category/h/a;->a()V

    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/yiliao/android/openapis/model/YLMediaMessage;

    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/sns/a/c/f;->a(Lcom/yiliao/android/openapis/model/YLMediaMessage;)V

    return-void
.end method
