.class public Lt4j/data/User;
.super Lt4j/TBlogResponse;


# instance fields
.field private created_at:Ljava/util/Date;

.field private darenRec:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private favourites_count:I

.field private followers_count:I

.field private friends_count:I

.field private gender:I

.field private geoEnable:Z

.field private id:J

.field private location:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private profile_image_url:Ljava/lang/String;

.field private reason:Ljava/lang/String;

.field private screen_name:Ljava/lang/String;

.field private status:Lt4j/data/SimpleStatus;

.field private statuses_count:I

.field private sysTag:[Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private userTag:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lt4j/http/Response;)V
    .locals 1

    invoke-direct {p0}, Lt4j/TBlogResponse;-><init>()V

    invoke-virtual {p1}, Lt4j/http/Response;->asJSONObject()Lt4j/org/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lt4j/data/User;->init(Lt4j/org/json/JSONObject;)V

    return-void
.end method

.method public constructor <init>(Lt4j/org/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Lt4j/TBlogResponse;-><init>()V

    invoke-direct {p0, p1}, Lt4j/data/User;->init(Lt4j/org/json/JSONObject;)V

    return-void
.end method

.method public static createPagableUserList(Lt4j/http/Response;)Lt4j/data/PagableResponseList;
    .locals 6

    :try_start_0
    invoke-virtual {p0}, Lt4j/http/Response;->asJSONObject()Lt4j/org/json/JSONObject;

    move-result-object v0

    const-string v1, "users"

    invoke-virtual {v0, v1}, Lt4j/org/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lt4j/org/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lt4j/org/json/JSONArray;->length()I

    move-result v2

    new-instance v3, Lt4j/data/PagableResponseList;

    invoke-direct {v3, v2, v0, p0}, Lt4j/data/PagableResponseList;-><init>(ILt4j/org/json/JSONObject;Lt4j/http/Response;)V

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    return-object v3

    :cond_0
    new-instance v4, Lt4j/data/User;

    invoke-virtual {v1, v0}, Lt4j/org/json/JSONArray;->getJSONObject(I)Lt4j/org/json/JSONObject;

    move-result-object v5

    invoke-direct {v4, v5}, Lt4j/data/User;-><init>(Lt4j/org/json/JSONObject;)V

    invoke-virtual {v3, v4}, Lt4j/data/PagableResponseList;->add(Ljava/lang/Object;)Z
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

.method public static createUserList(Lt4j/http/Response;)Ljava/util/List;
    .locals 5

    :try_start_0
    invoke-virtual {p0}, Lt4j/http/Response;->asJSONArray()Lt4j/org/json/JSONArray;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lt4j/org/json/JSONArray;->length()I

    move-result v3

    if-lt v0, v3, :cond_0

    return-object v2

    :cond_0
    new-instance v3, Lt4j/data/User;

    invoke-virtual {v1, v0}, Lt4j/org/json/JSONArray;->getJSONObject(I)Lt4j/org/json/JSONObject;

    move-result-object v4

    invoke-direct {v3, v4}, Lt4j/data/User;-><init>(Lt4j/org/json/JSONObject;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lt4j/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lt4j/TBlogException;

    invoke-direct {v1, v0}, Lt4j/TBlogException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public static createUserList(Lt4j/org/json/JSONArray;)Ljava/util/List;
    .locals 4

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lt4j/org/json/JSONArray;->length()I

    move-result v2

    if-lt v0, v2, :cond_0

    return-object v1

    :cond_0
    new-instance v2, Lt4j/data/User;

    invoke-virtual {p0, v0}, Lt4j/org/json/JSONArray;->getJSONObject(I)Lt4j/org/json/JSONObject;

    move-result-object v3

    invoke-direct {v2, v3}, Lt4j/data/User;-><init>(Lt4j/org/json/JSONObject;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lt4j/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lt4j/TBlogException;

    invoke-direct {v1, v0}, Lt4j/TBlogException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method private init(Lt4j/org/json/JSONObject;)V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "name"

    invoke-virtual {p1, v1}, Lt4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lt4j/data/User;->name:Ljava/lang/String;

    const-string v1, "location"

    invoke-virtual {p1, v1}, Lt4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lt4j/data/User;->location:Ljava/lang/String;

    const-string v1, "id"

    invoke-virtual {p1, v1}, Lt4j/org/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lt4j/data/User;->id:J

    const-string v1, "description"

    invoke-virtual {p1, v1}, Lt4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lt4j/data/User;->description:Ljava/lang/String;

    const-string v1, "profile_image_url"

    invoke-virtual {p1, v1}, Lt4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lt4j/data/User;->profile_image_url:Ljava/lang/String;

    const-string v1, "screen_name"

    invoke-virtual {p1, v1}, Lt4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lt4j/data/User;->screen_name:Ljava/lang/String;

    const-string v1, "gender"

    invoke-virtual {p1, v1}, Lt4j/org/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lt4j/data/User;->gender:I

    const-string v1, "url"

    invoke-virtual {p1, v1}, Lt4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lt4j/data/User;->url:Ljava/lang/String;

    const-string v1, "created_at"

    invoke-virtual {p1, v1}, Lt4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "EEE MMM dd HH:mm:ss z yyyy"

    invoke-static {v1, v2}, Lt4j/data/User;->parseDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lt4j/data/User;->created_at:Ljava/util/Date;

    const-string v1, "followers_count"

    invoke-virtual {p1, v1}, Lt4j/org/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lt4j/data/User;->followers_count:I

    const-string v1, "friends_count"

    invoke-virtual {p1, v1}, Lt4j/org/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lt4j/data/User;->friends_count:I

    const-string v1, "favourites_count"

    invoke-virtual {p1, v1}, Lt4j/org/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lt4j/data/User;->favourites_count:I

    const-string v1, "statuses_count"

    invoke-virtual {p1, v1}, Lt4j/org/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lt4j/data/User;->statuses_count:I

    const-string v1, "geo_enable"

    invoke-virtual {p1, v1}, Lt4j/org/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lt4j/data/User;->geoEnable:Z

    const-string v1, "reason"

    invoke-virtual {p1, v1}, Lt4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lt4j/data/User;->reason:Ljava/lang/String;

    const-string v1, "darenRec"

    invoke-virtual {p1, v1}, Lt4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lt4j/data/User;->darenRec:Ljava/lang/String;

    const-string v1, "status"

    invoke-virtual {p1, v1}, Lt4j/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lt4j/data/SimpleStatus;

    const-string v2, "status"

    invoke-virtual {p1, v2}, Lt4j/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lt4j/org/json/JSONObject;

    move-result-object v2

    invoke-direct {v1, v2}, Lt4j/data/SimpleStatus;-><init>(Lt4j/org/json/JSONObject;)V

    iput-object v1, p0, Lt4j/data/User;->status:Lt4j/data/SimpleStatus;

    :cond_0
    const-string v1, "sysTag"

    invoke-virtual {p1, v1}, Lt4j/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "sysTag"

    invoke-virtual {p1, v1}, Lt4j/org/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lt4j/org/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lt4j/org/json/JSONArray;->length()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lt4j/data/User;->sysTag:[Ljava/lang/String;

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Lt4j/org/json/JSONArray;->length()I

    move-result v3

    if-lt v1, v3, :cond_3

    :cond_1
    const-string v1, "userTag"

    invoke-virtual {p1, v1}, Lt4j/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "userTag"

    invoke-virtual {p1, v1}, Lt4j/org/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lt4j/org/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lt4j/org/json/JSONArray;->length()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lt4j/data/User;->userTag:[Ljava/lang/String;

    :goto_1
    invoke-virtual {v1}, Lt4j/org/json/JSONArray;->length()I

    move-result v2

    if-lt v0, v2, :cond_4

    :cond_2
    return-void

    :cond_3
    iget-object v3, p0, Lt4j/data/User;->sysTag:[Ljava/lang/String;

    invoke-virtual {v2, v1}, Lt4j/org/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lt4j/data/User;->userTag:[Ljava/lang/String;

    invoke-virtual {v1, v0}, Lt4j/org/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0
    :try_end_0
    .catch Lt4j/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

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
.method public getCreatedAt()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lt4j/data/User;->created_at:Ljava/util/Date;

    return-object v0
.end method

.method public getDarenRec()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lt4j/data/User;->darenRec:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lt4j/data/User;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getFavouritesCount()I
    .locals 1

    iget v0, p0, Lt4j/data/User;->favourites_count:I

    return v0
.end method

.method public getFollowersCount()I
    .locals 1

    iget v0, p0, Lt4j/data/User;->followers_count:I

    return v0
.end method

.method public getFriendsCount()I
    .locals 1

    iget v0, p0, Lt4j/data/User;->friends_count:I

    return v0
.end method

.method public getGender()I
    .locals 1

    iget v0, p0, Lt4j/data/User;->gender:I

    return v0
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lt4j/data/User;->id:J

    return-wide v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lt4j/data/User;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lt4j/data/User;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileImageURL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lt4j/data/User;->profile_image_url:Ljava/lang/String;

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lt4j/data/User;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lt4j/data/User;->screen_name:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lt4j/data/SimpleStatus;
    .locals 1

    iget-object v0, p0, Lt4j/data/User;->status:Lt4j/data/SimpleStatus;

    return-object v0
.end method

.method public getStatusesCount()I
    .locals 1

    iget v0, p0, Lt4j/data/User;->statuses_count:I

    return v0
.end method

.method public getSysTag()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lt4j/data/User;->sysTag:[Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lt4j/data/User;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getUserTag()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lt4j/data/User;->userTag:[Ljava/lang/String;

    return-object v0
.end method

.method public isGeoEnable()Z
    .locals 1

    iget-boolean v0, p0, Lt4j/data/User;->geoEnable:Z

    return v0
.end method

.method public setCreatedAt(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lt4j/data/User;->created_at:Ljava/util/Date;

    return-void
.end method

.method public setDarenRec(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lt4j/data/User;->darenRec:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lt4j/data/User;->description:Ljava/lang/String;

    return-void
.end method

.method public setFavouritesCount(I)V
    .locals 0

    iput p1, p0, Lt4j/data/User;->favourites_count:I

    return-void
.end method

.method public setFollowersCount(I)V
    .locals 0

    iput p1, p0, Lt4j/data/User;->followers_count:I

    return-void
.end method

.method public setFriendsCount(I)V
    .locals 0

    iput p1, p0, Lt4j/data/User;->friends_count:I

    return-void
.end method

.method public setGender(I)V
    .locals 0

    iput p1, p0, Lt4j/data/User;->gender:I

    return-void
.end method

.method public setGeoEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lt4j/data/User;->geoEnable:Z

    return-void
.end method

.method public setId(J)V
    .locals 0

    iput-wide p1, p0, Lt4j/data/User;->id:J

    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lt4j/data/User;->location:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lt4j/data/User;->name:Ljava/lang/String;

    return-void
.end method

.method public setProfileImageURL(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lt4j/data/User;->profile_image_url:Ljava/lang/String;

    return-void
.end method

.method public setReason(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lt4j/data/User;->reason:Ljava/lang/String;

    return-void
.end method

.method public setScreenName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lt4j/data/User;->screen_name:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Lt4j/data/SimpleStatus;)V
    .locals 0

    iput-object p1, p0, Lt4j/data/User;->status:Lt4j/data/SimpleStatus;

    return-void
.end method

.method public setStatusesCount(I)V
    .locals 0

    iput p1, p0, Lt4j/data/User;->statuses_count:I

    return-void
.end method

.method public setSysTag([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lt4j/data/User;->sysTag:[Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lt4j/data/User;->url:Ljava/lang/String;

    return-void
.end method

.method public setUserTag([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lt4j/data/User;->userTag:[Ljava/lang/String;

    return-void
.end method
