.class public Lt4j/data/Venue;
.super Ljava/lang/Object;


# instance fields
.field private address:Ljava/lang/String;

.field private city:Ljava/lang/String;

.field private coordinates:[D

.field private name:Ljava/lang/String;

.field private province:Ljava/lang/String;

.field private state:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lt4j/org/json/JSONObject;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [D

    iput-object v0, p0, Lt4j/data/Venue;->coordinates:[D

    :try_start_0
    const-string v0, "name"

    invoke-virtual {p1, v0}, Lt4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lt4j/data/Venue;->name:Ljava/lang/String;

    const-string v0, "address"

    invoke-virtual {p1, v0}, Lt4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lt4j/data/Venue;->address:Ljava/lang/String;

    const-string v0, "city"

    invoke-virtual {p1, v0}, Lt4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lt4j/data/Venue;->city:Ljava/lang/String;

    const-string v0, "province"

    invoke-virtual {p1, v0}, Lt4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lt4j/data/Venue;->province:Ljava/lang/String;

    const-string v0, "state"

    invoke-virtual {p1, v0}, Lt4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lt4j/data/Venue;->state:Ljava/lang/String;

    const-string v0, "coordinates"

    invoke-virtual {p1, v0}, Lt4j/org/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lt4j/org/json/JSONArray;

    move-result-object v0

    iget-object v1, p0, Lt4j/data/Venue;->coordinates:[D

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lt4j/org/json/JSONArray;->getDouble(I)D

    move-result-wide v3

    aput-wide v3, v1, v2

    iget-object v1, p0, Lt4j/data/Venue;->coordinates:[D

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lt4j/org/json/JSONArray;->getDouble(I)D

    move-result-wide v3

    aput-wide v3, v1, v2
    :try_end_0
    .catch Lt4j/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lt4j/TBlogException;

    invoke-direct {v1, v0}, Lt4j/TBlogException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public static createVenueList(Lt4j/http/Response;)Ljava/util/List;
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
    new-instance v3, Lt4j/data/Venue;

    invoke-virtual {v1, v0}, Lt4j/org/json/JSONArray;->getJSONObject(I)Lt4j/org/json/JSONObject;

    move-result-object v4

    invoke-direct {v3, v4}, Lt4j/data/Venue;-><init>(Lt4j/org/json/JSONObject;)V

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


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lt4j/data/Venue;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lt4j/data/Venue;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getCoordinates()[D
    .locals 1

    iget-object v0, p0, Lt4j/data/Venue;->coordinates:[D

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    iget-object v0, p0, Lt4j/data/Venue;->coordinates:[D

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    iget-object v0, p0, Lt4j/data/Venue;->coordinates:[D

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lt4j/data/Venue;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProvince()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lt4j/data/Venue;->province:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lt4j/data/Venue;->state:Ljava/lang/String;

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lt4j/data/Venue;->address:Ljava/lang/String;

    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lt4j/data/Venue;->city:Ljava/lang/String;

    return-void
.end method

.method public setCoordinates([D)V
    .locals 0

    iput-object p1, p0, Lt4j/data/Venue;->coordinates:[D

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lt4j/data/Venue;->name:Ljava/lang/String;

    return-void
.end method

.method public setProvince(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lt4j/data/Venue;->province:Ljava/lang/String;

    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lt4j/data/Venue;->state:Ljava/lang/String;

    return-void
.end method
