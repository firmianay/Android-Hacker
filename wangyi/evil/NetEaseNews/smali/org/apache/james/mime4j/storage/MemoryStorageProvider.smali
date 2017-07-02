.class public Lorg/apache/james/mime4j/storage/MemoryStorageProvider;
.super Lorg/apache/james/mime4j/storage/AbstractStorageProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/james/mime4j/storage/AbstractStorageProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public createStorageOutputStream()Lorg/apache/james/mime4j/storage/StorageOutputStream;
    .locals 2

    new-instance v0, Lorg/apache/james/mime4j/storage/MemoryStorageProvider$MemoryStorageOutputStream;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/storage/MemoryStorageProvider$MemoryStorageOutputStream;-><init>(Lorg/apache/james/mime4j/storage/MemoryStorageProvider$1;)V

    return-object v0
.end method
