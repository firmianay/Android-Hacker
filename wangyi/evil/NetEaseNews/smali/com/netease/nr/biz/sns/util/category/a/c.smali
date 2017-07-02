.class Lcom/netease/nr/biz/sns/util/category/a/c;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/sns/util/category/a/a;


# direct methods
.method private constructor <init>(Lcom/netease/nr/biz/sns/util/category/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/sns/util/category/a/c;->a:Lcom/netease/nr/biz/sns/util/category/a/a;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/nr/biz/sns/util/category/a/a;Lcom/netease/nr/biz/sns/util/category/a/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/nr/biz/sns/util/category/a/c;-><init>(Lcom/netease/nr/biz/sns/util/category/a/a;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 12

    :try_start_0
    new-instance v0, Lt4j/TBlog;

    invoke-direct {v0}, Lt4j/TBlog;-><init>()V

    iget-object v1, p0, Lcom/netease/nr/biz/sns/util/category/a/c;->a:Lcom/netease/nr/biz/sns/util/category/a/a;

    invoke-static {v1}, Lcom/netease/nr/biz/sns/util/category/a/a;->d(Lcom/netease/nr/biz/sns/util/category/a/a;)Lt4j/http/RequestToken;

    move-result-object v1

    invoke-virtual {v0, v1}, Lt4j/TBlog;->getOAuthAccessToken(Lt4j/http/RequestToken;)Lt4j/http/AccessToken;

    move-result-object v1

    invoke-virtual {v1}, Lt4j/http/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lt4j/http/AccessToken;->getTokenSecret()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lt4j/TBlog;->verifyCredentials()Lt4j/data/User;

    move-result-object v0

    invoke-virtual {v0}, Lt4j/data/User;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lt4j/data/User;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lt4j/data/User;->getProfileImageURL()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyy-MM-dd\tHH:mm:ss"

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/netease/nr/biz/sns/util/category/a/c;->a:Lcom/netease/nr/biz/sns/util/category/a/a;

    invoke-static {v7}, Lcom/netease/nr/biz/sns/util/category/a/a;->e(Lcom/netease/nr/biz/sns/util/category/a/a;)Landroid/content/Context;

    move-result-object v7

    const-string v8, "nw"

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    const/4 v10, 0x1

    aput-object v1, v9, v10

    const/4 v10, 0x2

    invoke-virtual {v0}, Lt4j/data/User;->getStatusesCount()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    invoke-virtual {v0}, Lt4j/data/User;->getCreatedAt()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v10

    const/4 v6, 0x4

    invoke-virtual {v0}, Lt4j/data/User;->getFollowersCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v6

    invoke-static {v7, v8, v9}, Lcom/netease/b/i;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "oauth_token"

    invoke-virtual {v0, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "oauth_token_secret"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "oauth_name"

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "oauth_userid"

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "oauth_profile_img"

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Landroid/content/ContentValues;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/a/c;->a:Lcom/netease/nr/biz/sns/util/category/a/a;

    invoke-static {v0}, Lcom/netease/nr/biz/sns/util/category/a/a;->f(Lcom/netease/nr/biz/sns/util/category/a/a;)Lcom/netease/nr/biz/sns/util/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/a/c;->a:Lcom/netease/nr/biz/sns/util/category/a/a;

    invoke-static {v0}, Lcom/netease/nr/biz/sns/util/category/a/a;->g(Lcom/netease/nr/biz/sns/util/category/a/a;)Lcom/netease/nr/biz/sns/util/d;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v2}, Lcom/netease/util/e/c;->a(ILjava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netease/nr/biz/sns/util/d;->b(Ljava/util/Map;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/a/c;->a:Lcom/netease/nr/biz/sns/util/category/a/a;

    iget-object v1, p0, Lcom/netease/nr/biz/sns/util/category/a/c;->a:Lcom/netease/nr/biz/sns/util/category/a/a;

    invoke-static {v1}, Lcom/netease/nr/biz/sns/util/category/a/a;->h(Lcom/netease/nr/biz/sns/util/category/a/a;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/netease/nr/biz/sns/util/category/a/a;->a(Lcom/netease/nr/biz/sns/util/category/a/a;Landroid/content/Context;Landroid/content/ContentValues;)V

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/a/c;->a:Lcom/netease/nr/biz/sns/util/category/a/a;

    invoke-static {v0}, Lcom/netease/nr/biz/sns/util/category/a/a;->i(Lcom/netease/nr/biz/sns/util/category/a/a;)Lcom/netease/nr/biz/sns/util/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/a/c;->a:Lcom/netease/nr/biz/sns/util/category/a/a;

    invoke-static {v0}, Lcom/netease/nr/biz/sns/util/category/a/a;->j(Lcom/netease/nr/biz/sns/util/category/a/a;)Lcom/netease/nr/biz/sns/util/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v2}, Lcom/netease/util/e/c;->a(ILjava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netease/nr/biz/sns/util/d;->b(Ljava/util/Map;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/sns/util/category/a/c;->a([Ljava/lang/Object;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/content/ContentValues;

    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/sns/util/category/a/c;->a(Landroid/content/ContentValues;)V

    return-void
.end method
