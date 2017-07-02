.class public Lt4j/http/RequestToken;
.super Lt4j/http/OAuthToken;


# static fields
.field private static final serialVersionUID:J = -0x71ff4a3702538200L


# instance fields
.field private httpClient:Lt4j/http/HttpClient;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lt4j/http/OAuthToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lt4j/http/Response;Lt4j/http/HttpClient;)V
    .locals 0

    invoke-direct {p0, p1}, Lt4j/http/OAuthToken;-><init>(Lt4j/http/Response;)V

    iput-object p2, p0, Lt4j/http/RequestToken;->httpClient:Lt4j/http/HttpClient;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    invoke-super {p0, p1}, Lt4j/http/OAuthToken;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    check-cast p1, Lt4j/http/RequestToken;

    iget-object v2, p0, Lt4j/http/RequestToken;->httpClient:Lt4j/http/HttpClient;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lt4j/http/RequestToken;->httpClient:Lt4j/http/HttpClient;

    iget-object v3, p1, Lt4j/http/RequestToken;->httpClient:Lt4j/http/HttpClient;

    invoke-virtual {v2, v3}, Lt4j/http/HttpClient;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p1, Lt4j/http/RequestToken;->httpClient:Lt4j/http/HttpClient;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public getAccessToken(Ljava/lang/String;)Lt4j/http/AccessToken;
    .locals 1

    iget-object v0, p0, Lt4j/http/RequestToken;->httpClient:Lt4j/http/HttpClient;

    invoke-virtual {v0, p0, p1}, Lt4j/http/HttpClient;->getOAuthAccessToken(Lt4j/http/RequestToken;Ljava/lang/String;)Lt4j/http/AccessToken;

    move-result-object v0

    return-object v0
.end method

.method public getAuthenticationURL()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lt4j/http/RequestToken;->httpClient:Lt4j/http/HttpClient;

    invoke-virtual {v1}, Lt4j/http/HttpClient;->getAuthenticationRL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "?oauth_token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lt4j/http/RequestToken;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-super {p0, p1}, Lt4j/http/OAuthToken;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getToken()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lt4j/http/OAuthToken;->getToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTokenSecret()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lt4j/http/OAuthToken;->getTokenSecret()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Lt4j/http/OAuthToken;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lt4j/http/RequestToken;->httpClient:Lt4j/http/HttpClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lt4j/http/RequestToken;->httpClient:Lt4j/http/HttpClient;

    invoke-virtual {v0}, Lt4j/http/HttpClient;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lt4j/http/OAuthToken;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
