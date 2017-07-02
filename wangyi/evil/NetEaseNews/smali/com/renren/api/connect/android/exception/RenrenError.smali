.class public Lcom/renren/api/connect/android/exception/RenrenError;
.super Ljava/lang/RuntimeException;


# static fields
.field public static final ERROR_CODE_AUTH_CANCELLED:I = -0x8

.field public static final ERROR_CODE_AUTH_FAILED:I = -0x7

.field public static final ERROR_CODE_ILLEGAL_PARAMETER:I = -0x3

.field public static final ERROR_CODE_NULL_PARAMETER:I = -0x1

.field public static final ERROR_CODE_OPERATION_CANCELLED:I = -0x6

.field public static final ERROR_CODE_PARAMETER_EXTENDS_LIMIT:I = -0x2

.field public static final ERROR_CODE_TOKEN_ERROR:I = -0x4

.field public static final ERROR_CODE_UNABLE_PARSE_RESPONSE:I = -0x5

.field public static final ERROR_CODE_UNKNOWN_ERROR:I = -0x9

.field public static final ERROR_RENREN_INIT_ERROR:I = -0xa

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private errorCode:I

.field private orgResponse:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lcom/renren/api/connect/android/exception/RenrenError;->errorCode:I

    iput-object p3, p0, Lcom/renren/api/connect/android/exception/RenrenError;->orgResponse:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static interpretErrorMessage(ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    sparse-switch p0, :sswitch_data_0

    :goto_0
    return-object p1

    :sswitch_0
    const-string p1, ""

    goto :goto_0

    :sswitch_1
    const-string p1, "\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    goto :goto_0

    :sswitch_2
    const-string p1, "\u6682\u4e0d\u652f\u6301\u6b64\u683c\u5f0f\u7167\u7247\uff0c\u8bf7\u91cd\u65b0\u9009\u62e9"

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x12c -> :sswitch_0
        0x4e85 -> :sswitch_1
        0x4e86 -> :sswitch_2
        0x4e87 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/renren/api/connect/android/exception/RenrenError;->errorCode:I

    return v0
.end method

.method public getOrgResponse()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/renren/api/connect/android/exception/RenrenError;->orgResponse:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "errorCode:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/renren/api/connect/android/exception/RenrenError;->errorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nerrorMessage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/renren/api/connect/android/exception/RenrenError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\norgResponse:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/renren/api/connect/android/exception/RenrenError;->orgResponse:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
