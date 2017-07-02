.class public Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;
.super Lcom/netease/nr/biz/sns/util/c;


# static fields
.field public static final CONTENT:Ljava/lang/String; = "ydnote_content"

.field public static final TITLE:Ljava/lang/String; = "ydnote_title"


# instance fields
.field private mReqeustToken:Ljava/lang/String;

.field private mReqeustsceset:Ljava/lang/String;

.field private mUpdateInfoTask:Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote$UpdateInfoTask;

.field private mWebViewClient:Landroid/webkit/WebViewClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/netease/nr/biz/sns/util/c;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;)Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote$UpdateInfoTask;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;->mUpdateInfoTask:Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote$UpdateInfoTask;

    return-object v0
.end method

.method static synthetic access$002(Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote$UpdateInfoTask;)Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote$UpdateInfoTask;
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;->mUpdateInfoTask:Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote$UpdateInfoTask;

    return-object p1
.end method

.method static synthetic access$1000(Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;)Lcom/netease/nr/biz/sns/util/d;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;->mAuthCallback:Lcom/netease/nr/biz/sns/util/d;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;)Lcom/netease/nr/biz/sns/util/d;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;->mAuthCallback:Lcom/netease/nr/biz/sns/util/d;

    return-object v0
.end method

.method static synthetic access$200(Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;)Lcom/netease/nr/biz/sns/util/d;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;->mAuthCallback:Lcom/netease/nr/biz/sns/util/d;

    return-object v0
.end method

.method static synthetic access$300(Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;)Lcom/netease/nr/biz/sns/util/d;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;->mAuthCallback:Lcom/netease/nr/biz/sns/util/d;

    return-object v0
.end method

.method static synthetic access$400(Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;->mReqeustToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;->mReqeustsceset:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;)Lcom/netease/nr/biz/sns/util/d;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;->mAuthCallback:Lcom/netease/nr/biz/sns/util/d;

    return-object v0
.end method

.method static synthetic access$700(Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;)Lcom/netease/nr/biz/sns/util/d;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;->mAuthCallback:Lcom/netease/nr/biz/sns/util/d;

    return-object v0
.end method

.method static synthetic access$800(Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;Landroid/content/Context;Landroid/content/ContentValues;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;->saveToken(Landroid/content/Context;Landroid/content/ContentValues;)V

    return-void
.end method

.method private getYdnoteAuthorizeUrl()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    new-instance v1, Lcom/netease/nr/biz/sns/util/category/ydnote/YdNoteLoginHelper;

    invoke-direct {v1}, Lcom/netease/nr/biz/sns/util/category/ydnote/YdNoteLoginHelper;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    iput-object v2, p0, Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;->mReqeustToken:Ljava/lang/String;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;->mReqeustsceset:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/netease/nr/biz/sns/util/category/ydnote/YdNoteLoginHelper;->requestToken()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/netease/nr/biz/sns/util/category/ydnote/YdNoteLoginHelper;->getException()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;->showException(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "oauth_token"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;->mReqeustToken:Ljava/lang/String;

    const-string v0, "oauth_token_secret"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;->mReqeustsceset:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/netease/nr/biz/sns/util/category/ydnote/YdNoteLoginHelper;->authorizeToken(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&display=mobile"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/netease/nr/biz/sns/util/e;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/netease/nr/biz/sns/util/e;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private showException(Ljava/lang/String;)V
    .locals 7

    const-string v1, ""

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v2, 0x7f060000

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f060001

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    move v6, v0

    move-object v0, v1

    move v1, v6

    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_0

    array-length v4, v3

    if-ge v1, v4, :cond_0

    aget-object v0, v3, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v1

    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Lcom/netease/nr/biz/sns/util/e;

    invoke-direct {v1, v0}, Lcom/netease/nr/biz/sns/util/e;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    return-void
.end method


# virtual methods
.method public getLoginUrl()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;->getYdnoteAuthorizeUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMsgLimit()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getWebViewClient()Landroid/webkit/WebViewClient;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote$1;

    invoke-direct {v0, p0}, Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote$1;-><init>(Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;)V

    iput-object v0, p0, Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;->mWebViewClient:Landroid/webkit/WebViewClient;

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;->mWebViewClient:Landroid/webkit/WebViewClient;

    return-object v0
.end method

.method public needRedirect(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "&display=mobile"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;->mUpdateInfoTask:Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote$UpdateInfoTask;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;->mUpdateInfoTask:Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote$UpdateInfoTask;

    invoke-virtual {v1}, Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote$UpdateInfoTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v1, v2, :cond_0

    :cond_2
    invoke-super {p0, p1}, Lcom/netease/nr/biz/sns/util/c;->needRedirect(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public publish(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;->getToken(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/netease/nr/biz/sns/util/category/ydnote/YdNoteLoginHelper;

    invoke-direct {v3}, Lcom/netease/nr/biz/sns/util/category/ydnote/YdNoteLoginHelper;-><init>()V

    invoke-virtual {v3}, Lcom/netease/nr/biz/sns/util/category/ydnote/YdNoteLoginHelper;->getOAuthAccess()Lnet/oauth/OAuthAccessor;

    move-result-object v4

    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, v4, Lnet/oauth/OAuthAccessor;->tokenSecret:Ljava/lang/String;

    new-instance v5, Ljava/util/Properties;

    invoke-direct {v5}, Ljava/util/Properties;-><init>()V

    const-string v1, "oauth_token"

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v5, v1, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v3}, Lcom/netease/nr/biz/sns/util/category/ydnote/YdNoteLoginHelper;->getHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/netease/nr/biz/sns/util/category/ydnote/YdNoteLoginHelper;->getBaseUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "yws/open/notebook/all.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    invoke-static {v0, v1, v4, v5, v2}, Lcom/netease/nr/biz/sns/util/category/ydnote/OAuthHelper;->requestPostUrlEncode(Lorg/apache/http/client/HttpClient;Ljava/lang/String;Lnet/oauth/OAuthAccessor;Ljava/util/Properties;Ljava/util/Properties;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    const-string v1, "utf-8"

    invoke-static {v0, v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "path"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    :goto_0
    if-nez p4, :cond_2

    const-string v0, ""

    move-object v1, v0

    :goto_1
    if-nez p4, :cond_3

    const-string v0, ""

    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "%%www%%"

    invoke-virtual {v0, v6, p3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "%%img%%"

    invoke-virtual {v0, v6, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v6, Ljava/util/Properties;

    invoke-direct {v6}, Ljava/util/Properties;-><init>()V

    const-string v7, "notebook"

    invoke-virtual {v6, v7, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "source"

    invoke-virtual {v6, v2, p3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "title"

    invoke-virtual {v6, v2, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "content"

    invoke-virtual {v6, v1, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/netease/nr/biz/sns/util/category/ydnote/YdNoteLoginHelper;->getHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/netease/nr/biz/sns/util/category/ydnote/YdNoteLoginHelper;->getBaseUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "yws/open/note/create.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4, v5, v6}, Lcom/netease/nr/biz/sns/util/category/ydnote/OAuthHelper;->requestPostMultiPart(Lorg/apache/http/client/HttpClient;Ljava/lang/String;Lnet/oauth/OAuthAccessor;Ljava/util/Properties;Ljava/util/Properties;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    const-string v1, "utf-8"

    invoke-static {v0, v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_1

    const-string v0, "path"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "path"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;->mContext:Landroid/content/Context;

    const-string v1, "syy"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/b/i;->b(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    const-string v0, "ydnote_title"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_1

    :cond_3
    const-string v0, "ydnote_content"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    new-instance v1, Lcom/netease/nr/biz/sns/util/e;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/netease/nr/biz/sns/util/e;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    move-object v2, v0

    goto/16 :goto_0
.end method

.method public setupWebView(Landroid/webkit/WebView;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/netease/nr/biz/sns/util/c;->setupWebView(Landroid/webkit/WebView;)V

    new-instance v0, Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote$WebHandler;

    invoke-direct {v0, p0}, Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote$WebHandler;-><init>(Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;)V

    const-string v1, "webhandler"

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
