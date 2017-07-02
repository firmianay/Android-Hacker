.class public Lim/yixin/sdk/api/YXFileMessageData;
.super Ljava/lang/Object;

# interfaces
.implements Lim/yixin/sdk/api/m;


# instance fields
.field public fileData:[B

.field public filePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lim/yixin/sdk/api/YXFileMessageData;->fileData:[B

    iput-object v0, p0, Lim/yixin/sdk/api/YXFileMessageData;->filePath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lim/yixin/sdk/api/YXFileMessageData;->filePath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lim/yixin/sdk/api/YXFileMessageData;->fileData:[B

    return-void
.end method


# virtual methods
.method public dataType()Lim/yixin/sdk/api/l;
    .locals 1

    sget-object v0, Lim/yixin/sdk/api/l;->f:Lim/yixin/sdk/api/l;

    return-object v0
.end method

.method public read(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "_yixinFileMessageData_fileData"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lim/yixin/sdk/api/YXFileMessageData;->fileData:[B

    const-string v0, "_yixinFileMessageData_filePath"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lim/yixin/sdk/api/YXFileMessageData;->filePath:Ljava/lang/String;

    return-void
.end method

.method public verifyData()Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lim/yixin/sdk/api/YXFileMessageData;->fileData:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lim/yixin/sdk/api/YXFileMessageData;->fileData:[B

    array-length v1, v1

    if-nez v1, :cond_2

    :cond_0
    iget-object v1, p0, Lim/yixin/sdk/api/YXFileMessageData;->filePath:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lim/yixin/sdk/api/YXFileMessageData;->filePath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const-string v1, "Yixin.SDK.YXFileMessageData"

    const-string v2, "filePath fileData is blank"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_2
    iget-object v1, p0, Lim/yixin/sdk/api/YXFileMessageData;->fileData:[B

    if-eqz v1, :cond_3

    iget-object v1, p0, Lim/yixin/sdk/api/YXFileMessageData;->fileData:[B

    array-length v1, v1

    const/high16 v2, 0xa00000

    if-le v1, v2, :cond_3

    const-string v1, "Yixin.SDK.YXFileMessageData"

    const-string v2, "fileData check error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lim/yixin/sdk/api/YXFileMessageData;->filePath:Ljava/lang/String;

    if-eqz v1, :cond_5

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lim/yixin/sdk/api/YXFileMessageData;->filePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/32 v3, 0xa00000

    cmp-long v1, v1, v3

    if-lez v1, :cond_5

    :cond_4
    const-string v1, "Yixin.SDK.YXFileMessageData"

    const-string v2, "filePath check error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public write(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "_yixinFileMessageData_fileData"

    iget-object v1, p0, Lim/yixin/sdk/api/YXFileMessageData;->fileData:[B

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v0, "_yixinFileMessageData_filePath"

    iget-object v1, p0, Lim/yixin/sdk/api/YXFileMessageData;->filePath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
