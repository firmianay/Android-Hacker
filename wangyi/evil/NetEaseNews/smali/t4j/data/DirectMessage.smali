.class public Lt4j/data/DirectMessage;
.super Lt4j/TBlogResponse;


# instance fields
.field private created_at:Ljava/util/Date;

.field private id:J

.field private recipient:Lt4j/data/User;

.field private recipient_id:J

.field private recipient_screen_name:Ljava/lang/String;

.field private sender:Lt4j/data/User;

.field private sender_id:J

.field private sender_screen_name:Ljava/lang/String;

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lt4j/http/Response;)V
    .locals 1

    invoke-direct {p0}, Lt4j/TBlogResponse;-><init>()V

    invoke-virtual {p1}, Lt4j/http/Response;->asJSONObject()Lt4j/org/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lt4j/data/DirectMessage;->init(Lt4j/org/json/JSONObject;)V

    return-void
.end method

.method public constructor <init>(Lt4j/org/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Lt4j/TBlogResponse;-><init>()V

    invoke-direct {p0, p1}, Lt4j/data/DirectMessage;->init(Lt4j/org/json/JSONObject;)V

    return-void
.end method

.method public static createDirectMessageList(Lt4j/http/Response;)Ljava/util/List;
    .locals 6

    :try_start_0
    invoke-virtual {p0}, Lt4j/http/Response;->asJSONArray()Lt4j/org/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lt4j/org/json/JSONArray;->length()I

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    return-object v3

    :cond_0
    new-instance v4, Lt4j/data/DirectMessage;

    invoke-virtual {v1, v0}, Lt4j/org/json/JSONArray;->getJSONObject(I)Lt4j/org/json/JSONObject;

    move-result-object v5

    invoke-direct {v4, v5}, Lt4j/data/DirectMessage;-><init>(Lt4j/org/json/JSONObject;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
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

.method private init(Lt4j/org/json/JSONObject;)V
    .locals 2

    :try_start_0
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lt4j/org/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lt4j/data/DirectMessage;->id:J

    const-string v0, "text"

    invoke-virtual {p1, v0}, Lt4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lt4j/data/DirectMessage;->text:Ljava/lang/String;

    const-string v0, "sender_id"

    invoke-virtual {p1, v0}, Lt4j/org/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lt4j/data/DirectMessage;->sender_id:J

    const-string v0, "recipient_id"

    invoke-virtual {p1, v0}, Lt4j/org/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lt4j/data/DirectMessage;->recipient_id:J

    const-string v0, "created_at"

    invoke-virtual {p1, v0}, Lt4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "EEE MMM dd HH:mm:ss z yyyy"

    invoke-static {v0, v1}, Lt4j/data/DirectMessage;->parseDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lt4j/data/DirectMessage;->created_at:Ljava/util/Date;

    const-string v0, "sender_screen_name"

    invoke-virtual {p1, v0}, Lt4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lt4j/data/DirectMessage;->sender_screen_name:Ljava/lang/String;

    const-string v0, "recipient_screen_name"

    invoke-virtual {p1, v0}, Lt4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lt4j/data/DirectMessage;->recipient_screen_name:Ljava/lang/String;

    new-instance v0, Lt4j/data/User;

    const-string v1, "sender"

    invoke-virtual {p1, v1}, Lt4j/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lt4j/org/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lt4j/data/User;-><init>(Lt4j/org/json/JSONObject;)V

    iput-object v0, p0, Lt4j/data/DirectMessage;->sender:Lt4j/data/User;

    new-instance v0, Lt4j/data/User;

    const-string v1, "recipient"

    invoke-virtual {p1, v1}, Lt4j/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lt4j/org/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lt4j/data/User;-><init>(Lt4j/org/json/JSONObject;)V

    iput-object v0, p0, Lt4j/data/DirectMessage;->recipient:Lt4j/data/User;
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
.method public getCreatedAt()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lt4j/data/DirectMessage;->created_at:Ljava/util/Date;

    return-object v0
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lt4j/data/DirectMessage;->id:J

    return-wide v0
.end method

.method public getRecipient()Lt4j/data/User;
    .locals 1

    iget-object v0, p0, Lt4j/data/DirectMessage;->recipient:Lt4j/data/User;

    return-object v0
.end method

.method public getRecipientId()J
    .locals 2

    iget-wide v0, p0, Lt4j/data/DirectMessage;->recipient_id:J

    return-wide v0
.end method

.method public getRecipientScreenName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lt4j/data/DirectMessage;->recipient_screen_name:Ljava/lang/String;

    return-object v0
.end method

.method public getSender()Lt4j/data/User;
    .locals 1

    iget-object v0, p0, Lt4j/data/DirectMessage;->sender:Lt4j/data/User;

    return-object v0
.end method

.method public getSenderId()J
    .locals 2

    iget-wide v0, p0, Lt4j/data/DirectMessage;->sender_id:J

    return-wide v0
.end method

.method public getSenderScreenName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lt4j/data/DirectMessage;->sender_screen_name:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lt4j/data/DirectMessage;->text:Ljava/lang/String;

    return-object v0
.end method

.method public setCreatedAt(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lt4j/data/DirectMessage;->created_at:Ljava/util/Date;

    return-void
.end method

.method public setId(J)V
    .locals 0

    iput-wide p1, p0, Lt4j/data/DirectMessage;->id:J

    return-void
.end method

.method public setRecipient(Lt4j/data/User;)V
    .locals 0

    iput-object p1, p0, Lt4j/data/DirectMessage;->recipient:Lt4j/data/User;

    return-void
.end method

.method public setRecipientId(J)V
    .locals 0

    iput-wide p1, p0, Lt4j/data/DirectMessage;->recipient_id:J

    return-void
.end method

.method public setRecipientScreenName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lt4j/data/DirectMessage;->recipient_screen_name:Ljava/lang/String;

    return-void
.end method

.method public setSender(Lt4j/data/User;)V
    .locals 0

    iput-object p1, p0, Lt4j/data/DirectMessage;->sender:Lt4j/data/User;

    return-void
.end method

.method public setSenderId(J)V
    .locals 0

    iput-wide p1, p0, Lt4j/data/DirectMessage;->sender_id:J

    return-void
.end method

.method public setSenderScreenName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lt4j/data/DirectMessage;->sender_screen_name:Ljava/lang/String;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lt4j/data/DirectMessage;->text:Ljava/lang/String;

    return-void
.end method
