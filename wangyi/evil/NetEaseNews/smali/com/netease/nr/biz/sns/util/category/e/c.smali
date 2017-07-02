.class Lcom/netease/nr/biz/sns/util/category/e/c;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/sns/util/category/e/a;


# direct methods
.method private constructor <init>(Lcom/netease/nr/biz/sns/util/category/e/a;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/sns/util/category/e/c;->a:Lcom/netease/nr/biz/sns/util/category/e/a;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/nr/biz/sns/util/category/e/a;Lcom/netease/nr/biz/sns/util/category/e/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/nr/biz/sns/util/category/e/c;-><init>(Lcom/netease/nr/biz/sns/util/category/e/a;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    aget-object v1, p1, v1

    invoke-static {v1}, Lcom/renren/api/connect/android/Util;->parseUrl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "error"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/CookieSyncManager;->sync()V

    const-string v2, "access_token"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/renren/api/connect/android/Renren;

    sget-object v3, Lcom/netease/nr/biz/sns/util/category/e/a;->a:Ljava/lang/String;

    sget-object v4, Lcom/netease/nr/biz/sns/util/category/e/a;->b:Ljava/lang/String;

    sget-object v5, Lcom/netease/nr/biz/sns/util/category/e/a;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/netease/nr/biz/sns/util/category/e/c;->a:Lcom/netease/nr/biz/sns/util/category/e/a;

    invoke-static {v6}, Lcom/netease/nr/biz/sns/util/category/e/a;->f(Lcom/netease/nr/biz/sns/util/category/e/a;)Landroid/content/Context;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/renren/api/connect/android/Renren;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Lcom/renren/api/connect/android/Renren;->updateAccessToken(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/renren/api/connect/android/Renren;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/renren/api/connect/android/Renren;->getAccessToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v5, "method"

    const-string v6, "users.getInfo"

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "v"

    const-string v6, "1.0"

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "format"

    const-string v6, "JSON"

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "fields"

    const-string v6, "uid,name,headurl"

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/renren/api/connect/android/Renren;->requestJSON(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/util/e/a;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "uid"

    invoke-static {v1, v2}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "name"

    invoke-static {v1, v5}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "headurl"

    invoke-static {v1, v6}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lcom/netease/nr/biz/sns/util/category/e/c;->a:Lcom/netease/nr/biz/sns/util/category/e/a;

    invoke-static {v1}, Lcom/netease/nr/biz/sns/util/category/e/a;->g(Lcom/netease/nr/biz/sns/util/category/e/a;)Landroid/content/Context;

    move-result-object v1

    const-string v7, "rr"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    const/4 v9, 0x1

    aput-object v3, v8, v9

    invoke-static {v1, v7, v8}, Lcom/netease/b/i;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "oauth_token"

    invoke-virtual {v1, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "oauth_token_secret"

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "oauth_name"

    invoke-virtual {v1, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "oauth_userid"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "oauth_profile_img"

    invoke-virtual {v1, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method protected a(Landroid/content/ContentValues;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/e/c;->a:Lcom/netease/nr/biz/sns/util/category/e/a;

    invoke-static {v0}, Lcom/netease/nr/biz/sns/util/category/e/a;->h(Lcom/netease/nr/biz/sns/util/category/e/a;)Lcom/netease/nr/biz/sns/util/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/e/c;->a:Lcom/netease/nr/biz/sns/util/category/e/a;

    invoke-static {v0}, Lcom/netease/nr/biz/sns/util/category/e/a;->i(Lcom/netease/nr/biz/sns/util/category/e/a;)Lcom/netease/nr/biz/sns/util/d;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v2}, Lcom/netease/util/e/c;->a(ILjava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netease/nr/biz/sns/util/d;->b(Ljava/util/Map;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/e/c;->a:Lcom/netease/nr/biz/sns/util/category/e/a;

    iget-object v1, p0, Lcom/netease/nr/biz/sns/util/category/e/c;->a:Lcom/netease/nr/biz/sns/util/category/e/a;

    invoke-static {v1}, Lcom/netease/nr/biz/sns/util/category/e/a;->j(Lcom/netease/nr/biz/sns/util/category/e/a;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/netease/nr/biz/sns/util/category/e/a;->a(Lcom/netease/nr/biz/sns/util/category/e/a;Landroid/content/Context;Landroid/content/ContentValues;)V

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/e/c;->a:Lcom/netease/nr/biz/sns/util/category/e/a;

    invoke-static {v0}, Lcom/netease/nr/biz/sns/util/category/e/a;->k(Lcom/netease/nr/biz/sns/util/category/e/a;)Lcom/netease/nr/biz/sns/util/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/e/c;->a:Lcom/netease/nr/biz/sns/util/category/e/a;

    invoke-static {v0}, Lcom/netease/nr/biz/sns/util/category/e/a;->l(Lcom/netease/nr/biz/sns/util/category/e/a;)Lcom/netease/nr/biz/sns/util/d;

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

    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/sns/util/category/e/c;->a([Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/content/ContentValues;

    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/sns/util/category/e/c;->a(Landroid/content/ContentValues;)V

    return-void
.end method
