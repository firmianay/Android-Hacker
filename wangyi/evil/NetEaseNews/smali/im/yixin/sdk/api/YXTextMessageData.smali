.class public Lim/yixin/sdk/api/YXTextMessageData;
.super Ljava/lang/Object;

# interfaces
.implements Lim/yixin/sdk/api/m;


# instance fields
.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lim/yixin/sdk/api/YXTextMessageData;->text:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public dataType()Lim/yixin/sdk/api/l;
    .locals 1

    sget-object v0, Lim/yixin/sdk/api/l;->b:Lim/yixin/sdk/api/l;

    return-object v0
.end method

.method public read(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "_yixinTextMessageData_text"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lim/yixin/sdk/api/YXTextMessageData;->text:Ljava/lang/String;

    return-void
.end method

.method public verifyData()Z
    .locals 2

    iget-object v0, p0, Lim/yixin/sdk/api/YXTextMessageData;->text:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lim/yixin/sdk/api/YXTextMessageData;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lim/yixin/sdk/api/YXTextMessageData;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x2800

    if-le v0, v1, :cond_1

    :cond_0
    const-string v0, "Yixin.SDK.YXTextMessageData"

    const-string v1, "text check error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public write(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "_yixinTextMessageData_text"

    iget-object v1, p0, Lim/yixin/sdk/api/YXTextMessageData;->text:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
