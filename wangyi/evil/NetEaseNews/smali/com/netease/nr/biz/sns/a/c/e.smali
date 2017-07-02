.class Lcom/netease/nr/biz/sns/a/c/e;
.super Landroid/os/AsyncTask;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;

.field private b:Landroid/content/Context;

.field private c:Lcom/netease/nr/biz/sns/util/category/g/a;

.field private d:Landroid/os/Bundle;

.field private e:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/netease/nr/biz/sns/a/c/a;Z)V
    .locals 2

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/nr/biz/sns/a/c/e;->e:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/sns/a/c/e;->b:Landroid/content/Context;

    new-instance v0, Lcom/netease/nr/biz/sns/util/category/g/a;

    iget-object v1, p0, Lcom/netease/nr/biz/sns/a/c/e;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/netease/nr/biz/sns/util/category/g/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/nr/biz/sns/a/c/e;->c:Lcom/netease/nr/biz/sns/util/category/g/a;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/netease/nr/biz/sns/a/c/e;->d:Landroid/os/Bundle;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/netease/nr/biz/sns/a/c/e;->a:Ljava/lang/ref/WeakReference;

    iput-boolean p4, p0, Lcom/netease/nr/biz/sns/a/c/e;->e:Z

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Object;)Lcom/tencent/mm/sdk/openapi/WXMediaMessage;
    .locals 7

    new-instance v0, Lcom/netease/nr/biz/sns/util/category/g/a;

    iget-object v1, p0, Lcom/netease/nr/biz/sns/a/c/e;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/netease/nr/biz/sns/util/category/g/a;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/netease/nr/biz/sns/a/c/e;->d:Landroid/os/Bundle;

    const-string v2, "share_title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/netease/nr/biz/sns/a/c/e;->d:Landroid/os/Bundle;

    const-string v3, "share_pic"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/netease/nr/biz/sns/a/c/e;->d:Landroid/os/Bundle;

    const-string v4, "share_content"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v3, p0, Lcom/netease/nr/biz/sns/a/c/e;->d:Landroid/os/Bundle;

    const-string v5, "share_other"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    if-nez v5, :cond_0

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "http"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v1}, Lcom/netease/nr/base/c/y;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/netease/nr/biz/sns/a/c/e;->b:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/netease/nr/base/c/y;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    const-string v3, "weixin_img_url"

    invoke-virtual {v5, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/netease/nr/biz/sns/a/c/e;->b:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-static {v3, v6}, Lcom/netease/nr/base/c/a/j;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/netease/nr/base/c/a/j;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/netease/nr/base/c/a/j;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "weixin_img_url"

    invoke-virtual {v5, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move-object v3, v1

    iget-object v1, p0, Lcom/netease/nr/biz/sns/a/c/e;->b:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/netease/nr/biz/sns/util/category/g/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/tencent/mm/sdk/openapi/WXMediaMessage;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/tencent/mm/sdk/openapi/WXMediaMessage;)V
    .locals 5

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    new-instance v2, Lcom/tencent/mm/sdk/openapi/d;

    invoke-direct {v2}, Lcom/tencent/mm/sdk/openapi/d;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/tencent/mm/sdk/openapi/d;->a:Ljava/lang/String;

    iput-object p1, v2, Lcom/tencent/mm/sdk/openapi/d;->b:Lcom/tencent/mm/sdk/openapi/WXMediaMessage;

    iget-boolean v0, p0, Lcom/netease/nr/biz/sns/a/c/e;->e:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput v0, v2, Lcom/tencent/mm/sdk/openapi/d;->c:I

    iget-object v0, p0, Lcom/netease/nr/biz/sns/a/c/e;->c:Lcom/netease/nr/biz/sns/util/category/g/a;

    invoke-virtual {v0}, Lcom/netease/nr/biz/sns/util/category/g/a;->a()Lcom/tencent/mm/sdk/openapi/b;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/tencent/mm/sdk/openapi/b;->a(Lcom/tencent/mm/sdk/openapi/a;)Z

    iget-object v2, p0, Lcom/netease/nr/biz/sns/a/c/e;->b:Landroid/content/Context;

    iget-boolean v0, p0, Lcom/netease/nr/biz/sns/a/c/e;->e:Z

    if-eqz v0, :cond_2

    const-string v0, "spy"

    :goto_1
    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lcom/netease/b/i;->b(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/nr/biz/sns/a/c/e;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netease/nr/biz/sns/a/c/e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/sns/a/c/a;

    :goto_2
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/netease/util/k/a;->b()Lcom/netease/util/k/f;

    move-result-object v1

    new-instance v2, Lcom/netease/nr/biz/pc/e/f;

    iget-object v3, p0, Lcom/netease/nr/biz/sns/a/c/e;->b:Landroid/content/Context;

    const-string v4, "score_sharenews_key"

    invoke-direct {v2, v3, v4}, Lcom/netease/nr/biz/pc/e/f;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/netease/util/k/f;->a(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    invoke-virtual {v0}, Lcom/netease/nr/biz/sns/a/c/a;->j()V

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    const-string v0, "swx"

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/sns/a/c/e;->a([Ljava/lang/Object;)Lcom/tencent/mm/sdk/openapi/WXMediaMessage;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;

    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/sns/a/c/e;->a(Lcom/tencent/mm/sdk/openapi/WXMediaMessage;)V

    return-void
.end method
