.class Lcom/tencent/plus/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tauth/b;


# instance fields
.field final synthetic a:Lcom/tencent/plus/ImageActivity;


# direct methods
.method constructor <init>(Lcom/tencent/plus/ImageActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/plus/i;->a:Lcom/tencent/plus/ImageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(ILjava/lang/String;)V
    .locals 4

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/tencent/plus/i;->a:Lcom/tencent/plus/ImageActivity;

    invoke-static {v0}, Lcom/tencent/plus/ImageActivity;->k(Lcom/tencent/plus/ImageActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/tencent/plus/m;

    invoke-direct {v1, p0}, Lcom/tencent/plus/m;-><init>(Lcom/tencent/plus/i;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    if-nez p2, :cond_1

    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/tencent/plus/i;->a:Lcom/tencent/plus/ImageActivity;

    const-string v1, "\u7f51\u7edc\u6709\u95ee\u9898\u5462\uff0c\u68c0\u67e5\u4e00\u4e0b\u7f51\u7edc\u518d\u91cd\u8bd5\u5427\uff1a\uff09"

    invoke-static {v0, v1, v2}, Lcom/tencent/plus/ImageActivity;->b(Lcom/tencent/plus/ImageActivity;Ljava/lang/String;I)V

    :goto_0
    iget-object v0, p0, Lcom/tencent/plus/i;->a:Lcom/tencent/plus/ImageActivity;

    const-string v1, "10660"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/plus/ImageActivity;->a(Ljava/lang/String;J)V

    const-string v0, "ImageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAvatar failure, errorCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/plus/i;->a:Lcom/tencent/plus/ImageActivity;

    const-string v1, "\u8bbe\u7f6e\u51fa\u9519\u4e86\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55\u518d\u5c1d\u8bd5\u4e0b\u5462\uff1a\uff09"

    invoke-static {v0, v1, v2}, Lcom/tencent/plus/ImageActivity;->b(Lcom/tencent/plus/ImageActivity;Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/plus/i;->a:Lcom/tencent/plus/ImageActivity;

    invoke-static {v0, p2, v2}, Lcom/tencent/plus/ImageActivity;->b(Lcom/tencent/plus/ImageActivity;Ljava/lang/String;I)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/tencent/open/e;Ljava/lang/Object;)V
    .locals 2

    const/4 v0, -0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tencent/plus/i;->a(ILjava/lang/String;)V

    return-void
.end method

.method public a(Lcom/tencent/open/h;Ljava/lang/Object;)V
    .locals 2

    const/4 v0, -0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tencent/plus/i;->a(ILjava/lang/String;)V

    return-void
.end method

.method public a(Ljava/io/IOException;Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, -0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tencent/plus/i;->a(ILjava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tencent/plus/i;->a(ILjava/lang/String;)V

    return-void
.end method

.method public a(Ljava/net/MalformedURLException;Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p1}, Ljava/net/MalformedURLException;->printStackTrace()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tencent/plus/i;->a(ILjava/lang/String;)V

    return-void
.end method

.method public a(Ljava/net/SocketTimeoutException;Ljava/lang/Object;)V
    .locals 2

    const/4 v0, -0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tencent/plus/i;->a(ILjava/lang/String;)V

    return-void
.end method

.method public a(Lorg/apache/http/conn/ConnectTimeoutException;Ljava/lang/Object;)V
    .locals 2

    const/4 v0, -0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tencent/plus/i;->a(ILjava/lang/String;)V

    return-void
.end method

.method public a(Lorg/json/JSONException;Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tencent/plus/i;->a(ILjava/lang/String;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;Ljava/lang/Object;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/tencent/plus/i;->a:Lcom/tencent/plus/ImageActivity;

    invoke-static {v0}, Lcom/tencent/plus/ImageActivity;->k(Lcom/tencent/plus/ImageActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/tencent/plus/n;

    invoke-direct {v1, p0}, Lcom/tencent/plus/n;-><init>(Lcom/tencent/plus/i;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v1, -0x1

    :try_start_0
    const-string v0, "ret"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/plus/i;->a:Lcom/tencent/plus/ImageActivity;

    const-string v1, "\u8bbe\u7f6e\u6210\u529f"

    invoke-static {v0, v1, v4}, Lcom/tencent/plus/ImageActivity;->b(Lcom/tencent/plus/ImageActivity;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/tencent/plus/i;->a:Lcom/tencent/plus/ImageActivity;

    const-string v1, "10658"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/plus/ImageActivity;->a(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/tencent/plus/i;->a:Lcom/tencent/plus/ImageActivity;

    iget-object v1, p0, Lcom/tencent/plus/i;->a:Lcom/tencent/plus/ImageActivity;

    invoke-static {v1}, Lcom/tencent/plus/ImageActivity;->l(Lcom/tencent/plus/ImageActivity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, ""

    iget-object v2, p0, Lcom/tencent/plus/i;->a:Lcom/tencent/plus/ImageActivity;

    invoke-static {v2}, Lcom/tencent/plus/ImageActivity;->l(Lcom/tencent/plus/ImageActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/tencent/plus/i;->a:Lcom/tencent/plus/ImageActivity;

    invoke-static {v2}, Lcom/tencent/plus/ImageActivity;->l(Lcom/tencent/plus/ImageActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/plus/i;->a:Lcom/tencent/plus/ImageActivity;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v4, v1, v5, v5}, Lcom/tencent/plus/ImageActivity;->a(Lcom/tencent/plus/ImageActivity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/plus/i;->a:Lcom/tencent/plus/ImageActivity;

    invoke-static {v0}, Lcom/tencent/plus/ImageActivity;->j(Lcom/tencent/plus/ImageActivity;)V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0, v5}, Lcom/tencent/plus/i;->a(ILjava/lang/String;)V

    goto :goto_1
.end method
