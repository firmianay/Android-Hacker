.class public Lt4j/data/RecommendTopic;
.super Ljava/lang/Object;


# instance fields
.field private name:Ljava/lang/String;

.field private query:Ljava/lang/String;

.field private remark:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lt4j/org/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lt4j/data/RecommendTopic;->init(Lt4j/org/json/JSONObject;)V

    return-void
.end method

.method public static constructTopics(Lt4j/org/json/JSONArray;)Ljava/util/List;
    .locals 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lt4j/org/json/JSONArray;->length()I

    move-result v2

    if-lt v0, v2, :cond_0

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    :try_start_0
    new-instance v2, Lt4j/data/RecommendTopic;

    invoke-virtual {p0, v0}, Lt4j/org/json/JSONArray;->getJSONObject(I)Lt4j/org/json/JSONObject;

    move-result-object v3

    invoke-direct {v2, v3}, Lt4j/data/RecommendTopic;-><init>(Lt4j/org/json/JSONObject;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lt4j/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method private init(Lt4j/org/json/JSONObject;)V
    .locals 2

    :try_start_0
    const-string v0, "name"

    invoke-virtual {p1, v0}, Lt4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lt4j/data/RecommendTopic;->name:Ljava/lang/String;

    const-string v0, "url"

    invoke-virtual {p1, v0}, Lt4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lt4j/data/RecommendTopic;->url:Ljava/lang/String;

    const-string v0, "query"

    invoke-virtual {p1, v0}, Lt4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lt4j/data/RecommendTopic;->query:Ljava/lang/String;

    const-string v0, "remark"

    invoke-virtual {p1, v0}, Lt4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lt4j/data/RecommendTopic;->remark:Ljava/lang/String;
    :try_end_0
    .catch Lt4j/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lt4j/TBlogException;

    invoke-direct {v1, v0}, Lt4j/TBlogException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lt4j/data/RecommendTopic;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lt4j/data/RecommendTopic;->query:Ljava/lang/String;

    return-object v0
.end method

.method public getRemark()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lt4j/data/RecommendTopic;->remark:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lt4j/data/RecommendTopic;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lt4j/data/RecommendTopic;->name:Ljava/lang/String;

    return-void
.end method

.method public setQuery(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lt4j/data/RecommendTopic;->query:Ljava/lang/String;

    return-void
.end method

.method public setRemark(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lt4j/data/RecommendTopic;->remark:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lt4j/data/RecommendTopic;->url:Ljava/lang/String;

    return-void
.end method
