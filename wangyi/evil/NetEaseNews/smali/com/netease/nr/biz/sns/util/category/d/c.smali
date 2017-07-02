.class Lcom/netease/nr/biz/sns/util/category/d/c;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/sns/util/category/d/a;


# direct methods
.method private constructor <init>(Lcom/netease/nr/biz/sns/util/category/d/a;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/sns/util/category/d/c;->a:Lcom/netease/nr/biz/sns/util/category/d/a;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/nr/biz/sns/util/category/d/a;Lcom/netease/nr/biz/sns/util/category/d/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/nr/biz/sns/util/category/d/c;-><init>(Lcom/netease/nr/biz/sns/util/category/d/a;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/d/c;->a:Lcom/netease/nr/biz/sns/util/category/d/a;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-static {v0, v2}, Lcom/netease/nr/biz/sns/util/category/d/a;->b(Lcom/netease/nr/biz/sns/util/category/d/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/renren/api/connect/android/Util;->parseUrl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "error"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "error_code"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    const-string v2, "access_token"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, "expires_in"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/d/c;->a:Lcom/netease/nr/biz/sns/util/category/d/a;

    invoke-static {}, Lcom/netease/nr/biz/sns/util/category/d/a;->a()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/netease/nr/biz/sns/util/category/d/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v4, v2, v3}, Lcom/netease/nr/biz/sns/util/category/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v2, "QQ\u7a7a\u95f4"

    const-string v0, ""

    if-eqz v3, :cond_2

    const-string v0, "nickname"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "figureurl"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v2

    move-object v2, v0

    :goto_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "oauth_token"

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "oauth_token_secret"

    sget-object v5, Lcom/netease/nr/biz/sns/util/category/d/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "oauth_name"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "oauth_userid"

    invoke-static {}, Lcom/netease/nr/biz/sns/util/category/d/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "oauth_profile_img"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v3, v2

    move-object v2, v0

    goto :goto_1
.end method

.method protected a(Landroid/content/ContentValues;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/d/c;->a:Lcom/netease/nr/biz/sns/util/category/d/a;

    invoke-static {v0}, Lcom/netease/nr/biz/sns/util/category/d/a;->d(Lcom/netease/nr/biz/sns/util/category/d/a;)Lcom/netease/nr/biz/sns/util/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/d/c;->a:Lcom/netease/nr/biz/sns/util/category/d/a;

    invoke-static {v0}, Lcom/netease/nr/biz/sns/util/category/d/a;->e(Lcom/netease/nr/biz/sns/util/category/d/a;)Lcom/netease/nr/biz/sns/util/d;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v2}, Lcom/netease/util/e/c;->a(ILjava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netease/nr/biz/sns/util/d;->b(Ljava/util/Map;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/d/c;->a:Lcom/netease/nr/biz/sns/util/category/d/a;

    iget-object v1, p0, Lcom/netease/nr/biz/sns/util/category/d/c;->a:Lcom/netease/nr/biz/sns/util/category/d/a;

    invoke-static {v1}, Lcom/netease/nr/biz/sns/util/category/d/a;->f(Lcom/netease/nr/biz/sns/util/category/d/a;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/netease/nr/biz/sns/util/category/d/a;->a(Lcom/netease/nr/biz/sns/util/category/d/a;Landroid/content/Context;Landroid/content/ContentValues;)V

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/d/c;->a:Lcom/netease/nr/biz/sns/util/category/d/a;

    invoke-static {v0}, Lcom/netease/nr/biz/sns/util/category/d/a;->g(Lcom/netease/nr/biz/sns/util/category/d/a;)Lcom/netease/nr/biz/sns/util/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/d/c;->a:Lcom/netease/nr/biz/sns/util/category/d/a;

    invoke-static {v0}, Lcom/netease/nr/biz/sns/util/category/d/a;->h(Lcom/netease/nr/biz/sns/util/category/d/a;)Lcom/netease/nr/biz/sns/util/d;

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

    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/sns/util/category/d/c;->a([Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/content/ContentValues;

    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/sns/util/category/d/c;->a(Landroid/content/ContentValues;)V

    return-void
.end method
