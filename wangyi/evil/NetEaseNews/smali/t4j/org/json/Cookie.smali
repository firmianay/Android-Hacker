.class public Lt4j/org/json/Cookie;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/16 v7, 0x25

    const/16 v6, 0x10

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-lt v4, v5, :cond_1

    const/16 v5, 0x2b

    if-eq v4, v5, :cond_1

    if-eq v4, v7, :cond_1

    const/16 v5, 0x3d

    if-eq v4, v5, :cond_1

    const/16 v5, 0x3b

    if-ne v4, v5, :cond_2

    :cond_1
    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    ushr-int/lit8 v5, v4, 0x4

    and-int/lit8 v5, v5, 0xf

    int-to-char v5, v5

    invoke-static {v5, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    and-int/lit8 v4, v4, 0xf

    int-to-char v4, v4

    invoke-static {v4, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public static toJSONObject(Ljava/lang/String;)Lt4j/org/json/JSONObject;
    .locals 6

    const/16 v5, 0x3b

    const/16 v4, 0x3d

    new-instance v1, Lt4j/org/json/JSONObject;

    invoke-direct {v1}, Lt4j/org/json/JSONObject;-><init>()V

    new-instance v2, Lt4j/org/json/JSONTokener;

    invoke-direct {v2, p0}, Lt4j/org/json/JSONTokener;-><init>(Ljava/lang/String;)V

    const-string v0, "name"

    invoke-virtual {v2, v4}, Lt4j/org/json/JSONTokener;->nextTo(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lt4j/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lt4j/org/json/JSONObject;

    invoke-virtual {v2, v4}, Lt4j/org/json/JSONTokener;->next(C)C

    const-string v0, "value"

    invoke-virtual {v2, v5}, Lt4j/org/json/JSONTokener;->nextTo(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lt4j/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lt4j/org/json/JSONObject;

    invoke-virtual {v2}, Lt4j/org/json/JSONTokener;->next()C

    :goto_0
    invoke-virtual {v2}, Lt4j/org/json/JSONTokener;->more()Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "=;"

    invoke-virtual {v2, v0}, Lt4j/org/json/JSONTokener;->nextTo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lt4j/org/json/Cookie;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lt4j/org/json/JSONTokener;->next()C

    move-result v0

    if-eq v0, v4, :cond_2

    const-string v0, "secure"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_1
    invoke-virtual {v1, v3, v0}, Lt4j/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lt4j/org/json/JSONObject;

    goto :goto_0

    :cond_1
    const-string v0, "Missing \'=\' in cookie parameter."

    invoke-virtual {v2, v0}, Lt4j/org/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lt4j/org/json/JSONException;

    move-result-object v0

    throw v0

    :cond_2
    invoke-virtual {v2, v5}, Lt4j/org/json/JSONTokener;->nextTo(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lt4j/org/json/Cookie;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lt4j/org/json/JSONTokener;->next()C

    goto :goto_1
.end method

.method public static toString(Lt4j/org/json/JSONObject;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "name"

    invoke-virtual {p0, v1}, Lt4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lt4j/org/json/Cookie;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "value"

    invoke-virtual {p0, v1}, Lt4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lt4j/org/json/Cookie;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "expires"

    invoke-virtual {p0, v1}, Lt4j/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ";expires="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "expires"

    invoke-virtual {p0, v1}, Lt4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const-string v1, "domain"

    invoke-virtual {p0, v1}, Lt4j/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ";domain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "domain"

    invoke-virtual {p0, v1}, Lt4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lt4j/org/json/Cookie;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    const-string v1, "path"

    invoke-virtual {p0, v1}, Lt4j/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ";path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "path"

    invoke-virtual {p0, v1}, Lt4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lt4j/org/json/Cookie;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    const-string v1, "secure"

    invoke-virtual {p0, v1}, Lt4j/org/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, ";secure"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x2b

    if-ne v0, v4, :cond_2

    const/16 v0, 0x20

    :cond_1
    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/16 v4, 0x25

    if-ne v0, v4, :cond_1

    add-int/lit8 v4, v1, 0x2

    if-ge v4, v2, :cond_1

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lt4j/org/json/JSONTokener;->dehexchar(C)I

    move-result v4

    add-int/lit8 v5, v1, 0x2

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lt4j/org/json/JSONTokener;->dehexchar(C)I

    move-result v5

    if-ltz v4, :cond_1

    if-ltz v5, :cond_1

    mul-int/lit8 v0, v4, 0x10

    add-int/2addr v0, v5

    int-to-char v0, v0

    add-int/lit8 v1, v1, 0x2

    goto :goto_1
.end method
