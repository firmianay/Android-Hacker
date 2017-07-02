.class public Lcom/mime/qweibo/QWeiboRequest;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asyncRequest(Ljava/lang/String;Ljava/lang/String;Lcom/mime/qweibo/OauthKey;Ljava/util/List;Ljava/util/List;Lcom/mime/qweibo/QAsyncHandler;Ljava/lang/Object;)Z
    .locals 13

    new-instance v2, Lcom/mime/qweibo/OAuth;

    invoke-direct {v2}, Lcom/mime/qweibo/OAuth;-><init>()V

    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/mime/qweibo/OauthKey;->customKey:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/mime/qweibo/OauthKey;->customSecrect:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v7, v0, Lcom/mime/qweibo/OauthKey;->tokenKey:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v8, v0, Lcom/mime/qweibo/OauthKey;->tokenSecrect:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v9, v0, Lcom/mime/qweibo/OauthKey;->verify:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v10, v0, Lcom/mime/qweibo/OauthKey;->callbackUrl:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v11, p4

    invoke-virtual/range {v2 .. v12}, Lcom/mime/qweibo/OAuth;->getOauthUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/StringBuffer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v2, Lcom/mime/qweibo/QAsyncHttpClient;

    invoke-direct {v2}, Lcom/mime/qweibo/QAsyncHttpClient;-><init>()V

    const-string v5, "GET"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p6

    move-object/from16 v1, p7

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/mime/qweibo/QAsyncHttpClient;->httpGet(Ljava/lang/String;Ljava/lang/String;Lcom/mime/qweibo/QAsyncHandler;Ljava/lang/Object;)Z

    move-result v2

    :goto_0
    return v2

    :cond_0
    if-eqz p5, :cond_1

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    move-object/from16 v0, p6

    move-object/from16 v1, p7

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/mime/qweibo/QAsyncHttpClient;->httpPost(Ljava/lang/String;Ljava/lang/String;Lcom/mime/qweibo/QAsyncHandler;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    :cond_2
    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v2 .. v7}, Lcom/mime/qweibo/QAsyncHttpClient;->httpPostWithFile(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/mime/qweibo/QAsyncHandler;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public syncRequest(Ljava/lang/String;Ljava/lang/String;Lcom/mime/qweibo/OauthKey;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;
    .locals 12

    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    new-instance v1, Lcom/mime/qweibo/OAuth;

    invoke-direct {v1}, Lcom/mime/qweibo/OAuth;-><init>()V

    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v4, p3, Lcom/mime/qweibo/OauthKey;->customKey:Ljava/lang/String;

    iget-object v5, p3, Lcom/mime/qweibo/OauthKey;->customSecrect:Ljava/lang/String;

    iget-object v6, p3, Lcom/mime/qweibo/OauthKey;->tokenKey:Ljava/lang/String;

    iget-object v7, p3, Lcom/mime/qweibo/OauthKey;->tokenSecrect:Ljava/lang/String;

    iget-object v8, p3, Lcom/mime/qweibo/OauthKey;->verify:Ljava/lang/String;

    iget-object v9, p3, Lcom/mime/qweibo/OauthKey;->callbackUrl:Ljava/lang/String;

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v10, p4

    invoke-virtual/range {v1 .. v11}, Lcom/mime/qweibo/OAuth;->getOauthUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/StringBuffer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/mime/qweibo/QHttpClient;

    invoke-direct {v3}, Lcom/mime/qweibo/QHttpClient;-><init>()V

    const-string v4, "GET"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, v1, v2}, Lcom/mime/qweibo/QHttpClient;->httpGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    if-eqz p5, :cond_3

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    invoke-virtual {v3, v1, v2}, Lcom/mime/qweibo/QHttpClient;->httpPost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_4
    move-object/from16 v0, p5

    invoke-virtual {v3, v1, v2, v0}, Lcom/mime/qweibo/QHttpClient;->httpPostWithFile(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
