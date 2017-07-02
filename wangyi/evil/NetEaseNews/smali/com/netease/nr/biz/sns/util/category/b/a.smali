.class public Lcom/netease/nr/biz/sns/util/category/b/a;
.super Lcom/netease/nr/biz/sns/util/c;


# instance fields
.field private a:Landroid/webkit/WebViewClient;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/netease/nr/biz/sns/util/category/b/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/netease/nr/biz/sns/util/c;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/biz/sns/util/category/b/a;)Lcom/netease/nr/biz/sns/util/category/b/c;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/b/a;->d:Lcom/netease/nr/biz/sns/util/category/b/c;

    return-object v0
.end method

.method static synthetic a(Lcom/netease/nr/biz/sns/util/category/b/a;Lcom/netease/nr/biz/sns/util/category/b/c;)Lcom/netease/nr/biz/sns/util/category/b/c;
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/sns/util/category/b/a;->d:Lcom/netease/nr/biz/sns/util/category/b/c;

    return-object p1
.end method

.method static synthetic a(Lcom/netease/nr/biz/sns/util/category/b/a;Landroid/content/Context;Landroid/content/ContentValues;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/netease/nr/biz/sns/util/category/b/a;->saveToken(Landroid/content/Context;Landroid/content/ContentValues;)V

    return-void
.end method

.method private a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "&"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    if-lt v2, v5, :cond_3

    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget-object v0, v0, v3

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    if-lt v3, v5, :cond_2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    :goto_0
    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    if-lt v3, v5, :cond_1

    const/4 v3, 0x1

    aget-object v0, v0, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iput-object v2, p0, Lcom/netease/nr/biz/sns/util/category/b/a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/nr/biz/sns/util/category/b/a;->c:Ljava/lang/String;

    new-array v1, v5, [Ljava/lang/String;

    aput-object v2, v1, v6

    aput-object v0, v1, v4

    :cond_0
    return-object v1

    :catch_0
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_1

    :cond_2
    move-object v2, v1

    goto :goto_0

    :cond_3
    move-object v0, v1

    move-object v2, v1

    goto :goto_1
.end method

.method static synthetic b(Lcom/netease/nr/biz/sns/util/category/b/a;)Lcom/netease/nr/biz/sns/util/d;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/b/a;->mAuthCallback:Lcom/netease/nr/biz/sns/util/d;

    return-object v0
.end method

.method static synthetic c(Lcom/netease/nr/biz/sns/util/category/b/a;)Lcom/netease/nr/biz/sns/util/d;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/b/a;->mAuthCallback:Lcom/netease/nr/biz/sns/util/d;

    return-object v0
.end method

.method static synthetic d(Lcom/netease/nr/biz/sns/util/category/b/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/b/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/netease/nr/biz/sns/util/category/b/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/b/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/netease/nr/biz/sns/util/category/b/a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/b/a;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic g(Lcom/netease/nr/biz/sns/util/category/b/a;)Lcom/netease/nr/biz/sns/util/d;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/b/a;->mAuthCallback:Lcom/netease/nr/biz/sns/util/d;

    return-object v0
.end method

.method static synthetic h(Lcom/netease/nr/biz/sns/util/category/b/a;)Lcom/netease/nr/biz/sns/util/d;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/b/a;->mAuthCallback:Lcom/netease/nr/biz/sns/util/d;

    return-object v0
.end method

.method static synthetic i(Lcom/netease/nr/biz/sns/util/category/b/a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/b/a;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic j(Lcom/netease/nr/biz/sns/util/category/b/a;)Lcom/netease/nr/biz/sns/util/d;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/b/a;->mAuthCallback:Lcom/netease/nr/biz/sns/util/d;

    return-object v0
.end method

.method static synthetic k(Lcom/netease/nr/biz/sns/util/category/b/a;)Lcom/netease/nr/biz/sns/util/d;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/b/a;->mAuthCallback:Lcom/netease/nr/biz/sns/util/d;

    return-object v0
.end method


# virtual methods
.method public getLoginUrl()Ljava/lang/String;
    .locals 6

    const v5, 0x7f0b004d

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/b/a;->mContext:Landroid/content/Context;

    :try_start_0
    new-instance v1, Lcom/netease/nr/biz/sns/util/category/b/d;

    invoke-direct {v1}, Lcom/netease/nr/biz/sns/util/category/b/d;-><init>()V

    invoke-static {v0}, Lcom/netease/util/f/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const/16 v3, 0x50

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/util/f/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v2, "2ffe39c660f146df91ffb206a9d44bd5"

    const-string v3, "63261cea4dc8b5c74ed5eefc0f149acd"

    const-string v4, "weibo4andriod://AccountSettingActivity"

    invoke-virtual {v1, v2, v3, v4}, Lcom/netease/nr/biz/sns/util/category/b/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/netease/nr/biz/sns/util/category/b/a;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/netease/nr/biz/sns/util/e;

    const v2, 0x7f0b004d

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/netease/nr/biz/sns/util/e;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    new-instance v1, Lcom/netease/nr/biz/sns/util/e;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/netease/nr/biz/sns/util/e;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://open.t.qq.com/cgi-bin/authorize?oauth_token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    return-object v0
.end method

.method public getMsgLimit()I
    .locals 1

    const/16 v0, 0x8c

    return v0
.end method

.method public getWebViewClient()Landroid/webkit/WebViewClient;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/b/a;->a:Landroid/webkit/WebViewClient;

    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/nr/biz/sns/util/category/b/b;

    invoke-direct {v0, p0}, Lcom/netease/nr/biz/sns/util/category/b/b;-><init>(Lcom/netease/nr/biz/sns/util/category/b/a;)V

    iput-object v0, p0, Lcom/netease/nr/biz/sns/util/category/b/a;->a:Landroid/webkit/WebViewClient;

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/b/a;->a:Landroid/webkit/WebViewClient;

    return-object v0
.end method

.method public needRedirect(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/b/a;->d:Lcom/netease/nr/biz/sns/util/category/b/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/b/a;->d:Lcom/netease/nr/biz/sns/util/category/b/c;

    invoke-virtual {v0}, Lcom/netease/nr/biz/sns/util/category/b/c;->getStatus()Landroid/os/AsyncTask$Status;

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
    .locals 10

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/netease/nr/biz/sns/util/category/b/a;->mContext:Landroid/content/Context;

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "http"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/b/a;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netease/nr/base/c/a/j;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/netease/nr/base/c/a/j;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/netease/nr/base/c/a/j;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    move-object v6, p2

    :goto_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " @\u7f51\u6613\u65b0\u95fb\u5ba2\u6237\u7aef"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v0, Lcom/netease/nr/biz/sns/util/category/b/d;

    invoke-direct {v0}, Lcom/netease/nr/biz/sns/util/category/b/d;-><init>()V

    const-string v1, "2ffe39c660f146df91ffb206a9d44bd5"

    const-string v2, "63261cea4dc8b5c74ed5eefc0f149acd"

    const-string v3, ""

    invoke-virtual {p0, v9}, Lcom/netease/nr/biz/sns/util/category/b/a;->getToken(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x0

    aget-object v3, v4, v3

    const/4 v7, 0x1

    aget-object v4, v4, v7

    sget-object v7, Lcom/netease/nr/biz/sns/util/category/b/f;->b:Lcom/netease/nr/biz/sns/util/category/b/f;

    invoke-virtual/range {v0 .. v7}, Lcom/netease/nr/biz/sns/util/category/b/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/nr/biz/sns/util/category/b/f;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_2

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "ok"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/netease/nr/biz/sns/util/e; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    :try_start_1
    const-string v0, "data"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "data"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_2

    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "sqw"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v9, v1, v2}, Lcom/netease/b/i;->b(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/netease/nr/biz/sns/util/e; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_3
    return-void

    :cond_3
    const/4 v3, 0x0

    :try_start_2
    aget-object v3, v4, v3

    const/4 v6, 0x1

    aget-object v4, v4, v6

    const-string v6, ""

    sget-object v7, Lcom/netease/nr/biz/sns/util/category/b/f;->b:Lcom/netease/nr/biz/sns/util/category/b/f;

    invoke-virtual/range {v0 .. v7}, Lcom/netease/nr/biz/sns/util/category/b/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/nr/biz/sns/util/category/b/f;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    const-string v0, "msg"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "check sign error"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/netease/nr/biz/sns/util/e;

    const v1, 0x7f0b0047

    invoke-virtual {v9, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netease/nr/biz/sns/util/e;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Lcom/netease/nr/biz/sns/util/e; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_0
    move-exception v0

    throw v0

    :cond_5
    :try_start_3
    const-string v0, "errcode"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "13"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/netease/nr/biz/sns/util/e;

    const v1, 0x7f0b0048

    invoke-virtual {v9, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netease/nr/biz/sns/util/e;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Lcom/netease/nr/biz/sns/util/e; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/netease/nr/biz/sns/util/e;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/netease/nr/biz/sns/util/e;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    move-object v0, v8

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_3

    :cond_7
    move-object v6, p2

    goto/16 :goto_0
.end method

.method public transmitBlog(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    :try_start_0
    new-instance v0, Lcom/netease/nr/biz/sns/util/category/b/d;

    invoke-direct {v0}, Lcom/netease/nr/biz/sns/util/category/b/d;-><init>()V

    const-string v1, "2ffe39c660f146df91ffb206a9d44bd5"

    const-string v2, "63261cea4dc8b5c74ed5eefc0f149acd"

    const-string v3, ""

    invoke-virtual {p0, p3}, Lcom/netease/nr/biz/sns/util/category/b/a;->getToken(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x0

    aget-object v3, v4, v3

    const/4 v5, 0x1

    aget-object v4, v4, v5

    sget-object v5, Lcom/netease/nr/biz/sns/util/category/b/f;->b:Lcom/netease/nr/biz/sns/util/category/b/f;

    move-object v6, p2

    move-object v7, p1

    invoke-virtual/range {v0 .. v7}, Lcom/netease/nr/biz/sns/util/category/b/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/nr/biz/sns/util/category/b/f;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "ok"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/netease/nr/biz/sns/util/e; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    const-string v0, ""

    return-object v0

    :cond_1
    :try_start_1
    const-string v0, "msg"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "check sign error"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/netease/nr/biz/sns/util/e;

    const v1, 0x7f0b0047

    invoke-virtual {p3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netease/nr/biz/sns/util/e;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lcom/netease/nr/biz/sns/util/e; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/netease/nr/biz/sns/util/e;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_2
    const-string v0, "errcode"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "13"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/netease/nr/biz/sns/util/e;

    const v1, 0x7f0b0048

    invoke-virtual {p3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netease/nr/biz/sns/util/e;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Lcom/netease/nr/biz/sns/util/e; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
