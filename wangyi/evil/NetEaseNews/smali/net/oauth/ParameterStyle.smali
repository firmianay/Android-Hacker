.class public final enum Lnet/oauth/ParameterStyle;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lnet/oauth/ParameterStyle;

.field public static final enum AUTHORIZATION_HEADER:Lnet/oauth/ParameterStyle;

.field public static final enum BODY:Lnet/oauth/ParameterStyle;

.field public static final enum QUERY_STRING:Lnet/oauth/ParameterStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lnet/oauth/ParameterStyle;

    const-string v1, "AUTHORIZATION_HEADER"

    invoke-direct {v0, v1, v2}, Lnet/oauth/ParameterStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/oauth/ParameterStyle;->AUTHORIZATION_HEADER:Lnet/oauth/ParameterStyle;

    new-instance v0, Lnet/oauth/ParameterStyle;

    const-string v1, "BODY"

    invoke-direct {v0, v1, v3}, Lnet/oauth/ParameterStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/oauth/ParameterStyle;->BODY:Lnet/oauth/ParameterStyle;

    new-instance v0, Lnet/oauth/ParameterStyle;

    const-string v1, "QUERY_STRING"

    invoke-direct {v0, v1, v4}, Lnet/oauth/ParameterStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/oauth/ParameterStyle;->QUERY_STRING:Lnet/oauth/ParameterStyle;

    const/4 v0, 0x3

    new-array v0, v0, [Lnet/oauth/ParameterStyle;

    sget-object v1, Lnet/oauth/ParameterStyle;->AUTHORIZATION_HEADER:Lnet/oauth/ParameterStyle;

    aput-object v1, v0, v2

    sget-object v1, Lnet/oauth/ParameterStyle;->BODY:Lnet/oauth/ParameterStyle;

    aput-object v1, v0, v3

    sget-object v1, Lnet/oauth/ParameterStyle;->QUERY_STRING:Lnet/oauth/ParameterStyle;

    aput-object v1, v0, v4

    sput-object v0, Lnet/oauth/ParameterStyle;->$VALUES:[Lnet/oauth/ParameterStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/oauth/ParameterStyle;
    .locals 1

    const-class v0, Lnet/oauth/ParameterStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/oauth/ParameterStyle;

    return-object v0
.end method

.method public static values()[Lnet/oauth/ParameterStyle;
    .locals 1

    sget-object v0, Lnet/oauth/ParameterStyle;->$VALUES:[Lnet/oauth/ParameterStyle;

    invoke-virtual {v0}, [Lnet/oauth/ParameterStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/oauth/ParameterStyle;

    return-object v0
.end method
