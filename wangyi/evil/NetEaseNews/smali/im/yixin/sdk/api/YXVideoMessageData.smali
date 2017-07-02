.class public Lim/yixin/sdk/api/YXVideoMessageData;
.super Ljava/lang/Object;

# interfaces
.implements Lim/yixin/sdk/api/m;


# instance fields
.field public videoLowBandUrl:Ljava/lang/String;

.field public videoUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dataType()Lim/yixin/sdk/api/l;
    .locals 1

    sget-object v0, Lim/yixin/sdk/api/l;->e:Lim/yixin/sdk/api/l;

    return-object v0
.end method

.method public read(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "_yixinVideoMessageData_videoUrl"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lim/yixin/sdk/api/YXVideoMessageData;->videoUrl:Ljava/lang/String;

    const-string v0, "_yixinVideoMessageData_videoLowBandUrl"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lim/yixin/sdk/api/YXVideoMessageData;->videoLowBandUrl:Ljava/lang/String;

    return-void
.end method

.method public verifyData()Z
    .locals 3

    const/16 v2, 0x2800

    const/4 v0, 0x0

    iget-object v1, p0, Lim/yixin/sdk/api/YXVideoMessageData;->videoUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lim/yixin/sdk/api/YXVideoMessageData;->videoUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    iget-object v1, p0, Lim/yixin/sdk/api/YXVideoMessageData;->videoLowBandUrl:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lim/yixin/sdk/api/YXVideoMessageData;->videoLowBandUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const-string v1, "Yixin.SDK.YXVideoMessageData"

    const-string v2, "videoUrl videoLowBandUrl is blank"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_2
    iget-object v1, p0, Lim/yixin/sdk/api/YXVideoMessageData;->videoUrl:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lim/yixin/sdk/api/YXVideoMessageData;->videoUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_3

    const-string v1, "Yixin.SDK.YXVideoMessageData"

    const-string v2, "videoUrl check error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lim/yixin/sdk/api/YXVideoMessageData;->videoLowBandUrl:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lim/yixin/sdk/api/YXVideoMessageData;->videoLowBandUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_4

    const-string v1, "Yixin.SDK.YXVideoMessageData"

    const-string v2, "videoLowBandUrl check error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public write(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "_yixinVideoMessageData_videoUrl"

    iget-object v1, p0, Lim/yixin/sdk/api/YXVideoMessageData;->videoUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_yixinVideoMessageData_videoLowBandUrl"

    iget-object v1, p0, Lim/yixin/sdk/api/YXVideoMessageData;->videoLowBandUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
