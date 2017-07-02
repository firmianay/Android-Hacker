.class public final Lim/yixin/sdk/api/YXMessage;
.super Ljava/lang/Object;


# instance fields
.field public description:Ljava/lang/String;

.field public messageData:Lim/yixin/sdk/api/m;

.field public thumbData:[B

.field public title:Ljava/lang/String;

.field public version:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lim/yixin/sdk/api/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lim/yixin/sdk/api/YXMessage;->messageData:Lim/yixin/sdk/api/m;

    return-void
.end method


# virtual methods
.method final verifyData()Z
    .locals 4

    const/16 v3, 0xc8

    const/4 v1, 0x0

    iget-object v0, p0, Lim/yixin/sdk/api/YXMessage;->thumbData:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lim/yixin/sdk/api/YXMessage;->thumbData:[B

    array-length v0, v0

    const/high16 v2, 0x10000

    if-le v0, v2, :cond_0

    const-string v0, "Yixin.SDK.YXMessage"

    const-string v2, "thumbData check error"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lim/yixin/sdk/api/YXMessage;->thumbData:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lim/yixin/sdk/api/YXMessage;->thumbData:[B

    invoke-static {v0}, Lim/yixin/sdk/a/a;->a([B)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "Yixin.SDK.YXMessage"

    const-string v2, "thumbData is not an image"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lim/yixin/sdk/api/YXMessage;->title:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lim/yixin/sdk/api/YXMessage;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x200

    if-le v0, v2, :cond_2

    const-string v0, "Yixin.SDK.YXMessage"

    const-string v2, "title check error"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lim/yixin/sdk/api/YXMessage;->description:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lim/yixin/sdk/api/YXMessage;->description:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x400

    if-le v0, v2, :cond_3

    const-string v0, "Yixin.SDK.YXMessage"

    const-string v2, "description check error"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lim/yixin/sdk/api/YXMessage;->messageData:Lim/yixin/sdk/api/m;

    if-nez v0, :cond_4

    const-string v0, "Yixin.SDK.YXMessage"

    const-string v2, "messageData check error"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lim/yixin/sdk/api/YXMessage;->messageData:Lim/yixin/sdk/api/m;

    instance-of v0, v0, Lim/yixin/sdk/api/YXImageMessageData;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lim/yixin/sdk/api/YXMessage;->messageData:Lim/yixin/sdk/api/m;

    check-cast v0, Lim/yixin/sdk/api/YXImageMessageData;

    iget-object v0, v0, Lim/yixin/sdk/api/YXImageMessageData;->imageUrl:Ljava/lang/String;

    invoke-static {v0}, Lim/yixin/sdk/a/b;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lim/yixin/sdk/api/YXMessage;->thumbData:[B

    invoke-static {v0}, Lim/yixin/sdk/a/a;->a([B)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-lt v2, v3, :cond_5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ge v0, v3, :cond_6

    :cond_5
    const-string v0, "Yixin.SDK.YXMessage"

    const-string v2, "YXImageMessageData thumbData width/height must greater than 200px when dataType is url"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lim/yixin/sdk/api/YXMessage;->messageData:Lim/yixin/sdk/api/m;

    invoke-interface {v0}, Lim/yixin/sdk/api/m;->verifyData()Z

    move-result v0

    goto/16 :goto_0
.end method
