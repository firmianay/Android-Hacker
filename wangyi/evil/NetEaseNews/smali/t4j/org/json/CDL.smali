.class public Lt4j/org/json/CDL;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getValue(Lt4j/org/json/JSONTokener;)Ljava/lang/String;
    .locals 2

    :cond_0
    invoke-virtual {p0}, Lt4j/org/json/JSONTokener;->next()C

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0}, Lt4j/org/json/JSONTokener;->back()V

    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Lt4j/org/json/JSONTokener;->nextTo(C)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0, v0}, Lt4j/org/json/JSONTokener;->nextString(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lt4j/org/json/JSONTokener;->back()V

    const-string v0, ""

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x22 -> :sswitch_1
        0x27 -> :sswitch_1
        0x2c -> :sswitch_2
    .end sparse-switch
.end method

.method public static rowToJSONArray(Lt4j/org/json/JSONTokener;)Lt4j/org/json/JSONArray;
    .locals 3

    new-instance v0, Lt4j/org/json/JSONArray;

    invoke-direct {v0}, Lt4j/org/json/JSONArray;-><init>()V

    :cond_0
    invoke-static {p0}, Lt4j/org/json/CDL;->getValue(Lt4j/org/json/JSONTokener;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lt4j/org/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    :cond_1
    const/4 v0, 0x0

    :cond_2
    return-object v0

    :cond_3
    invoke-virtual {v0, v1}, Lt4j/org/json/JSONArray;->put(Ljava/lang/Object;)Lt4j/org/json/JSONArray;

    :cond_4
    invoke-virtual {p0}, Lt4j/org/json/JSONTokener;->next()C

    move-result v1

    const/16 v2, 0x2c

    if-eq v1, v2, :cond_0

    const/16 v2, 0x20

    if-eq v1, v2, :cond_4

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2

    const/16 v2, 0xd

    if-eq v1, v2, :cond_2

    if-eqz v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Bad character \'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lt4j/org/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lt4j/org/json/JSONException;

    move-result-object v0

    throw v0
.end method

.method public static rowToJSONObject(Lt4j/org/json/JSONArray;Lt4j/org/json/JSONTokener;)Lt4j/org/json/JSONObject;
    .locals 1

    invoke-static {p1}, Lt4j/org/json/CDL;->rowToJSONArray(Lt4j/org/json/JSONTokener;)Lt4j/org/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lt4j/org/json/JSONArray;->toJSONObject(Lt4j/org/json/JSONArray;)Lt4j/org/json/JSONObject;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static rowToString(Lt4j/org/json/JSONArray;)Ljava/lang/String;
    .locals 7

    const/16 v6, 0x2c

    const/16 v5, 0x27

    const/16 v4, 0x22

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lt4j/org/json/JSONArray;->length()I

    move-result v2

    if-lt v0, v2, :cond_0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    if-lez v0, :cond_1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {p0, v0}, Lt4j/org/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_4

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_3

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public static toJSONArray(Ljava/lang/String;)Lt4j/org/json/JSONArray;
    .locals 1

    new-instance v0, Lt4j/org/json/JSONTokener;

    invoke-direct {v0, p0}, Lt4j/org/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lt4j/org/json/CDL;->toJSONArray(Lt4j/org/json/JSONTokener;)Lt4j/org/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public static toJSONArray(Lt4j/org/json/JSONArray;Ljava/lang/String;)Lt4j/org/json/JSONArray;
    .locals 1

    new-instance v0, Lt4j/org/json/JSONTokener;

    invoke-direct {v0, p1}, Lt4j/org/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lt4j/org/json/CDL;->toJSONArray(Lt4j/org/json/JSONArray;Lt4j/org/json/JSONTokener;)Lt4j/org/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public static toJSONArray(Lt4j/org/json/JSONArray;Lt4j/org/json/JSONTokener;)Lt4j/org/json/JSONArray;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lt4j/org/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Lt4j/org/json/JSONArray;

    invoke-direct {v1}, Lt4j/org/json/JSONArray;-><init>()V

    :goto_1
    invoke-static {p0, p1}, Lt4j/org/json/CDL;->rowToJSONObject(Lt4j/org/json/JSONArray;Lt4j/org/json/JSONTokener;)Lt4j/org/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lt4j/org/json/JSONArray;->length()I

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v2}, Lt4j/org/json/JSONArray;->put(Ljava/lang/Object;)Lt4j/org/json/JSONArray;

    goto :goto_1
.end method

.method public static toJSONArray(Lt4j/org/json/JSONTokener;)Lt4j/org/json/JSONArray;
    .locals 1

    invoke-static {p0}, Lt4j/org/json/CDL;->rowToJSONArray(Lt4j/org/json/JSONTokener;)Lt4j/org/json/JSONArray;

    move-result-object v0

    invoke-static {v0, p0}, Lt4j/org/json/CDL;->toJSONArray(Lt4j/org/json/JSONArray;Lt4j/org/json/JSONTokener;)Lt4j/org/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Lt4j/org/json/JSONArray;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lt4j/org/json/JSONArray;->optJSONObject(I)Lt4j/org/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lt4j/org/json/JSONObject;->names()Lt4j/org/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Lt4j/org/json/CDL;->rowToString(Lt4j/org/json/JSONArray;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lt4j/org/json/CDL;->toString(Lt4j/org/json/JSONArray;Lt4j/org/json/JSONArray;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static toString(Lt4j/org/json/JSONArray;Lt4j/org/json/JSONArray;)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lt4j/org/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Lt4j/org/json/JSONArray;->length()I

    move-result v2

    if-lt v0, v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v0}, Lt4j/org/json/JSONArray;->optJSONObject(I)Lt4j/org/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2, p0}, Lt4j/org/json/JSONObject;->toJSONArray(Lt4j/org/json/JSONArray;)Lt4j/org/json/JSONArray;

    move-result-object v2

    invoke-static {v2}, Lt4j/org/json/CDL;->rowToString(Lt4j/org/json/JSONArray;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
