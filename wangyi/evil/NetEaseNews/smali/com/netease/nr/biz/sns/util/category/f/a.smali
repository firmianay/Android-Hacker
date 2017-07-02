.class public Lcom/netease/nr/biz/sns/util/category/f/a;
.super Lcom/netease/nr/biz/sns/util/c;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/webkit/WebViewClient;

.field private c:Lcom/netease/nr/biz/sns/util/category/f/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/netease/nr/biz/sns/util/c;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/biz/sns/util/category/f/a;Lcom/netease/nr/biz/sns/util/category/f/c;)Lcom/netease/nr/biz/sns/util/category/f/c;
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/sns/util/category/f/a;->c:Lcom/netease/nr/biz/sns/util/category/f/c;

    return-object p1
.end method

.method static synthetic a(Lcom/netease/nr/biz/sns/util/category/f/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/f/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/netease/nr/biz/sns/util/category/f/a;Landroid/content/Context;Landroid/content/ContentValues;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/netease/nr/biz/sns/util/category/f/a;->saveToken(Landroid/content/Context;Landroid/content/ContentValues;)V

    return-void
.end method

.method static synthetic b(Lcom/netease/nr/biz/sns/util/category/f/a;)Lcom/netease/nr/biz/sns/util/category/f/c;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/f/a;->c:Lcom/netease/nr/biz/sns/util/category/f/c;

    return-object v0
.end method

.method static synthetic c(Lcom/netease/nr/biz/sns/util/category/f/a;)Lcom/netease/nr/biz/sns/util/d;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/f/a;->mAuthCallback:Lcom/netease/nr/biz/sns/util/d;

    return-object v0
.end method

.method static synthetic d(Lcom/netease/nr/biz/sns/util/category/f/a;)Lcom/netease/nr/biz/sns/util/d;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/f/a;->mAuthCallback:Lcom/netease/nr/biz/sns/util/d;

    return-object v0
.end method

.method static synthetic e(Lcom/netease/nr/biz/sns/util/category/f/a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/f/a;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic f(Lcom/netease/nr/biz/sns/util/category/f/a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/f/a;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic g(Lcom/netease/nr/biz/sns/util/category/f/a;)Lcom/netease/nr/biz/sns/util/d;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/f/a;->mAuthCallback:Lcom/netease/nr/biz/sns/util/d;

    return-object v0
.end method

.method static synthetic h(Lcom/netease/nr/biz/sns/util/category/f/a;)Lcom/netease/nr/biz/sns/util/d;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/f/a;->mAuthCallback:Lcom/netease/nr/biz/sns/util/d;

    return-object v0
.end method

.method static synthetic i(Lcom/netease/nr/biz/sns/util/category/f/a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/f/a;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic j(Lcom/netease/nr/biz/sns/util/category/f/a;)Lcom/netease/nr/biz/sns/util/d;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/f/a;->mAuthCallback:Lcom/netease/nr/biz/sns/util/d;

    return-object v0
.end method

.method static synthetic k(Lcom/netease/nr/biz/sns/util/category/f/a;)Lcom/netease/nr/biz/sns/util/d;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/f/a;->mAuthCallback:Lcom/netease/nr/biz/sns/util/d;

    return-object v0
.end method


# virtual methods
.method public getLoginUrl()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/f/a;->mContext:Landroid/content/Context;

    :try_start_0
    invoke-static {}, Lcom/weibo/a/i;->a()Lcom/weibo/a/i;

    move-result-object v1

    const-string v2, "3857427664"

    const-string v3, "1901a3e5e35c98953ef4df53095ae02f"

    invoke-virtual {v1, v2, v3}, Lcom/weibo/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "http://m.163.com/newsapp/"

    invoke-virtual {v1, v2}, Lcom/weibo/a/i;->a(Ljava/lang/String;)V

    new-instance v1, Lcom/weibo/a/c;

    invoke-direct {v1}, Lcom/weibo/a/c;-><init>()V

    invoke-static {v1}, Lcom/weibo/a/f;->a(Lcom/weibo/a/b;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    new-instance v2, Lcom/weibo/a/k;

    invoke-direct {v2}, Lcom/weibo/a/k;-><init>()V

    array-length v3, v1

    if-lez v3, :cond_0

    const-string v3, "scope"

    const-string v4, ","

    invoke-static {v4, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/weibo/a/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v1, "client_id"

    const-string v3, "3857427664"

    invoke-virtual {v2, v1, v3}, Lcom/weibo/a/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "response_type"

    const-string v3, "token"

    invoke-virtual {v2, v1, v3}, Lcom/weibo/a/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "redirect_uri"

    const-string v3, "http://m.163.com/newsapp/"

    invoke-virtual {v2, v1, v3}, Lcom/weibo/a/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "display"

    const-string v3, "mobile"

    invoke-virtual {v2, v1, v3}, Lcom/weibo/a/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "with_offical_account"

    const-string v3, "1"

    invoke-virtual {v2, v1, v3}, Lcom/weibo/a/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/weibo/a/i;->g:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "?"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2}, Lcom/weibo/a/f;->b(Lcom/weibo/a/k;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/nr/biz/sns/util/category/f/a;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/f/a;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    new-instance v1, Lcom/netease/nr/biz/sns/util/e;

    const v2, 0x7f0b004d

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/netease/nr/biz/sns/util/e;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getMsgLimit()I
    .locals 1

    const/16 v0, 0x8c

    return v0
.end method

.method public getWebViewClient()Landroid/webkit/WebViewClient;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/f/a;->b:Landroid/webkit/WebViewClient;

    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/nr/biz/sns/util/category/f/b;

    invoke-direct {v0, p0}, Lcom/netease/nr/biz/sns/util/category/f/b;-><init>(Lcom/netease/nr/biz/sns/util/category/f/a;)V

    iput-object v0, p0, Lcom/netease/nr/biz/sns/util/category/f/a;->b:Landroid/webkit/WebViewClient;

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/f/a;->b:Landroid/webkit/WebViewClient;

    return-object v0
.end method

.method public needRedirect(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/f/a;->c:Lcom/netease/nr/biz/sns/util/category/f/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/f/a;->c:Lcom/netease/nr/biz/sns/util/category/f/c;

    invoke-virtual {v0}, Lcom/netease/nr/biz/sns/util/category/f/c;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/netease/nr/biz/sns/util/c;->needRedirect(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public publish(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 8

    iget-object v1, p0, Lcom/netease/nr/biz/sns/util/category/f/a;->mContext:Landroid/content/Context;

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/f/a;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/netease/nr/base/c/a/j;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/netease/nr/base/c/a/j;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/netease/nr/base/c/a/j;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " @\u7f51\u6613\u65b0\u95fb\u5ba2\u6237\u7aef"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/weibo/a/i;->a()Lcom/weibo/a/i;

    move-result-object v0

    const-string v3, "3857427664"

    const-string v4, "1901a3e5e35c98953ef4df53095ae02f"

    invoke-virtual {v0, v3, v4}, Lcom/weibo/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "http://m.163.com/newsapp/"

    invoke-virtual {v0, v3}, Lcom/weibo/a/i;->a(Ljava/lang/String;)V

    new-instance v3, Lcom/weibo/a/k;

    invoke-direct {v3}, Lcom/weibo/a/k;-><init>()V

    const-string v4, "source"

    const-string v5, "3857427664"

    invoke-virtual {v3, v4, v5}, Lcom/weibo/a/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/netease/nr/biz/sns/util/category/f/a;->getToken(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/weibo/a/a;

    const/4 v6, 0x0

    aget-object v6, v4, v6

    const/4 v7, 0x1

    aget-object v4, v4, v7

    invoke-direct {v5, v6, v4}, Lcom/weibo/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "status"

    invoke-virtual {v3, v4, v2}, Lcom/weibo/a/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "pic"

    invoke-virtual {v3, v2, p2}, Lcom/weibo/a/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/weibo/a/i;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "statuses/upload.json"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    new-instance v4, Lcom/weibo/a/c;

    invoke-direct {v4}, Lcom/weibo/a/c;-><init>()V

    invoke-static {v4}, Lcom/weibo/a/f;->a(Lcom/weibo/a/b;)V

    invoke-virtual {v0, v5}, Lcom/weibo/a/i;->a(Lcom/weibo/a/a;)V

    const-string v4, "POST"

    invoke-virtual/range {v0 .. v5}, Lcom/weibo/a/i;->a(Landroid/content/Context;Ljava/lang/String;Lcom/weibo/a/k;Ljava/lang/String;Lcom/weibo/a/e;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Lcom/netease/nr/biz/sns/util/e; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/weibo/a/j; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-nez v2, :cond_2

    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "idstr"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "idstr"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "ssw"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netease/b/i;->b(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/netease/nr/biz/sns/util/e; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/weibo/a/j; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_1
    return-void

    :cond_3
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/weibo/a/i;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "statuses/update.json"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Lcom/netease/nr/biz/sns/util/e; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/weibo/a/j; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    new-instance v1, Lcom/netease/nr/biz/sns/util/e;

    invoke-virtual {v0}, Lcom/weibo/a/j;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/netease/nr/biz/sns/util/e;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public transmitBlog(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    :try_start_0
    invoke-static {}, Lcom/weibo/a/i;->a()Lcom/weibo/a/i;

    move-result-object v0

    const-string v1, "3857427664"

    const-string v2, "1901a3e5e35c98953ef4df53095ae02f"

    invoke-virtual {v0, v1, v2}, Lcom/weibo/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "http://m.163.com/newsapp/"

    invoke-virtual {v0, v1}, Lcom/weibo/a/i;->a(Ljava/lang/String;)V

    new-instance v3, Lcom/weibo/a/k;

    invoke-direct {v3}, Lcom/weibo/a/k;-><init>()V

    const-string v1, "id"

    invoke-virtual {v3, v1, p1}, Lcom/weibo/a/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "status"

    invoke-virtual {v3, v1, p2}, Lcom/weibo/a/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, p3}, Lcom/netease/nr/biz/sns/util/category/f/a;->getToken(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lcom/weibo/a/a;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    const/4 v4, 0x1

    aget-object v1, v1, v4

    invoke-direct {v5, v2, v1}, Lcom/weibo/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/weibo/a/i;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "statuses/repost.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Lcom/weibo/a/c;

    invoke-direct {v1}, Lcom/weibo/a/c;-><init>()V

    invoke-static {v1}, Lcom/weibo/a/f;->a(Lcom/weibo/a/b;)V

    invoke-virtual {v0, v5}, Lcom/weibo/a/i;->a(Lcom/weibo/a/a;)V

    const-string v4, "POST"

    move-object v1, p3

    invoke-virtual/range {v0 .. v5}, Lcom/weibo/a/i;->a(Landroid/content/Context;Ljava/lang/String;Lcom/weibo/a/k;Ljava/lang/String;Lcom/weibo/a/e;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    goto :goto_0
.end method
