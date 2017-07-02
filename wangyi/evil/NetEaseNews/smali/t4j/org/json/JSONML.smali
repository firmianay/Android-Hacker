.class public Lt4j/org/json/JSONML;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static parse(Lt4j/org/json/XMLTokener;ZLt4j/org/json/JSONArray;)Ljava/lang/Object;
    .locals 9

    const/4 v5, 0x0

    const/16 v8, 0x5b

    const/16 v7, 0x2d

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lt4j/org/json/XMLTokener;->nextContent()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lt4j/org/json/XML;->LT:Ljava/lang/Character;

    if-ne v0, v1, :cond_21

    invoke-virtual {p0}, Lt4j/org/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Character;

    if-eqz v1, :cond_d

    sget-object v1, Lt4j/org/json/XML;->SLASH:Ljava/lang/Character;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lt4j/org/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    new-instance v1, Lt4j/org/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected a closing name instead of \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lt4j/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-virtual {p0}, Lt4j/org/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lt4j/org/json/XML;->GT:Ljava/lang/Character;

    if-eq v1, v2, :cond_1a

    const-string v0, "Misshaped close tag"

    invoke-virtual {p0, v0}, Lt4j/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lt4j/org/json/JSONException;

    move-result-object v0

    throw v0

    :cond_2
    sget-object v1, Lt4j/org/json/XML;->BANG:Ljava/lang/Character;

    if-ne v0, v1, :cond_b

    invoke-virtual {p0}, Lt4j/org/json/XMLTokener;->next()C

    move-result v0

    if-ne v0, v7, :cond_4

    invoke-virtual {p0}, Lt4j/org/json/XMLTokener;->next()C

    move-result v0

    if-ne v0, v7, :cond_3

    const-string v0, "-->"

    invoke-virtual {p0, v0}, Lt4j/org/json/XMLTokener;->skipPast(Ljava/lang/String;)Z

    :cond_3
    invoke-virtual {p0}, Lt4j/org/json/XMLTokener;->back()V

    goto :goto_0

    :cond_4
    if-ne v0, v8, :cond_6

    invoke-virtual {p0}, Lt4j/org/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "CDATA"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lt4j/org/json/XMLTokener;->next()C

    move-result v0

    if-ne v0, v8, :cond_5

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lt4j/org/json/XMLTokener;->nextCDATA()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lt4j/org/json/JSONArray;->put(Ljava/lang/Object;)Lt4j/org/json/JSONArray;

    goto :goto_0

    :cond_5
    const-string v0, "Expected \'CDATA[\'"

    invoke-virtual {p0, v0}, Lt4j/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lt4j/org/json/JSONException;

    move-result-object v0

    throw v0

    :cond_6
    const/4 v0, 0x1

    :cond_7
    invoke-virtual {p0}, Lt4j/org/json/XMLTokener;->nextMeta()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_8

    const-string v0, "Missing \'>\' after \'<!\'."

    invoke-virtual {p0, v0}, Lt4j/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lt4j/org/json/JSONException;

    move-result-object v0

    throw v0

    :cond_8
    sget-object v2, Lt4j/org/json/XML;->LT:Ljava/lang/Character;

    if-ne v1, v2, :cond_a

    add-int/lit8 v0, v0, 0x1

    :cond_9
    :goto_1
    if-gtz v0, :cond_7

    goto/16 :goto_0

    :cond_a
    sget-object v2, Lt4j/org/json/XML;->GT:Ljava/lang/Character;

    if-ne v1, v2, :cond_9

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_b
    sget-object v1, Lt4j/org/json/XML;->QUEST:Ljava/lang/Character;

    if-ne v0, v1, :cond_c

    const-string v0, "?>"

    invoke-virtual {p0, v0}, Lt4j/org/json/XMLTokener;->skipPast(Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_c
    const-string v0, "Misshaped tag"

    invoke-virtual {p0, v0}, Lt4j/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lt4j/org/json/JSONException;

    move-result-object v0

    throw v0

    :cond_d
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_e

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad tagName \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lt4j/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lt4j/org/json/JSONException;

    move-result-object v0

    throw v0

    :cond_e
    check-cast v0, Ljava/lang/String;

    new-instance v3, Lt4j/org/json/JSONArray;

    invoke-direct {v3}, Lt4j/org/json/JSONArray;-><init>()V

    new-instance v4, Lt4j/org/json/JSONObject;

    invoke-direct {v4}, Lt4j/org/json/JSONObject;-><init>()V

    if-eqz p1, :cond_11

    invoke-virtual {v3, v0}, Lt4j/org/json/JSONArray;->put(Ljava/lang/Object;)Lt4j/org/json/JSONArray;

    if-eqz p2, :cond_f

    invoke-virtual {p2, v3}, Lt4j/org/json/JSONArray;->put(Ljava/lang/Object;)Lt4j/org/json/JSONArray;

    :cond_f
    :goto_2
    move-object v1, v5

    :goto_3
    if-nez v1, :cond_10

    invoke-virtual {p0}, Lt4j/org/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v1

    :cond_10
    if-nez v1, :cond_12

    const-string v0, "Misshaped tag"

    invoke-virtual {p0, v0}, Lt4j/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lt4j/org/json/JSONException;

    move-result-object v0

    throw v0

    :cond_11
    const-string v1, "tagName"

    invoke-virtual {v4, v1, v0}, Lt4j/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lt4j/org/json/JSONObject;

    if-eqz p2, :cond_f

    invoke-virtual {p2, v4}, Lt4j/org/json/JSONArray;->put(Ljava/lang/Object;)Lt4j/org/json/JSONArray;

    goto :goto_2

    :cond_12
    instance-of v2, v1, Ljava/lang/String;

    if-nez v2, :cond_14

    if-eqz p1, :cond_13

    invoke-virtual {v4}, Lt4j/org/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_13

    invoke-virtual {v3, v4}, Lt4j/org/json/JSONArray;->put(Ljava/lang/Object;)Lt4j/org/json/JSONArray;

    :cond_13
    sget-object v2, Lt4j/org/json/XML;->SLASH:Ljava/lang/Character;

    if-ne v1, v2, :cond_1c

    invoke-virtual {p0}, Lt4j/org/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lt4j/org/json/XML;->GT:Ljava/lang/Character;

    if-eq v0, v1, :cond_19

    const-string v0, "Misshaped tag"

    invoke-virtual {p0, v0}, Lt4j/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lt4j/org/json/JSONException;

    move-result-object v0

    throw v0

    :cond_14
    check-cast v1, Ljava/lang/String;

    if-nez p1, :cond_16

    const-string v2, "tagName"

    if-eq v1, v2, :cond_15

    const-string v2, "childNode"

    if-ne v1, v2, :cond_16

    :cond_15
    const-string v0, "Reserved attribute."

    invoke-virtual {p0, v0}, Lt4j/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lt4j/org/json/JSONException;

    move-result-object v0

    throw v0

    :cond_16
    invoke-virtual {p0}, Lt4j/org/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v2

    sget-object v6, Lt4j/org/json/XML;->EQ:Ljava/lang/Character;

    if-ne v2, v6, :cond_18

    invoke-virtual {p0}, Lt4j/org/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v2

    instance-of v6, v2, Ljava/lang/String;

    if-nez v6, :cond_17

    const-string v0, "Missing value"

    invoke-virtual {p0, v0}, Lt4j/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lt4j/org/json/JSONException;

    move-result-object v0

    throw v0

    :cond_17
    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lt4j/org/json/JSONObject;->stringToValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lt4j/org/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lt4j/org/json/JSONObject;

    move-object v1, v5

    goto :goto_3

    :cond_18
    const-string v6, ""

    invoke-virtual {v4, v1, v6}, Lt4j/org/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lt4j/org/json/JSONObject;

    move-object v1, v2

    goto :goto_3

    :cond_19
    if-nez p2, :cond_0

    if-eqz p1, :cond_1b

    move-object v0, v3

    :cond_1a
    :goto_4
    return-object v0

    :cond_1b
    move-object v0, v4

    goto :goto_4

    :cond_1c
    sget-object v2, Lt4j/org/json/XML;->GT:Ljava/lang/Character;

    if-eq v1, v2, :cond_1d

    const-string v0, "Misshaped tag"

    invoke-virtual {p0, v0}, Lt4j/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lt4j/org/json/JSONException;

    move-result-object v0

    throw v0

    :cond_1d
    invoke-static {p0, p1, v3}, Lt4j/org/json/JSONML;->parse(Lt4j/org/json/XMLTokener;ZLt4j/org/json/JSONArray;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Mismatched \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' and \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lt4j/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lt4j/org/json/JSONException;

    move-result-object v0

    throw v0

    :cond_1e
    if-nez p1, :cond_1f

    invoke-virtual {v3}, Lt4j/org/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1f

    const-string v0, "childNodes"

    invoke-virtual {v4, v0, v3}, Lt4j/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lt4j/org/json/JSONObject;

    :cond_1f
    if-nez p2, :cond_0

    if-eqz p1, :cond_20

    move-object v0, v3

    goto :goto_4

    :cond_20
    move-object v0, v4

    goto :goto_4

    :cond_21
    if-eqz p2, :cond_0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_22

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lt4j/org/json/JSONObject;->stringToValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :cond_22
    invoke-virtual {p2, v0}, Lt4j/org/json/JSONArray;->put(Ljava/lang/Object;)Lt4j/org/json/JSONArray;

    goto/16 :goto_0
.end method

.method public static toJSONArray(Ljava/lang/String;)Lt4j/org/json/JSONArray;
    .locals 1

    new-instance v0, Lt4j/org/json/XMLTokener;

    invoke-direct {v0, p0}, Lt4j/org/json/XMLTokener;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lt4j/org/json/JSONML;->toJSONArray(Lt4j/org/json/XMLTokener;)Lt4j/org/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public static toJSONArray(Lt4j/org/json/XMLTokener;)Lt4j/org/json/JSONArray;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lt4j/org/json/JSONML;->parse(Lt4j/org/json/XMLTokener;ZLt4j/org/json/JSONArray;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt4j/org/json/JSONArray;

    return-object v0
.end method

.method public static toJSONObject(Ljava/lang/String;)Lt4j/org/json/JSONObject;
    .locals 1

    new-instance v0, Lt4j/org/json/XMLTokener;

    invoke-direct {v0, p0}, Lt4j/org/json/XMLTokener;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lt4j/org/json/JSONML;->toJSONObject(Lt4j/org/json/XMLTokener;)Lt4j/org/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static toJSONObject(Lt4j/org/json/XMLTokener;)Lt4j/org/json/JSONObject;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lt4j/org/json/JSONML;->parse(Lt4j/org/json/XMLTokener;ZLt4j/org/json/JSONArray;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt4j/org/json/JSONObject;

    return-object v0
.end method

.method public static toString(Lt4j/org/json/JSONArray;)Ljava/lang/String;
    .locals 12

    const/16 v11, 0x3c

    const/16 v10, 0x2f

    const/16 v9, 0x22

    const/4 v1, 0x1

    const/16 v8, 0x3e

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lt4j/org/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lt4j/org/json/XML;->noSpace(Ljava/lang/String;)V

    invoke-static {v0}, Lt4j/org/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v1}, Lt4j/org/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v4, v0, Lt4j/org/json/JSONObject;

    if-eqz v4, :cond_2

    const/4 v1, 0x2

    check-cast v0, Lt4j/org/json/JSONObject;

    invoke-virtual {v0}, Lt4j/org/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lt4j/org/json/JSONArray;->length()I

    move-result v4

    if-lt v0, v4, :cond_3

    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lt4j/org/json/XML;->noSpace(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lt4j/org/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    const/16 v7, 0x20

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-static {v5}, Lt4j/org/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v5, 0x3d

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-static {v6}, Lt4j/org/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v1, v0

    :cond_4
    invoke-virtual {p0, v1}, Lt4j/org/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    if-eqz v0, :cond_5

    instance-of v5, v0, Ljava/lang/String;

    if-eqz v5, :cond_6

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lt4j/org/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    :goto_3
    if-lt v1, v4, :cond_4

    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_6
    instance-of v5, v0, Lt4j/org/json/JSONObject;

    if-eqz v5, :cond_7

    check-cast v0, Lt4j/org/json/JSONObject;

    invoke-static {v0}, Lt4j/org/json/JSONML;->toString(Lt4j/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_7
    instance-of v5, v0, Lt4j/org/json/JSONArray;

    if-eqz v5, :cond_5

    check-cast v0, Lt4j/org/json/JSONArray;

    invoke-static {v0}, Lt4j/org/json/JSONML;->toString(Lt4j/org/json/JSONArray;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3
.end method

.method public static toString(Lt4j/org/json/JSONObject;)Ljava/lang/String;
    .locals 10

    const/16 v9, 0x3c

    const/16 v8, 0x2f

    const/16 v6, 0x22

    const/16 v7, 0x3e

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "tagName"

    invoke-virtual {p0, v0}, Lt4j/org/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lt4j/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lt4j/org/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lt4j/org/json/XML;->noSpace(Ljava/lang/String;)V

    invoke-static {v0}, Lt4j/org/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lt4j/org/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v0, "childNodes"

    invoke-virtual {p0, v0}, Lt4j/org/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lt4j/org/json/JSONArray;

    move-result-object v4

    if-nez v4, :cond_3

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "tagName"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "childNodes"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v1}, Lt4j/org/json/XML;->noSpace(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lt4j/org/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    const/16 v5, 0x20

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-static {v1}, Lt4j/org/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x3d

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-static {v4}, Lt4j/org/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Lt4j/org/json/JSONArray;->length()I

    move-result v5

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    if-lt v1, v5, :cond_4

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_4
    invoke-virtual {v4, v1}, Lt4j/org/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    instance-of v6, v0, Ljava/lang/String;

    if-eqz v6, :cond_6

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lt4j/org/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    :goto_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_6
    instance-of v6, v0, Lt4j/org/json/JSONObject;

    if-eqz v6, :cond_7

    check-cast v0, Lt4j/org/json/JSONObject;

    invoke-static {v0}, Lt4j/org/json/JSONML;->toString(Lt4j/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_7
    instance-of v6, v0, Lt4j/org/json/JSONArray;

    if-eqz v6, :cond_5

    check-cast v0, Lt4j/org/json/JSONArray;

    invoke-static {v0}, Lt4j/org/json/JSONML;->toString(Lt4j/org/json/JSONArray;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4
.end method
