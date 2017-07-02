.class Lcom/tencent/open/x;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tauth/c;


# instance fields
.field final synthetic a:Lcom/tencent/open/k;

.field private b:Lcom/tencent/tauth/c;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/tencent/open/k;Lcom/tencent/tauth/c;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/open/x;->a:Lcom/tencent/open/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/tencent/open/x;->b:Lcom/tencent/tauth/c;

    iput-boolean p3, p0, Lcom/tencent/open/x;->c:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/open/x;->b:Lcom/tencent/tauth/c;

    invoke-interface {v0}, Lcom/tencent/tauth/c;->a()V

    return-void
.end method

.method public a(Lcom/tencent/tauth/f;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/open/x;->b:Lcom/tencent/tauth/c;

    invoke-interface {v0, p1}, Lcom/tencent/tauth/c;->a(Lcom/tencent/tauth/f;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 4

    :try_start_0
    const-string v0, "access_token"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "expires_in"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "openid"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/tencent/open/x;->a:Lcom/tencent/open/k;

    invoke-static {v3}, Lcom/tencent/open/k;->a(Lcom/tencent/open/k;)Lcom/tencent/open/m;

    move-result-object v3

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/tencent/open/x;->a:Lcom/tencent/open/k;

    invoke-static {v3}, Lcom/tencent/open/k;->a(Lcom/tencent/open/k;)Lcom/tencent/open/m;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/tencent/open/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/open/x;->a:Lcom/tencent/open/k;

    invoke-static {v0}, Lcom/tencent/open/k;->a(Lcom/tencent/open/k;)Lcom/tencent/open/m;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/open/m;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/open/x;->a:Lcom/tencent/open/k;

    invoke-static {v0}, Lcom/tencent/open/k;->a(Lcom/tencent/open/k;)Lcom/tencent/open/m;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/tencent/open/t;->b(Lcom/tencent/open/m;Ljava/lang/String;)V

    :cond_0
    const-string v0, "pf"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v1, p0, Lcom/tencent/open/x;->a:Lcom/tencent/open/k;

    invoke-static {v1}, Lcom/tencent/open/k;->a(Lcom/tencent/open/k;)Lcom/tencent/open/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/open/m;->e()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pfStore"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "pf"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_0
    :try_start_2
    iget-boolean v0, p0, Lcom/tencent/open/x;->c:Z

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/tencent/open/x;->b:Lcom/tencent/tauth/c;

    invoke-interface {v0, p1}, Lcom/tencent/tauth/c;->a(Lorg/json/JSONObject;)V

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method
