.class public abstract Lcom/netease/nr/biz/audio/k;
.super Landroid/os/AsyncTask;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/os/Bundle;

.field private c:Landroid/os/Bundle;

.field private d:Landroid/content/Context;

.field private e:Lcom/netease/nr/biz/audio/h;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs a([Ljava/lang/Void;)Landroid/os/Bundle;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/netease/nr/biz/audio/k;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/netease/nr/biz/audio/k;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/nr/biz/audio/k;->c:Landroid/os/Bundle;

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/netease/nr/biz/audio/k;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public abstract a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V
.end method

.method protected final a(Landroid/os/Bundle;)V
    .locals 4

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const-string v0, "param_play_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/netease/nr/biz/audio/k;->e:Lcom/netease/nr/biz/audio/h;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/netease/nr/biz/audio/k;->e:Lcom/netease/nr/biz/audio/h;

    const/4 v3, 0x0

    invoke-static {v2, v0, p1, v3}, Lcom/netease/nr/biz/audio/h;->a(Lcom/netease/nr/biz/audio/h;Ljava/lang/String;Landroid/os/Bundle;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/audio/k;->e:Lcom/netease/nr/biz/audio/h;

    invoke-static {v0, v1}, Lcom/netease/nr/biz/audio/h;->a(Lcom/netease/nr/biz/audio/h;Lcom/netease/nr/biz/audio/j;)V

    :cond_0
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/audio/k;->a([Ljava/lang/Void;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final onCancelled()V
    .locals 4

    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    iget-object v0, p0, Lcom/netease/nr/biz/audio/k;->e:Lcom/netease/nr/biz/audio/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/audio/k;->e:Lcom/netease/nr/biz/audio/h;

    iget-object v1, p0, Lcom/netease/nr/biz/audio/k;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/nr/biz/audio/k;->b:Landroid/os/Bundle;

    const/4 v3, -0x1

    invoke-static {v0, v1, v2, v3}, Lcom/netease/nr/biz/audio/h;->a(Lcom/netease/nr/biz/audio/h;Ljava/lang/String;Landroid/os/Bundle;I)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/nr/biz/audio/k;->e:Lcom/netease/nr/biz/audio/h;

    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/audio/k;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method protected final onPreExecute()V
    .locals 0

    return-void
.end method
