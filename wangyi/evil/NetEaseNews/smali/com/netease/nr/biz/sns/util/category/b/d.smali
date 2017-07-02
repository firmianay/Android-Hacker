.class public Lcom/netease/nr/biz/sns/util/category/b/d;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    const-string v1, "http://open.t.qq.com/cgi-bin/request_token"

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/mime/qweibo/OauthKey;

    invoke-direct {v3}, Lcom/mime/qweibo/OauthKey;-><init>()V

    iput-object p1, v3, Lcom/mime/qweibo/OauthKey;->customKey:Ljava/lang/String;

    iput-object p2, v3, Lcom/mime/qweibo/OauthKey;->customSecrect:Ljava/lang/String;

    iput-object p3, v3, Lcom/mime/qweibo/OauthKey;->callbackUrl:Ljava/lang/String;

    new-instance v0, Lcom/mime/qweibo/QWeiboRequest;

    invoke-direct {v0}, Lcom/mime/qweibo/QWeiboRequest;-><init>()V

    :try_start_0
    const-string v2, "GET"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/mime/qweibo/QWeiboRequest;->syncRequest(Ljava/lang/String;Ljava/lang/String;Lcom/mime/qweibo/OauthKey;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v6

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/nr/biz/sns/util/category/b/f;)Ljava/lang/String;
    .locals 8

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "http://open.t.qq.com/api/user/info"

    const-string v2, "GET"

    new-instance v3, Lcom/mime/qweibo/OauthKey;

    invoke-direct {v3}, Lcom/mime/qweibo/OauthKey;-><init>()V

    iput-object p1, v3, Lcom/mime/qweibo/OauthKey;->customKey:Ljava/lang/String;

    iput-object p2, v3, Lcom/mime/qweibo/OauthKey;->customSecrect:Ljava/lang/String;

    iput-object p3, v3, Lcom/mime/qweibo/OauthKey;->tokenKey:Ljava/lang/String;

    iput-object p4, v3, Lcom/mime/qweibo/OauthKey;->tokenSecrect:Ljava/lang/String;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/netease/nr/biz/sns/util/category/b/f;->a:Lcom/netease/nr/biz/sns/util/category/b/f;

    if-ne p5, v0, :cond_0

    const-string v0, "xml"

    :goto_0
    new-instance v6, Lcom/mime/qweibo/QParameter;

    const-string v7, "format"

    invoke-direct {v6, v7, v0}, Lcom/mime/qweibo/QParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/mime/qweibo/QParameter;

    const-string v6, "clientip"

    const-string v7, "127.0.0.1"

    invoke-direct {v0, v6, v7}, Lcom/mime/qweibo/QParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/mime/qweibo/QWeiboRequest;

    invoke-direct {v0}, Lcom/mime/qweibo/QWeiboRequest;-><init>()V

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lcom/mime/qweibo/QWeiboRequest;->syncRequest(Ljava/lang/String;Ljava/lang/String;Lcom/mime/qweibo/OauthKey;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    sget-object v0, Lcom/netease/nr/biz/sns/util/category/b/f;->b:Lcom/netease/nr/biz/sns/util/category/b/f;

    if-ne p5, v0, :cond_1

    const-string v0, "json"

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v6

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/nr/biz/sns/util/category/b/f;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "http://open.t.qq.com/api/t/re_add"

    const-string v3, "POST"

    new-instance v4, Lcom/mime/qweibo/OauthKey;

    invoke-direct {v4}, Lcom/mime/qweibo/OauthKey;-><init>()V

    iput-object p1, v4, Lcom/mime/qweibo/OauthKey;->customKey:Ljava/lang/String;

    iput-object p2, v4, Lcom/mime/qweibo/OauthKey;->customSecrect:Ljava/lang/String;

    iput-object p3, v4, Lcom/mime/qweibo/OauthKey;->tokenKey:Ljava/lang/String;

    iput-object p4, v4, Lcom/mime/qweibo/OauthKey;->tokenSecrect:Ljava/lang/String;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/netease/nr/biz/sns/util/category/b/f;->a:Lcom/netease/nr/biz/sns/util/category/b/f;

    move-object/from16 v0, p5

    if-ne v0, v1, :cond_0

    const-string v1, "xml"

    :goto_0
    :try_start_0
    new-instance v7, Lcom/mime/qweibo/QParameter;

    const-string v8, "content"

    new-instance v9, Ljava/lang/String;

    const-string v10, "UTF-8"

    move-object/from16 v0, p6

    invoke-virtual {v0, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v7, v8, v9}, Lcom/mime/qweibo/QParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v7, Lcom/mime/qweibo/QParameter;

    const-string v8, "format"

    invoke-direct {v7, v8, v1}, Lcom/mime/qweibo/QParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/mime/qweibo/QParameter;

    const-string v7, "clientip"

    const-string v8, "127.0.0.1"

    invoke-direct {v1, v7, v8}, Lcom/mime/qweibo/QParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/mime/qweibo/QParameter;

    const-string v7, "reid"

    move-object/from16 v0, p7

    invoke-direct {v1, v7, v0}, Lcom/mime/qweibo/QParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/mime/qweibo/QWeiboRequest;

    invoke-direct {v1}, Lcom/mime/qweibo/QWeiboRequest;-><init>()V

    const/4 v7, 0x0

    :try_start_1
    invoke-virtual/range {v1 .. v6}, Lcom/mime/qweibo/QWeiboRequest;->syncRequest(Ljava/lang/String;Ljava/lang/String;Lcom/mime/qweibo/OauthKey;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    :goto_1
    return-object v1

    :cond_0
    sget-object v1, Lcom/netease/nr/biz/sns/util/category/b/f;->b:Lcom/netease/nr/biz/sns/util/category/b/f;

    move-object/from16 v0, p5

    if-ne v0, v1, :cond_1

    const-string v1, "json"

    goto :goto_0

    :cond_1
    const-string v1, ""

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const-string v1, ""

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v7

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    const-string v1, "http://open.t.qq.com/cgi-bin/access_token"

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/mime/qweibo/OauthKey;

    invoke-direct {v3}, Lcom/mime/qweibo/OauthKey;-><init>()V

    iput-object p1, v3, Lcom/mime/qweibo/OauthKey;->customKey:Ljava/lang/String;

    iput-object p2, v3, Lcom/mime/qweibo/OauthKey;->customSecrect:Ljava/lang/String;

    iput-object p3, v3, Lcom/mime/qweibo/OauthKey;->tokenKey:Ljava/lang/String;

    iput-object p4, v3, Lcom/mime/qweibo/OauthKey;->tokenSecrect:Ljava/lang/String;

    iput-object p5, v3, Lcom/mime/qweibo/OauthKey;->verify:Ljava/lang/String;

    new-instance v0, Lcom/mime/qweibo/QWeiboRequest;

    invoke-direct {v0}, Lcom/mime/qweibo/QWeiboRequest;-><init>()V

    :try_start_0
    const-string v2, "GET"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/mime/qweibo/QWeiboRequest;->syncRequest(Ljava/lang/String;Ljava/lang/String;Lcom/mime/qweibo/OauthKey;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v6

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/nr/biz/sns/util/category/b/f;)Ljava/lang/String;
    .locals 10

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "POST"

    if-eqz p6, :cond_0

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v2, "http://open.t.qq.com/api/t/add"

    :goto_0
    new-instance v4, Lcom/mime/qweibo/OauthKey;

    invoke-direct {v4}, Lcom/mime/qweibo/OauthKey;-><init>()V

    iput-object p1, v4, Lcom/mime/qweibo/OauthKey;->customKey:Ljava/lang/String;

    iput-object p2, v4, Lcom/mime/qweibo/OauthKey;->customSecrect:Ljava/lang/String;

    iput-object p3, v4, Lcom/mime/qweibo/OauthKey;->tokenKey:Ljava/lang/String;

    iput-object p4, v4, Lcom/mime/qweibo/OauthKey;->tokenSecrect:Ljava/lang/String;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/netease/nr/biz/sns/util/category/b/f;->a:Lcom/netease/nr/biz/sns/util/category/b/f;

    move-object/from16 v0, p7

    if-ne v0, v1, :cond_2

    const-string v1, "xml"

    :goto_1
    new-instance v7, Lcom/mime/qweibo/QParameter;

    const-string v8, "format"

    invoke-direct {v7, v8, v1}, Lcom/mime/qweibo/QParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :try_start_0
    new-instance v1, Lcom/mime/qweibo/QParameter;

    const-string v7, "content"

    new-instance v8, Ljava/lang/String;

    const-string v9, "UTF-8"

    invoke-virtual {p5, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, v7, v8}, Lcom/mime/qweibo/QParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Lcom/mime/qweibo/QParameter;

    const-string v7, "clientip"

    const-string v8, "127.0.0.1"

    invoke-direct {v1, v7, v8}, Lcom/mime/qweibo/QParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/mime/qweibo/QWeiboRequest;

    invoke-direct {v1}, Lcom/mime/qweibo/QWeiboRequest;-><init>()V

    const/4 v7, 0x0

    :try_start_1
    invoke-virtual/range {v1 .. v6}, Lcom/mime/qweibo/QWeiboRequest;->syncRequest(Ljava/lang/String;Ljava/lang/String;Lcom/mime/qweibo/OauthKey;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    :goto_2
    return-object v1

    :cond_1
    const-string v2, "http://open.t.qq.com/api/t/add_pic"

    new-instance v1, Lcom/mime/qweibo/QParameter;

    const-string v4, "pic"

    move-object/from16 v0, p6

    invoke-direct {v1, v4, v0}, Lcom/mime/qweibo/QParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/netease/nr/biz/sns/util/category/b/f;->b:Lcom/netease/nr/biz/sns/util/category/b/f;

    move-object/from16 v0, p7

    if-ne v0, v1, :cond_3

    const-string v1, "json"

    goto :goto_1

    :cond_3
    const-string v1, ""

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const-string v1, ""

    goto :goto_2

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v7

    goto :goto_2
.end method
