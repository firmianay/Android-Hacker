.class Lcom/renren/api/connect/android/AccessTokenManager$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field final synthetic this$0:Lcom/renren/api/connect/android/AccessTokenManager;

.field private final synthetic val$sp:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/renren/api/connect/android/AccessTokenManager;Landroid/content/SharedPreferences;)V
    .locals 0

    iput-object p1, p0, Lcom/renren/api/connect/android/AccessTokenManager$2;->this$0:Lcom/renren/api/connect/android/AccessTokenManager;

    iput-object p2, p0, Lcom/renren/api/connect/android/AccessTokenManager$2;->val$sp:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/renren/api/connect/android/AccessTokenManager$2;->val$sp:Landroid/content/SharedPreferences;

    const-string v1, "renren_sdk_config_prop_session_key"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/renren/api/connect/android/AccessTokenManager$2;->val$sp:Landroid/content/SharedPreferences;

    const-string v2, "renren_sdk_config_prop_session_secret"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/renren/api/connect/android/AccessTokenManager$2;->val$sp:Landroid/content/SharedPreferences;

    const-string v3, "renren_sdk_config_prop_user_id"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iget-object v4, p0, Lcom/renren/api/connect/android/AccessTokenManager$2;->this$0:Lcom/renren/api/connect/android/AccessTokenManager;

    # getter for: Lcom/renren/api/connect/android/AccessTokenManager;->sessionKey:Ljava/lang/String;
    invoke-static {v4}, Lcom/renren/api/connect/android/AccessTokenManager;->access$0(Lcom/renren/api/connect/android/AccessTokenManager;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/renren/api/connect/android/AccessTokenManager$2;->this$0:Lcom/renren/api/connect/android/AccessTokenManager;

    # getter for: Lcom/renren/api/connect/android/AccessTokenManager;->sessionKey:Ljava/lang/String;
    invoke-static {v4}, Lcom/renren/api/connect/android/AccessTokenManager;->access$0(Lcom/renren/api/connect/android/AccessTokenManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_0
    iget-object v4, p0, Lcom/renren/api/connect/android/AccessTokenManager$2;->this$0:Lcom/renren/api/connect/android/AccessTokenManager;

    # getter for: Lcom/renren/api/connect/android/AccessTokenManager;->sessionSecret:Ljava/lang/String;
    invoke-static {v4}, Lcom/renren/api/connect/android/AccessTokenManager;->access$1(Lcom/renren/api/connect/android/AccessTokenManager;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/renren/api/connect/android/AccessTokenManager$2;->this$0:Lcom/renren/api/connect/android/AccessTokenManager;

    # getter for: Lcom/renren/api/connect/android/AccessTokenManager;->sessionKey:Ljava/lang/String;
    invoke-static {v4}, Lcom/renren/api/connect/android/AccessTokenManager;->access$0(Lcom/renren/api/connect/android/AccessTokenManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_1
    iget-object v4, p0, Lcom/renren/api/connect/android/AccessTokenManager$2;->this$0:Lcom/renren/api/connect/android/AccessTokenManager;

    # getter for: Lcom/renren/api/connect/android/AccessTokenManager;->sessionKey:Ljava/lang/String;
    invoke-static {v4}, Lcom/renren/api/connect/android/AccessTokenManager;->access$0(Lcom/renren/api/connect/android/AccessTokenManager;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    if-nez v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/renren/api/connect/android/AccessTokenManager$2;->this$0:Lcom/renren/api/connect/android/AccessTokenManager;

    # getter for: Lcom/renren/api/connect/android/AccessTokenManager;->sessionSecret:Ljava/lang/String;
    invoke-static {v0}, Lcom/renren/api/connect/android/AccessTokenManager;->access$1(Lcom/renren/api/connect/android/AccessTokenManager;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    if-nez v1, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/renren/api/connect/android/AccessTokenManager$2;->this$0:Lcom/renren/api/connect/android/AccessTokenManager;

    # getter for: Lcom/renren/api/connect/android/AccessTokenManager;->uid:J
    invoke-static {v0}, Lcom/renren/api/connect/android/AccessTokenManager;->access$2(Lcom/renren/api/connect/android/AccessTokenManager;)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/renren/api/connect/android/AccessTokenManager$2;->this$0:Lcom/renren/api/connect/android/AccessTokenManager;

    # invokes: Lcom/renren/api/connect/android/AccessTokenManager;->initSessionKey()V
    invoke-static {v0}, Lcom/renren/api/connect/android/AccessTokenManager;->access$3(Lcom/renren/api/connect/android/AccessTokenManager;)V

    :cond_5
    return-void
.end method
