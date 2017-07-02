.class public Lt4j/data/PagableResponseList;
.super Ljava/util/ArrayList;


# static fields
.field private static final serialVersionUID:J = 0x154294b63421ddc1L


# instance fields
.field private final nextCursor:J

.field private final previousCursor:J


# direct methods
.method constructor <init>(ILt4j/org/json/JSONObject;Lt4j/http/Response;)V
    .locals 2

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    const-string v0, "previous_cursor"

    invoke-direct {p0, p2, v0}, Lt4j/data/PagableResponseList;->getLong(Lt4j/org/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lt4j/data/PagableResponseList;->previousCursor:J

    const-string v0, "next_cursor"

    invoke-direct {p0, p2, v0}, Lt4j/data/PagableResponseList;->getLong(Lt4j/org/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lt4j/data/PagableResponseList;->nextCursor:J

    return-void
.end method

.method private getLong(Lt4j/org/json/JSONObject;Ljava/lang/String;)J
    .locals 3

    const-wide/16 v0, -0x1

    :try_start_0
    invoke-virtual {p1, p2}, Lt4j/org/json/JSONObject;->getLong(Ljava/lang/String;)J
    :try_end_0
    .catch Lt4j/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public getNextCursor()J
    .locals 2

    iget-wide v0, p0, Lt4j/data/PagableResponseList;->nextCursor:J

    return-wide v0
.end method

.method public getPreviousCursor()J
    .locals 2

    iget-wide v0, p0, Lt4j/data/PagableResponseList;->previousCursor:J

    return-wide v0
.end method

.method public hasNext()Z
    .locals 4

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lt4j/data/PagableResponseList;->nextCursor:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPrevious()Z
    .locals 4

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lt4j/data/PagableResponseList;->previousCursor:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
