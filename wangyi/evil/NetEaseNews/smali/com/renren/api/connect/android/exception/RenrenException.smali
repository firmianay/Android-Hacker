.class public Lcom/renren/api/connect/android/exception/RenrenException;
.super Ljava/lang/Exception;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private errorCode:I

.field private orgResponse:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lcom/renren/api/connect/android/exception/RenrenException;->errorCode:I

    iput-object p3, p0, Lcom/renren/api/connect/android/exception/RenrenException;->orgResponse:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/renren/api/connect/android/exception/RenrenError;)V
    .locals 1

    invoke-virtual {p1}, Lcom/renren/api/connect/android/exception/RenrenError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/renren/api/connect/android/exception/RenrenError;->getErrorCode()I

    move-result v0

    iput v0, p0, Lcom/renren/api/connect/android/exception/RenrenException;->errorCode:I

    invoke-virtual {p1}, Lcom/renren/api/connect/android/exception/RenrenError;->getOrgResponse()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/renren/api/connect/android/exception/RenrenException;->orgResponse:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/renren/api/connect/android/exception/RenrenException;->errorCode:I

    return v0
.end method

.method public getOrgResponse()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/renren/api/connect/android/exception/RenrenException;->orgResponse:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "errorCode:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/renren/api/connect/android/exception/RenrenException;->errorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nerrorMessage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/renren/api/connect/android/exception/RenrenException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\norgResponse:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/renren/api/connect/android/exception/RenrenException;->orgResponse:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
