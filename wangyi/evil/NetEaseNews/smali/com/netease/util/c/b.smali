.class public abstract Lcom/netease/util/c/b;
.super Lcom/netease/util/cache/f;


# instance fields
.field private e:Ljava/util/List;

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/netease/util/cache/f;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/util/c/b;->e:Ljava/util/List;

    iput-boolean v1, p0, Lcom/netease/util/c/b;->f:Z

    iput-boolean v1, p0, Lcom/netease/util/c/b;->g:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/netease/util/cache/i;)J
    .locals 6

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/netease/util/cache/i;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p1, Lcom/netease/util/cache/i;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/netease/util/c/b;->c(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v3

    iget-object v1, p0, Lcom/netease/util/c/b;->d:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/netease/util/c/b;->a(Landroid/content/Context;Lcom/netease/util/cache/i;Lorg/apache/http/client/methods/HttpGet;ZZ)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "size"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)J
    .locals 2

    new-instance v0, Lcom/netease/util/cache/i;

    invoke-direct {v0}, Lcom/netease/util/cache/i;-><init>()V

    iput-object p1, v0, Lcom/netease/util/cache/i;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/netease/util/c/b;->a(Lcom/netease/util/cache/i;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected a(Lcom/netease/util/cache/h;Lcom/netease/util/cache/i;Lorg/apache/http/client/methods/HttpGet;)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/netease/util/c/b;->d:Landroid/content/Context;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/netease/util/c/b;->a(Lcom/netease/util/cache/j;Landroid/content/Context;Lcom/netease/util/cache/i;Lorg/apache/http/client/methods/HttpGet;ZZ)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "bitmap"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public a(Landroid/content/Context;Lcom/netease/util/cache/i;Lorg/apache/http/client/methods/HttpGet;ZZ)Ljava/util/HashMap;
    .locals 7

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/netease/util/c/b;->a(Lcom/netease/util/cache/j;Landroid/content/Context;Lcom/netease/util/cache/i;Lorg/apache/http/client/methods/HttpGet;ZZ)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/netease/util/cache/j;Landroid/content/Context;Lcom/netease/util/cache/i;Lorg/apache/http/client/methods/HttpGet;ZZ)Ljava/util/HashMap;
    .locals 9

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    invoke-static {p2}, Lcom/netease/util/f/b;->a(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-eqz p4, :cond_2

    iget-boolean v6, p3, Lcom/netease/util/cache/i;->b:Z

    if-nez v6, :cond_0

    invoke-virtual {p0, p2}, Lcom/netease/util/c/b;->a(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_0
    :try_start_0
    new-instance v6, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v6}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    const/16 v7, 0x7530

    invoke-static {v6, v7}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/16 v7, 0x7530

    invoke-static {v6, v7}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-static {v6}, Lcom/netease/util/f/c;->a(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v6

    invoke-static {v6, p2}, Lcom/netease/util/f/b;->a(Lorg/apache/http/client/HttpClient;Landroid/content/Context;)V

    invoke-virtual {v6, p4}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v1

    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    if-nez v4, :cond_3

    const/4 v3, 0x0

    :goto_0
    if-eqz v4, :cond_1

    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_1
    if-eqz v5, :cond_2

    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    :cond_2
    :goto_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-lez v5, :cond_11

    :goto_2
    const-string v5, "size"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "bitmap"

    invoke-virtual {v4, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "success"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v4

    :cond_3
    :try_start_2
    new-instance v6, Lcom/netease/util/c/c;

    invoke-direct {v6, v4, v1, v2, p1}, Lcom/netease/util/c/c;-><init>(Ljava/io/InputStream;JLcom/netease/util/cache/j;)V

    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    const-wide/16 v6, 0x0

    cmp-long v6, v1, v6

    if-gez v6, :cond_4

    if-eqz p1, :cond_4

    const/16 v6, 0x64

    invoke-interface {p1, v6}, Lcom/netease/util/cache/j;->a(I)V

    :cond_4
    iget v6, p0, Lcom/netease/util/c/b;->b:I

    if-eqz v6, :cond_5

    iget v6, p0, Lcom/netease/util/c/b;->b:I

    if-nez v6, :cond_a

    :cond_5
    :goto_3
    if-eqz v3, :cond_8

    iget-object v6, p3, Lcom/netease/util/cache/i;->d:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_d

    iget-object v6, p3, Lcom/netease/util/cache/i;->a:Ljava/lang/String;

    :goto_4
    invoke-static {v6}, Lcom/netease/util/cache/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz p5, :cond_6

    invoke-virtual {p0}, Lcom/netease/util/c/b;->a()Lcom/netease/util/cache/a;

    move-result-object v7

    invoke-virtual {v7, v6, v3}, Lcom/netease/util/cache/a;->b(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_6
    if-eqz p6, :cond_7

    invoke-virtual {p0}, Lcom/netease/util/c/b;->a()Lcom/netease/util/cache/a;

    move-result-object v7

    invoke-virtual {v7, v6, v3}, Lcom/netease/util/cache/a;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_7
    const/4 v0, 0x1

    :cond_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v6

    if-eqz v4, :cond_9

    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_9
    if-eqz v5, :cond_2

    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v4

    goto :goto_1

    :cond_a
    :try_start_4
    iget-boolean v6, p0, Lcom/netease/util/c/b;->g:Z

    if-eqz v6, :cond_b

    iget v6, p0, Lcom/netease/util/c/b;->b:I

    iget v7, p0, Lcom/netease/util/c/b;->c:I

    invoke-static {v3, v6, v7}, Lcom/netease/util/c/e;->b(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_3

    :cond_b
    iget-boolean v6, p0, Lcom/netease/util/c/b;->f:Z

    if-eqz v6, :cond_c

    iget v6, p0, Lcom/netease/util/c/b;->b:I

    iget v7, p0, Lcom/netease/util/c/b;->c:I

    invoke-static {v3, v6, v7}, Lcom/netease/util/c/e;->a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_3

    :cond_c
    iget v6, p0, Lcom/netease/util/c/b;->b:I

    if-lez v6, :cond_5

    iget v6, p0, Lcom/netease/util/c/b;->c:I

    if-lez v6, :cond_5

    iget-object v6, p0, Lcom/netease/util/c/b;->d:Landroid/content/Context;

    iget v7, p0, Lcom/netease/util/c/b;->b:I

    iget v8, p0, Lcom/netease/util/c/b;->c:I

    invoke-static {v6, v3, v7, v8}, Lcom/netease/util/c/e;->a(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_3

    :cond_d
    iget-object v6, p3, Lcom/netease/util/cache/i;->d:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    :catch_2
    move-exception v6

    if-eqz v4, :cond_e

    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_e
    if-eqz v5, :cond_2

    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_1

    :catch_3
    move-exception v4

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    if-eqz v4, :cond_f

    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_f
    if-eqz v5, :cond_10

    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :cond_10
    :goto_5
    throw v0

    :cond_11
    const-wide/16 v1, 0x0

    goto/16 :goto_2

    :catch_4
    move-exception v1

    goto :goto_5

    :catch_5
    move-exception v4

    goto/16 :goto_1
.end method

.method protected a(ILandroid/widget/ImageView;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/util/c/b;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/util/c/d;

    invoke-interface {v0, p1, p2}, Lcom/netease/util/c/d;->a(ILandroid/widget/ImageView;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected a(Landroid/widget/ImageView;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/util/c/b;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/util/c/d;

    invoke-interface {v0, p1}, Lcom/netease/util/c/d;->a(Landroid/widget/ImageView;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected a(Landroid/widget/ImageView;Z)V
    .locals 2

    iget-object v0, p0, Lcom/netease/util/c/b;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/util/c/d;

    invoke-interface {v0, p1, p2}, Lcom/netease/util/c/d;->a(Landroid/widget/ImageView;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lcom/netease/util/c/d;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netease/util/c/b;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/util/c/b;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/netease/util/c/b;->b(Ljava/lang/String;Landroid/widget/ImageView;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/netease/util/c/b;->g:Z

    return-void
.end method

.method protected abstract a(Landroid/content/Context;)Z
.end method

.method public b(Lcom/netease/util/c/d;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netease/util/c/b;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public b(Lcom/netease/util/cache/i;Landroid/widget/ImageView;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/netease/util/c/b;->a(Lcom/netease/util/cache/i;Landroid/widget/ImageView;)V

    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 6

    const/4 v4, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v4

    :cond_0
    invoke-virtual {p0, p1}, Lcom/netease/util/c/b;->c(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v3

    new-instance v2, Lcom/netease/util/cache/i;

    invoke-direct {v2}, Lcom/netease/util/cache/i;-><init>()V

    iput-object p1, v2, Lcom/netease/util/cache/i;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/util/c/b;->d:Landroid/content/Context;

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/netease/util/c/b;->a(Landroid/content/Context;Lcom/netease/util/cache/i;Lorg/apache/http/client/methods/HttpGet;ZZ)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "success"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    goto :goto_0
.end method

.method protected c(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;
    .locals 5

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    iget-object v2, p0, Lcom/netease/util/c/b;->d:Landroid/content/Context;

    iget v3, p0, Lcom/netease/util/c/b;->b:I

    iget v4, p0, Lcom/netease/util/c/b;->c:I

    invoke-static {p1, v2, v3, v4}, Lcom/netease/util/c/e;->a(Ljava/lang/String;Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/netease/util/c/b;->f:Z

    return-void
.end method

.method public e(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/netease/util/c/b;->d:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/netease/util/c/e;->d(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
