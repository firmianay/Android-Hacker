.class public Lim/yixin/sdk/api/YXImageMessageData;
.super Ljava/lang/Object;

# interfaces
.implements Lim/yixin/sdk/api/m;


# instance fields
.field public imageData:[B

.field public imagePath:Ljava/lang/String;

.field public imageUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x55

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lim/yixin/sdk/api/YXImageMessageData;->imageData:[B

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lim/yixin/sdk/api/YXImageMessageData;->imageData:[B

    return-void
.end method


# virtual methods
.method public dataType()Lim/yixin/sdk/api/l;
    .locals 1

    sget-object v0, Lim/yixin/sdk/api/l;->c:Lim/yixin/sdk/api/l;

    return-object v0
.end method

.method public read(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "_yixinImageMessageData_imageData"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lim/yixin/sdk/api/YXImageMessageData;->imageData:[B

    const-string v0, "_yixinImageMessageData_imagePath"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lim/yixin/sdk/api/YXImageMessageData;->imagePath:Ljava/lang/String;

    const-string v0, "_yixinImageMessageData_imageUrl"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lim/yixin/sdk/api/YXImageMessageData;->imageUrl:Ljava/lang/String;

    return-void
.end method

.method public verifyData()Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lim/yixin/sdk/api/YXImageMessageData;->imageData:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lim/yixin/sdk/api/YXImageMessageData;->imageData:[B

    array-length v1, v1

    if-nez v1, :cond_3

    :cond_0
    iget-object v1, p0, Lim/yixin/sdk/api/YXImageMessageData;->imagePath:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lim/yixin/sdk/api/YXImageMessageData;->imagePath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    iget-object v1, p0, Lim/yixin/sdk/api/YXImageMessageData;->imageUrl:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lim/yixin/sdk/api/YXImageMessageData;->imageUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const-string v1, "Yixin.SDK.YXImageMessageData"

    const-string v2, "imageData  imagePath imageUrl is blank"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_3
    iget-object v1, p0, Lim/yixin/sdk/api/YXImageMessageData;->imageData:[B

    if-eqz v1, :cond_4

    iget-object v1, p0, Lim/yixin/sdk/api/YXImageMessageData;->imageData:[B

    array-length v1, v1

    const/high16 v2, 0xa00000

    if-le v1, v2, :cond_4

    const-string v1, "Yixin.SDK.YXImageMessageData"

    const-string v2, "imageData check error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lim/yixin/sdk/api/YXImageMessageData;->imagePath:Ljava/lang/String;

    if-eqz v1, :cond_6

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lim/yixin/sdk/api/YXImageMessageData;->imagePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/32 v3, 0xa00000

    cmp-long v1, v1, v3

    if-lez v1, :cond_6

    :cond_5
    const-string v1, "Yixin.SDK.YXImageMessageData"

    const-string v2, "imagePath check error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lim/yixin/sdk/api/YXImageMessageData;->imageUrl:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lim/yixin/sdk/api/YXImageMessageData;->imageUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x2800

    if-le v1, v2, :cond_7

    const-string v1, "Yixin.SDK.YXImageMessageData"

    const-string v2, "imageUrl check error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_7
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public write(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "_yixinImageMessageData_imageData"

    iget-object v1, p0, Lim/yixin/sdk/api/YXImageMessageData;->imageData:[B

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v0, "_yixinImageMessageData_imagePath"

    iget-object v1, p0, Lim/yixin/sdk/api/YXImageMessageData;->imagePath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_yixinImageMessageData_imageUrl"

    iget-object v1, p0, Lim/yixin/sdk/api/YXImageMessageData;->imageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
