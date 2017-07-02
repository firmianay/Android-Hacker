.class public Lt4j/org/json/HTTPTokener;
.super Lt4j/org/json/JSONTokener;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lt4j/org/json/JSONTokener;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public nextToken()Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lt4j/org/json/HTTPTokener;->next()C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x22

    if-eq v0, v2, :cond_1

    const/16 v2, 0x27

    if-ne v0, v2, :cond_5

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lt4j/org/json/HTTPTokener;->next()C

    move-result v2

    const/16 v3, 0x20

    if-ge v2, v3, :cond_2

    const-string v0, "Unterminated string."

    invoke-virtual {p0, v0}, Lt4j/org/json/HTTPTokener;->syntaxError(Ljava/lang/String;)Lt4j/org/json/JSONException;

    move-result-object v0

    throw v0

    :cond_2
    if-ne v2, v0, :cond_3

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lt4j/org/json/HTTPTokener;->next()C

    move-result v0

    :cond_5
    if-eqz v0, :cond_6

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
