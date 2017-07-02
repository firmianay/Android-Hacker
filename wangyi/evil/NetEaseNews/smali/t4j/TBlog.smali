.class public Lt4j/TBlog;
.super Lt4j/TBlogSupport;


# static fields
.field public static final CONSUMER_KEY:Ljava/lang/String; = ""

.field public static final CONSUMER_SECRET:Ljava/lang/String; = ""


# instance fields
.field private baseURL:Ljava/lang/String;

.field private format:Ljava/text/SimpleDateFormat;

.field private searchBaseURL:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lt4j/TBlogSupport;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lt4j/Configuration;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "api.t.163.com/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lt4j/TBlog;->baseURL:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lt4j/Configuration;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "api.t.163.com/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lt4j/TBlog;->searchBaseURL:Ljava/lang/String;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, d MMM yyyy HH:mm:ss z"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lt4j/TBlog;->format:Ljava/text/SimpleDateFormat;

    iget-object v0, p0, Lt4j/TBlog;->format:Ljava/text/SimpleDateFormat;

    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    iget-object v0, p0, Lt4j/TBlog;->http:Lt4j/http/HttpClient;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lt4j/Configuration;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "api.t.163.com/oauth/request_token"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lt4j/http/HttpClient;->setRequestTokenURL(Ljava/lang/String;)V

    iget-object v0, p0, Lt4j/TBlog;->http:Lt4j/http/HttpClient;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lt4j/Configuration;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "api.t.163.com/oauth/access_token"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lt4j/http/HttpClient;->setAccessTokenURL(Ljava/lang/String;)V

    return-void
.end method

.method private get(Ljava/lang/String;Z)Lt4j/http/Response;
    .locals 1

    iget-object v0, p0, Lt4j/TBlog;->http:Lt4j/http/HttpClient;

    invoke-virtual {v0, p1, p2}, Lt4j/http/HttpClient;->get(Ljava/lang/String;Z)Lt4j/http/Response;

    move-result-object v0

    return-object v0
.end method

.method private static join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lt4j/TBlog;->join([Ljava/lang/Object;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static join([Ljava/lang/Object;Ljava/lang/String;II)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    sub-int v1, p3, p2

    if-gtz v1, :cond_2

    const-string v0, ""

    goto :goto_0

    :cond_2
    aget-object v0, p0, p2

    if-nez v0, :cond_3

    const/16 v0, 0x10

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    move v0, p2

    :goto_2
    if-lt v0, p3, :cond_4

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    aget-object v0, p0, p2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_1

    :cond_4
    if-le v0, p2, :cond_5

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    aget-object v2, p0, v0

    if-eqz v2, :cond_6

    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method


# virtual methods
.method public activateAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lt4j/http/PostParameter;

    const-string v2, "nick_name"

    invoke-direct {v1, v2, p1}, Lt4j/http/PostParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lt4j/http/PostParameter;

    const-string v2, "real_name"

    invoke-direct {v1, v2, p2}, Lt4j/http/PostParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p3, :cond_1

    const-string v1, ""

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lt4j/http/PostParameter;

    const-string v2, "mobile"

    invoke-direct {v1, v2, p3}, Lt4j/http/PostParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz p4, :cond_2

    const-string v1, ""

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lt4j/http/PostParameter;

    const-string v2, "id_num"

    invoke-direct {v1, v2, p4}, Lt4j/http/PostParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :try_start_0
    iget-object v1, p0, Lt4j/TBlog;->http:Lt4j/http/HttpClient;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt4j/TBlog;->getBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "account/activate.json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lt4j/http/PostParameter;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lt4j/http/PostParameter;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lt4j/http/HttpClient;->post(Ljava/lang/String;[Lt4j/http/PostParameter;Z)Lt4j/http/Response;

    move-result-object v0

    invoke-virtual {v0}, Lt4j/http/Response;->asJSONObject()Lt4j/org/json/JSONObject;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Lt4j/org/json/JSONObject;->getLong(Ljava/lang/String;)J
    :try_end_0
    .catch Lt4j/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    return-wide v0

    :catch_0
    move-exception v0

    new-instance v1, Lt4j/TBlogException;

    invoke-direct {v1, v0}, Lt4j/TBlogException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public createBlock(J)Lt4j/data/User;
    .locals 4

    new-instance v0, Lt4j/data/User;

    iget-object v1, p0, Lt4j/TBlog;->http:Lt4j/http/HttpClient;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt4j/TBlog;->getBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "blocks/create.json?user_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lt4j/http/HttpClient;->post(Ljava/lang/String;Z)Lt4j/http/Response;

    move-result-object v1

    invoke-direct {v0, v1}, Lt4j/data/User;-><init>(Lt4j/http/Response;)V

    return-object v0
.end method

.method public createBlock(Ljava/lang/String;)Lt4j/data/User;
    .locals 4

    new-instance v0, Lt4j/data/User;

    iget-object v1, p0, Lt4j/TBlog;->http:Lt4j/http/HttpClient;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt4j/TBlog;->getBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "blocks/create.json?screen_name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lt4j/http/HttpClient;->post(Ljava/lang/String;Z)Lt4j/http/Response;

    move-result-object v1

    invoke-direct {v0, v1}, Lt4j/data/User;-><init>(Lt4j/http/Response;)V

    return-object v0
.end method

.method public createFavorite(J)Lt4j/data/Status;
    .locals 4

    new-instance v0, Lt4j/data/Status;

    iget-object v1, p0, Lt4j/TBlog;->http:Lt4j/http/HttpClient;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt4j/TBlog;->getBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "favorites/create/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lt4j/http/HttpClient;->post(Ljava/lang/String;Z)Lt4j/http/Response;

    move-result-object v1

    invoke-direct {v0, v1}, Lt4j/data/Status;-><init>(Lt4j/http/Response;)V

    return-object v0
.end method

.method public createFriendship(J)Lt4j/data/User;
    .locals 4

    new-instance v0, Lt4j/data/User;

    iget-object v1, p0, Lt4j/TBlog;->http:Lt4j/http/HttpClient;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt4j/TBlog;->getBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "friendships/create.json?user_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lt4j/http/HttpClient;->post(Ljava/lang/String;Z)Lt4j/http/Response;

    move-result-object v1

    invoke-direct {v0, v1}, Lt4j/data/User;-><init>(Lt4j/http/Response;)V

    return-object v0
.end method

.method public createFriendship(Ljava/lang/String;)Lt4j/data/User;
    .locals 4

    new-instance v0, Lt4j/data/User;

    iget-object v1, p0, Lt4j/TBlog;->http:Lt4j/http/HttpClient;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt4j/TBlog;->getBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "friendships/create.json?screen_name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lt4j/http/HttpClient;->post(Ljava/lang/String;Z)Lt4j/http/Response;

    move-result-object v1

    invoke-direct {v0, v1}, Lt4j/data/User;-><init>(Lt4j/http/Response;)V

    return-object v0
.end method

.method public destroy(J)Lt4j/data/Status;
    .locals 4

    new-instance v0, Lt4j/data/Status;

    iget-object v1, p0, Lt4j/TBlog;->http:Lt4j/http/HttpClient;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt4j/TBlog;->getBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "statuses/destroy/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lt4j/http/HttpClient;->post(Ljava/lang/String;Z)Lt4j/http/Response;

    move-result-object v1

    invoke-direct {v0, v1}, Lt4j/data/Status;-><init>(Lt4j/http/Response;)V

    return-object v0
.end method

.method public destroyBlock(J)Lt4j/data/User;
    .locals 4

    new-instance v0, Lt4j/data/User;

    iget-object v1, p0, Lt4j/TBlog;->http:Lt4j/http/HttpClient;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt4j/TBlog;->getBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "blocks/destroy.json?user_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lt4j/http/HttpClient;->post(Ljava/lang/String;Z)Lt4j/http/Response;

    move-result-object v1

    invoke-direct {v0, v1}, Lt4j/data/User;-><init>(Lt4j/http/Response;)V

    return-object v0
.end method

.method public destroyBlock(Ljava/lang/String;)Lt4j/data/User;
    .locals 4

    new-instance v0, Lt4j/data/User;

    iget-object v1, p0, Lt4j/TBlog;->http:Lt4j/http/HttpClient;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt4j/TBlog;->getBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "blocks/destroy.json?screen_name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lt4j/http/HttpClient;->post(Ljava/lang/String;Z)Lt4j/http/Response;

    move-result-object v1

    invoke-direct {v0, v1}, Lt4j/data/User;-><init>(Lt4j/http/Response;)V

    return-object v0
.end method

.method public destroyDirectMessage(J)Lt4j/data/DirectMessage;
    .locals 4

    new-instance v0, Lt4j/data/DirectMessage;

    iget-object v1, p0, Lt4j/TBlog;->http:Lt4j/http/HttpClient;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt4j/TBlog;->getBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "direct_messages/destroy/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lt4j/http/HttpClient;->post(Ljava/lang/String;Z)Lt4j/http/Response;

    move-result-object v1

    invoke-direct {v0, v1}, Lt4j/data/DirectMessage;-><init>(Lt4j/http/Response;)V

    return-object v0
.end method

.method public destroyFavorite(J)Lt4j/data/Status;
    .locals 4

    new-instance v0, Lt4j/data/Status;

    iget-object v1, p0, Lt4j/TBlog;->http:Lt4j/http/HttpClient;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt4j/TBlog;->getBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "favorites/destroy/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lt4j/http/HttpClient;->post(Ljava/lang/String;Z)Lt4j/http/Response;

    move-result-object v1

    invoke-direct {v0, v1}, Lt4j/data/Status;-><init>(Lt4j/http/Response;)V

    return-object v0
.end method

.method public destroyFriendship(J)Lt4j/data/User;
    .locals 4

    new-instance v0, Lt4j/data/User;

    iget-object v1, p0, Lt4j/TBlog;->http:Lt4j/http/HttpClient;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt4j/TBlog;->getBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "friendships/destroy.json?user_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lt4j/http/HttpClient;->post(Ljava/lang/String;Z)Lt4j/http/Response;

    move-result-object v1

    invoke-direct {v0, v1}, Lt4j/data/User;-><init>(Lt4j/http/Response;)V

    return-object v0
.end method

.method public destroyFriendship(Ljava/lang/String;)Lt4j/data/User;
    .locals 4

    new-instance v0, Lt4j/data/User;

    iget-object v1, p0, Lt4j/TBlog;->http:Lt4j/http/HttpClient;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt4j/TBlog;->getBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "friendships/destroy.json?screen_name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lt4j/http/HttpClient;->post(Ljava/lang/String;Z)Lt4j/http/Response;

    move-result-object v1

    invoke-direct {v0, v1}, Lt4j/data/User;-><init>(Lt4j/http/Response;)V

    return-object v0
.end method

.method public existsBlock(J)Lt4j/data/User;
    .locals 3

    new-instance v0, Lt4j/data/User;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt4j/TBlog;->getBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "blocks/exists.json?user_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lt4j/TBlog;->get(Ljava/lang/String;Z)Lt4j/http/Response;

    move-result-object v1

    invoke-direct {v0, v1}, Lt4j/data/User;-><init>(Lt4j/http/Response;)V

    return-object v0
.end method

.method public existsBlock(Ljava/lang/String;)Lt4j/data/User;
    .locals 3

    new-instance v0, Lt4j/data/User;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt4j/TBlog;->getBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "blocks/exists.json?screen_name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lt4j/TBlog;->get(Ljava/lang/String;Z)Lt4j/http/Response;

    move-result-object v1

    invoke-direct {v0, v1}, Lt4j/data/User;-><init>(Lt4j/http/Response;)V

    return-object v0
.end method

.method public followers(J)Lt4j/data/PagableResponseList;
    .locals 3

    iget-object v0, p0, Lt4j/TBlog;->http:Lt4j/http/HttpClient;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt4j/TBlog;->getBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "statuses/followers.json?user_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lt4j/http/HttpClient;->get(Ljava/lang/String;Z)Lt4j/http/Response;

    move-result-object v0

    invoke-static {v0}, Lt4j/data/User;->createPagableUserList(Lt4j/http/Response;)Lt4j/data/PagableResponseList;

    move-result-object v0

    return-object v0
.end method

.method public followers(JJ)Lt4j/data/PagableResponseList;
    .locals 3

    iget-object v0, p0, Lt4j/TBlog;->http:Lt4j/http/HttpClient;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt4j/TBlog;->getBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "statuses/followers.json?user_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&cursor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lt4j/http/HttpClient;->get(Ljava/lang/String;Z)Lt4j/http/Response;

    move-result-object v0

    invoke-static {v0}, Lt4j/data/User;->createPagableUserList(Lt4j/http/Response;)Lt4j/data/PagableResponseList;

    move-result-object v0

    return-object v0
.end method

.method public followers(Ljava/lang/String;)Lt4j/data/PagableResponseList;
    .locals 3

    iget-object v0, p0, Lt4j/TBlog;->http:Lt4j/http/HttpClient;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt4j/TBlog;->getBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "statuses/followers.json?screen_name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lt4j/http/HttpClient;->get(Ljava/lang/String;Z)Lt4j/http/Response;

    move-result-object v0

    invoke-static {v0}, Lt4j/data/User;->createPagableUserList(Lt4j/http/Response;)Lt4j/data/PagableResponseList;

    move-result-object v0

    return-object v0
.end method

.method public followers(Ljava/lang/String;J)Lt4j/data/PagableResponseList;
    .locals 3

    iget-object v0, p0, Lt4j/TBlog;->http:Lt4j/http/HttpClient;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt4j/TBlog;->getBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "statuses/followers.json?screen_name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&cursor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lt4j/http/HttpClient;->get(Ljava/lang/String;Z)Lt4j/http/Response;

    move-result-object v0

    invoke-static {v0}, Lt4j/data/User;->createPagableUserList(Lt4j/http/Response;)Lt4j/data/PagableResponseList;

    move-result-object v0

    return-object v0
.end method

.method public friends(J)Lt4j/data/PagableResponseList;
    .locals 3

    iget-object v0, p0, Lt4j/TBlog;->http:Lt4j/http/HttpClient;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt4j/TBlog;->getBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "statuses/friends.json?user_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lt4j/http/HttpClient;->get(Ljava/lang/String;Z)Lt4j/http/Response;

    move-result-object v0

    invoke-static {v0}, Lt4j/data/User;->createPagableUserList(Lt4j/http/Response;)Lt4j/data/PagableResponseList;

    move-result-object v0

    return-object v0
.end method

.method public friends(JJ)Lt4j/data/PagableResponseList;
    .locals 3

    iget-object v0, p0, Lt4j/TBlog;->http:Lt4j/http/HttpClient;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt4j/TBlog;->getBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "statuses/friends.json?user_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&cursor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lt4j/http/HttpClient;->get(Ljava/lang/String;Z)Lt4j/http/Response;

    move-result-object v0

    invoke-static {v0}, Lt4j/data/User;->createPagableUserList(Lt4j/http/Response;)Lt4j/data/PagableResponseList;

    move-result-object v0

    return-object v0
.end method

.method public friends(Ljava/lang/String;)Lt4j/data/PagableResponseList;
    .locals 3

    iget-object v0, p0, Lt4j/TBlog;->http:Lt4j/http/HttpClient;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt4j/TBlog;->getBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "statuses/friends.json?screen_name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lt4j/http/HttpClient;->get(Ljava/lang/String;Z)Lt4j/http/Response;

    move-result-object v0

    invoke-static {v0}, Lt4j/data/User;->createPagableUserList(Lt4j/http/Response;)Lt4j/data/PagableResponseList;

    move-result-object v0

    return-object v0
.end method

.method public friends(Ljava/lang/String;J)Lt4j/data/PagableResponseList;
    .locals 3

    iget-object v0, p0, Lt4j/TBlog;->http:Lt4j/http/HttpClient;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt4j/TBlog;->getBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "statuses/friends.json?screen_name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&cursor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lt4j/http/HttpClient;->get(Ljava/lang/String;Z)Lt4j/http/Response;

    move-result-object v0

    invoke-static {v0}, Lt4j/data/User;->createPagableUserList(Lt4j/http/Response;)Lt4j/data/PagableResponseList;

    move-result-object v0

    return-object v0
.end method

.method public friendsNames()Ljava/util/List;
    .locals 4

    iget-object v0, p0, Lt4j/TBlog;->http:Lt4j/http/HttpClient;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt4j/TBlog;->getBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "friends/names.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lt4j/http/HttpClient;->get(Ljava/lang/String;Z)Lt4j/http/Response;

    move-result-object v0

    invoke-virtual {v0}, Lt4j/http/Response;->asJSONArray()Lt4j/org/json/JSONArray;

    move-result-object v2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lt4j/org/json/JSONArray;->length()I

    move-result v3

    if-lt v0, v3, :cond_0

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {v2, v0}, Lt4j/org/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lt4j/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method protected get(Ljava/lang/String;Lt4j/data/Paging;Z)Lt4j/http/Response;
    .locals 5

    const/4 v4, -0x1

    const-string v0, ""

    if-eqz p2, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-virtual {p2}, Lt4j/data/Paging;->getMaxId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, ""

    invoke-virtual {p2}, Lt4j/data/Paging;->getMaxId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "max_id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lt4j/data/Paging;->getMaxId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p2}, Lt4j/data/Paging;->getSinceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, ""

    invoke-virtual {p2}, Lt4j/data/Paging;->getSinceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "since_id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lt4j/data/Paging;->getSinceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p2}, Lt4j/data/Paging;->getCount()I

    move-result v1

    if-eq v4, v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "count="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lt4j/data/Paging;->getCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "&"

    invoke-static {v0, v1}, Lt4j/TBlog;->join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0, p1, p3}, Lt4j/TBlog;->get(Ljava/lang/String;Z)Lt4j/http/Response;

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lt4j/TBlogException;

    invoke-direct {v1, v0}, Lt4j/TBlogException;-><init>(Ljava/lang/Exception;)V

    throw v1

    :cond_4
    const/16 v1, 0x3f

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v1, v4, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lt4j/TBlog;->get(Ljava/lang/String;Z)Lt4j/http/Response;

    move-result-object v0

    goto :goto_0

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lt4j/TBlog;->get(Ljava/lang/String;Z)Lt4j/http/Response;

    move-result-object v0

    goto :goto_0
.end method

.method public getBaseURL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lt4j/TBlog;->baseURL:Ljava/lang/String;

    return-object v0
.end method

.method public getBlockUserIds()[J
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt4j/TBlog;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "blocks/blocking/ids.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lt4j/TBlog;->get(Ljava/lang/String;Z)Lt4j/http/Response;

    move-result-object v0

    invoke-virtual {v0}, Lt4j/http/Response;->asJSONArray()Lt4j/org/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lt4j/org/json/JSONArray;->length()I

    move-result v0

    new-array v2, v0, [J

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lt4j/org/json/JSONArray;->length()I

    move-result v3

    if-lt v0, v3, :cond_0

    return-object v2

    :cond_0
    :try_start_0
    invoke-virtual {v1, v0}, Lt4j/org/json/JSONArray;->getLong(I)J

    move-result-wide v3

    aput-wide v3, v2, v0
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

.method public getBlockUsers()Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt4j/TBlog;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "blocks/blocking.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lt4j/TBlog;->get(Ljava/lang/String;Z)Lt4j/http/Response;

    move-result-object v0

    invoke-static {v0}, Lt4j/data/User;->createUserList(Lt4j/http/Response;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getClientURL()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lt4j/TBlogSupport;->getClientURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getClientVersion()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lt4j/TBlogSupport;->getClientVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getComments(J)Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt4j/TBlog;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "statuses/comments/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lt4j/TBlog;->get(Ljava/lang/String;Z)Lt4j/http/Response;

    move-result-object v0

    invoke-static {v0}, Lt4j/data/Comment;->constructStatuses(Lt4j/http/Response;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getComments(JLt4j/data/Paging;)Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt4j/TBlog;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "statuses/comments/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p3, v1}, Lt4j/TBlog;->get(Ljava/lang/String;Lt4j/data/Paging;Z)Lt4j/http/Response;

    move-result-object v0

    invoke-static {v0}, Lt4j/data/Comment;->constructStatuses(Lt4j/http/Response;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCommentsByMe()Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt4j/TBlog;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "statuses/comments_by_me.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lt4j/TBlog;->get(Ljava/lang/String;Z)Lt4j/http/Response;

    move-result-object v0

    invoke-static {v0}, Lt4j/data/Status;->constructStatuses(Lt4j/http/Response;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCommentsByMe(Lt4j/data/Paging;)Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt4j/TBlog;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "statuses/comments_by_me.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lt4j/TBlog;->get(Ljava/lang/String;Lt4j/data/Paging;Z)Lt4j/http/Response;

    move-result-object v0

    invoke-static {v0}, Lt4j/data/Status;->constructStatuses(Lt4j/http/Response;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCommentsToMe()Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt4j/TBlog;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "statuses/comments_to_me.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lt4j/TBlog;->get(Ljava/lang/String;Z)Lt4j/http/Response;

    move-result-object v0

    invoke-static {v0}, Lt4j/data/Status;->constructStatuses(Lt4j/http/Response;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCommentsToMe(Lt4j/data/Paging;)Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt4j/TBlog;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "statuses/comments_to_me.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lt4j/TBlog;->get(Ljava/lang/String;Lt4j/data/Paging;Z)Lt4j/http/Response;

    move-result-object v0

    invoke-static {v0}, Lt4j/data/Status;->constructStatuses(Lt4j/http/Response;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDirectMessages()Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt4j/TBlog;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "direct_messages.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lt4j/TBlog;->get(Ljava/lang/String;Z)Lt4j/http/Response;

    move-result-object v0

    invoke-static {v0}, Lt4j/data/DirectMessage;->createDirectMessageList(Lt4j/http/Response;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDirectMessages(Lt4j/data/Paging;)Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt4j/TBlog;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "direct_messages.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lt4j/TBlog;->get(Ljava/lang/String;Lt4j/data/Paging;Z)Lt4j/http/Response;

    move-result-object v0

    invoke-static {v0}, Lt4j/data/DirectMessage;->createDirectMessageList(Lt4j/http/Response;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFavorites(J)Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt4j/TBlog;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "favorites/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lt4j/TBlog;->get(Ljava/lang/String;Z)Lt4j/http/Response;

    move-result-object v0

    invoke-static {v0}, Lt4j/data/Status;->constructStatuses(Lt4j/http/Response;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFavorites(JLt4j/data/Paging;)Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt4j/TBlog;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "favorites/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p3, v1}, Lt4j/TBlog;->get(Ljava/lang/String;Lt4j/data/Paging;Z)Lt4j/http/Response;

    move-result-object v0

    invoke-static {v0}, Lt4j/data/Status;->constructStatuses(Lt4j/http/Response;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getHomeTimeline()Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt4j/TBlog;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "statuses/home_timeline.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lt4j/TBlog;->get(Ljava/lang/String;Z)Lt4j/http/Response;

    move-result-object v0

    invoke-static {v0}, Lt4j/data/Status;->constructStatuses(Lt4j/http/Response;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getHomeTimeline(Lt4j/data/Paging;)Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt4j/TBlog;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "statuses/home_timeline.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lt4j/TBlog;->get(Ljava/lang/String;Lt4j/data/Paging;Z)Lt4j/http/Response;

    move-result-object v0

    invoke-static {v0}, Lt4j/data/Status;->constructStatuses(Lt4j/http/Response;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLatestMessages()Lt4j/org/json/JSONObject;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt4j/TBlog;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "reminds/message/latest.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lt4j/TBlog;->get(Ljava/lang/String;Z)Lt4j/http/Response;

    move-result-object v0

    invoke-virtual {v0}, Lt4j/http/Response;->asJSONObject()Lt4j/org/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getLocationTimeline(DD)Ljava/util/List;
    .locals 6

    const/4 v5, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt4j/TBlog;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "statuses/location_timeline.json?lat=%s&long=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v5}, Lt4j/TBlog;->get(Ljava/lang/String;Z)Lt4j/http/Response;

    move-result-object v0

    invoke-static {v0}, Lt4j/data/Status;->constructStatuses(Lt4j/http/Response;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLocationTimeline(DDLt4j/data/Paging;)Ljava/util/List;
    .locals 6

    const/4 v5, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt4j/TBlog;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "statuses/location_timeline.json?lat=%s&long=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p5, v5}, Lt4j/TBlog;->get(Ljava/lang/String;Lt4j/data/Paging;Z)Lt4j/http/Response;

    move-result-object v0

    invoke-static {v0}, Lt4j/data/Status;->constructStatuses(Lt4j/http/Response;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLocationTimeline(J)Ljava/util/List;
    .locals 6

    const/4 v5, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt4j/TBlog;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "statuses/location_timeline.json?vid=%s"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v5}, Lt4j/TBlog;->get(Ljava/lang/String;Z)Lt4j/http/Response;

    move-result-object v0

    invoke-static {v0}, Lt4j/data/Status;->constructStatuses(Lt4j/http/Response;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLocationTimeline(JLt4j/data/Paging;)Ljava/util/List;
    .locals 6

    const/4 v5, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt4j/TBlog;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "statuses/location_timeline.json?vid=%s"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3, v5}, Lt4j/TBlog;->get(Ljava/lang/String;Lt4j/data/Paging;Z)Lt4j/http/Response;

    move-result-object v0

    invoke-static {v0}, Lt4j/data/Status;->constructStatuses(Lt4j/http/Response;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMentions()Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt4j/TBlog;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "statuses/mentions.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lt4j/TBlog;->get(Ljava/lang/String;Z)Lt4j/http/Response;

    move-result-object v0

    invoke-static {v0}, Lt4j/data/Status;->constructStatuses(Lt4j/http/Response;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMentions(Lt4j/data/Paging;)Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt4j/TBlog;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "statuses/mentions.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lt4j/TBlog;->get(Ljava/lang/String;Lt4j/data/Paging;Z)Lt4j/http/Response;

    move-result-object v0

    invoke-static {v0}, Lt4j/data/Status;->constructStatuses(Lt4j/http/Response;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getOAuthAccessToken(Ljava/lang/String;Ljava/lang/String;)Lt4j/http/AccessToken;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lt4j/TBlog;->http:Lt4j/http/HttpClient;

    invoke-virtual {v0, p1, p2}, Lt4j/http/HttpClient;->getOAuthAccessToken(Ljava/lang/String;Ljava/lang/String;)Lt4j/http/AccessToken;

    move-result-object v0

    invoke-virtual {v0}, Lt4j/http/AccessToken;->getScreenName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lt4j/TBlog;->setUserId(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getOAuthAccessToken(Lt4j/http/RequestToken;)Lt4j/http/AccessToken;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lt4j/TBlog;->http:Lt4j/http/HttpClient;

    invoke-virtual {v0, p1}, Lt4j/http/HttpClient;->getOAuthAccessToken(Lt4j/http/RequestToken;)Lt4j/http/AccessToken;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getOAuthRequestToken()Lt4j/http/RequestToken;
    .locals 1

    iget-object v0, p0, Lt4j/TBlog;->http:Lt4j/http/HttpClient;

    invoke-virtual {v0}, Lt4j/http/HttpClient;->getOAuthRequestToken()Lt4j/http/RequestToken;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPassword()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lt4j/TBlogSupport;->getPassword()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPublicTimeline()Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt4j/TBlog;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "statuses/public_timeline.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lt4j/TBlog;->get(Ljava/lang/String;Z)Lt4j/http/Response;

    move-result-object v0

    invoke-static {v0}, Lt4j/data/Status;->constructStatuses(Lt4j/http/Response;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRecommendedTopics()Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt4j/TBlog;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "trends/recommended.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lt4j/TBlog;->get(Ljava/lang/String;Z)Lt4j/http/Response;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Lt4j/http/Response;->asJSONObject()Lt4j/org/json/JSONObject;

    move-result-object v0

    const-string v1, "trends"

    invoke-virtual {v0, v1}, Lt4j/org/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lt4j/org/json/JSONArray;
    :try_end_0
    .catch Lt4j/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-static {v0}, Lt4j/data/RecommendTopic;->constructTopics(Lt4j/org/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lt4j/TBlogException;

    invoke-direct {v1, v0}, Lt4j/TBlogException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public getRetweets(J)Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt4j/TBlog;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "statuses/retweets/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lt4j/TBlog;->get(Ljava/lang/String;Z)Lt4j/http/Response;

    move-result-object v0

    invoke-static {v0}, Lt4j/data/Status;->constructStatuses(Lt4j/http/Response;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRetweets(JLt4j/data/Paging;)Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt4j/TBlog;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "statuses/retweets/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p3, v1}, Lt4j/TBlog;->get(Ljava/lang/String;Lt4j/data/Paging;Z)Lt4j/http/Response;

    move-result-object v0

    invoke-static {v0}, Lt4j/data/Status;->constructStatuses(Lt4j/http/Response;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRetweetsOfMe()Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt4j/TBlog;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "statuses/retweets_of_me.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lt4j/TBlog;->get(Ljava/lang/String;Z)Lt4j/http/Response;

    move-result-object v0

    invoke-static {v0}, Lt4j/data/Status;->constructStatuses(Lt4j/http/Response;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSearchBaseURL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lt4j/TBlog;->searchBaseURL:Ljava/lang/String;

    return-object v0
.end method

.method public getSentDirectMessages()Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt4j/TBlog;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "direct_messages/sent.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lt4j/TBlog;->get(Ljava/lang/String;Z)Lt4j/http/Response;

    move-result-object v0

    invoke-static {v0}, Lt4j/data/DirectMessage;->createDirectMessageList(Lt4j/http/Response;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTopRetweets(Lt4j/TBlog$TopRetweetsType;)Ljava/util/List;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt4j/TBlog;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "statuses/topRetweets/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lt4j/TBlog;->get(Ljava/lang/String;Z)Lt4j/http/Response;

    move-result-object v0

    invoke-virtual {v0}, Lt4j/http/Response;->asJSONArray()Lt4j/org/json/JSONArray;

    move-result-object v2

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v2}, Lt4j/org/json/JSONArray;->length()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lt4j/org/json/JSONArray;->length()I

    move-result v3

    if-lt v0, v3, :cond_0

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    :try_start_0
    new-instance v3, Lt4j/data/Status;

    invoke-virtual {v2, v0}, Lt4j/org/json/JSONArray;->getJSONObject(I)Lt4j/org/json/JSONObject;

    move-result-object v4

    const-string v5, "status"

    invoke-virtual {v4, v5}, Lt4j/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lt4j/org/json/JSONObject;

    move-result-object v4

    invoke-direct {v3, v4}, Lt4j/data/Status;-><init>(Lt4j/org/json/JSONObject;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lt4j/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method public bridge synthetic getUserAgent()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lt4j/TBlogSupport;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUserId()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lt4j/TBlogSupport;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserTimeline(J)Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt4j/TBlog;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "statuses/user_timeline.json?user_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lt4j/TBlog;->get(Ljava/lang/String;Z)Lt4j/http/Response;

    move-result-object v0

    invoke-static {v0}, Lt4j/data/Status;->constructStatuses(Lt4j/http/Response;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUserTimeline(JLt4j/data/Paging;)Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt4j/TBlog;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "statuses/user_timeline.json?user_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p3, v1}, Lt4j/TBlog;->get(Ljava/lang/String;Lt4j/data/Paging;Z)Lt4j/http/Response;

    move-result-object v0

    invoke-static {v0}, Lt4j/data/Status;->constructStatuses(Lt4j/http/Response;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUserTimeline(Ljava/lang/String;)Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt4j/TBlog;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "statuses/user_timeline.json?screen_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lt4j/TBlog;->get(Ljava/lang/String;Z)Lt4j/http/Response;

    move-result-object v0

    invoke-static {v0}, Lt4j/data/Status;->constructStatuses(Lt4j/http/Response;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUserTimeline(Ljava/lang/String;Lt4j/data/Paging;)Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt4j/TBlog;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "statuses/user_timeline.json?screen_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p2, v1}, Lt4j/TBlog;->get(Ljava/lang/String;Lt4j/data/Paging;Z)Lt4j/http/Response;

    move-result-object v0

    invoke-static {v0}, Lt4j/data/Status;->constructStatuses(Lt4j/http/Response;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVenues(DD)Ljava/util/List;
    .locals 6

    const/4 v5, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt4j/TBlog;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "location/venues.json?lat=%s&long=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v5}, Lt4j/TBlog;->get(Ljava/lang/String;Z)Lt4j/http/Response;

    move-result-object v0

    invoke-static {v0}, Lt4j/data/Venue;->createVenueList(Lt4j/http/Response;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVenues(DDI)Ljava/util/List;
    .locals 6

    const/4 v5, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt4j/TBlog;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "location/venues.json?lat=%s&long=%s&count=%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v5}, Lt4j/TBlog;->get(Ljava/lang/String;Z)Lt4j/http/Response;

    move-result-object v0

    invoke-static {v0}, Lt4j/data/Venue;->createVenueList(Lt4j/http/Response;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVenues(DDILjava/lang/String;)Ljava/util/List;
    .locals 6

    const/4 v5, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt4j/TBlog;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "location/venues.json?lat=%s&long=%s&count=%s&q=%s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p6, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v5}, Lt4j/TBlog;->get(Ljava/lang/String;Z)Lt4j/http/Response;

    move-result-object v0

    invoke-static {v0}, Lt4j/data/Venue;->createVenueList(Lt4j/http/Response;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVenues(DDLjava/lang/String;)Ljava/util/List;
    .locals 6

    const/4 v5, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt4j/TBlog;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "location/venues.json?lat=%s&long=%s&q=%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    aput-object p5, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v5}, Lt4j/TBlog;->get(Ljava/lang/String;Z)Lt4j/http/Response;

    move-result-object v0

    invoke-static {v0}, Lt4j/data/Venue;->createVenueList(Lt4j/http/Response;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getXAuthAccessToken(Ljava/lang/String;Ljava/lang/String;)Lt4j/http/AccessToken;
    .locals 2

    iget-object v0, p0, Lt4j/TBlog;->http:Lt4j/http/HttpClient;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lt4j/http/HttpClient;->getXAuthAccessToken(Ljava/lang/String;Ljava/lang/String;Z)Lt4j/http/AccessToken;

    move-result-object v0

    return-object v0
.end method

.method public getXAuthAccessToken(Ljava/lang/String;Ljava/lang/String;Z)Lt4j/http/AccessToken;
    .locals 1

    iget-object v0, p0, Lt4j/TBlog;->http:Lt4j/http/HttpClient;

    invoke-virtual {v0, p1, p2, p3}, Lt4j/http/HttpClient;->getXAuthAccessToken(Ljava/lang/String;Ljava/lang/String;Z)Lt4j/http/AccessToken;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic isUsePostForced()Z
    .locals 1

    invoke-super {p0}, Lt4j/TBlogSupport;->isUsePostForced()Z

    move-result v0

    return v0
.end method

.method public reply(JLjava/lang/String;)Lt4j/data/Status;
    .locals 6

    const/4 v5, 0x1

    const/4 v0, 0x2

    new-array v0, v0, [Lt4j/http/PostParameter;

    const/4 v1, 0x0

    new-instance v2, Lt4j/http/PostParameter;

    const-string v3, "id"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lt4j/http/PostParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    new-instance v1, Lt4j/http/PostParameter;

    const-string v2, "status"

    invoke-direct {v1, v2, p3}, Lt4j/http/PostParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v5

    new-instance v1, Lt4j/data/Status;

    iget-object v2, p0, Lt4j/TBlog;->http:Lt4j/http/HttpClient;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt4j/TBlog;->getBaseURL()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "statuses/reply.json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v5}, Lt4j/http/HttpClient;->post(Ljava/lang/String;[Lt4j/http/PostParameter;Z)Lt4j/http/Response;

    move-result-object v0

    invoke-direct {v1, v0}, Lt4j/data/Status;-><init>(Lt4j/http/Response;)V

    return-object v1
.end method

.method public reply(JLjava/lang/String;ZZ)Lt4j/data/Status;
    .locals 7

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x4

    new-array v3, v0, [Lt4j/http/PostParameter;

    new-instance v0, Lt4j/http/PostParameter;

    const-string v4, "id"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lt4j/http/PostParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v3, v2

    new-instance v0, Lt4j/http/PostParameter;

    const-string v4, "status"

    invoke-direct {v0, v4, p3}, Lt4j/http/PostParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v3, v1

    const/4 v4, 0x2

    new-instance v5, Lt4j/http/PostParameter;

    const-string v6, "is_retweet"

    if-eqz p4, :cond_1

    move v0, v1

    :goto_0
    invoke-direct {v5, v6, v0}, Lt4j/http/PostParameter;-><init>(Ljava/lang/String;I)V

    aput-object v5, v3, v4

    const/4 v0, 0x3

    new-instance v4, Lt4j/http/PostParameter;

    const-string v5, "is_comment_to_root"

    if-eqz p5, :cond_0

    move v2, v1

    :cond_0
    invoke-direct {v4, v5, v2}, Lt4j/http/PostParameter;-><init>(Ljava/lang/String;I)V

    aput-object v4, v3, v0

    new-instance v0, Lt4j/data/Status;

    iget-object v2, p0, Lt4j/TBlog;->http:Lt4j/http/HttpClient;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt4j/TBlog;->getBaseURL()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "statuses/reply.json"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3, v1}, Lt4j/http/HttpClient;->post(Ljava/lang/String;[Lt4j/http/PostParameter;Z)Lt4j/http/Response;

    move-result-object v1

    invoke-direct {v0, v1}, Lt4j/data/Status;-><init>(Lt4j/http/Response;)V

    return-object v0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public retweet(J)Lt4j/data/Status;
    .locals 3

    iget-object v0, p0, Lt4j/TBlog;->http:Lt4j/http/HttpClient;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt4j/TBlog;->getBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "statuses/retweet/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lt4j/http/HttpClient;->post(Ljava/lang/String;Z)Lt4j/http/Response;

    move-result-object v0

    invoke-virtual {v0}, Lt4j/http/Response;->asJSONObject()Lt4j/org/json/JSONObject;

    move-result-object v1

    :try_start_0
    const-string v0, "retweeted_status"

    invoke-virtual {v1, v0}, Lt4j/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lt4j/data/Status;

    const-string v2, "retweeted_status"

    invoke-virtual {v1, v2}, Lt4j/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lt4j/org/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lt4j/data/Status;-><init>(Lt4j/org/json/JSONObject;)V
    :try_end_0
    .catch Lt4j/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lt4j/TBlogException;

    invoke-direct {v1, v0}, Lt4j/TBlogException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public retweet(JLjava/lang/String;)Lt4j/data/Status;
    .locals 6

    const/4 v5, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt4j/TBlog;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "statuses/retweet/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Lt4j/http/PostParameter;

    const/4 v2, 0x0

    new-instance v3, Lt4j/http/PostParameter;

    const-string v4, "status"

    invoke-direct {v3, v4, p3}, Lt4j/http/PostParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    new-instance v2, Lt4j/data/Status;

    iget-object v3, p0, Lt4j/TBlog;->http:Lt4j/http/HttpClient;

    invoke-virtual {v3, v0, v1, v5}, Lt4j/http/HttpClient;->post(Ljava/lang/String;[Lt4j/http/PostParameter;Z)Lt4j/http/Response;

    move-result-object v0

    invoke-direct {v2, v0}, Lt4j/data/Status;-><init>(Lt4j/http/Response;)V

    return-object v2
.end method

.method public retweet(JLjava/lang/String;ZZ)Lt4j/data/Status;
    .locals 7

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt4j/TBlog;->getBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "statuses/retweet/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".json"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x3

    new-array v4, v0, [Lt4j/http/PostParameter;

    new-instance v0, Lt4j/http/PostParameter;

    const-string v5, "status"

    invoke-direct {v0, v5, p3}, Lt4j/http/PostParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v4, v2

    new-instance v5, Lt4j/http/PostParameter;

    const-string v6, "is_comment"

    if-eqz p4, :cond_1

    move v0, v1

    :goto_0
    invoke-direct {v5, v6, v0}, Lt4j/http/PostParameter;-><init>(Ljava/lang/String;I)V

    aput-object v5, v4, v1

    const/4 v0, 0x2

    new-instance v5, Lt4j/http/PostParameter;

    const-string v6, "is_comment_to_root"

    if-eqz p5, :cond_0

    move v2, v1

    :cond_0
    invoke-direct {v5, v6, v2}, Lt4j/http/PostParameter;-><init>(Ljava/lang/String;I)V

    aput-object v5, v4, v0

    new-instance v0, Lt4j/data/Status;

    iget-object v2, p0, Lt4j/TBlog;->http:Lt4j/http/HttpClient;

    invoke-virtual {v2, v3, v4, v1}, Lt4j/http/HttpClient;->post(Ljava/lang/String;[Lt4j/http/PostParameter;Z)Lt4j/http/Response;

    move-result-object v1

    invoke-direct {v0, v1}, Lt4j/data/Status;-><init>(Lt4j/http/Response;)V

    return-object v0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public search(Ljava/lang/String;II)Ljava/util/List;
    .locals 5

    const/4 v4, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt4j/TBlog;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "statuses/search.json?q=%s&page=%s&perPage=%s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lt4j/TBlog;->get(Ljava/lang/String;Z)Lt4j/http/Response;

    move-result-object v0

    invoke-virtual {v0}, Lt4j/http/Response;->asJSONArray()Lt4j/org/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lt4j/data/Status;->constructStatuses(Lt4j/org/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public searchStatus(Ljava/lang/String;)Ljava/util/List;
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt4j/TBlog;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "search.json?q="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lt4j/TBlog;->get(Ljava/lang/String;Z)Lt4j/http/Response;

    move-result-object v0

    invoke-virtual {v0}, Lt4j/http/Response;->asJSONObject()Lt4j/org/json/JSONObject;

    move-result-object v0

    const-string v1, "results"

    invoke-virtual {v0, v1}, Lt4j/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "results"

    invoke-virtual {v0, v1}, Lt4j/org/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lt4j/org/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lt4j/data/Status;->constructStatuses(Lt4j/org/json/JSONArray;)Ljava/util/List;
    :try_end_0
    .catch Lt4j/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lt4j/TBlogException;

    invoke-direct {v1, v0}, Lt4j/TBlogException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public searchStatus(Ljava/lang/String;II)Ljava/util/List;
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt4j/TBlog;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "search.json?q="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&page="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&per_page="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lt4j/TBlog;->get(Ljava/lang/String;Z)Lt4j/http/Response;

    move-result-object v0

    invoke-virtual {v0}, Lt4j/http/Response;->asJSONObject()Lt4j/org/json/JSONObject;

    move-result-object v0

    const-string v1, "results"

    invoke-virtual {v0, v1}, Lt4j/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "results"

    invoke-virtual {v0, v1}, Lt4j/org/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lt4j/org/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lt4j/data/Status;->constructStatuses(Lt4j/org/json/JSONArray;)Ljava/util/List;
    :try_end_0
    .catch Lt4j/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lt4j/TBlogException;

    invoke-direct {v1, v0}, Lt4j/TBlogException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public searchUser(Ljava/lang/String;)Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt4j/TBlog;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "users/search.json?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "q="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lt4j/TBlog;->get(Ljava/lang/String;Z)Lt4j/http/Response;

    move-result-object v0

    invoke-static {v0}, Lt4j/data/User;->createUserList(Lt4j/http/Response;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public searchUser(Ljava/lang/String;II)Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt4j/TBlog;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "users/search.json?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "q="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&page="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&per_page="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lt4j/TBlog;->get(Ljava/lang/String;Z)Lt4j/http/Response;

    move-result-object v0

    invoke-static {v0}, Lt4j/data/User;->createUserList(Lt4j/http/Response;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public sendDirectMessage(Ljava/lang/String;Ljava/lang/String;)Lt4j/data/DirectMessage;
    .locals 6

    const/4 v5, 0x1

    const/4 v0, 0x2

    new-array v0, v0, [Lt4j/http/PostParameter;

    const/4 v1, 0x0

    new-instance v2, Lt4j/http/PostParameter;

    const-string v3, "user"

    invoke-direct {v2, v3, p1}, Lt4j/http/PostParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    new-instance v1, Lt4j/http/PostParameter;

    const-string v2, "text"

    invoke-direct {v1, v2, p2}, Lt4j/http/PostParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v5

    new-instance v1, Lt4j/data/DirectMessage;

    iget-object v2, p0, Lt4j/TBlog;->http:Lt4j/http/HttpClient;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt4j/TBlog;->getBaseURL()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "direct_messages/new.json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v5}, Lt4j/http/HttpClient;->post(Ljava/lang/String;[Lt4j/http/PostParameter;Z)Lt4j/http/Response;

    move-result-object v0

    invoke-direct {v1, v0}, Lt4j/data/DirectMessage;-><init>(Lt4j/http/Response;)V

    return-object v1
.end method

.method public setBaseURL(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lt4j/TBlog;->baseURL:Ljava/lang/String;

    return-void
.end method

.method public bridge synthetic setClientURL(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lt4j/TBlogSupport;->setClientURL(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setClientVersion(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lt4j/TBlogSupport;->setClientVersion(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setHttp(Lt4j/http/HttpClient;)V
    .locals 0

    invoke-super {p0, p1}, Lt4j/TBlogSupport;->setHttp(Lt4j/http/HttpClient;)V

    return-void
.end method

.method public bridge synthetic setHttpConnectionTimeout(I)V
    .locals 0

    invoke-super {p0, p1}, Lt4j/TBlogSupport;->setHttpConnectionTimeout(I)V

    return-void
.end method

.method public bridge synthetic setHttpProxy(Ljava/lang/String;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lt4j/TBlogSupport;->setHttpProxy(Ljava/lang/String;I)V

    return-void
.end method

.method public bridge synthetic setHttpProxyAuth(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lt4j/TBlogSupport;->setHttpProxyAuth(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setHttpReadTimeout(I)V
    .locals 0

    invoke-super {p0, p1}, Lt4j/TBlogSupport;->setHttpReadTimeout(I)V

    return-void
.end method

.method public declared-synchronized setOAuthConsumer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lt4j/TBlog;->http:Lt4j/http/HttpClient;

    invoke-virtual {v0, p1, p2}, Lt4j/http/HttpClient;->setOAuthConsumer(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic setPassword(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lt4j/TBlogSupport;->setPassword(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lt4j/TBlogSupport;->setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setRetryCount(I)V
    .locals 0

    invoke-super {p0, p1}, Lt4j/TBlogSupport;->setRetryCount(I)V

    return-void
.end method

.method public bridge synthetic setRetryIntervalSecs(I)V
    .locals 0

    invoke-super {p0, p1}, Lt4j/TBlogSupport;->setRetryIntervalSecs(I)V

    return-void
.end method

.method public setSearchBaseURL(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lt4j/TBlog;->searchBaseURL:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lt4j/TBlog;->http:Lt4j/http/HttpClient;

    invoke-virtual {v0, p1, p2}, Lt4j/http/HttpClient;->setToken(Ljava/lang/String;Ljava/lang/String;)Lt4j/http/RequestToken;

    return-void
.end method

.method public bridge synthetic setUserAgent(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lt4j/TBlogSupport;->setUserAgent(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setUserId(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lt4j/TBlogSupport;->setUserId(Ljava/lang/String;)V

    return-void
.end method

.method public showFriendship(J)Lt4j/org/json/JSONObject;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt4j/TBlog;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "friendships/show.json?target_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lt4j/TBlog;->get(Ljava/lang/String;Z)Lt4j/http/Response;

    move-result-object v0

    invoke-virtual {v0}, Lt4j/http/Response;->asJSONObject()Lt4j/org/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public showFriendship(JJ)Lt4j/org/json/JSONObject;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt4j/TBlog;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "friendships/show.json?source_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&target_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lt4j/TBlog;->get(Ljava/lang/String;Z)Lt4j/http/Response;

    move-result-object v0

    invoke-virtual {v0}, Lt4j/http/Response;->asJSONObject()Lt4j/org/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public showStatus(J)Lt4j/data/Status;
    .locals 4

    new-instance v0, Lt4j/data/Status;

    iget-object v1, p0, Lt4j/TBlog;->http:Lt4j/http/HttpClient;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt4j/TBlog;->getBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "statuses/show/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lt4j/http/HttpClient;->get(Ljava/lang/String;Z)Lt4j/http/Response;

    move-result-object v1

    invoke-direct {v0, v1}, Lt4j/data/Status;-><init>(Lt4j/http/Response;)V

    return-object v0
.end method

.method public showUser(J)Lt4j/data/User;
    .locals 4

    new-instance v0, Lt4j/data/User;

    iget-object v1, p0, Lt4j/TBlog;->http:Lt4j/http/HttpClient;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt4j/TBlog;->getBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "users/show.json?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lt4j/http/HttpClient;->get(Ljava/lang/String;Z)Lt4j/http/Response;

    move-result-object v1

    invoke-direct {v0, v1}, Lt4j/data/User;-><init>(Lt4j/http/Response;)V

    return-object v0
.end method

.method public showUser(Ljava/lang/String;)Lt4j/data/User;
    .locals 4

    new-instance v0, Lt4j/data/User;

    iget-object v1, p0, Lt4j/TBlog;->http:Lt4j/http/HttpClient;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt4j/TBlog;->getBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "users/show.json?screen_name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lt4j/http/HttpClient;->get(Ljava/lang/String;Z)Lt4j/http/Response;

    move-result-object v1

    invoke-direct {v0, v1}, Lt4j/data/User;-><init>(Lt4j/http/Response;)V

    return-object v0
.end method

.method public suggestedIFollowers()Ljava/util/List;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lt4j/TBlog;->suggestedIFollowers(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public suggestedIFollowers(I)Ljava/util/List;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lt4j/TBlog;->http:Lt4j/http/HttpClient;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt4j/TBlog;->getBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "users/suggestions_i_followers.json?cursor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lt4j/http/HttpClient;->get(Ljava/lang/String;Z)Lt4j/http/Response;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Lt4j/http/Response;->asJSONObject()Lt4j/org/json/JSONObject;

    move-result-object v0

    const-string v1, "users"

    invoke-virtual {v0, v1}, Lt4j/org/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lt4j/org/json/JSONArray;
    :try_end_0
    .catch Lt4j/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lt4j/data/User;->createUserList(Lt4j/org/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public suggestedUsers(I)Ljava/util/List;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lt4j/TBlog;->http:Lt4j/http/HttpClient;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt4j/TBlog;->getBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "users/suggestions.json?count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lt4j/http/HttpClient;->get(Ljava/lang/String;Z)Lt4j/http/Response;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Lt4j/http/Response;->asJSONObject()Lt4j/org/json/JSONObject;

    move-result-object v0

    const-string v1, "users"

    invoke-virtual {v0, v1}, Lt4j/org/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lt4j/org/json/JSONArray;
    :try_end_0
    .catch Lt4j/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lt4j/data/User;->createUserList(Lt4j/org/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public updateImage(Ljava/io/File;)Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lt4j/TBlog;->http:Lt4j/http/HttpClient;

    const-string v1, "pic"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt4j/TBlog;->getBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "statuses/upload.json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Lt4j/http/PostParameter;

    const/4 v5, 0x1

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lt4j/http/HttpClient;->multPartURL(Ljava/lang/String;Ljava/lang/String;[Lt4j/http/PostParameter;Ljava/io/File;Z)Lt4j/http/Response;

    move-result-object v0

    invoke-virtual {v0}, Lt4j/http/Response;->asJSONObject()Lt4j/org/json/JSONObject;

    move-result-object v0

    :try_start_0
    const-string v1, "upload_image_url"

    invoke-virtual {v0, v1}, Lt4j/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "upload_image_url"

    invoke-virtual {v0, v1}, Lt4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lt4j/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lt4j/TBlogException;

    invoke-direct {v1, v0}, Lt4j/TBlogException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public updateImage(Ljava/lang/String;Ljava/io/File;)Lt4j/data/Status;
    .locals 3

    invoke-virtual {p0, p2}, Lt4j/TBlog;->updateImage(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lt4j/TBlog;->updateStatus(Ljava/lang/String;)Lt4j/data/Status;

    move-result-object v0

    return-object v0
.end method

.method public updatePassword(Ljava/lang/String;Ljava/lang/String;)Lt4j/data/User;
    .locals 7

    const/4 v6, 0x1

    const-string v0, "account/update_password.json"

    const/4 v1, 0x2

    new-array v1, v1, [Lt4j/http/PostParameter;

    const/4 v2, 0x0

    new-instance v3, Lt4j/http/PostParameter;

    const-string v4, "old_password"

    invoke-direct {v3, v4, p1}, Lt4j/http/PostParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    new-instance v2, Lt4j/http/PostParameter;

    const-string v3, "new_password"

    invoke-direct {v2, v3, p2}, Lt4j/http/PostParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v6

    new-instance v2, Lt4j/data/User;

    iget-object v3, p0, Lt4j/TBlog;->http:Lt4j/http/HttpClient;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt4j/TBlog;->getBaseURL()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v1, v6}, Lt4j/http/HttpClient;->post(Ljava/lang/String;[Lt4j/http/PostParameter;Z)Lt4j/http/Response;

    move-result-object v0

    invoke-direct {v2, v0}, Lt4j/data/User;-><init>(Lt4j/http/Response;)V

    return-object v2
.end method

.method public updateProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lt4j/data/User;
    .locals 8

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v7, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "nick_name"

    aput-object v2, v1, v0

    const-string v2, "real_name"

    aput-object v2, v1, v7

    const-string v2, "description"

    aput-object v2, v1, v3

    const-string v2, "province"

    aput-object v2, v1, v4

    const-string v2, "city"

    aput-object v2, v1, v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v0

    aput-object p2, v2, v7

    aput-object p3, v2, v3

    aput-object p4, v2, v4

    aput-object p5, v2, v5

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    array-length v4, v2

    if-lt v0, v4, :cond_0

    iget-object v1, p0, Lt4j/TBlog;->http:Lt4j/http/HttpClient;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt4j/TBlog;->getBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "account/update_profile.json"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lt4j/http/PostParameter;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lt4j/http/PostParameter;

    invoke-virtual {v1, v2, v0, v7}, Lt4j/http/HttpClient;->post(Ljava/lang/String;[Lt4j/http/PostParameter;Z)Lt4j/http/Response;

    move-result-object v0

    new-instance v1, Lt4j/data/User;

    invoke-direct {v1, v0}, Lt4j/data/User;-><init>(Lt4j/http/Response;)V

    return-object v1

    :cond_0
    aget-object v4, v2, v0

    if-eqz v4, :cond_1

    const-string v4, ""

    aget-object v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Lt4j/http/PostParameter;

    aget-object v5, v1, v0

    aget-object v6, v2, v0

    invoke-direct {v4, v5, v6}, Lt4j/http/PostParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public updateProfileImage(Ljava/io/File;)Lt4j/data/User;
    .locals 6

    iget-object v0, p0, Lt4j/TBlog;->http:Lt4j/http/HttpClient;

    const-string v1, "img"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt4j/TBlog;->getBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "account/update_profile_image.json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Lt4j/http/PostParameter;

    const/4 v5, 0x1

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lt4j/http/HttpClient;->multPartURL(Ljava/lang/String;Ljava/lang/String;[Lt4j/http/PostParameter;Ljava/io/File;Z)Lt4j/http/Response;

    move-result-object v0

    new-instance v1, Lt4j/data/User;

    invoke-direct {v1, v0}, Lt4j/data/User;-><init>(Lt4j/http/Response;)V

    return-object v1
.end method

.method public updateStatus(Ljava/lang/String;)Lt4j/data/Status;
    .locals 8

    const/4 v7, 0x1

    new-instance v0, Lt4j/data/Status;

    iget-object v1, p0, Lt4j/TBlog;->http:Lt4j/http/HttpClient;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt4j/TBlog;->getBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "statuses/update.json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Lt4j/http/PostParameter;

    const/4 v4, 0x0

    new-instance v5, Lt4j/http/PostParameter;

    const-string v6, "status"

    invoke-direct {v5, v6, p1}, Lt4j/http/PostParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3, v7}, Lt4j/http/HttpClient;->post(Ljava/lang/String;[Lt4j/http/PostParameter;Z)Lt4j/http/Response;

    move-result-object v1

    invoke-direct {v0, v1}, Lt4j/data/Status;-><init>(Lt4j/http/Response;)V

    return-object v0
.end method

.method public updateStatus(Ljava/lang/String;DD)Lt4j/data/Status;
    .locals 6

    const/4 v5, 0x1

    const/4 v0, 0x3

    new-array v0, v0, [Lt4j/http/PostParameter;

    const/4 v1, 0x0

    new-instance v2, Lt4j/http/PostParameter;

    const-string v3, "status"

    invoke-direct {v2, v3, p1}, Lt4j/http/PostParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    new-instance v1, Lt4j/http/PostParameter;

    const-string v2, "lat"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lt4j/http/PostParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v5

    const/4 v1, 0x2

    new-instance v2, Lt4j/http/PostParameter;

    const-string v3, "long"

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lt4j/http/PostParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    new-instance v1, Lt4j/data/Status;

    iget-object v2, p0, Lt4j/TBlog;->http:Lt4j/http/HttpClient;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt4j/TBlog;->getBaseURL()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "statuses/update.json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v5}, Lt4j/http/HttpClient;->post(Ljava/lang/String;[Lt4j/http/PostParameter;Z)Lt4j/http/Response;

    move-result-object v0

    invoke-direct {v1, v0}, Lt4j/data/Status;-><init>(Lt4j/http/Response;)V

    return-object v1
.end method

.method public updateStatus(Ljava/lang/String;J)Lt4j/data/Status;
    .locals 6

    const/4 v5, 0x1

    const/4 v0, 0x2

    new-array v0, v0, [Lt4j/http/PostParameter;

    const/4 v1, 0x0

    new-instance v2, Lt4j/http/PostParameter;

    const-string v3, "status"

    invoke-direct {v2, v3, p1}, Lt4j/http/PostParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    new-instance v1, Lt4j/http/PostParameter;

    const-string v2, "vid"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lt4j/http/PostParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v5

    new-instance v1, Lt4j/data/Status;

    iget-object v2, p0, Lt4j/TBlog;->http:Lt4j/http/HttpClient;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt4j/TBlog;->getBaseURL()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "statuses/update.json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v5}, Lt4j/http/HttpClient;->post(Ljava/lang/String;[Lt4j/http/PostParameter;Z)Lt4j/http/Response;

    move-result-object v0

    invoke-direct {v1, v0}, Lt4j/data/Status;-><init>(Lt4j/http/Response;)V

    return-object v1
.end method

.method public updateStatus(Ljava/lang/String;JZ)Lt4j/data/Status;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x3

    new-array v2, v2, [Lt4j/http/PostParameter;

    new-instance v3, Lt4j/http/PostParameter;

    const-string v4, "status"

    invoke-direct {v3, v4, p1}, Lt4j/http/PostParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v0

    new-instance v3, Lt4j/http/PostParameter;

    const-string v4, "in_reply_to_status_id"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lt4j/http/PostParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v1

    const/4 v3, 0x2

    new-instance v4, Lt4j/http/PostParameter;

    const-string v5, "dispatch_to_followers"

    if-eqz p4, :cond_0

    move v0, v1

    :cond_0
    invoke-direct {v4, v5, v0}, Lt4j/http/PostParameter;-><init>(Ljava/lang/String;I)V

    aput-object v4, v2, v3

    new-instance v0, Lt4j/data/Status;

    iget-object v3, p0, Lt4j/TBlog;->http:Lt4j/http/HttpClient;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt4j/TBlog;->getBaseURL()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "statuses/update.json"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2, v1}, Lt4j/http/HttpClient;->post(Ljava/lang/String;[Lt4j/http/PostParameter;Z)Lt4j/http/Response;

    move-result-object v1

    invoke-direct {v0, v1}, Lt4j/data/Status;-><init>(Lt4j/http/Response;)V

    return-object v0
.end method

.method public updateStatus(Ljava/lang/String;JZDD)Lt4j/data/Status;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x5

    new-array v2, v2, [Lt4j/http/PostParameter;

    new-instance v3, Lt4j/http/PostParameter;

    const-string v4, "status"

    invoke-direct {v3, v4, p1}, Lt4j/http/PostParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v0

    new-instance v3, Lt4j/http/PostParameter;

    const-string v4, "in_reply_to_status_id"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lt4j/http/PostParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v1

    const/4 v3, 0x2

    new-instance v4, Lt4j/http/PostParameter;

    const-string v5, "dispatch_to_followers"

    if-eqz p4, :cond_0

    move v0, v1

    :cond_0
    invoke-direct {v4, v5, v0}, Lt4j/http/PostParameter;-><init>(Ljava/lang/String;I)V

    aput-object v4, v2, v3

    const/4 v0, 0x3

    new-instance v3, Lt4j/http/PostParameter;

    const-string v4, "lat"

    invoke-static {p5, p6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lt4j/http/PostParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v0

    const/4 v0, 0x4

    new-instance v3, Lt4j/http/PostParameter;

    const-string v4, "long"

    invoke-static {p7, p8}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lt4j/http/PostParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v0

    new-instance v0, Lt4j/data/Status;

    iget-object v3, p0, Lt4j/TBlog;->http:Lt4j/http/HttpClient;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt4j/TBlog;->getBaseURL()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "statuses/update.json"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2, v1}, Lt4j/http/HttpClient;->post(Ljava/lang/String;[Lt4j/http/PostParameter;Z)Lt4j/http/Response;

    move-result-object v1

    invoke-direct {v0, v1}, Lt4j/data/Status;-><init>(Lt4j/http/Response;)V

    return-object v0
.end method

.method public updateStatus(Ljava/lang/String;JZJ)Lt4j/data/Status;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x4

    new-array v2, v2, [Lt4j/http/PostParameter;

    new-instance v3, Lt4j/http/PostParameter;

    const-string v4, "status"

    invoke-direct {v3, v4, p1}, Lt4j/http/PostParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v0

    new-instance v3, Lt4j/http/PostParameter;

    const-string v4, "in_reply_to_status_id"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lt4j/http/PostParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v1

    const/4 v3, 0x2

    new-instance v4, Lt4j/http/PostParameter;

    const-string v5, "dispatch_to_followers"

    if-eqz p4, :cond_0

    move v0, v1

    :cond_0
    invoke-direct {v4, v5, v0}, Lt4j/http/PostParameter;-><init>(Ljava/lang/String;I)V

    aput-object v4, v2, v3

    const/4 v0, 0x3

    new-instance v3, Lt4j/http/PostParameter;

    const-string v4, "vid"

    invoke-static {p5, p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lt4j/http/PostParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v0

    new-instance v0, Lt4j/data/Status;

    iget-object v3, p0, Lt4j/TBlog;->http:Lt4j/http/HttpClient;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt4j/TBlog;->getBaseURL()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "statuses/update.json"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2, v1}, Lt4j/http/HttpClient;->post(Ljava/lang/String;[Lt4j/http/PostParameter;Z)Lt4j/http/Response;

    move-result-object v1

    invoke-direct {v0, v1}, Lt4j/data/Status;-><init>(Lt4j/http/Response;)V

    return-object v0
.end method

.method public verifyCredentials()Lt4j/data/User;
    .locals 3

    new-instance v0, Lt4j/data/User;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt4j/TBlog;->getBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "account/verify_credentials.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lt4j/TBlog;->get(Ljava/lang/String;Z)Lt4j/http/Response;

    move-result-object v1

    invoke-direct {v0, v1}, Lt4j/data/User;-><init>(Lt4j/http/Response;)V

    return-object v0
.end method
