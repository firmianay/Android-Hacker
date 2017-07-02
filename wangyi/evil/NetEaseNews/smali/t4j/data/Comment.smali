.class public Lt4j/data/Comment;
.super Lt4j/TBlogResponse;


# instance fields
.field private createdAt:Ljava/util/Date;

.field private favorited:Z

.field private favoritedAt:Ljava/util/Date;

.field private id:J

.field private source:Ljava/lang/String;

.field private text:Ljava/lang/String;

.field private truncated:Z

.field private user:Lt4j/data/User;


# direct methods
.method public constructor <init>(Lt4j/http/Response;)V
    .locals 1

    invoke-direct {p0}, Lt4j/TBlogResponse;-><init>()V

    invoke-virtual {p1}, Lt4j/http/Response;->asJSONObject()Lt4j/org/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lt4j/data/Comment;->init(Lt4j/org/json/JSONObject;)V

    return-void
.end method

.method public constructor <init>(Lt4j/org/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Lt4j/TBlogResponse;-><init>()V

    invoke-direct {p0, p1}, Lt4j/data/Comment;->init(Lt4j/org/json/JSONObject;)V

    return-void
.end method

.method public static constructStatuses(Lt4j/http/Response;)Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lt4j/http/Response;->asJSONArray()Lt4j/org/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lt4j/data/Comment;->constructStatuses(Lt4j/org/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static constructStatuses(Lt4j/org/json/JSONArray;)Ljava/util/List;
    .locals 5

    :try_start_0
    invoke-virtual {p0}, Lt4j/org/json/JSONArray;->length()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    return-object v2

    :cond_0
    new-instance v3, Lt4j/data/Comment;

    invoke-virtual {p0, v0}, Lt4j/org/json/JSONArray;->getJSONObject(I)Lt4j/org/json/JSONObject;

    move-result-object v4

    invoke-direct {v3, v4}, Lt4j/data/Comment;-><init>(Lt4j/org/json/JSONObject;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lt4j/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lt4j/TBlogException; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lt4j/TBlogException;

    invoke-direct {v1, v0}, Lt4j/TBlogException;-><init>(Ljava/lang/Exception;)V

    throw v1

    :catch_1
    move-exception v0

    throw v0
.end method

.method private init(Lt4j/org/json/JSONObject;)V
    .locals 2

    :try_start_0
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lt4j/org/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lt4j/data/Comment;->id:J

    const-string v0, "source"

    invoke-virtual {p1, v0}, Lt4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lt4j/data/Comment;->source:Ljava/lang/String;

    const-string v0, "text"

    invoke-virtual {p1, v0}, Lt4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lt4j/data/Comment;->text:Ljava/lang/String;

    const-string v0, "created_at"

    invoke-virtual {p1, v0}, Lt4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "EEE MMM dd HH:mm:ss z yyyy"

    invoke-static {v0, v1}, Lt4j/data/Comment;->parseDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lt4j/data/Comment;->createdAt:Ljava/util/Date;

    const-string v0, "favorited_at"

    invoke-virtual {p1, v0}, Lt4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "EEE MMM dd HH:mm:ss z yyyy"

    invoke-static {v0, v1}, Lt4j/data/Comment;->parseDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lt4j/data/Comment;->favoritedAt:Ljava/util/Date;

    const-string v0, "truncated"

    invoke-virtual {p1, v0}, Lt4j/org/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lt4j/data/Comment;->truncated:Z

    const-string v0, "favorited"

    invoke-virtual {p1, v0}, Lt4j/org/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lt4j/data/Comment;->favorited:Z

    const-string v0, "user"

    invoke-virtual {p1, v0}, Lt4j/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lt4j/data/User;

    const-string v1, "user"

    invoke-virtual {p1, v1}, Lt4j/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lt4j/org/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lt4j/data/User;-><init>(Lt4j/org/json/JSONObject;)V

    iput-object v0, p0, Lt4j/data/Comment;->user:Lt4j/data/User;
    :try_end_0
    .catch Lt4j/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lt4j/TBlogException;

    invoke-direct {v1, v0}, Lt4j/TBlogException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method


# virtual methods
.method public getCreatedAt()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lt4j/data/Comment;->createdAt:Ljava/util/Date;

    return-object v0
.end method

.method public getFavoritedAt()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lt4j/data/Comment;->favoritedAt:Ljava/util/Date;

    return-object v0
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lt4j/data/Comment;->id:J

    return-wide v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lt4j/data/Comment;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lt4j/data/Comment;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Lt4j/data/User;
    .locals 1

    iget-object v0, p0, Lt4j/data/Comment;->user:Lt4j/data/User;

    return-object v0
.end method

.method public isFavorited()Z
    .locals 1

    iget-boolean v0, p0, Lt4j/data/Comment;->favorited:Z

    return v0
.end method

.method public isTruncated()Z
    .locals 1

    iget-boolean v0, p0, Lt4j/data/Comment;->truncated:Z

    return v0
.end method

.method public setCreatedAt(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lt4j/data/Comment;->createdAt:Ljava/util/Date;

    return-void
.end method

.method public setFavorited(Z)V
    .locals 0

    iput-boolean p1, p0, Lt4j/data/Comment;->favorited:Z

    return-void
.end method

.method public setFavoritedAt(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lt4j/data/Comment;->favoritedAt:Ljava/util/Date;

    return-void
.end method

.method public setId(J)V
    .locals 0

    iput-wide p1, p0, Lt4j/data/Comment;->id:J

    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lt4j/data/Comment;->source:Ljava/lang/String;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lt4j/data/Comment;->text:Ljava/lang/String;

    return-void
.end method

.method public setTruncated(Z)V
    .locals 0

    iput-boolean p1, p0, Lt4j/data/Comment;->truncated:Z

    return-void
.end method

.method public setUser(Lt4j/data/User;)V
    .locals 0

    iput-object p1, p0, Lt4j/data/Comment;->user:Lt4j/data/User;

    return-void
.end method
