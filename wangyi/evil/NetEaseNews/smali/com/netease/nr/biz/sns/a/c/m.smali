.class Lcom/netease/nr/biz/sns/a/c/m;
.super Landroid/os/AsyncTask;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/netease/nr/biz/sns/util/c;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/netease/nr/biz/sns/util/c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/sns/a/c/m;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/netease/nr/biz/sns/a/c/m;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/nr/biz/sns/a/c/m;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/netease/nr/biz/sns/a/c/m;->d:Lcom/netease/nr/biz/sns/util/c;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/netease/nr/biz/sns/util/c;Ljava/lang/String;Ljava/lang/String;Lcom/netease/nr/biz/sns/a/c/j;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netease/nr/biz/sns/a/c/m;-><init>(Landroid/content/Context;Lcom/netease/nr/biz/sns/util/c;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/Void;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/netease/nr/biz/sns/a/c/m;->d:Lcom/netease/nr/biz/sns/util/c;

    iget-object v1, p0, Lcom/netease/nr/biz/sns/a/c/m;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/nr/biz/sns/a/c/m;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/nr/biz/sns/a/c/m;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/nr/biz/sns/util/c;->transmitBlog(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/netease/util/k/a;->b()Lcom/netease/util/k/f;

    move-result-object v0

    new-instance v1, Lcom/netease/nr/biz/pc/e/f;

    iget-object v2, p0, Lcom/netease/nr/biz/sns/a/c/m;->a:Landroid/content/Context;

    const-string v3, "score_sharenews_key"

    invoke-direct {v1, v2, v3}, Lcom/netease/nr/biz/pc/e/f;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/netease/util/k/f;->a(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/sns/a/c/m;->a([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/sns/a/c/m;->a(Ljava/lang/String;)V

    return-void
.end method
