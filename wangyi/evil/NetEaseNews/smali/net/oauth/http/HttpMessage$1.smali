.class synthetic Lnet/oauth/http/HttpMessage$1;
.super Ljava/lang/Object;


# static fields
.field static final synthetic $SwitchMap$net$oauth$ParameterStyle:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lnet/oauth/ParameterStyle;->values()[Lnet/oauth/ParameterStyle;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lnet/oauth/http/HttpMessage$1;->$SwitchMap$net$oauth$ParameterStyle:[I

    :try_start_0
    sget-object v0, Lnet/oauth/http/HttpMessage$1;->$SwitchMap$net$oauth$ParameterStyle:[I

    sget-object v1, Lnet/oauth/ParameterStyle;->QUERY_STRING:Lnet/oauth/ParameterStyle;

    invoke-virtual {v1}, Lnet/oauth/ParameterStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v0, Lnet/oauth/http/HttpMessage$1;->$SwitchMap$net$oauth$ParameterStyle:[I

    sget-object v1, Lnet/oauth/ParameterStyle;->BODY:Lnet/oauth/ParameterStyle;

    invoke-virtual {v1}, Lnet/oauth/ParameterStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v0, Lnet/oauth/http/HttpMessage$1;->$SwitchMap$net$oauth$ParameterStyle:[I

    sget-object v1, Lnet/oauth/ParameterStyle;->AUTHORIZATION_HEADER:Lnet/oauth/ParameterStyle;

    invoke-virtual {v1}, Lnet/oauth/ParameterStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method
