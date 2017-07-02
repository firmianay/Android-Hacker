.class public Lcom/netease/nr/biz/sns/util/category/ydnote/YdNoteLoginHelper;
.super Ljava/lang/Object;


# static fields
.field public static final ACCESSTOKENURL:Ljava/lang/String; = "access_token"

.field public static final API_PREFIX:Ljava/lang/String; = "yws/"

.field public static final AUTHORIZEURL:Ljava/lang/String; = "authorize"

.field public static final AUTHPARAMTERTYLE:Ljava/lang/String; = "parameterStyle"

.field public static final AUTHPARAMTERTYLEVALUE:Ljava/lang/String; = "AUTHORIZATION_HEADER"

.field public static final OAUTH_PREFIX:Ljava/lang/String; = "oauth/"

.field public static final REQUESTTOKENURL:Ljava/lang/String; = "request_token"

.field public static final YDNOTE_DEFAULT_NOTEBOOK_PAHT:Ljava/lang/String; = "ydnote_default_notebook_path"

.field private static final YD_NOTE_BASEURL:Ljava/lang/String; = "http://note.youdao.com/"

.field private static final YD_NOTE_TEST_BASEURL:Ljava/lang/String; = "http://sandbox.note.youdao.com/"

.field public static final allNotebookurl:Ljava/lang/String; = "yws/open/notebook/all.json"

.field public static final createNoteurl:Ljava/lang/String; = "yws/open/note/create.json"

.field private static test:Z

.field public static ydnoteConsumerKey:Ljava/lang/String;

.field public static ydnoteConsumerSecret:Ljava/lang/String;


# instance fields
.field private final client:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private exception:Ljava/lang/String;

.field private final mAccessor:Lnet/oauth/OAuthAccessor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/netease/nr/biz/sns/util/category/ydnote/YdNoteLoginHelper;->test:Z

    const-string v0, "7d53ca1f67a2182406fafcb69539c8bf"

    sput-object v0, Lcom/netease/nr/biz/sns/util/category/ydnote/YdNoteLoginHelper;->ydnoteConsumerKey:Ljava/lang/String;

    const-string v0, "0747ea306b9eabcd3033214b8f65ce32"

    sput-object v0, Lcom/netease/nr/biz/sns/util/category/ydnote/YdNoteLoginHelper;->ydnoteConsumerSecret:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/nr/biz/sns/util/category/ydnote/YdNoteLoginHelper;->exception:Ljava/lang/String;

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/biz/sns/util/category/ydnote/YdNoteLoginHelper;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;

    invoke-direct {v0, v1, v1}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;-><init>(IZ)V

    iget-object v1, p0, Lcom/netease/nr/biz/sns/util/category/ydnote/YdNoteLoginHelper;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    invoke-direct {p0}, Lcom/netease/nr/biz/sns/util/category/ydnote/YdNoteLoginHelper;->createOAuthAccessor()Lnet/oauth/OAuthAccessor;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/sns/util/category/ydnote/YdNoteLoginHelper;->mAccessor:Lnet/oauth/OAuthAccessor;

    return-void
.end method

.method private createOAuthAccessor()Lnet/oauth/OAuthAccessor;
    .locals 6

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/netease/nr/biz/sns/util/category/ydnote/YdNoteLoginHelper;->getBaseUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "oauth/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "request_token"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/netease/nr/biz/sns/util/category/ydnote/YdNoteLoginHelper;->getBaseUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "oauth/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "authorize"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/netease/nr/biz/sns/util/category/ydnote/YdNoteLoginHelper;->getBaseUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "oauth/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "access_token"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AUTHORIZATION_HEADER"

    new-instance v5, Lnet/oauth/OAuthServiceProvider;

    invoke-direct {v5, v1, v2, v3}, Lnet/oauth/OAuthServiceProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lnet/oauth/OAuthConsumer;

    sget-object v2, Lcom/netease/nr/biz/sns/util/category/ydnote/YdNoteLoginHelper;->ydnoteConsumerKey:Ljava/lang/String;

    sget-object v3, Lcom/netease/nr/biz/sns/util/category/ydnote/YdNoteLoginHelper;->ydnoteConsumerSecret:Ljava/lang/String;

    invoke-direct {v1, v0, v2, v3, v5}, Lnet/oauth/OAuthConsumer;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/oauth/OAuthServiceProvider;)V

    const-string v0, "parameterStyle"

    invoke-virtual {v1, v0, v4}, Lnet/oauth/OAuthConsumer;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lnet/oauth/OAuthAccessor;

    invoke-direct {v0, v1}, Lnet/oauth/OAuthAccessor;-><init>(Lnet/oauth/OAuthConsumer;)V

    return-object v0
.end method

.method public static getBaseUrl()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/netease/nr/biz/sns/util/category/ydnote/YdNoteLoginHelper;->test:Z

    if-eqz v0, :cond_0

    const-string v0, "http://sandbox.note.youdao.com/"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "http://note.youdao.com/"

    goto :goto_0
.end method

.method private sendRequest(Lnet/oauth/OAuthAccessor;Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;
    .locals 3

    const-string v0, "GET"

    invoke-static {p1, v0, p2, p3}, Lcom/netease/nr/biz/sns/util/category/ydnote/OAuthHelper;->perpareHeader(Lnet/oauth/OAuthAccessor;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/sns/util/category/ydnote/YdNoteLoginHelper;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-static {v1, p3, v0}, Lcom/netease/nr/biz/sns/util/category/ydnote/OAuthHelper;->requestGet(Lorg/apache/http/client/HttpClient;Ljava/lang/String;[Lorg/apache/http/Header;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/sns/util/category/ydnote/YdNoteLoginHelper;->exception:Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    const-string v1, "utf-8"

    invoke-static {v0, v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nr/biz/sns/util/category/ydnote/OAuthHelper;->processResponse(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public authorizeToken(Ljava/util/Map;)Ljava/lang/String;
    .locals 5

    const-string v1, ""

    :try_start_0
    iget-object v2, p0, Lcom/netease/nr/biz/sns/util/category/ydnote/YdNoteLoginHelper;->mAccessor:Lnet/oauth/OAuthAccessor;

    const-string v0, "oauth_token"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lnet/oauth/OAuthAccessor;->accessToken:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/nr/biz/sns/util/category/ydnote/YdNoteLoginHelper;->mAccessor:Lnet/oauth/OAuthAccessor;

    const-string v0, "oauth_token_secret"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lnet/oauth/OAuthAccessor;->tokenSecret:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "oauth_token"

    const-string v3, "oauth_token"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/netease/nr/biz/sns/util/category/ydnote/YdNoteLoginHelper;->mAccessor:Lnet/oauth/OAuthAccessor;

    iget-object v2, v2, Lnet/oauth/OAuthAccessor;->consumer:Lnet/oauth/OAuthConsumer;

    iget-object v2, v2, Lnet/oauth/OAuthConsumer;->serviceProvider:Lnet/oauth/OAuthServiceProvider;

    iget-object v2, v2, Lnet/oauth/OAuthServiceProvider;->userAuthorizationURL:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/netease/nr/biz/sns/util/category/ydnote/OAuthHelper;->generateQueryString(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/nr/biz/sns/util/category/ydnote/YdNoteLoginHelper;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-static {v3, v2}, Lcom/netease/nr/biz/sns/util/category/ydnote/OAuthHelper;->requestGet(Lorg/apache/http/client/HttpClient;Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    const/16 v4, 0x12e

    if-ne v3, v4, :cond_0

    const-string v3, "location"

    invoke-interface {v2, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    const-string v3, "orefer"

    const-string v4, "youdao.com"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/netease/nr/biz/sns/util/category/ydnote/OAuthHelper;->generateQueryString(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public getException()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/ydnote/YdNoteLoginHelper;->exception:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/ydnote/YdNoteLoginHelper;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    return-object v0
.end method

.method public getOAuthAccess()Lnet/oauth/OAuthAccessor;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/ydnote/YdNoteLoginHelper;->mAccessor:Lnet/oauth/OAuthAccessor;

    return-object v0
.end method

.method public requestToken()Ljava/util/Map;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lcom/netease/nr/biz/sns/util/category/ydnote/YdNoteLoginHelper;->mAccessor:Lnet/oauth/OAuthAccessor;

    iget-object v3, p0, Lcom/netease/nr/biz/sns/util/category/ydnote/YdNoteLoginHelper;->mAccessor:Lnet/oauth/OAuthAccessor;

    iget-object v3, v3, Lnet/oauth/OAuthAccessor;->consumer:Lnet/oauth/OAuthConsumer;

    iget-object v3, v3, Lnet/oauth/OAuthConsumer;->serviceProvider:Lnet/oauth/OAuthServiceProvider;

    iget-object v3, v3, Lnet/oauth/OAuthServiceProvider;->requestTokenURL:Ljava/lang/String;

    invoke-direct {p0, v2, v1, v3}, Lcom/netease/nr/biz/sns/util/category/ydnote/YdNoteLoginHelper;->sendRequest(Lnet/oauth/OAuthAccessor;Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public requestVerifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "oauth_token"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "oauth_verifier"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/netease/nr/biz/sns/util/category/ydnote/YdNoteLoginHelper;->mAccessor:Lnet/oauth/OAuthAccessor;

    iput-object p2, v1, Lnet/oauth/OAuthAccessor;->tokenSecret:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/nr/biz/sns/util/category/ydnote/YdNoteLoginHelper;->mAccessor:Lnet/oauth/OAuthAccessor;

    iget-object v2, p0, Lcom/netease/nr/biz/sns/util/category/ydnote/YdNoteLoginHelper;->mAccessor:Lnet/oauth/OAuthAccessor;

    iget-object v2, v2, Lnet/oauth/OAuthAccessor;->consumer:Lnet/oauth/OAuthConsumer;

    iget-object v2, v2, Lnet/oauth/OAuthConsumer;->serviceProvider:Lnet/oauth/OAuthServiceProvider;

    iget-object v2, v2, Lnet/oauth/OAuthServiceProvider;->accessTokenURL:Ljava/lang/String;

    invoke-direct {p0, v1, v0, v2}, Lcom/netease/nr/biz/sns/util/category/ydnote/YdNoteLoginHelper;->sendRequest(Lnet/oauth/OAuthAccessor;Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
