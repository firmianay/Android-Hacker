.class public Lcom/netease/nr/biz/sns/util/category/a/a;
.super Lcom/netease/nr/biz/sns/util/c;


# instance fields
.field private a:Landroid/webkit/WebViewClient;

.field private b:Lt4j/http/RequestToken;

.field private c:Lcom/netease/nr/biz/sns/util/category/a/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/netease/nr/biz/sns/util/c;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/biz/sns/util/category/a/a;)Lcom/netease/nr/biz/sns/util/category/a/c;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/a/a;->c:Lcom/netease/nr/biz/sns/util/category/a/c;

    return-object v0
.end method

.method static synthetic a(Lcom/netease/nr/biz/sns/util/category/a/a;Lcom/netease/nr/biz/sns/util/category/a/c;)Lcom/netease/nr/biz/sns/util/category/a/c;
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/sns/util/category/a/a;->c:Lcom/netease/nr/biz/sns/util/category/a/c;

    return-object p1
.end method

.method private a()Lt4j/TBlog;
    .locals 4

    const-string v0, "tblog4j.oauth.consumerKey"

    const-string v1, "zK8tVL3Nj4JOgqFL"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "tblog4j.oauth.consumerSecret"

    const-string v1, "l6Kkp4nszxRx3OBndw7C8ZRjthvzTqEv"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "tblog4j.debug"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Lt4j/TBlog;

    invoke-direct {v0}, Lt4j/TBlog;-><init>()V

    iget-object v1, p0, Lcom/netease/nr/biz/sns/util/category/a/a;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/netease/util/f/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v2, 0x50

    invoke-virtual {v0, v1, v2}, Lt4j/TBlog;->setHttpProxy(Ljava/lang/String;I)V

    :cond_0
    iget-object v1, p0, Lcom/netease/nr/biz/sns/util/category/a/a;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/netease/nr/biz/sns/util/category/a/a;->getToken(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v1, v2

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-virtual {v0, v2, v1}, Lt4j/TBlog;->setToken(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic a(Lcom/netease/nr/biz/sns/util/category/a/a;Landroid/content/Context;Landroid/content/ContentValues;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/netease/nr/biz/sns/util/category/a/a;->saveToken(Landroid/content/Context;Landroid/content/ContentValues;)V

    return-void
.end method

.method static synthetic b(Lcom/netease/nr/biz/sns/util/category/a/a;)Lcom/netease/nr/biz/sns/util/d;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/a/a;->mAuthCallback:Lcom/netease/nr/biz/sns/util/d;

    return-object v0
.end method

.method static synthetic c(Lcom/netease/nr/biz/sns/util/category/a/a;)Lcom/netease/nr/biz/sns/util/d;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/a/a;->mAuthCallback:Lcom/netease/nr/biz/sns/util/d;

    return-object v0
.end method

.method static synthetic d(Lcom/netease/nr/biz/sns/util/category/a/a;)Lt4j/http/RequestToken;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/a/a;->b:Lt4j/http/RequestToken;

    return-object v0
.end method

.method static synthetic e(Lcom/netease/nr/biz/sns/util/category/a/a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/a/a;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic f(Lcom/netease/nr/biz/sns/util/category/a/a;)Lcom/netease/nr/biz/sns/util/d;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/a/a;->mAuthCallback:Lcom/netease/nr/biz/sns/util/d;

    return-object v0
.end method

.method static synthetic g(Lcom/netease/nr/biz/sns/util/category/a/a;)Lcom/netease/nr/biz/sns/util/d;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/a/a;->mAuthCallback:Lcom/netease/nr/biz/sns/util/d;

    return-object v0
.end method

.method static synthetic h(Lcom/netease/nr/biz/sns/util/category/a/a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/a/a;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic i(Lcom/netease/nr/biz/sns/util/category/a/a;)Lcom/netease/nr/biz/sns/util/d;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/a/a;->mAuthCallback:Lcom/netease/nr/biz/sns/util/d;

    return-object v0
.end method

.method static synthetic j(Lcom/netease/nr/biz/sns/util/category/a/a;)Lcom/netease/nr/biz/sns/util/d;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/a/a;->mAuthCallback:Lcom/netease/nr/biz/sns/util/d;

    return-object v0
.end method


# virtual methods
.method public getLoginUrl()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/a/a;->mContext:Landroid/content/Context;

    :try_start_0
    const-string v1, "tblog4j.oauth.consumerKey"

    const-string v2, "zK8tVL3Nj4JOgqFL"

    invoke-static {v1, v2}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "tblog4j.oauth.consumerSecret"

    const-string v2, "l6Kkp4nszxRx3OBndw7C8ZRjthvzTqEv"

    invoke-static {v1, v2}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "tblog4j.http.retryCount"

    const-string v2, "1"

    invoke-static {v1, v2}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "tblog4j.http.retryIntervalSecs"

    const-string v2, "1"

    invoke-static {v1, v2}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "tblog4j.debug"

    const-string v2, "false"

    invoke-static {v1, v2}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    new-instance v1, Lt4j/TBlog;

    invoke-direct {v1}, Lt4j/TBlog;-><init>()V

    invoke-static {v0}, Lcom/netease/util/f/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const/16 v3, 0x50

    invoke-virtual {v1, v2, v3}, Lt4j/TBlog;->setHttpProxy(Ljava/lang/String;I)V

    :cond_0
    invoke-virtual {v1}, Lt4j/TBlog;->getOAuthRequestToken()Lt4j/http/RequestToken;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/nr/biz/sns/util/category/a/a;->b:Lt4j/http/RequestToken;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/netease/nr/biz/sns/util/category/a/a;->b:Lt4j/http/RequestToken;

    invoke-virtual {v2}, Lt4j/http/RequestToken;->getAuthenticationURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&oauth_callback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "weibo4andriod://AccountSettingActivity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&client_type=mobile"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lt4j/TBlogException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

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

    const/16 v0, 0xa3

    return v0
.end method

.method public getWebViewClient()Landroid/webkit/WebViewClient;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/a/a;->a:Landroid/webkit/WebViewClient;

    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/nr/biz/sns/util/category/a/b;

    invoke-direct {v0, p0}, Lcom/netease/nr/biz/sns/util/category/a/b;-><init>(Lcom/netease/nr/biz/sns/util/category/a/a;)V

    iput-object v0, p0, Lcom/netease/nr/biz/sns/util/category/a/a;->a:Landroid/webkit/WebViewClient;

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/a/a;->a:Landroid/webkit/WebViewClient;

    return-object v0
.end method

.method public needRedirect(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/a/a;->c:Lcom/netease/nr/biz/sns/util/category/a/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/a/a;->c:Lcom/netease/nr/biz/sns/util/category/a/c;

    invoke-virtual {v0}, Lcom/netease/nr/biz/sns/util/category/a/c;->getStatus()Landroid/os/AsyncTask$Status;

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
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/netease/nr/biz/sns/util/category/a/a;->a()Lt4j/TBlog;

    move-result-object v2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "http"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object p2, v0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " @\u7f51\u6613\u65b0\u95fb\u5ba2\u6237\u7aef"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v4, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ".jpg"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    invoke-virtual {v2, v3, v4}, Lt4j/TBlog;->updateImage(Ljava/lang/String;Ljava/io/File;)Lt4j/data/Status;

    move-result-object v0

    invoke-virtual {v4, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :goto_2
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/netease/nr/biz/sns/util/category/a/a;->mContext:Landroid/content/Context;

    const-string v2, "snw"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lt4j/data/Status;->getId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netease/b/i;->b(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_1

    :cond_3
    invoke-virtual {v2, v3}, Lt4j/TBlog;->updateStatus(Ljava/lang/String;)Lt4j/data/Status;

    move-result-object v0

    goto :goto_2

    :cond_4
    invoke-virtual {v2, v3}, Lt4j/TBlog;->updateStatus(Ljava/lang/String;)Lt4j/data/Status;
    :try_end_0
    .catch Lt4j/TBlogException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/netease/nr/biz/sns/util/e; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "sharetomicroblog"

    invoke-virtual {v0}, Lt4j/TBlogException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lt4j/TBlogException;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "200 OK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/netease/nr/biz/sns/util/e;

    invoke-virtual {v0}, Lt4j/TBlogException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/netease/nr/biz/sns/util/e;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception v0

    throw v0

    :cond_5
    move-object v1, p1

    goto/16 :goto_0
.end method

.method public transmitBlog(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/netease/nr/biz/sns/util/category/a/a;->a()Lt4j/TBlog;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p2}, Lt4j/TBlog;->retweet(JLjava/lang/String;)Lt4j/data/Status;

    move-result-object v0

    invoke-virtual {v0}, Lt4j/data/Status;->getText()Ljava/lang/String;
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
