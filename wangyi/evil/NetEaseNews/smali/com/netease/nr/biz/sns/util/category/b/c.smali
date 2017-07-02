.class Lcom/netease/nr/biz/sns/util/category/b/c;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/sns/util/category/b/a;


# direct methods
.method private constructor <init>(Lcom/netease/nr/biz/sns/util/category/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/sns/util/category/b/c;->a:Lcom/netease/nr/biz/sns/util/category/b/a;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/nr/biz/sns/util/category/b/a;Lcom/netease/nr/biz/sns/util/category/b/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/nr/biz/sns/util/category/b/c;-><init>(Lcom/netease/nr/biz/sns/util/category/b/a;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 12

    const/4 v6, 0x0

    const/4 v9, 0x2

    const/4 v0, 0x0

    :try_start_0
    aget-object v3, p1, v0

    new-instance v0, Lcom/netease/nr/biz/sns/util/category/b/d;

    invoke-direct {v0}, Lcom/netease/nr/biz/sns/util/category/b/d;-><init>()V

    const-string v1, "2ffe39c660f146df91ffb206a9d44bd5"

    const-string v2, "63261cea4dc8b5c74ed5eefc0f149acd"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v3, p0, Lcom/netease/nr/biz/sns/util/category/b/c;->a:Lcom/netease/nr/biz/sns/util/category/b/a;

    invoke-static {v3}, Lcom/netease/nr/biz/sns/util/category/b/a;->d(Lcom/netease/nr/biz/sns/util/category/b/a;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/nr/biz/sns/util/category/b/c;->a:Lcom/netease/nr/biz/sns/util/category/b/a;

    invoke-static {v4}, Lcom/netease/nr/biz/sns/util/category/b/a;->e(Lcom/netease/nr/biz/sns/util/category/b/a;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "oauth_verifier"

    invoke-virtual {v5, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/netease/nr/biz/sns/util/category/b/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v3, ""

    const-string v4, ""

    if-eqz v5, :cond_0

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    :goto_0
    sget-object v5, Lcom/netease/nr/biz/sns/util/category/b/f;->b:Lcom/netease/nr/biz/sns/util/category/b/f;

    invoke-virtual/range {v0 .. v5}, Lcom/netease/nr/biz/sns/util/category/b/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/nr/biz/sns/util/category/b/f;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/netease/util/e/a;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "ret"

    invoke-static {v0, v1}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    move-object v0, v6

    :goto_1
    return-object v0

    :cond_1
    const-string v7, "&"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v7, v5

    if-lt v7, v9, :cond_0

    const/4 v7, 0x0

    aget-object v7, v5, v7

    const/4 v8, 0x1

    aget-object v5, v5, v8

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    if-lt v8, v9, :cond_0

    const/4 v3, 0x1

    aget-object v3, v7, v3

    const-string v7, "="

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v7, v5

    if-lt v7, v9, :cond_0

    const/4 v4, 0x1

    aget-object v4, v5, v4

    goto :goto_0

    :cond_2
    const-string v1, "data"

    invoke-static {v0, v1}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_3

    move-object v0, v6

    goto :goto_1

    :cond_3
    const-string v1, "openid"

    invoke-static {v0, v1}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "nick"

    invoke-static {v0, v2}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "head"

    invoke-static {v0, v7}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "/100"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/netease/nr/biz/sns/util/category/b/c;->a:Lcom/netease/nr/biz/sns/util/category/b/a;

    invoke-static {v7}, Lcom/netease/nr/biz/sns/util/category/b/a;->f(Lcom/netease/nr/biz/sns/util/category/b/a;)Landroid/content/Context;

    move-result-object v7

    const-string v8, "qw"

    const/4 v9, 0x7

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    const/4 v10, 0x1

    aput-object v4, v9, v10

    const/4 v10, 0x2

    const-string v11, "name"

    invoke-static {v0, v11}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string v11, "tweetnum"

    invoke-static {v0, v11}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string v11, "regtime"

    invoke-static {v0, v11}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const-string v11, "fansnum"

    invoke-static {v0, v11}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x6

    const-string v11, "isvip"

    invoke-static {v0, v11}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v10

    invoke-static {v7, v8, v9}, Lcom/netease/b/i;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "oauth_token"

    invoke-virtual {v0, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "oauth_token_secret"

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "oauth_name"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "oauth_userid"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "oauth_profile_img"

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v6

    goto/16 :goto_1
.end method

.method protected a(Landroid/content/ContentValues;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/b/c;->a:Lcom/netease/nr/biz/sns/util/category/b/a;

    invoke-static {v0}, Lcom/netease/nr/biz/sns/util/category/b/a;->g(Lcom/netease/nr/biz/sns/util/category/b/a;)Lcom/netease/nr/biz/sns/util/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/b/c;->a:Lcom/netease/nr/biz/sns/util/category/b/a;

    invoke-static {v0}, Lcom/netease/nr/biz/sns/util/category/b/a;->h(Lcom/netease/nr/biz/sns/util/category/b/a;)Lcom/netease/nr/biz/sns/util/d;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v2}, Lcom/netease/util/e/c;->a(ILjava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netease/nr/biz/sns/util/d;->b(Ljava/util/Map;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/b/c;->a:Lcom/netease/nr/biz/sns/util/category/b/a;

    iget-object v1, p0, Lcom/netease/nr/biz/sns/util/category/b/c;->a:Lcom/netease/nr/biz/sns/util/category/b/a;

    invoke-static {v1}, Lcom/netease/nr/biz/sns/util/category/b/a;->i(Lcom/netease/nr/biz/sns/util/category/b/a;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/netease/nr/biz/sns/util/category/b/a;->a(Lcom/netease/nr/biz/sns/util/category/b/a;Landroid/content/Context;Landroid/content/ContentValues;)V

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/b/c;->a:Lcom/netease/nr/biz/sns/util/category/b/a;

    invoke-static {v0}, Lcom/netease/nr/biz/sns/util/category/b/a;->j(Lcom/netease/nr/biz/sns/util/category/b/a;)Lcom/netease/nr/biz/sns/util/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/b/c;->a:Lcom/netease/nr/biz/sns/util/category/b/a;

    invoke-static {v0}, Lcom/netease/nr/biz/sns/util/category/b/a;->k(Lcom/netease/nr/biz/sns/util/category/b/a;)Lcom/netease/nr/biz/sns/util/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v2}, Lcom/netease/util/e/c;->a(ILjava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netease/nr/biz/sns/util/d;->b(Ljava/util/Map;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/sns/util/category/b/c;->a([Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/content/ContentValues;

    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/sns/util/category/b/c;->a(Landroid/content/ContentValues;)V

    return-void
.end method
