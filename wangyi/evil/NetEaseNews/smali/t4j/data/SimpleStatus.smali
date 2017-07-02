.class public Lt4j/data/SimpleStatus;
.super Lt4j/TBlogResponse;


# instance fields
.field private create_at:Ljava/util/Date;

.field private id:J

.field private source:Ljava/lang/String;

.field private text:Ljava/lang/String;

.field private truncated:Z


# direct methods
.method public constructor <init>(Lt4j/http/Response;)V
    .locals 1

    invoke-direct {p0}, Lt4j/TBlogResponse;-><init>()V

    invoke-virtual {p1}, Lt4j/http/Response;->asJSONObject()Lt4j/org/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lt4j/data/SimpleStatus;->init(Lt4j/org/json/JSONObject;)V

    return-void
.end method

.method public constructor <init>(Lt4j/org/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Lt4j/TBlogResponse;-><init>()V

    invoke-direct {p0, p1}, Lt4j/data/SimpleStatus;->init(Lt4j/org/json/JSONObject;)V

    return-void
.end method

.method private init(Lt4j/org/json/JSONObject;)V
    .locals 2

    :try_start_0
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lt4j/org/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lt4j/data/SimpleStatus;->id:J

    const-string v0, "source"

    invoke-virtual {p1, v0}, Lt4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lt4j/data/SimpleStatus;->source:Ljava/lang/String;

    const-string v0, "text"

    invoke-virtual {p1, v0}, Lt4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lt4j/data/SimpleStatus;->text:Ljava/lang/String;

    const-string v0, "created_at"

    invoke-virtual {p1, v0}, Lt4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "EEE MMM dd HH:mm:ss z yyyy"

    invoke-static {v0, v1}, Lt4j/data/SimpleStatus;->parseDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lt4j/data/SimpleStatus;->create_at:Ljava/util/Date;

    const-string v0, "truncated"

    invoke-virtual {p1, v0}, Lt4j/org/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lt4j/data/SimpleStatus;->truncated:Z
    :try_end_0
    .catch Lt4j/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lt4j/org/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getCreate_at()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lt4j/data/SimpleStatus;->create_at:Ljava/util/Date;

    return-object v0
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lt4j/data/SimpleStatus;->id:J

    return-wide v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lt4j/data/SimpleStatus;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lt4j/data/SimpleStatus;->text:Ljava/lang/String;

    return-object v0
.end method

.method public isTruncated()Z
    .locals 1

    iget-boolean v0, p0, Lt4j/data/SimpleStatus;->truncated:Z

    return v0
.end method

.method public setCreate_at(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lt4j/data/SimpleStatus;->create_at:Ljava/util/Date;

    return-void
.end method

.method public setId(J)V
    .locals 0

    iput-wide p1, p0, Lt4j/data/SimpleStatus;->id:J

    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lt4j/data/SimpleStatus;->source:Ljava/lang/String;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lt4j/data/SimpleStatus;->text:Ljava/lang/String;

    return-void
.end method

.method public setTruncated(Z)V
    .locals 0

    iput-boolean p1, p0, Lt4j/data/SimpleStatus;->truncated:Z

    return-void
.end method
