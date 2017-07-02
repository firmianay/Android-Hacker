.class public Lcom/netease/nr/base/c/t;
.super Landroid/os/AsyncTask;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/app/ProgressDialog;

.field private c:Landroid/graphics/Bitmap;

.field private d:Ljava/lang/String;

.field private e:Lcom/netease/nr/base/c/u;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Lcom/netease/nr/base/c/u;)V
    .locals 3

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/netease/nr/base/c/t;->a:Landroid/app/Activity;

    iput-object p4, p0, Lcom/netease/nr/base/c/t;->e:Lcom/netease/nr/base/c/u;

    iput-object p3, p0, Lcom/netease/nr/base/c/t;->d:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Z

    invoke-static {p2, v0}, Lcom/netease/util/c/e;->a(Landroid/view/View;[Z)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/nr/base/c/t;->c:Landroid/graphics/Bitmap;

    :cond_0
    invoke-static {p2, v0}, Lcom/netease/util/c/e;->b(Landroid/view/View;[Z)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3

    iget-object v0, p0, Lcom/netease/nr/base/c/t;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/c/t;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/c/t;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/c/t;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/netease/util/cache/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {}, Lcom/netease/util/cache/a;->a()Lcom/netease/util/cache/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netease/util/cache/a;->e(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lcom/netease/util/cache/a;->a()Lcom/netease/util/cache/a;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nr/base/c/t;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0, v2}, Lcom/netease/util/cache/a;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-static {}, Lcom/netease/util/cache/a;->a()Lcom/netease/util/cache/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netease/util/cache/a;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public a()V
    .locals 1

    invoke-static {}, Lcom/netease/util/k/a;->b()Lcom/netease/util/k/f;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/netease/util/k/f;->a(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/netease/nr/base/c/t;->b:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/c/t;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iput-object v2, p0, Lcom/netease/nr/base/c/t;->b:Landroid/app/ProgressDialog;

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/base/c/t;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/base/c/t;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/netease/nr/base/c/t;->c:Landroid/graphics/Bitmap;

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/nr/base/c/t;->e:Lcom/netease/nr/base/c/u;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/nr/base/c/t;->e:Lcom/netease/nr/base/c/u;

    iget-object v1, p0, Lcom/netease/nr/base/c/t;->d:Ljava/lang/String;

    invoke-interface {v0, p0, v1}, Lcom/netease/nr/base/c/u;->a(Lcom/netease/nr/base/c/t;Ljava/lang/String;)V

    :cond_2
    iput-object v2, p0, Lcom/netease/nr/base/c/t;->e:Lcom/netease/nr/base/c/u;

    iput-object v2, p0, Lcom/netease/nr/base/c/t;->a:Landroid/app/Activity;

    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/netease/nr/base/c/t;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    iget-object v0, p0, Lcom/netease/nr/base/c/t;->b:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/c/t;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iput-object v1, p0, Lcom/netease/nr/base/c/t;->b:Landroid/app/ProgressDialog;

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/base/c/t;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/base/c/t;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/netease/nr/base/c/t;->c:Landroid/graphics/Bitmap;

    :cond_1
    iput-object v1, p0, Lcom/netease/nr/base/c/t;->e:Lcom/netease/nr/base/c/u;

    iput-object v1, p0, Lcom/netease/nr/base/c/t;->a:Landroid/app/Activity;

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/netease/nr/base/c/t;->cancel(Z)Z

    iget-object v0, p0, Lcom/netease/nr/base/c/t;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/c/t;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/netease/nr/base/c/t;->c:Landroid/graphics/Bitmap;

    :cond_0
    iput-object v1, p0, Lcom/netease/nr/base/c/t;->e:Lcom/netease/nr/base/c/u;

    iput-object v1, p0, Lcom/netease/nr/base/c/t;->a:Landroid/app/Activity;

    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/netease/nr/base/c/t;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lcom/netease/nr/base/c/t;->b:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/c/t;->a:Landroid/app/Activity;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/netease/nr/base/c/t;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/nr/base/c/t;->b:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/netease/nr/base/c/t;->b:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/netease/nr/base/c/t;->a:Landroid/app/Activity;

    const v2, 0x7f0b0014

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netease/nr/base/c/t;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/netease/nr/base/c/t;->b:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/base/c/t;->b:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/base/c/t;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :cond_1
    return-void
.end method
