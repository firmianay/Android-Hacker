.class final Lcom/netease/nr/biz/i/a/a/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/netease/nr/base/activity/BaseApplication;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/Map;Lcom/netease/nr/base/activity/BaseApplication;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/i/a/a/l;->a:Ljava/util/Map;

    iput-object p2, p0, Lcom/netease/nr/biz/i/a/a/l;->b:Lcom/netease/nr/base/activity/BaseApplication;

    iput-object p3, p0, Lcom/netease/nr/biz/i/a/a/l;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a/l;->a:Ljava/util/Map;

    invoke-static {v0}, Lcom/netease/util/e/a;->a(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v2

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a/l;->b:Lcom/netease/nr/base/activity/BaseApplication;

    const-string v3, "fake_comment_preferences"

    iget-object v4, p0, Lcom/netease/nr/biz/i/a/a/l;->c:Ljava/lang/String;

    invoke-static {v0, v3, v4, v1}, Lcom/netease/util/g/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_1
    iget-object v1, p0, Lcom/netease/nr/biz/i/a/a/l;->b:Lcom/netease/nr/base/activity/BaseApplication;

    const-string v2, "fake_comment_preferences"

    iget-object v3, p0, Lcom/netease/nr/biz/i/a/a/l;->c:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lcom/netease/util/g/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method
