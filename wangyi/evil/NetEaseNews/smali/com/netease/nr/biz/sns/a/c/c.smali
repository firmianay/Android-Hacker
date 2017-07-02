.class Lcom/netease/nr/biz/sns/a/c/c;
.super Landroid/os/AsyncTask;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;

.field private b:Landroid/os/Bundle;

.field private c:Landroid/app/Activity;

.field private d:Lcom/netease/nr/biz/sns/util/category/c/a;

.field private e:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/os/Bundle;Lcom/netease/nr/biz/sns/a/c/a;)V
    .locals 2

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/netease/nr/biz/sns/a/c/c;->c:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/sns/a/c/c;->e:Landroid/content/Context;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/netease/nr/biz/sns/a/c/c;->b:Landroid/os/Bundle;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/netease/nr/biz/sns/a/c/c;->a:Ljava/lang/ref/WeakReference;

    new-instance v0, Lcom/netease/nr/biz/sns/util/category/c/a;

    iget-object v1, p0, Lcom/netease/nr/biz/sns/a/c/c;->c:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netease/nr/biz/sns/util/category/c/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/nr/biz/sns/a/c/c;->d:Lcom/netease/nr/biz/sns/util/category/c/a;

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/biz/sns/a/c/c;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/a/c/c;->e:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 4

    iget-object v0, p0, Lcom/netease/nr/biz/sns/a/c/c;->d:Lcom/netease/nr/biz/sns/util/category/c/a;

    invoke-virtual {v0}, Lcom/netease/nr/biz/sns/util/category/c/a;->a()Lcom/tencent/tauth/d;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/sns/a/c/c;->c:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/nr/biz/sns/a/c/c;->b:Landroid/os/Bundle;

    new-instance v3, Lcom/netease/nr/biz/sns/a/c/d;

    invoke-direct {v3, p0}, Lcom/netease/nr/biz/sns/a/c/d;-><init>(Lcom/netease/nr/biz/sns/a/c/c;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/tauth/d;->a(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/c;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 5

    iget-object v0, p0, Lcom/netease/nr/biz/sns/a/c/c;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/a/c/c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/sns/a/c/a;

    :goto_0
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/netease/util/k/a;->b()Lcom/netease/util/k/f;

    move-result-object v1

    new-instance v2, Lcom/netease/nr/biz/pc/e/f;

    iget-object v3, p0, Lcom/netease/nr/biz/sns/a/c/c;->e:Landroid/content/Context;

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

    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/sns/a/c/c;->a([Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/sns/a/c/c;->a(Ljava/lang/Boolean;)V

    return-void
.end method
