.class final Lorg/apache/james/mime4j/storage/MemoryStorageProvider$MemoryStorage;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/james/mime4j/storage/Storage;


# instance fields
.field private final count:I

.field private data:[B


# direct methods
.method public constructor <init>([BI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/james/mime4j/storage/MemoryStorageProvider$MemoryStorage;->data:[B

    iput p2, p0, Lorg/apache/james/mime4j/storage/MemoryStorageProvider$MemoryStorage;->count:I

    return-void
.end method


# virtual methods
.method public delete()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/james/mime4j/storage/MemoryStorageProvider$MemoryStorage;->data:[B

    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 4

    iget-object v0, p0, Lorg/apache/james/mime4j/storage/MemoryStorageProvider$MemoryStorage;->data:[B

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "storage has been deleted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lorg/apache/james/mime4j/storage/MemoryStorageProvider$MemoryStorage;->data:[B

    const/4 v2, 0x0

    iget v3, p0, Lorg/apache/james/mime4j/storage/MemoryStorageProvider$MemoryStorage;->count:I

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object v0
.end method
