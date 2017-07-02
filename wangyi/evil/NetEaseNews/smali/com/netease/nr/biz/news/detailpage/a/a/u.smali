.class public Lcom/netease/nr/biz/news/detailpage/a/a/u;
.super Landroid/os/AsyncTask;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/netease/nr/biz/news/detailpage/a/a/u;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/netease/nr/biz/news/detailpage/a/a/u;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/nr/biz/news/detailpage/a/a/u;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/a/a/u;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/a/a/u;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/nr/biz/news/detailpage/a/a/u;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/nr/biz/news/detailpage/a/a/s;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/news/detailpage/a/a/u;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/news/detailpage/a/a/u;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    invoke-static {}, Lcom/netease/util/k/a;->b()Lcom/netease/util/k/f;

    move-result-object v0

    new-instance v1, Lcom/netease/nr/biz/pc/e/f;

    iget-object v2, p0, Lcom/netease/nr/biz/news/detailpage/a/a/u;->c:Landroid/content/Context;

    const-string v3, "score_vote_key"

    invoke-direct {v1, v2, v3}, Lcom/netease/nr/biz/pc/e/f;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/netease/util/k/f;->a(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    return-void
.end method
