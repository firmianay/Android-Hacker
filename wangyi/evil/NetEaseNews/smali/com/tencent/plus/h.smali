.class Lcom/tencent/plus/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tauth/b;


# instance fields
.field final synthetic a:Lcom/tencent/plus/ImageActivity;


# direct methods
.method constructor <init>(Lcom/tencent/plus/ImageActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/plus/h;->a:Lcom/tencent/plus/ImageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(I)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/plus/h;->a:Lcom/tencent/plus/ImageActivity;

    invoke-static {v0}, Lcom/tencent/plus/ImageActivity;->m(Lcom/tencent/plus/ImageActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/plus/h;->a:Lcom/tencent/plus/ImageActivity;

    invoke-static {v0}, Lcom/tencent/plus/ImageActivity;->n(Lcom/tencent/plus/ImageActivity;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/open/e;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/plus/h;->a(I)V

    return-void
.end method

.method public a(Lcom/tencent/open/h;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/plus/h;->a(I)V

    return-void
.end method

.method public a(Ljava/io/IOException;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/plus/h;->a(I)V

    return-void
.end method

.method public a(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/plus/h;->a(I)V

    return-void
.end method

.method public a(Ljava/net/MalformedURLException;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/plus/h;->a(I)V

    return-void
.end method

.method public a(Ljava/net/SocketTimeoutException;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/plus/h;->a(I)V

    return-void
.end method

.method public a(Lorg/apache/http/conn/ConnectTimeoutException;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/plus/h;->a(I)V

    return-void
.end method

.method public a(Lorg/json/JSONException;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/plus/h;->a(I)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;Ljava/lang/Object;)V
    .locals 5

    const/4 v1, -0x1

    :try_start_0
    const-string v0, "ret"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    const-string v0, "nickname"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/plus/h;->a:Lcom/tencent/plus/ImageActivity;

    invoke-static {v2}, Lcom/tencent/plus/ImageActivity;->k(Lcom/tencent/plus/ImageActivity;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/tencent/plus/b;

    invoke-direct {v3, p0, v0}, Lcom/tencent/plus/b;-><init>(Lcom/tencent/plus/h;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/tencent/plus/h;->a:Lcom/tencent/plus/ImageActivity;

    const-string v2, "10659"

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/tencent/plus/ImageActivity;->a(Ljava/lang/String;J)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lcom/tencent/plus/h;->a(I)V

    :cond_0
    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/tencent/plus/h;->a:Lcom/tencent/plus/ImageActivity;

    const-string v2, "10661"

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/tencent/plus/ImageActivity;->a(Ljava/lang/String;J)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
