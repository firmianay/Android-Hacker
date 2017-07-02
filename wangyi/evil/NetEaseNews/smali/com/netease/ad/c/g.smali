.class public Lcom/netease/ad/c/g;
.super Lcom/netease/ad/c/a;


# instance fields
.field c:[Lcom/netease/ad/b/h;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>([Lcom/netease/ad/b/h;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/netease/ad/c/a;-><init>()V

    iput-object v0, p0, Lcom/netease/ad/c/g;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/ad/c/g;->c:[Lcom/netease/ad/b/h;

    iput-object p1, p0, Lcom/netease/ad/c/g;->c:[Lcom/netease/ad/b/h;

    return-void
.end method


# virtual methods
.method a()Lcom/netease/ad/a/a/f;
    .locals 7

    const/4 v0, 0x0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "sdk"

    const-string v3, "1.1"

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "test"

    invoke-static {}, Lcom/netease/ad/b/e;->c()Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "app"

    invoke-static {}, Lcom/netease/ad/b/e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "imei"

    invoke-static {}, Lcom/netease/ad/f/e;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    iget-object v1, p0, Lcom/netease/ad/c/g;->c:[Lcom/netease/ad/b/h;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netease/ad/c/g;->c:[Lcom/netease/ad/b/h;

    array-length v1, v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iget-object v4, p0, Lcom/netease/ad/c/g;->c:[Lcom/netease/ad/b/h;

    array-length v4, v4

    if-ge v1, v4, :cond_0

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "id"

    iget-object v6, p0, Lcom/netease/ad/c/g;->c:[Lcom/netease/ad/b/h;

    aget-object v6, v6, v1

    iget-object v6, v6, Lcom/netease/ad/b/h;->a:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "flight_id"

    iget-object v6, p0, Lcom/netease/ad/c/g;->c:[Lcom/netease/ad/b/h;

    aget-object v6, v6, v1

    iget-object v6, v6, Lcom/netease/ad/b/h;->b:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "show"

    iget-object v6, p0, Lcom/netease/ad/c/g;->c:[Lcom/netease/ad/b/h;

    aget-object v6, v6, v1

    iget v6, v6, Lcom/netease/ad/b/h;->c:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "click"

    iget-object v6, p0, Lcom/netease/ad/c/g;->c:[Lcom/netease/ad/b/h;

    aget-object v6, v6, v1

    iget v6, v6, Lcom/netease/ad/b/h;->d:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "data"

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lcom/netease/ad/f;->a:Z

    if-eqz v2, :cond_1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SendStatisticInfoRequester:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    invoke-static {v1}, Lcom/netease/ad/c/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/ad/c/g;->d:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/netease/ad/c/g;->d:Ljava/lang/String;

    if-nez v1, :cond_2

    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    :cond_2
    new-instance v1, Lcom/netease/ad/a/a/f;

    invoke-direct {v1}, Lcom/netease/ad/a/a/f;-><init>()V

    :try_start_1
    iget-object v2, p0, Lcom/netease/ad/c/g;->d:Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netease/ad/a/a/f;->a([B)V

    const-string v2, "http://g1.163.com/madfeedback"

    invoke-virtual {v1, v2}, Lcom/netease/ad/a/a/f;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1
.end method

.method a(Ljava/io/InputStream;)Lcom/netease/ad/e/a;
    .locals 4

    const/4 v3, -0x1

    new-instance v0, Lcom/netease/ad/e/e;

    invoke-direct {v0}, Lcom/netease/ad/e/e;-><init>()V

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    if-eq v2, v3, :cond_1

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    iput v3, v0, Lcom/netease/ad/e/a;->c:I

    invoke-virtual {v0, v1}, Lcom/netease/ad/e/a;->a(Ljava/lang/Exception;)V

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    :try_start_1
    new-instance v2, Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    const-string v2, "result"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    const/4 v1, 0x0

    iput v1, v0, Lcom/netease/ad/e/a;->c:I
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :try_start_2
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "error"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/netease/ad/e/a;->a(Ljava/lang/Exception;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method
