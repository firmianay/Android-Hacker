.class public Lt4j/org/json/XML;
.super Ljava/lang/Object;


# static fields
.field public static final AMP:Ljava/lang/Character;

.field public static final APOS:Ljava/lang/Character;

.field public static final BANG:Ljava/lang/Character;

.field public static final EQ:Ljava/lang/Character;

.field public static final GT:Ljava/lang/Character;

.field public static final LT:Ljava/lang/Character;

.field public static final QUEST:Ljava/lang/Character;

.field public static final QUOT:Ljava/lang/Character;

.field public static final SLASH:Ljava/lang/Character;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x26

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Lt4j/org/json/XML;->AMP:Ljava/lang/Character;

    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x27

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Lt4j/org/json/XML;->APOS:Ljava/lang/Character;

    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x21

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Lt4j/org/json/XML;->BANG:Ljava/lang/Character;

    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x3d

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Lt4j/org/json/XML;->EQ:Ljava/lang/Character;

    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x3e

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Lt4j/org/json/XML;->GT:Ljava/lang/Character;

    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x3c

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Lt4j/org/json/XML;->LT:Ljava/lang/Character;

    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x3f

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Lt4j/org/json/XML;->QUEST:Ljava/lang/Character;

    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x22

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Lt4j/org/json/XML;->QUOT:Ljava/lang/Character;

    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Lt4j/org/json/XML;->SLASH:Ljava/lang/Character;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    :goto_0
    if-lt v0, v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :sswitch_0
    const-string v3, "&amp;"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :sswitch_1
    const-string v3, "&lt;"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :sswitch_2
    const-string v3, "&gt;"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :sswitch_3
    const-string v3, "&quot;"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_3
        0x26 -> :sswitch_0
        0x3c -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
.end method

.method public static noSpace(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lt4j/org/json/JSONException;

    const-string v1, "Empty string."

    invoke-direct {v0, v1}, Lt4j/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v0, Lt4j/org/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' contains a space character."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lt4j/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static parse(Lt4j/org/json/XMLTokener;Lt4j/org/json/JSONObject;Ljava/lang/String;)Z
    .locals 8

    const/4 v5, 0x0

    const/16 v6, 0x5b

    const/16 v2, 0x2d

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lt4j/org/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lt4j/org/json/XML;->BANG:Ljava/lang/Character;

    if-ne v0, v1, :cond_a

    invoke-virtual {p0}, Lt4j/org/json/XMLTokener;->next()C

    move-result v0

    if-ne v0, v2, :cond_4

    invoke-virtual {p0}, Lt4j/org/json/XMLTokener;->next()C

    move-result v0

    if-ne v0, v2, :cond_1

    const-string v0, "-->"

    invoke-virtual {p0, v0}, Lt4j/org/json/XMLTokener;->skipPast(Ljava/lang/String;)Z

    move v3, v4

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {p0}, Lt4j/org/json/XMLTokener;->back()V

    :cond_2
    move v0, v3

    :cond_3
    invoke-virtual {p0}, Lt4j/org/json/XMLTokener;->nextMeta()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_7

    const-string v0, "Missing \'>\' after \'<!\'."

    invoke-virtual {p0, v0}, Lt4j/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lt4j/org/json/JSONException;

    move-result-object v0

    throw v0

    :cond_4
    if-ne v0, v6, :cond_2

    invoke-virtual {p0}, Lt4j/org/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "CDATA"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lt4j/org/json/XMLTokener;->next()C

    move-result v0

    if-ne v0, v6, :cond_6

    invoke-virtual {p0}, Lt4j/org/json/XMLTokener;->nextCDATA()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    const-string v1, "content"

    invoke-virtual {p1, v1, v0}, Lt4j/org/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lt4j/org/json/JSONObject;

    :cond_5
    move v3, v4

    goto :goto_0

    :cond_6
    const-string v0, "Expected \'CDATA[\'"

    invoke-virtual {p0, v0}, Lt4j/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lt4j/org/json/JSONException;

    move-result-object v0

    throw v0

    :cond_7
    sget-object v2, Lt4j/org/json/XML;->LT:Ljava/lang/Character;

    if-ne v1, v2, :cond_9

    add-int/lit8 v0, v0, 0x1

    :cond_8
    :goto_1
    if-gtz v0, :cond_3

    move v3, v4

    goto :goto_0

    :cond_9
    sget-object v2, Lt4j/org/json/XML;->GT:Ljava/lang/Character;

    if-ne v1, v2, :cond_8

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_a
    sget-object v1, Lt4j/org/json/XML;->QUEST:Ljava/lang/Character;

    if-ne v0, v1, :cond_b

    const-string v0, "?>"

    invoke-virtual {p0, v0}, Lt4j/org/json/XMLTokener;->skipPast(Ljava/lang/String;)Z

    move v3, v4

    goto :goto_0

    :cond_b
    sget-object v1, Lt4j/org/json/XML;->SLASH:Ljava/lang/Character;

    if-ne v0, v1, :cond_e

    invoke-virtual {p0}, Lt4j/org/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v0

    if-nez p2, :cond_c

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Mismatched close tag"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lt4j/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lt4j/org/json/JSONException;

    move-result-object v0

    throw v0

    :cond_c
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Mismatched "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lt4j/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lt4j/org/json/JSONException;

    move-result-object v0

    throw v0

    :cond_d
    invoke-virtual {p0}, Lt4j/org/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lt4j/org/json/XML;->GT:Ljava/lang/Character;

    if-eq v0, v1, :cond_0

    const-string v0, "Misshaped close tag"

    invoke-virtual {p0, v0}, Lt4j/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lt4j/org/json/JSONException;

    move-result-object v0

    throw v0

    :cond_e
    instance-of v1, v0, Ljava/lang/Character;

    if-eqz v1, :cond_f

    const-string v0, "Misshaped tag"

    invoke-virtual {p0, v0}, Lt4j/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lt4j/org/json/JSONException;

    move-result-object v0

    throw v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    new-instance v6, Lt4j/org/json/JSONObject;

    invoke-direct {v6}, Lt4j/org/json/JSONObject;-><init>()V

    move-object v1, v5

    :goto_2
    if-nez v1, :cond_10

    invoke-virtual {p0}, Lt4j/org/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v1

    :cond_10
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_13

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0}, Lt4j/org/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v2

    sget-object v7, Lt4j/org/json/XML;->EQ:Ljava/lang/Character;

    if-ne v2, v7, :cond_12

    invoke-virtual {p0}, Lt4j/org/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v2

    instance-of v7, v2, Ljava/lang/String;

    if-nez v7, :cond_11

    const-string v0, "Missing value"

    invoke-virtual {p0, v0}, Lt4j/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lt4j/org/json/JSONException;

    move-result-object v0

    throw v0

    :cond_11
    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lt4j/org/json/JSONObject;->stringToValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Lt4j/org/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lt4j/org/json/JSONObject;

    move-object v1, v5

    goto :goto_2

    :cond_12
    const-string v7, ""

    invoke-virtual {v6, v1, v7}, Lt4j/org/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lt4j/org/json/JSONObject;

    move-object v1, v2

    goto :goto_2

    :cond_13
    sget-object v2, Lt4j/org/json/XML;->SLASH:Ljava/lang/Character;

    if-ne v1, v2, :cond_15

    invoke-virtual {p0}, Lt4j/org/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lt4j/org/json/XML;->GT:Ljava/lang/Character;

    if-eq v1, v2, :cond_14

    const-string v0, "Misshaped tag"

    invoke-virtual {p0, v0}, Lt4j/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lt4j/org/json/JSONException;

    move-result-object v0

    throw v0

    :cond_14
    invoke-virtual {p1, v0, v6}, Lt4j/org/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lt4j/org/json/JSONObject;

    move v3, v4

    goto/16 :goto_0

    :cond_15
    sget-object v2, Lt4j/org/json/XML;->GT:Ljava/lang/Character;

    if-ne v1, v2, :cond_1c

    :cond_16
    :goto_3
    invoke-virtual {p0}, Lt4j/org/json/XMLTokener;->nextContent()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_18

    if-eqz v0, :cond_17

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unclosed tag "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lt4j/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lt4j/org/json/JSONException;

    move-result-object v0

    throw v0

    :cond_17
    move v3, v4

    goto/16 :goto_0

    :cond_18
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_19

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_16

    const-string v2, "content"

    invoke-static {v1}, Lt4j/org/json/JSONObject;->stringToValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v6, v2, v1}, Lt4j/org/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lt4j/org/json/JSONObject;

    goto :goto_3

    :cond_19
    sget-object v2, Lt4j/org/json/XML;->LT:Ljava/lang/Character;

    if-ne v1, v2, :cond_16

    invoke-static {p0, v6, v0}, Lt4j/org/json/XML;->parse(Lt4j/org/json/XMLTokener;Lt4j/org/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {v6}, Lt4j/org/json/JSONObject;->length()I

    move-result v1

    if-nez v1, :cond_1a

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lt4j/org/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lt4j/org/json/JSONObject;

    :goto_4
    move v3, v4

    goto/16 :goto_0

    :cond_1a
    invoke-virtual {v6}, Lt4j/org/json/JSONObject;->length()I

    move-result v1

    if-ne v1, v3, :cond_1b

    const-string v1, "content"

    invoke-virtual {v6, v1}, Lt4j/org/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1b

    const-string v1, "content"

    invoke-virtual {v6, v1}, Lt4j/org/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lt4j/org/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lt4j/org/json/JSONObject;

    goto :goto_4

    :cond_1b
    invoke-virtual {p1, v0, v6}, Lt4j/org/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lt4j/org/json/JSONObject;

    goto :goto_4

    :cond_1c
    const-string v0, "Misshaped tag"

    invoke-virtual {p0, v0}, Lt4j/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lt4j/org/json/JSONException;

    move-result-object v0

    throw v0
.end method

.method public static toJSONObject(Ljava/lang/String;)Lt4j/org/json/JSONObject;
    .locals 3

    new-instance v0, Lt4j/org/json/JSONObject;

    invoke-direct {v0}, Lt4j/org/json/JSONObject;-><init>()V

    new-instance v1, Lt4j/org/json/XMLTokener;

    invoke-direct {v1, p0}, Lt4j/org/json/XMLTokener;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v1}, Lt4j/org/json/XMLTokener;->more()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "<"

    invoke-virtual {v1, v2}, Lt4j/org/json/XMLTokener;->skipPast(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    return-object v0

    :cond_1
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lt4j/org/json/XML;->parse(Lt4j/org/json/XMLTokener;Lt4j/org/json/JSONObject;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lt4j/org/json/XML;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const/16 v10, 0x3c

    const/4 v2, 0x0

    const/16 v9, 0x3e

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    instance-of v0, p0, Lt4j/org/json/JSONObject;

    if-eqz v0, :cond_c

    if-eqz p1, :cond_0

    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    check-cast p0, Lt4j/org/json/JSONObject;

    invoke-virtual {p0}, Lt4j/org/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    const-string v0, "</"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lt4j/org/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    const-string v1, ""

    :cond_4
    instance-of v0, v1, Ljava/lang/String;

    if-eqz v0, :cond_5

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    :cond_5
    const-string v0, "content"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    instance-of v0, v1, Lt4j/org/json/JSONArray;

    if-eqz v0, :cond_7

    check-cast v1, Lt4j/org/json/JSONArray;

    invoke-virtual {v1}, Lt4j/org/json/JSONArray;->length()I

    move-result v5

    move v0, v2

    :goto_2
    if-ge v0, v5, :cond_1

    if-lez v0, :cond_6

    const/16 v6, 0xa

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_6
    invoke-virtual {v1, v0}, Lt4j/org/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lt4j/org/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lt4j/org/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_8
    instance-of v0, v1, Lt4j/org/json/JSONArray;

    if-eqz v0, :cond_a

    check-cast v1, Lt4j/org/json/JSONArray;

    invoke-virtual {v1}, Lt4j/org/json/JSONArray;->length()I

    move-result v6

    move v0, v2

    :goto_3
    if-ge v0, v6, :cond_1

    invoke-virtual {v1, v0}, Lt4j/org/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    instance-of v8, v7, Lt4j/org/json/JSONArray;

    if-eqz v8, :cond_9

    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-static {v7}, Lt4j/org/json/XML;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v7, "</"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_9
    invoke-static {v7, v5}, Lt4j/org/json/XML;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_a
    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "/>"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :cond_b
    invoke-static {v1, v5}, Lt4j/org/json/XML;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :cond_c
    instance-of v0, p0, Lt4j/org/json/JSONArray;

    if-eqz v0, :cond_f

    check-cast p0, Lt4j/org/json/JSONArray;

    invoke-virtual {p0}, Lt4j/org/json/JSONArray;->length()I

    move-result v4

    move v1, v2

    :goto_5
    if-lt v1, v4, :cond_d

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_d
    invoke-virtual {p0, v1}, Lt4j/org/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v2

    if-nez p1, :cond_e

    const-string v0, "array"

    :goto_6
    invoke-static {v2, v0}, Lt4j/org/json/XML;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    :cond_e
    move-object v0, p1

    goto :goto_6

    :cond_f
    if-nez p0, :cond_10

    const-string v0, "null"

    :goto_7
    if-nez p1, :cond_11

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_10
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lt4j/org/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_11
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_12

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1
.end method
