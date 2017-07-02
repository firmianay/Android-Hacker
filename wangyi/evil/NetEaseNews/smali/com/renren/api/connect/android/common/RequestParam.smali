.class public abstract Lcom/renren/api/connect/android/common/RequestParam;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs checkNullParams([Ljava/lang/String;)V
    .locals 3

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    aget-object v2, p1, v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "required parameter MUST NOT be null"

    new-instance v1, Lcom/renren/api/connect/android/exception/RenrenException;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v0, v0}, Lcom/renren/api/connect/android/exception/RenrenException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public abstract getParams()Landroid/os/Bundle;
.end method
