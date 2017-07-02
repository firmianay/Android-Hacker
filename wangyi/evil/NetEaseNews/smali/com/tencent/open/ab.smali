.class Lcom/tencent/open/ab;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/os/Bundle;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/tencent/tauth/b;

.field final synthetic f:Ljava/lang/Object;

.field final synthetic g:Lcom/tencent/open/i;


# direct methods
.method constructor <init>(Lcom/tencent/open/i;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/b;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/open/ab;->g:Lcom/tencent/open/i;

    iput-object p2, p0, Lcom/tencent/open/ab;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/tencent/open/ab;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/open/ab;->c:Landroid/os/Bundle;

    iput-object p5, p0, Lcom/tencent/open/ab;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/tencent/open/ab;->e:Lcom/tencent/tauth/b;

    iput-object p7, p0, Lcom/tencent/open/ab;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/tencent/open/ab;->g:Lcom/tencent/open/i;

    iget-object v1, p0, Lcom/tencent/open/ab;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/open/ab;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/open/ab;->c:Landroid/os/Bundle;

    iget-object v4, p0, Lcom/tencent/open/ab;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tencent/open/i;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/open/ab;->e:Lcom/tencent/tauth/b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/open/ab;->e:Lcom/tencent/tauth/b;

    iget-object v2, p0, Lcom/tencent/open/ab;->f:Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Lcom/tencent/tauth/b;->a(Lorg/json/JSONObject;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/tencent/open/h; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/tencent/open/e; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/tencent/open/ab;->e:Lcom/tencent/tauth/b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/open/ab;->e:Lcom/tencent/tauth/b;

    iget-object v2, p0, Lcom/tencent/open/ab;->f:Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Lcom/tencent/tauth/b;->a(Ljava/net/MalformedURLException;Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/tencent/open/ab;->e:Lcom/tencent/tauth/b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/open/ab;->e:Lcom/tencent/tauth/b;

    iget-object v2, p0, Lcom/tencent/open/ab;->f:Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Lcom/tencent/tauth/b;->a(Lorg/apache/http/conn/ConnectTimeoutException;Ljava/lang/Object;)V

    goto :goto_0

    :catch_2
    move-exception v0

    iget-object v1, p0, Lcom/tencent/open/ab;->e:Lcom/tencent/tauth/b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/open/ab;->e:Lcom/tencent/tauth/b;

    iget-object v2, p0, Lcom/tencent/open/ab;->f:Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Lcom/tencent/tauth/b;->a(Ljava/net/SocketTimeoutException;Ljava/lang/Object;)V

    goto :goto_0

    :catch_3
    move-exception v0

    iget-object v1, p0, Lcom/tencent/open/ab;->e:Lcom/tencent/tauth/b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/open/ab;->e:Lcom/tencent/tauth/b;

    iget-object v2, p0, Lcom/tencent/open/ab;->f:Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Lcom/tencent/tauth/b;->a(Lcom/tencent/open/h;Ljava/lang/Object;)V

    goto :goto_0

    :catch_4
    move-exception v0

    iget-object v1, p0, Lcom/tencent/open/ab;->e:Lcom/tencent/tauth/b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/open/ab;->e:Lcom/tencent/tauth/b;

    iget-object v2, p0, Lcom/tencent/open/ab;->f:Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Lcom/tencent/tauth/b;->a(Lcom/tencent/open/e;Ljava/lang/Object;)V

    goto :goto_0

    :catch_5
    move-exception v0

    iget-object v1, p0, Lcom/tencent/open/ab;->e:Lcom/tencent/tauth/b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/open/ab;->e:Lcom/tencent/tauth/b;

    iget-object v2, p0, Lcom/tencent/open/ab;->f:Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Lcom/tencent/tauth/b;->a(Ljava/io/IOException;Ljava/lang/Object;)V

    goto :goto_0

    :catch_6
    move-exception v0

    iget-object v1, p0, Lcom/tencent/open/ab;->e:Lcom/tencent/tauth/b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/open/ab;->e:Lcom/tencent/tauth/b;

    iget-object v2, p0, Lcom/tencent/open/ab;->f:Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Lcom/tencent/tauth/b;->a(Lorg/json/JSONException;Ljava/lang/Object;)V

    goto :goto_0

    :catch_7
    move-exception v0

    iget-object v1, p0, Lcom/tencent/open/ab;->e:Lcom/tencent/tauth/b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/open/ab;->e:Lcom/tencent/tauth/b;

    iget-object v2, p0, Lcom/tencent/open/ab;->f:Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Lcom/tencent/tauth/b;->a(Ljava/lang/Exception;Ljava/lang/Object;)V

    goto :goto_0
.end method
