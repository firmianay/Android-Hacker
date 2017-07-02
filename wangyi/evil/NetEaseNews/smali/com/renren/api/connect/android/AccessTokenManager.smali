.class Lcom/renren/api/connect/android/AccessTokenManager;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field private static final KEY_ACCESS_TOKEN:Ljava/lang/String; = "renren_token_manager_access_token"

.field private static final KEY_SESSION_KEY:Ljava/lang/String; = "renren_token_manager_session_key"

.field private static final KEY_SESSION_KEY_EXPIRE_TIME:Ljava/lang/String; = "renren_token_manager_session_key_expire_time"

.field private static final KEY_SESSION_SECRET:Ljava/lang/String; = "renren_token_manager_session_secret"

.field private static final KEY_UID:Ljava/lang/String; = "renren_token_manager_user_id"

.field private static final ONE_HOUR:J = 0x36ee80L

.field private static final RENREN_SDK_CONFIG:Ljava/lang/String; = "renren_sdk_config"

.field private static final RENREN_SDK_CONFIG_PROP_ACCESS_TOKEN:Ljava/lang/String; = "renren_sdk_config_prop_access_token"

.field private static final RENREN_SDK_CONFIG_PROP_CREATE_TIME:Ljava/lang/String; = "renren_sdk_config_prop_create_time"

.field private static final RENREN_SDK_CONFIG_PROP_EXPIRE_SECONDS:Ljava/lang/String; = "renren_sdk_config_prop_expire_secends"

.field private static final RENREN_SDK_CONFIG_PROP_SESSION_CREATE_TIME:Ljava/lang/String; = "renren_sdk_config_prop_session_create_time"

.field private static final RENREN_SDK_CONFIG_PROP_SESSION_KEY:Ljava/lang/String; = "renren_sdk_config_prop_session_key"

.field private static final RENREN_SDK_CONFIG_PROP_SESSION_SECRET:Ljava/lang/String; = "renren_sdk_config_prop_session_secret"

.field private static final RENREN_SDK_CONFIG_PROP_USER_ID:Ljava/lang/String; = "renren_sdk_config_prop_user_id"

.field private static final SESSION_KEY_URL:Ljava/lang/String; = "http://graph.renren.com/renren_api/session_key"


# instance fields
.field private accessToken:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private expireTime:J

.field private sessionKey:Ljava/lang/String;

.field private sessionSecret:Ljava/lang/String;

.field private uid:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/renren/api/connect/android/AccessTokenManager$1;

    invoke-direct {v0}, Lcom/renren/api/connect/android/AccessTokenManager$1;-><init>()V

    sput-object v0, Lcom/renren/api/connect/android/AccessTokenManager;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/renren/api/connect/android/AccessTokenManager;->accessToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/renren/api/connect/android/AccessTokenManager;->sessionSecret:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/renren/api/connect/android/AccessTokenManager;->expireTime:J

    iput-object p1, p0, Lcom/renren/api/connect/android/AccessTokenManager;->context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/renren/api/connect/android/AccessTokenManager;->compareWithConfig()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/renren/api/connect/android/AccessTokenManager;->accessToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/renren/api/connect/android/AccessTokenManager;->sessionSecret:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/renren/api/connect/android/AccessTokenManager;->expireTime:J

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v1, "renren_token_manager_access_token"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/renren/api/connect/android/AccessTokenManager;->accessToken:Ljava/lang/String;

    const-string v1, "renren_token_manager_session_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/renren/api/connect/android/AccessTokenManager;->sessionKey:Ljava/lang/String;

    const-string v1, "renren_token_manager_session_secret"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/renren/api/connect/android/AccessTokenManager;->sessionSecret:Ljava/lang/String;

    const-string v1, "renren_token_manager_session_key_expire_time"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/renren/api/connect/android/AccessTokenManager;->expireTime:J

    const-string v1, "renren_token_manager_user_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/renren/api/connect/android/AccessTokenManager;->uid:J

    :cond_0
    invoke-direct {p0}, Lcom/renren/api/connect/android/AccessTokenManager;->compareWithConfig()V

    return-void
.end method

.method static synthetic access$0(Lcom/renren/api/connect/android/AccessTokenManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/renren/api/connect/android/AccessTokenManager;->sessionKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/renren/api/connect/android/AccessTokenManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/renren/api/connect/android/AccessTokenManager;->sessionSecret:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/renren/api/connect/android/AccessTokenManager;)J
    .locals 2

    iget-wide v0, p0, Lcom/renren/api/connect/android/AccessTokenManager;->uid:J

    return-wide v0
.end method

.method static synthetic access$3(Lcom/renren/api/connect/android/AccessTokenManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/renren/api/connect/android/AccessTokenManager;->initSessionKey()V

    return-void
.end method

.method private clearSessionParams()V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/renren/api/connect/android/AccessTokenManager;->context:Landroid/content/Context;

    const-string v1, "renren_sdk_config"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "renren_sdk_config_prop_session_key"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "renren_sdk_config_prop_session_secret"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "renren_sdk_config_prop_expire_secends"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "renren_sdk_config_prop_session_create_time"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "renren_sdk_config_prop_user_id"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iput-object v3, p0, Lcom/renren/api/connect/android/AccessTokenManager;->sessionKey:Ljava/lang/String;

    iput-object v3, p0, Lcom/renren/api/connect/android/AccessTokenManager;->sessionSecret:Ljava/lang/String;

    iput-wide v4, p0, Lcom/renren/api/connect/android/AccessTokenManager;->expireTime:J

    iput-wide v4, p0, Lcom/renren/api/connect/android/AccessTokenManager;->uid:J

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private compareWithConfig()V
    .locals 3

    iget-object v0, p0, Lcom/renren/api/connect/android/AccessTokenManager;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/renren/api/connect/android/AccessTokenManager;->context:Landroid/content/Context;

    const-string v1, "renren_sdk_config"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Lcom/renren/api/connect/android/AccessTokenManager$2;

    invoke-direct {v1, p0, v0}, Lcom/renren/api/connect/android/AccessTokenManager$2;-><init>(Lcom/renren/api/connect/android/AccessTokenManager;Landroid/content/SharedPreferences;)V

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    goto :goto_0
.end method

.method private exchangeSessionKey(Ljava/lang/String;)V
    .locals 9

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "oauth_token"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "http://graph.renren.com/renren_api/session_key"

    const-string v2, "POST"

    invoke-static {v1, v2, v0}, Lcom/renren/api/connect/android/Util;->openUrl(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "error"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/renren/api/connect/android/exception/RenrenError;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/renren/api/connect/android/exception/RenrenError;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    :try_start_1
    const-string v0, "renren_token"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "session_key"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/renren/api/connect/android/AccessTokenManager;->sessionKey:Ljava/lang/String;

    const-string v0, "renren_token"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "session_secret"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/renren/api/connect/android/AccessTokenManager;->sessionSecret:Ljava/lang/String;

    const-string v0, "user"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/renren/api/connect/android/AccessTokenManager;->uid:J

    const-string v0, "renren_token"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "expires_in"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v5, v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    add-long v0, v3, v5

    iput-wide v0, p0, Lcom/renren/api/connect/android/AccessTokenManager;->expireTime:J

    iget-object v1, p0, Lcom/renren/api/connect/android/AccessTokenManager;->sessionKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/renren/api/connect/android/AccessTokenManager;->sessionSecret:Ljava/lang/String;

    iget-wide v7, p0, Lcom/renren/api/connect/android/AccessTokenManager;->uid:J

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/renren/api/connect/android/AccessTokenManager;->storeSessionParams(Ljava/lang/String;Ljava/lang/String;JJJ)V

    const-string v0, "Renren-SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "---login success sessionKey:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/renren/api/connect/android/AccessTokenManager;->sessionKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " expires:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sessionSecret:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/renren/api/connect/android/AccessTokenManager;->sessionSecret:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/renren/api/connect/android/AccessTokenManager;->uid:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private declared-synchronized initSessionKey()V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/renren/api/connect/android/AccessTokenManager;->context:Landroid/content/Context;

    const-string v1, "renren_sdk_config"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "renren_sdk_config_prop_session_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/renren/api/connect/android/AccessTokenManager;->sessionKey:Ljava/lang/String;

    const-string v1, "renren_sdk_config_prop_session_secret"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/renren/api/connect/android/AccessTokenManager;->sessionSecret:Ljava/lang/String;

    const-string v1, "renren_sdk_config_prop_user_id"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/renren/api/connect/android/AccessTokenManager;->uid:J

    const-string v1, "renren_sdk_config_prop_expire_secends"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    const-string v3, "renren_sdk_config_prop_session_create_time"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    add-long v0, v3, v1

    iput-wide v0, p0, Lcom/renren/api/connect/android/AccessTokenManager;->expireTime:J

    iget-wide v0, p0, Lcom/renren/api/connect/android/AccessTokenManager;->expireTime:J

    cmp-long v0, v0, v5

    if-gez v0, :cond_0

    invoke-direct {p0}, Lcom/renren/api/connect/android/AccessTokenManager;->clearSessionParams()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/renren/api/connect/android/AccessTokenManager;->sessionKey:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/renren/api/connect/android/AccessTokenManager;->sessionSecret:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/renren/api/connect/android/AccessTokenManager;->expireTime:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/renren/api/connect/android/AccessTokenManager;->uid:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private restoreAccessToken()Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/renren/api/connect/android/AccessTokenManager;->context:Landroid/content/Context;

    const-string v2, "renren_sdk_config"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v1, "renren_sdk_config_prop_access_token"

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string v3, "renren_sdk_config_prop_create_time"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-string v4, "\\."

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long/2addr v2, v4

    const-wide/32 v4, 0x36ee80

    sub-long v4, v6, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    invoke-virtual {p0}, Lcom/renren/api/connect/android/AccessTokenManager;->clearPersistSession()V

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private storeAccessToken(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/renren/api/connect/android/AccessTokenManager;->context:Landroid/content/Context;

    const-string v1, "renren_sdk_config"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string v1, "renren_sdk_config_prop_access_token"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "renren_sdk_config_prop_create_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/renren/api/connect/android/AccessTokenManager;->clearPersistSession()V

    goto :goto_0
.end method

.method private storeSessionParams(Ljava/lang/String;Ljava/lang/String;JJJ)V
    .locals 3

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/renren/api/connect/android/AccessTokenManager;->clearPersistSession()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/renren/api/connect/android/AccessTokenManager;->context:Landroid/content/Context;

    const-string v1, "renren_sdk_config"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "renren_sdk_config_prop_session_key"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "renren_sdk_config_prop_session_secret"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "renren_sdk_config_prop_expire_secends"

    invoke-interface {v0, v1, p5, p6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v1, "renren_sdk_config_prop_session_create_time"

    invoke-interface {v0, v1, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v1, "renren_sdk_config_prop_user_id"

    invoke-interface {v0, v1, p7, p8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private updateAccessToken(Ljava/lang/String;Z)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/renren/api/connect/android/AccessTokenManager;->accessToken:Ljava/lang/String;

    :try_start_0
    invoke-direct {p0}, Lcom/renren/api/connect/android/AccessTokenManager;->initSessionKey()V

    iget-object v0, p0, Lcom/renren/api/connect/android/AccessTokenManager;->sessionKey:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/renren/api/connect/android/AccessTokenManager;->sessionSecret:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/renren/api/connect/android/AccessTokenManager;->expireTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    :cond_2
    invoke-direct {p0, p1}, Lcom/renren/api/connect/android/AccessTokenManager;->exchangeSessionKey(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    if-eqz p2, :cond_4

    invoke-direct {p0, p1}, Lcom/renren/api/connect/android/AccessTokenManager;->storeAccessToken(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p0}, Lcom/renren/api/connect/android/AccessTokenManager;->clearPersistSession()V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/renren/api/connect/android/AccessTokenManager;->clearPersistSession()V

    goto :goto_0
.end method


# virtual methods
.method clearPersistSession()V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/renren/api/connect/android/AccessTokenManager;->context:Landroid/content/Context;

    const-string v1, "renren_sdk_config"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "renren_sdk_config_prop_access_token"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "renren_sdk_config_prop_create_time"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "renren_sdk_config_prop_session_key"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "renren_sdk_config_prop_session_secret"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "renren_sdk_config_prop_expire_secends"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "renren_sdk_config_prop_user_id"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iput-object v3, p0, Lcom/renren/api/connect/android/AccessTokenManager;->accessToken:Ljava/lang/String;

    iput-object v3, p0, Lcom/renren/api/connect/android/AccessTokenManager;->sessionKey:Ljava/lang/String;

    iput-object v3, p0, Lcom/renren/api/connect/android/AccessTokenManager;->sessionSecret:Ljava/lang/String;

    iput-wide v4, p0, Lcom/renren/api/connect/android/AccessTokenManager;->expireTime:J

    iput-wide v4, p0, Lcom/renren/api/connect/android/AccessTokenManager;->uid:J

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method getAccessToken()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/renren/api/connect/android/AccessTokenManager;->restoreAccessToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/renren/api/connect/android/AccessTokenManager;->accessToken:Ljava/lang/String;

    iget-object v0, p0, Lcom/renren/api/connect/android/AccessTokenManager;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method getSessionKey()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/renren/api/connect/android/AccessTokenManager;->sessionKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/renren/api/connect/android/AccessTokenManager;->sessionSecret:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/renren/api/connect/android/AccessTokenManager;->initSessionKey()V

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/renren/api/connect/android/AccessTokenManager;->expireTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    invoke-direct {p0}, Lcom/renren/api/connect/android/AccessTokenManager;->clearSessionParams()V

    :cond_2
    iget-object v0, p0, Lcom/renren/api/connect/android/AccessTokenManager;->sessionKey:Ljava/lang/String;

    return-object v0
.end method

.method getSessionSecret()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/renren/api/connect/android/AccessTokenManager;->sessionKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/renren/api/connect/android/AccessTokenManager;->sessionSecret:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/renren/api/connect/android/AccessTokenManager;->initSessionKey()V

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/renren/api/connect/android/AccessTokenManager;->expireTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    invoke-direct {p0}, Lcom/renren/api/connect/android/AccessTokenManager;->clearSessionParams()V

    :cond_2
    iget-object v0, p0, Lcom/renren/api/connect/android/AccessTokenManager;->sessionSecret:Ljava/lang/String;

    return-object v0
.end method

.method getUid()J
    .locals 2

    iget-wide v0, p0, Lcom/renren/api/connect/android/AccessTokenManager;->uid:J

    return-wide v0
.end method

.method public isSessionKeyValid()Z
    .locals 5

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/renren/api/connect/android/AccessTokenManager;->sessionKey:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/renren/api/connect/android/AccessTokenManager;->sessionSecret:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/renren/api/connect/android/AccessTokenManager;->expireTime:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/renren/api/connect/android/AccessTokenManager;->initSessionKey()V

    iget-object v1, p0, Lcom/renren/api/connect/android/AccessTokenManager;->sessionKey:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/renren/api/connect/android/AccessTokenManager;->sessionSecret:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/renren/api/connect/android/AccessTokenManager;->expireTime:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method restoreSessionKey()V
    .locals 4

    invoke-direct {p0}, Lcom/renren/api/connect/android/AccessTokenManager;->restoreAccessToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/renren/api/connect/android/AccessTokenManager;->accessToken:Ljava/lang/String;

    iget-object v0, p0, Lcom/renren/api/connect/android/AccessTokenManager;->accessToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/renren/api/connect/android/AccessTokenManager;->initSessionKey()V

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/renren/api/connect/android/AccessTokenManager;->initSessionKey()V

    iget-object v0, p0, Lcom/renren/api/connect/android/AccessTokenManager;->sessionKey:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/renren/api/connect/android/AccessTokenManager;->sessionSecret:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/renren/api/connect/android/AccessTokenManager;->expireTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/renren/api/connect/android/AccessTokenManager;->accessToken:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/renren/api/connect/android/AccessTokenManager;->exchangeSessionKey(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p0}, Lcom/renren/api/connect/android/AccessTokenManager;->clearPersistSession()V

    goto :goto_0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/renren/api/connect/android/AccessTokenManager;->context:Landroid/content/Context;

    return-void
.end method

.method updateAccessToken(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/renren/api/connect/android/AccessTokenManager;->updateAccessToken(Ljava/lang/String;Z)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    const-wide/16 v4, 0x0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/renren/api/connect/android/AccessTokenManager;->accessToken:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "renren_token_manager_access_token"

    iget-object v2, p0, Lcom/renren/api/connect/android/AccessTokenManager;->accessToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/renren/api/connect/android/AccessTokenManager;->sessionKey:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "renren_token_manager_session_key"

    iget-object v2, p0, Lcom/renren/api/connect/android/AccessTokenManager;->sessionKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/renren/api/connect/android/AccessTokenManager;->sessionSecret:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, "renren_token_manager_session_secret"

    iget-object v2, p0, Lcom/renren/api/connect/android/AccessTokenManager;->sessionSecret:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-wide v1, p0, Lcom/renren/api/connect/android/AccessTokenManager;->expireTime:J

    cmp-long v1, v1, v4

    if-eqz v1, :cond_3

    const-string v1, "renren_token_manager_session_key_expire_time"

    iget-wide v2, p0, Lcom/renren/api/connect/android/AccessTokenManager;->expireTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_3
    iget-wide v1, p0, Lcom/renren/api/connect/android/AccessTokenManager;->uid:J

    cmp-long v1, v1, v4

    if-eqz v1, :cond_4

    const-string v1, "renren_token_manager_user_id"

    iget-wide v2, p0, Lcom/renren/api/connect/android/AccessTokenManager;->uid:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_4
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
