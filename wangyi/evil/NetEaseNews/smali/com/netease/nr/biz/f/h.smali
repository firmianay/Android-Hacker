.class Lcom/netease/nr/biz/f/h;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/f/e;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/netease/nr/biz/f/e;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/netease/nr/biz/f/h;->a:Lcom/netease/nr/biz/f/e;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/f/h;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Object;)Ljava/lang/Long;
    .locals 5

    const-wide/16 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/netease/util/i/b;->c()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/netease/util/i/b;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-static {}, Lcom/netease/util/cache/o;->a()J

    move-result-wide v2

    iget-object v4, p0, Lcom/netease/nr/biz/f/h;->b:Landroid/content/Context;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/netease/nr/biz/f/h;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lcom/netease/util/c/a;->a(Ljava/io/File;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    add-long/2addr v0, v2

    :cond_1
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_1
    return-object v0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-wide v0, v2

    goto :goto_0
.end method

.method protected a(Ljava/lang/Long;)V
    .locals 3

    iget-object v0, p0, Lcom/netease/nr/biz/f/h;->b:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/netease/util/c/a;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/f/h;->a:Lcom/netease/nr/biz/f/e;

    invoke-static {v1}, Lcom/netease/nr/biz/f/e;->a(Lcom/netease/nr/biz/f/e;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/f/h;->a([Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 0

    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/f/h;->a(Ljava/lang/Long;)V

    return-void
.end method
