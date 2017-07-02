.class public Lcom/netease/nr/biz/sns/util/category/d/a;
.super Lcom/netease/nr/biz/sns/util/c;


# static fields
.field public static a:Ljava/lang/String;

.field private static c:Ljava/lang/String;


# instance fields
.field public b:Ljava/lang/String;

.field private d:Landroid/webkit/WebViewClient;

.field private e:Lcom/netease/nr/biz/sns/util/category/d/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "100346651"

    sput-object v0, Lcom/netease/nr/biz/sns/util/category/d/a;->c:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/netease/nr/biz/sns/util/category/d/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/netease/nr/biz/sns/util/c;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/netease/nr/biz/sns/util/category/d/a;->b:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/biz/sns/util/category/d/a;)Lcom/netease/nr/biz/sns/util/category/d/c;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/d/a;->e:Lcom/netease/nr/biz/sns/util/category/d/c;

    return-object v0
.end method

.method static synthetic a(Lcom/netease/nr/biz/sns/util/category/d/a;Lcom/netease/nr/biz/sns/util/category/d/c;)Lcom/netease/nr/biz/sns/util/category/d/c;
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/sns/util/category/d/a;->e:Lcom/netease/nr/biz/sns/util/category/d/c;

    return-object p1
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/netease/nr/biz/sns/util/category/d/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/netease/nr/biz/sns/util/category/d/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/netease/nr/biz/sns/util/category/d/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "#"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method static synthetic a(Lcom/netease/nr/biz/sns/util/category/d/a;Landroid/content/Context;Landroid/content/ContentValues;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/netease/nr/biz/sns/util/category/d/a;->saveToken(Landroid/content/Context;Landroid/content/ContentValues;)V

    return-void
.end method

.method static synthetic b(Lcom/netease/nr/biz/sns/util/category/d/a;)Lcom/netease/nr/biz/sns/util/d;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/d/a;->mAuthCallback:Lcom/netease/nr/biz/sns/util/d;

    return-object v0
.end method

.method static synthetic b(Lcom/netease/nr/biz/sns/util/category/d/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/netease/nr/biz/sns/util/category/d/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-direct {p0, p1}, Lcom/netease/nr/biz/sns/util/category/d/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/renren/api/connect/android/Util;->parseUrl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "error"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "error_code"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0

    :cond_1
    const-string v1, "openid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/netease/nr/biz/sns/util/category/d/a;)Lcom/netease/nr/biz/sns/util/d;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/d/a;->mAuthCallback:Lcom/netease/nr/biz/sns/util/d;

    return-object v0
.end method

.method static synthetic d(Lcom/netease/nr/biz/sns/util/category/d/a;)Lcom/netease/nr/biz/sns/util/d;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/d/a;->mAuthCallback:Lcom/netease/nr/biz/sns/util/d;

    return-object v0
.end method

.method static synthetic e(Lcom/netease/nr/biz/sns/util/category/d/a;)Lcom/netease/nr/biz/sns/util/d;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/d/a;->mAuthCallback:Lcom/netease/nr/biz/sns/util/d;

    return-object v0
.end method

.method static synthetic f(Lcom/netease/nr/biz/sns/util/category/d/a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/d/a;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic g(Lcom/netease/nr/biz/sns/util/category/d/a;)Lcom/netease/nr/biz/sns/util/d;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/d/a;->mAuthCallback:Lcom/netease/nr/biz/sns/util/d;

    return-object v0
.end method

.method static synthetic h(Lcom/netease/nr/biz/sns/util/category/d/a;)Lcom/netease/nr/biz/sns/util/d;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/d/a;->mAuthCallback:Lcom/netease/nr/biz/sns/util/d;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lcom/weibo/a/k;

    invoke-direct {v0}, Lcom/weibo/a/k;-><init>()V

    const-string v1, "access_token"

    invoke-virtual {v0, v1, p1}, Lcom/weibo/a/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "oauth_consumer_key"

    invoke-virtual {v0, v1, p2}, Lcom/weibo/a/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "openid"

    invoke-virtual {v0, v1, p3}, Lcom/weibo/a/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://graph.qq.com/user/get_user_info?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/weibo/a/f;->b(Lcom/weibo/a/k;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    const/16 v2, 0x7530

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/16 v2, 0x7530

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-static {v0}, Lcom/netease/util/f/c;->a(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    iget-object v2, p0, Lcom/netease/nr/biz/sns/util/category/d/a;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/netease/util/f/b;->a(Lorg/apache/http/client/HttpClient;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/util/h/b;->e(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLoginUrl()Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/weibo/a/k;

    invoke-direct {v0}, Lcom/weibo/a/k;-><init>()V

    const-string v1, "scope"

    const-string v2, "get_user_info,add_share"

    invoke-virtual {v0, v1, v2}, Lcom/weibo/a/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "client_id"

    sget-object v2, Lcom/netease/nr/biz/sns/util/category/d/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/weibo/a/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "response_type"

    const-string v2, "token"

    invoke-virtual {v0, v1, v2}, Lcom/weibo/a/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "redirect_uri"

    const-string v2, "http://m.163.com/newsapp/"

    invoke-virtual {v0, v1, v2}, Lcom/weibo/a/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "display"

    const-string v2, "mobile"

    invoke-virtual {v0, v1, v2}, Lcom/weibo/a/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://graph.qq.com/oauth2.0/authorize?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/weibo/a/f;->b(Lcom/weibo/a/k;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/sns/util/category/d/a;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/d/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgLimit()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getWebViewClient()Landroid/webkit/WebViewClient;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/d/a;->d:Landroid/webkit/WebViewClient;

    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/nr/biz/sns/util/category/d/b;

    invoke-direct {v0, p0}, Lcom/netease/nr/biz/sns/util/category/d/b;-><init>(Lcom/netease/nr/biz/sns/util/category/d/a;)V

    iput-object v0, p0, Lcom/netease/nr/biz/sns/util/category/d/a;->d:Landroid/webkit/WebViewClient;

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/d/a;->d:Landroid/webkit/WebViewClient;

    return-object v0
.end method

.method public needRedirect(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/d/a;->e:Lcom/netease/nr/biz/sns/util/category/d/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/d/a;->e:Lcom/netease/nr/biz/sns/util/category/d/c;

    invoke-virtual {v0}, Lcom/netease/nr/biz/sns/util/category/d/c;->getStatus()Landroid/os/AsyncTask$Status;

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

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/d/a;->mContext:Landroid/content/Context;

    :try_start_0
    const-string v1, "https://graph.qq.com/share/add_share"

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/sns/util/category/d/a;->getToken(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "access_token"

    const/4 v6, 0x0

    aget-object v6, v3, v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "oauth_consumer_key"

    sget-object v6, Lcom/netease/nr/biz/sns/util/category/d/a;->c:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "openid"

    const/4 v6, 0x1

    aget-object v3, v3, v6

    invoke-direct {v4, v5, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "title"

    iget-object v5, p0, Lcom/netease/nr/biz/sns/util/category/d/a;->mContext:Landroid/content/Context;

    const v6, 0x7f0b006f

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "url"

    invoke-direct {v3, v4, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "site"

    iget-object v5, p0, Lcom/netease/nr/biz/sns/util/category/d/a;->mContext:Landroid/content/Context;

    const/high16 v6, 0x7f0b0000

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "fromurl"

    const-string v5, "http://m.163.com/newsapp/"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "summary"

    invoke-direct {v3, v4, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "images"

    invoke-direct {v3, v4, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_0

    new-instance v1, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v4, "UTF-8"

    invoke-direct {v1, v2, v4}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    :cond_0
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    const/16 v2, 0x7530

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/16 v2, 0x7530

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-static {v1}, Lcom/netease/util/f/c;->a(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/netease/util/f/b;->a(Lorg/apache/http/client/HttpClient;Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/d/a;->mContext:Landroid/content/Context;

    const-string v1, "sqk"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/b/i;->b(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string p3, "http://m.163.com/newsapp/"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
