.class public Lnet/oauth/OAuth$Problems;
.super Ljava/lang/Object;


# static fields
.field public static final ADDITIONAL_AUTHORIZATION_REQUIRED:Ljava/lang/String; = "additional_authorization_required"

.field public static final CONSUMER_KEY_REFUSED:Ljava/lang/String; = "consumer_key_refused"

.field public static final CONSUMER_KEY_REJECTED:Ljava/lang/String; = "consumer_key_rejected"

.field public static final CONSUMER_KEY_UNKNOWN:Ljava/lang/String; = "consumer_key_unknown"

.field public static final NONCE_USED:Ljava/lang/String; = "nonce_used"

.field public static final OAUTH_ACCEPTABLE_TIMESTAMPS:Ljava/lang/String; = "oauth_acceptable_timestamps"

.field public static final OAUTH_ACCEPTABLE_VERSIONS:Ljava/lang/String; = "oauth_acceptable_versions"

.field public static final OAUTH_PARAMETERS_ABSENT:Ljava/lang/String; = "oauth_parameters_absent"

.field public static final OAUTH_PARAMETERS_REJECTED:Ljava/lang/String; = "oauth_parameters_rejected"

.field public static final OAUTH_PROBLEM_ADVICE:Ljava/lang/String; = "oauth_problem_advice"

.field public static final PARAMETER_ABSENT:Ljava/lang/String; = "parameter_absent"

.field public static final PARAMETER_REJECTED:Ljava/lang/String; = "parameter_rejected"

.field public static final PERMISSION_DENIED:Ljava/lang/String; = "permission_denied"

.field public static final PERMISSION_UNKNOWN:Ljava/lang/String; = "permission_unknown"

.field public static final SIGNATURE_INVALID:Ljava/lang/String; = "signature_invalid"

.field public static final SIGNATURE_METHOD_REJECTED:Ljava/lang/String; = "signature_method_rejected"

.field public static final TIMESTAMP_REFUSED:Ljava/lang/String; = "timestamp_refused"

.field public static final TOKEN_EXPIRED:Ljava/lang/String; = "token_expired"

.field public static final TOKEN_REJECTED:Ljava/lang/String; = "token_rejected"

.field public static final TOKEN_REVOKED:Ljava/lang/String; = "token_revoked"

.field public static final TOKEN_USED:Ljava/lang/String; = "token_used"

.field public static final TO_HTTP_CODE:Ljava/util/Map;

.field public static final USER_REFUSED:Ljava/lang/String; = "user_refused"

.field public static final VERSION_REJECTED:Ljava/lang/String; = "version_rejected"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lnet/oauth/OAuth$Problems;->mapToHttpCode()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lnet/oauth/OAuth$Problems;->TO_HTTP_CODE:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static mapToHttpCode()Ljava/util/Map;
    .locals 5

    new-instance v0, Ljava/lang/Integer;

    const/16 v1, 0x190

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x191

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x1f7

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "version_rejected"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "parameter_absent"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "parameter_rejected"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "timestamp_refused"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "signature_method_rejected"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "nonce_used"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "token_used"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "token_expired"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "token_revoked"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "token_rejected"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "token_not_authorized"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "signature_invalid"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "consumer_key_unknown"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "consumer_key_rejected"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "additional_authorization_required"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "permission_unknown"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "permission_denied"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "user_refused"

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "consumer_key_refused"

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
