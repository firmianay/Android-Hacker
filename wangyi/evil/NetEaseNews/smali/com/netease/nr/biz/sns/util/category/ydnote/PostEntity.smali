.class public abstract Lcom/netease/nr/biz/sns/util/category/ydnote/PostEntity;
.super Ljava/lang/Object;


# instance fields
.field private final METHOD:Ljava/lang/String;

.field protected accessor:Lnet/oauth/OAuthAccessor;

.field protected autoRedirect:Z

.field protected oauthInfo:Ljava/util/Properties;


# direct methods
.method public constructor <init>(Lnet/oauth/OAuthAccessor;Ljava/util/Properties;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/netease/nr/biz/sns/util/category/ydnote/PostEntity;-><init>(Lnet/oauth/OAuthAccessor;Ljava/util/Properties;Z)V

    return-void
.end method

.method public constructor <init>(Lnet/oauth/OAuthAccessor;Ljava/util/Properties;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "POST"

    iput-object v0, p0, Lcom/netease/nr/biz/sns/util/category/ydnote/PostEntity;->METHOD:Ljava/lang/String;

    iput-object p1, p0, Lcom/netease/nr/biz/sns/util/category/ydnote/PostEntity;->accessor:Lnet/oauth/OAuthAccessor;

    iput-object p2, p0, Lcom/netease/nr/biz/sns/util/category/ydnote/PostEntity;->oauthInfo:Ljava/util/Properties;

    iput-boolean p3, p0, Lcom/netease/nr/biz/sns/util/category/ydnote/PostEntity;->autoRedirect:Z

    return-void
.end method

.method public static final toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected afterProcessHeader(Lnet/oauth/http/HttpMessage;Ljava/lang/String;Ljava/util/Properties;)Ljava/util/List;
    .locals 5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p1, Lnet/oauth/http/HttpMessage;->headers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v4, "Authorization"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v4, Lorg/apache/http/message/BasicHeader;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v4, v1, v0}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method protected abstract genEntity(Ljava/util/Properties;)Lorg/apache/http/HttpEntity;
.end method

.method protected generateHeader(Ljava/lang/String;Ljava/util/Properties;)[Lorg/apache/http/Header;
    .locals 4

    invoke-virtual {p0, p1, p2}, Lcom/netease/nr/biz/sns/util/category/ydnote/PostEntity;->getSignProperties(Ljava/lang/String;Ljava/util/Properties;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lnet/oauth/OAuthMessage;

    const-string v2, "POST"

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v0, v3}, Lnet/oauth/OAuthMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/io/InputStream;)V

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/ydnote/PostEntity;->accessor:Lnet/oauth/OAuthAccessor;

    invoke-virtual {v1, v0}, Lnet/oauth/OAuthMessage;->addRequiredParameters(Lnet/oauth/OAuthAccessor;)V

    sget-object v0, Lnet/oauth/ParameterStyle;->AUTHORIZATION_HEADER:Lnet/oauth/ParameterStyle;

    invoke-static {v1, v0}, Lnet/oauth/http/HttpMessage;->newRequest(Lnet/oauth/OAuthMessage;Lnet/oauth/ParameterStyle;)Lnet/oauth/http/HttpMessage;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/netease/nr/biz/sns/util/category/ydnote/PostEntity;->afterProcessHeader(Lnet/oauth/http/HttpMessage;Ljava/lang/String;Ljava/util/Properties;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/http/Header;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/http/Header;

    return-object v0
.end method

.method public getHttpPost(Ljava/lang/String;Ljava/util/Properties;)Lorg/apache/http/client/methods/HttpPost;
    .locals 5

    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/sns/util/category/ydnote/PostEntity;->setAutoRedirect()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/http/client/methods/HttpPost;->setParams(Lorg/apache/http/params/HttpParams;)V

    invoke-virtual {p0, p1, p2}, Lcom/netease/nr/biz/sns/util/category/ydnote/PostEntity;->generateHeader(Ljava/lang/String;Ljava/util/Properties;)[Lorg/apache/http/Header;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    invoke-virtual {v1, v4}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Lorg/apache/http/Header;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/netease/nr/biz/sns/util/category/ydnote/PostEntity;->genEntity(Ljava/util/Properties;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    return-object v1
.end method

.method protected abstract getSignProperties(Ljava/lang/String;Ljava/util/Properties;)Ljava/util/List;
.end method

.method protected setAutoRedirect()Lorg/apache/http/params/HttpParams;
    .locals 2

    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    iget-boolean v1, p0, Lcom/netease/nr/biz/sns/util/category/ydnote/PostEntity;->autoRedirect:Z

    invoke-static {v0, v1}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    return-object v0
.end method
