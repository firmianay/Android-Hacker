.class public Lt4j/data/GeoInfor;
.super Ljava/lang/Object;


# instance fields
.field private coordinates:[D

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lt4j/org/json/JSONObject;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [D

    iput-object v0, p0, Lt4j/data/GeoInfor;->coordinates:[D

    :try_start_0
    const-string v0, "type"

    invoke-virtual {p1, v0}, Lt4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lt4j/data/GeoInfor;->type:Ljava/lang/String;

    iget-object v0, p0, Lt4j/data/GeoInfor;->coordinates:[D

    const/4 v1, 0x0

    const-string v2, "coordinates"

    invoke-virtual {p1, v2}, Lt4j/org/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lt4j/org/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lt4j/org/json/JSONArray;->getDouble(I)D

    move-result-wide v2

    aput-wide v2, v0, v1

    iget-object v0, p0, Lt4j/data/GeoInfor;->coordinates:[D

    const/4 v1, 0x1

    const-string v2, "coordinates"

    invoke-virtual {p1, v2}, Lt4j/org/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lt4j/org/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lt4j/org/json/JSONArray;->getDouble(I)D

    move-result-wide v2

    aput-wide v2, v0, v1
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
.method public getCoordinates()[D
    .locals 1

    iget-object v0, p0, Lt4j/data/GeoInfor;->coordinates:[D

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    iget-object v0, p0, Lt4j/data/GeoInfor;->coordinates:[D

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    iget-object v0, p0, Lt4j/data/GeoInfor;->coordinates:[D

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lt4j/data/GeoInfor;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setCoordinates([D)V
    .locals 0

    iput-object p1, p0, Lt4j/data/GeoInfor;->coordinates:[D

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lt4j/data/GeoInfor;->type:Ljava/lang/String;

    return-void
.end method
