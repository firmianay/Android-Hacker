.class Lcom/netease/nr/biz/pc/a/r;
.super Landroid/os/AsyncTask;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/netease/nr/biz/pc/a/q;

.field private c:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netease/nr/biz/pc/a/q;Landroid/net/Uri;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/pc/a/r;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/netease/nr/biz/pc/a/r;->c:Landroid/net/Uri;

    iput-object p2, p0, Lcom/netease/nr/biz/pc/a/r;->b:Lcom/netease/nr/biz/pc/a/q;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/String;
    .locals 7

    const/16 v6, 0x64

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/netease/nr/biz/pc/a/r;->c:Landroid/net/Uri;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/netease/nr/biz/pc/a/r;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nr/biz/pc/a/r;->c:Landroid/net/Uri;

    invoke-static {v1, v2}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :try_start_1
    iget-object v2, p0, Lcom/netease/nr/biz/pc/a/r;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/nr/biz/pc/a/r;->c:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-static {v1, v6, v6, v2}, Lcom/netease/util/c/e;->a(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    :try_start_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "head_img_upload_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/netease/util/cache/a;->a()Lcom/netease/util/cache/a;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/netease/util/cache/a;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-static {}, Lcom/netease/util/cache/a;->a()Lcom/netease/util/cache/a;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/netease/util/cache/a;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "img"

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/netease/nr/biz/pc/a/r;->a:Landroid/content/Context;

    const-string v4, "http://m.163.com/api/comments/uploadImg"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5, v2}, Lcom/netease/util/f/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "0"

    const-string v4, "state"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "img"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto/16 :goto_0

    :catch_1
    move-exception v1

    move-object v1, v0

    goto :goto_1

    :catch_2
    move-exception v2

    goto :goto_1

    :catch_3
    move-exception v1

    move-object v1, v0

    goto :goto_1

    :catch_4
    move-exception v2

    goto :goto_1
.end method

.method protected a(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/netease/nr/biz/pc/a/r;->a:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/netease/nr/biz/pc/a/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/netease/nr/biz/pc/a/r;->b:Lcom/netease/nr/biz/pc/a/q;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netease/nr/biz/pc/a/r;->b:Lcom/netease/nr/biz/pc/a/q;

    invoke-virtual {v1}, Lcom/netease/nr/biz/pc/a/q;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netease/nr/biz/pc/a/r;->b:Lcom/netease/nr/biz/pc/a/q;

    invoke-static {v1, v0}, Lcom/netease/nr/biz/pc/a/q;->a(Lcom/netease/nr/biz/pc/a/q;Z)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/nr/biz/pc/a/r;->b:Lcom/netease/nr/biz/pc/a/q;

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/pc/a/r;->a([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/nr/biz/pc/a/r;->b:Lcom/netease/nr/biz/pc/a/q;

    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/pc/a/r;->a(Ljava/lang/String;)V

    return-void
.end method
