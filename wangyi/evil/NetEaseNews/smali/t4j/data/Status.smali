.class public Lt4j/data/Status;
.super Lt4j/TBlogResponse;


# instance fields
.field private comments_count:I

.field private created_at:Ljava/util/Date;

.field private cursor_id:Ljava/lang/String;

.field private favorited:Z

.field private favorited_at:Ljava/util/Date;

.field private geoInfor:Lt4j/data/GeoInfor;

.field private id:J

.field private in_reply_to_screen_name:Ljava/lang/String;

.field private in_reply_to_status_id:J

.field private in_reply_to_status_text:Ljava/lang/String;

.field private in_reply_to_user_id:J

.field private in_reply_to_user_name:Ljava/lang/String;

.field private is_retweet_by_user:Z

.field private retweet_count:I

.field private retweet_created_at:Ljava/util/Date;

.field private retweet_user_id:J

.field private retweet_user_name:Ljava/lang/String;

.field private retweet_user_screen_name:Ljava/lang/String;

.field private root_in_reply_to_screen_name:Ljava/lang/String;

.field private root_in_reply_to_status_id:J

.field private root_in_reply_to_status_text:Ljava/lang/String;

.field private root_in_reply_to_user_id:J

.field private root_in_reply_to_user_name:Ljava/lang/String;

.field private source:Ljava/lang/String;

.field private text:Ljava/lang/String;

.field private user:Lt4j/data/User;

.field private venue:Lt4j/data/Venue;


# direct methods
.method public constructor <init>(Lt4j/http/Response;)V
    .locals 1

    invoke-direct {p0}, Lt4j/TBlogResponse;-><init>()V

    invoke-virtual {p1}, Lt4j/http/Response;->asJSONObject()Lt4j/org/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lt4j/data/Status;->init(Lt4j/org/json/JSONObject;)V

    return-void
.end method

.method public constructor <init>(Lt4j/org/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Lt4j/TBlogResponse;-><init>()V

    invoke-direct {p0, p1}, Lt4j/data/Status;->init(Lt4j/org/json/JSONObject;)V

    return-void
.end method

.method public static constructStatuses(Lt4j/http/Response;)Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lt4j/http/Response;->asJSONArray()Lt4j/org/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lt4j/data/Status;->constructStatuses(Lt4j/org/json/JSONArray;)Ljava/util/List;

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
    new-instance v3, Lt4j/data/Status;

    invoke-virtual {p0, v0}, Lt4j/org/json/JSONArray;->getJSONObject(I)Lt4j/org/json/JSONObject;

    move-result-object v4

    invoke-direct {v3, v4}, Lt4j/data/Status;-><init>(Lt4j/org/json/JSONObject;)V

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
    .locals 4

    :try_start_0
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lt4j/org/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lt4j/data/Status;->id:J

    const-string v0, "source"

    invoke-virtual {p1, v0}, Lt4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lt4j/data/Status;->source:Ljava/lang/String;

    const-string v0, "created_at"

    invoke-virtual {p1, v0}, Lt4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "EEE MMM dd HH:mm:ss z yyyy"

    invoke-static {v0, v1}, Lt4j/data/Status;->parseDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lt4j/data/Status;->created_at:Ljava/util/Date;

    const-string v0, "text"

    invoke-virtual {p1, v0}, Lt4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lt4j/data/Status;->text:Ljava/lang/String;

    const-string v0, "in_reply_to_status_id"

    invoke-virtual {p1, v0}, Lt4j/org/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lt4j/data/Status;->in_reply_to_status_id:J

    const-string v0, "in_reply_to_user_id"

    invoke-virtual {p1, v0}, Lt4j/org/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lt4j/data/Status;->in_reply_to_user_id:J

    const-string v0, "in_reply_to_screen_name"

    invoke-virtual {p1, v0}, Lt4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lt4j/data/Status;->in_reply_to_screen_name:Ljava/lang/String;

    const-string v0, "retweet_count"

    invoke-virtual {p1, v0}, Lt4j/org/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lt4j/data/Status;->retweet_count:I

    const-string v0, "comments_count"

    invoke-virtual {p1, v0}, Lt4j/org/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lt4j/data/Status;->comments_count:I

    const-string v0, "favorited_at"

    invoke-virtual {p1, v0}, Lt4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "EEE MMM dd HH:mm:ss z yyyy"

    invoke-static {v0, v1}, Lt4j/data/Status;->parseDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lt4j/data/Status;->favorited_at:Ljava/util/Date;

    const-string v0, "in_reply_to_status_text"

    invoke-virtual {p1, v0}, Lt4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lt4j/data/Status;->in_reply_to_status_text:Ljava/lang/String;

    const-string v0, "in_reply_to_user_name"

    invoke-virtual {p1, v0}, Lt4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lt4j/data/Status;->in_reply_to_user_name:Ljava/lang/String;

    const-string v0, "favorited"

    invoke-virtual {p1, v0}, Lt4j/org/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lt4j/data/Status;->favorited:Z

    const-string v0, "cursor_id"

    invoke-virtual {p1, v0}, Lt4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lt4j/data/Status;->cursor_id:Ljava/lang/String;

    const-string v0, "root_in_reply_to_status_id"

    invoke-virtual {p1, v0}, Lt4j/org/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lt4j/data/Status;->root_in_reply_to_status_id:J

    const-string v0, "is_retweet_by_user"

    invoke-virtual {p1, v0}, Lt4j/org/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lt4j/data/Status;->is_retweet_by_user:Z

    const-string v0, "retweet_user_id"

    invoke-virtual {p1, v0}, Lt4j/org/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lt4j/data/Status;->retweet_user_id:J

    const-string v0, "retweet_user_name"

    invoke-virtual {p1, v0}, Lt4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lt4j/data/Status;->retweet_user_name:Ljava/lang/String;

    const-string v0, "retweet_user_screen_name"

    invoke-virtual {p1, v0}, Lt4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lt4j/data/Status;->retweet_user_screen_name:Ljava/lang/String;

    const-string v0, "retweet_created_at"

    invoke-virtual {p1, v0}, Lt4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "EEE MMM dd HH:mm:ss z yyyy"

    invoke-static {v0, v1}, Lt4j/data/Status;->parseDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lt4j/data/Status;->retweet_created_at:Ljava/util/Date;

    const-string v0, "root_in_reply_to_user_id"

    invoke-virtual {p1, v0}, Lt4j/org/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lt4j/data/Status;->root_in_reply_to_user_id:J

    const-string v0, "root_in_reply_to_screen_name"

    invoke-virtual {p1, v0}, Lt4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lt4j/data/Status;->root_in_reply_to_screen_name:Ljava/lang/String;

    const-string v0, "root_in_reply_to_user_name"

    invoke-virtual {p1, v0}, Lt4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lt4j/data/Status;->root_in_reply_to_user_name:Ljava/lang/String;

    const-string v0, "root_in_reply_to_status_text"

    invoke-virtual {p1, v0}, Lt4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lt4j/data/Status;->root_in_reply_to_status_text:Ljava/lang/String;

    const-string v0, "user"

    invoke-virtual {p1, v0}, Lt4j/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lt4j/data/User;

    const-string v1, "user"

    invoke-virtual {p1, v1}, Lt4j/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lt4j/org/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lt4j/data/User;-><init>(Lt4j/org/json/JSONObject;)V

    iput-object v0, p0, Lt4j/data/Status;->user:Lt4j/data/User;

    :cond_0
    const-string v0, "geo"

    invoke-virtual {p1, v0}, Lt4j/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lt4j/data/GeoInfor;

    const-string v1, "geo"

    invoke-virtual {p1, v1}, Lt4j/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lt4j/org/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lt4j/data/GeoInfor;-><init>(Lt4j/org/json/JSONObject;)V

    iput-object v0, p0, Lt4j/data/Status;->geoInfor:Lt4j/data/GeoInfor;

    :cond_1
    const-string v0, "venue"

    invoke-virtual {p1, v0}, Lt4j/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lt4j/data/Venue;

    const-string v1, "venue"

    invoke-virtual {p1, v1}, Lt4j/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lt4j/org/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lt4j/data/Venue;-><init>(Lt4j/org/json/JSONObject;)V

    iput-object v0, p0, Lt4j/data/Status;->venue:Lt4j/data/Venue;
    :try_end_0
    .catch Lt4j/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lt4j/TBlogException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lt4j/org/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lt4j/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lt4j/TBlogException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method


# virtual methods
.method public getCommentsCount()I
    .locals 1

    iget v0, p0, Lt4j/data/Status;->comments_count:I

    return v0
.end method

.method public getCreatedAt()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lt4j/data/Status;->created_at:Ljava/util/Date;

    return-object v0
.end method

.method public getCursorId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lt4j/data/Status;->cursor_id:Ljava/lang/String;

    return-object v0
.end method

.method public getFavoritedAt()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lt4j/data/Status;->favorited_at:Ljava/util/Date;

    return-object v0
.end method

.method public getGeoInfor()Lt4j/data/GeoInfor;
    .locals 1

    iget-object v0, p0, Lt4j/data/Status;->geoInfor:Lt4j/data/GeoInfor;

    return-object v0
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lt4j/data/Status;->id:J

    return-wide v0
.end method

.method public getInReplyToScreenName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lt4j/data/Status;->in_reply_to_screen_name:Ljava/lang/String;

    return-object v0
.end method

.method public getInReplyToStatusId()J
    .locals 2

    iget-wide v0, p0, Lt4j/data/Status;->in_reply_to_status_id:J

    return-wide v0
.end method

.method public getInReplyToStatusText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lt4j/data/Status;->in_reply_to_status_text:Ljava/lang/String;

    return-object v0
.end method

.method public getInReplyToUserId()J
    .locals 2

    iget-wide v0, p0, Lt4j/data/Status;->in_reply_to_user_id:J

    return-wide v0
.end method

.method public getInReplyToUserName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lt4j/data/Status;->in_reply_to_user_name:Ljava/lang/String;

    return-object v0
.end method

.method public getRetweetCount()I
    .locals 1

    iget v0, p0, Lt4j/data/Status;->retweet_count:I

    return v0
.end method

.method public getRetweetCreatedAt()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lt4j/data/Status;->retweet_created_at:Ljava/util/Date;

    return-object v0
.end method

.method public getRetweetUserId()J
    .locals 2

    iget-wide v0, p0, Lt4j/data/Status;->retweet_user_id:J

    return-wide v0
.end method

.method public getRetweetUserName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lt4j/data/Status;->retweet_user_name:Ljava/lang/String;

    return-object v0
.end method

.method public getRetweetUserScreenName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lt4j/data/Status;->retweet_user_screen_name:Ljava/lang/String;

    return-object v0
.end method

.method public getRootInReplyToScreenName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lt4j/data/Status;->root_in_reply_to_screen_name:Ljava/lang/String;

    return-object v0
.end method

.method public getRootInReplyToStatusId()J
    .locals 2

    iget-wide v0, p0, Lt4j/data/Status;->root_in_reply_to_status_id:J

    return-wide v0
.end method

.method public getRootInReplyToStatusText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lt4j/data/Status;->root_in_reply_to_status_text:Ljava/lang/String;

    return-object v0
.end method

.method public getRootInReplyToUserId()J
    .locals 2

    iget-wide v0, p0, Lt4j/data/Status;->root_in_reply_to_user_id:J

    return-wide v0
.end method

.method public getRootInReplyToUserName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lt4j/data/Status;->root_in_reply_to_user_name:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lt4j/data/Status;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lt4j/data/Status;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Lt4j/data/User;
    .locals 1

    iget-object v0, p0, Lt4j/data/Status;->user:Lt4j/data/User;

    return-object v0
.end method

.method public getVenue()Lt4j/data/Venue;
    .locals 1

    iget-object v0, p0, Lt4j/data/Status;->venue:Lt4j/data/Venue;

    return-object v0
.end method

.method public isFavorited()Z
    .locals 1

    iget-boolean v0, p0, Lt4j/data/Status;->favorited:Z

    return v0
.end method

.method public isIsRetweetByUser()Z
    .locals 1

    iget-boolean v0, p0, Lt4j/data/Status;->is_retweet_by_user:Z

    return v0
.end method

.method public setCommentsCount(I)V
    .locals 0

    iput p1, p0, Lt4j/data/Status;->comments_count:I

    return-void
.end method

.method public setCreatedAt(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lt4j/data/Status;->created_at:Ljava/util/Date;

    return-void
.end method

.method public setCursorId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lt4j/data/Status;->cursor_id:Ljava/lang/String;

    return-void
.end method

.method public setFavorited(Z)V
    .locals 0

    iput-boolean p1, p0, Lt4j/data/Status;->favorited:Z

    return-void
.end method

.method public setFavoritedAt(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lt4j/data/Status;->favorited_at:Ljava/util/Date;

    return-void
.end method

.method public setGeoInfor(Lt4j/data/GeoInfor;)V
    .locals 0

    iput-object p1, p0, Lt4j/data/Status;->geoInfor:Lt4j/data/GeoInfor;

    return-void
.end method

.method public setId(J)V
    .locals 0

    iput-wide p1, p0, Lt4j/data/Status;->id:J

    return-void
.end method

.method public setInReplyToScreeName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lt4j/data/Status;->in_reply_to_screen_name:Ljava/lang/String;

    return-void
.end method

.method public setInReplyToStatusId(J)V
    .locals 0

    iput-wide p1, p0, Lt4j/data/Status;->in_reply_to_status_id:J

    return-void
.end method

.method public setInReplyToStatusText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lt4j/data/Status;->in_reply_to_status_text:Ljava/lang/String;

    return-void
.end method

.method public setInReplyToUserId(J)V
    .locals 0

    iput-wide p1, p0, Lt4j/data/Status;->in_reply_to_user_id:J

    return-void
.end method

.method public setInReplyToUserName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lt4j/data/Status;->in_reply_to_user_name:Ljava/lang/String;

    return-void
.end method

.method public setIsRetweetByUser(Z)V
    .locals 0

    iput-boolean p1, p0, Lt4j/data/Status;->is_retweet_by_user:Z

    return-void
.end method

.method public setRetweetCount(I)V
    .locals 0

    iput p1, p0, Lt4j/data/Status;->retweet_count:I

    return-void
.end method

.method public setRetweetCreatedAt(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lt4j/data/Status;->retweet_created_at:Ljava/util/Date;

    return-void
.end method

.method public setRetweetUserId(J)V
    .locals 0

    iput-wide p1, p0, Lt4j/data/Status;->retweet_user_id:J

    return-void
.end method

.method public setRetweetUserName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lt4j/data/Status;->retweet_user_name:Ljava/lang/String;

    return-void
.end method

.method public setRetweetUserScreenName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lt4j/data/Status;->retweet_user_screen_name:Ljava/lang/String;

    return-void
.end method

.method public setRootInReplyToScreenName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lt4j/data/Status;->root_in_reply_to_screen_name:Ljava/lang/String;

    return-void
.end method

.method public setRootInReplyToStatusId(J)V
    .locals 0

    iput-wide p1, p0, Lt4j/data/Status;->root_in_reply_to_status_id:J

    return-void
.end method

.method public setRootInReplyToStatusText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lt4j/data/Status;->root_in_reply_to_status_text:Ljava/lang/String;

    return-void
.end method

.method public setRootInReplyToUserId(J)V
    .locals 0

    iput-wide p1, p0, Lt4j/data/Status;->root_in_reply_to_user_id:J

    return-void
.end method

.method public setRootInReplyToUserName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lt4j/data/Status;->root_in_reply_to_user_name:Ljava/lang/String;

    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lt4j/data/Status;->source:Ljava/lang/String;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lt4j/data/Status;->text:Ljava/lang/String;

    return-void
.end method

.method public setUser(Lt4j/data/User;)V
    .locals 0

    iput-object p1, p0, Lt4j/data/Status;->user:Lt4j/data/User;

    return-void
.end method

.method public setVenue(Lt4j/data/Venue;)V
    .locals 0

    iput-object p1, p0, Lt4j/data/Status;->venue:Lt4j/data/Venue;

    return-void
.end method
