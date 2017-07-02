.class public Lorg/apache/james/mime4j/message/BodyFactory;
.super Ljava/lang/Object;


# static fields
.field private static final FALLBACK_CHARSET:Ljava/nio/charset/Charset;

.field private static log:Lorg/apache/commons/logging/Log;


# instance fields
.field private storageProvider:Lorg/apache/james/mime4j/storage/StorageProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/james/mime4j/message/BodyFactory;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/message/BodyFactory;->log:Lorg/apache/commons/logging/Log;

    sget-object v0, Lorg/apache/james/mime4j/util/CharsetUtil;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    sput-object v0, Lorg/apache/james/mime4j/message/BodyFactory;->FALLBACK_CHARSET:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/apache/james/mime4j/storage/DefaultStorageProvider;->getInstance()Lorg/apache/james/mime4j/storage/StorageProvider;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/message/BodyFactory;->storageProvider:Lorg/apache/james/mime4j/storage/StorageProvider;

    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/storage/StorageProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    invoke-static {}, Lorg/apache/james/mime4j/storage/DefaultStorageProvider;->getInstance()Lorg/apache/james/mime4j/storage/StorageProvider;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lorg/apache/james/mime4j/message/BodyFactory;->storageProvider:Lorg/apache/james/mime4j/storage/StorageProvider;

    return-void
.end method

.method private static toJavaCharset(Ljava/lang/String;Z)Ljava/nio/charset/Charset;
    .locals 3

    invoke-static {p0}, Lorg/apache/james/mime4j/util/CharsetUtil;->toJavaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/apache/james/mime4j/message/BodyFactory;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/james/mime4j/message/BodyFactory;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MIME charset \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' has no "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "corresponding Java charset. Using "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/apache/james/mime4j/message/BodyFactory;->FALLBACK_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " instead."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    :cond_0
    sget-object v0, Lorg/apache/james/mime4j/message/BodyFactory;->FALLBACK_CHARSET:Ljava/nio/charset/Charset;

    :goto_0
    return-object v0

    :cond_1
    if-eqz p1, :cond_3

    invoke-static {v0}, Lorg/apache/james/mime4j/util/CharsetUtil;->isEncodingSupported(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v0, Lorg/apache/james/mime4j/message/BodyFactory;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lorg/apache/james/mime4j/message/BodyFactory;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MIME charset \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' does not support encoding. Using "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/apache/james/mime4j/message/BodyFactory;->FALLBACK_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " instead."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    :cond_2
    sget-object v0, Lorg/apache/james/mime4j/message/BodyFactory;->FALLBACK_CHARSET:Ljava/nio/charset/Charset;

    goto :goto_0

    :cond_3
    if-nez p1, :cond_5

    invoke-static {v0}, Lorg/apache/james/mime4j/util/CharsetUtil;->isDecodingSupported(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v0, Lorg/apache/james/mime4j/message/BodyFactory;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lorg/apache/james/mime4j/message/BodyFactory;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MIME charset \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' does not support decoding. Using "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/apache/james/mime4j/message/BodyFactory;->FALLBACK_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " instead."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    :cond_4
    sget-object v0, Lorg/apache/james/mime4j/message/BodyFactory;->FALLBACK_CHARSET:Ljava/nio/charset/Charset;

    goto :goto_0

    :cond_5
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public binaryBody(Ljava/io/InputStream;)Lorg/apache/james/mime4j/message/BinaryBody;
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/message/BodyFactory;->storageProvider:Lorg/apache/james/mime4j/storage/StorageProvider;

    invoke-interface {v0, p1}, Lorg/apache/james/mime4j/storage/StorageProvider;->store(Ljava/io/InputStream;)Lorg/apache/james/mime4j/storage/Storage;

    move-result-object v0

    new-instance v1, Lorg/apache/james/mime4j/message/StorageBinaryBody;

    new-instance v2, Lorg/apache/james/mime4j/storage/MultiReferenceStorage;

    invoke-direct {v2, v0}, Lorg/apache/james/mime4j/storage/MultiReferenceStorage;-><init>(Lorg/apache/james/mime4j/storage/Storage;)V

    invoke-direct {v1, v2}, Lorg/apache/james/mime4j/message/StorageBinaryBody;-><init>(Lorg/apache/james/mime4j/storage/MultiReferenceStorage;)V

    return-object v1
.end method

.method public binaryBody(Lorg/apache/james/mime4j/storage/Storage;)Lorg/apache/james/mime4j/message/BinaryBody;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Lorg/apache/james/mime4j/message/StorageBinaryBody;

    new-instance v1, Lorg/apache/james/mime4j/storage/MultiReferenceStorage;

    invoke-direct {v1, p1}, Lorg/apache/james/mime4j/storage/MultiReferenceStorage;-><init>(Lorg/apache/james/mime4j/storage/Storage;)V

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/message/StorageBinaryBody;-><init>(Lorg/apache/james/mime4j/storage/MultiReferenceStorage;)V

    return-object v0
.end method

.method public getStorageProvider()Lorg/apache/james/mime4j/storage/StorageProvider;
    .locals 1

    iget-object v0, p0, Lorg/apache/james/mime4j/message/BodyFactory;->storageProvider:Lorg/apache/james/mime4j/storage/StorageProvider;

    return-object v0
.end method

.method public textBody(Ljava/io/InputStream;)Lorg/apache/james/mime4j/message/TextBody;
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/message/BodyFactory;->storageProvider:Lorg/apache/james/mime4j/storage/StorageProvider;

    invoke-interface {v0, p1}, Lorg/apache/james/mime4j/storage/StorageProvider;->store(Ljava/io/InputStream;)Lorg/apache/james/mime4j/storage/Storage;

    move-result-object v0

    new-instance v1, Lorg/apache/james/mime4j/message/StorageTextBody;

    new-instance v2, Lorg/apache/james/mime4j/storage/MultiReferenceStorage;

    invoke-direct {v2, v0}, Lorg/apache/james/mime4j/storage/MultiReferenceStorage;-><init>(Lorg/apache/james/mime4j/storage/Storage;)V

    sget-object v0, Lorg/apache/james/mime4j/util/CharsetUtil;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v0}, Lorg/apache/james/mime4j/message/StorageTextBody;-><init>(Lorg/apache/james/mime4j/storage/MultiReferenceStorage;Ljava/nio/charset/Charset;)V

    return-object v1
.end method

.method public textBody(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/james/mime4j/message/TextBody;
    .locals 4

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/apache/james/mime4j/message/BodyFactory;->storageProvider:Lorg/apache/james/mime4j/storage/StorageProvider;

    invoke-interface {v0, p1}, Lorg/apache/james/mime4j/storage/StorageProvider;->store(Ljava/io/InputStream;)Lorg/apache/james/mime4j/storage/Storage;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p2, v1}, Lorg/apache/james/mime4j/message/BodyFactory;->toJavaCharset(Ljava/lang/String;Z)Ljava/nio/charset/Charset;

    move-result-object v1

    new-instance v2, Lorg/apache/james/mime4j/message/StorageTextBody;

    new-instance v3, Lorg/apache/james/mime4j/storage/MultiReferenceStorage;

    invoke-direct {v3, v0}, Lorg/apache/james/mime4j/storage/MultiReferenceStorage;-><init>(Lorg/apache/james/mime4j/storage/Storage;)V

    invoke-direct {v2, v3, v1}, Lorg/apache/james/mime4j/message/StorageTextBody;-><init>(Lorg/apache/james/mime4j/storage/MultiReferenceStorage;Ljava/nio/charset/Charset;)V

    return-object v2
.end method

.method public textBody(Ljava/lang/String;)Lorg/apache/james/mime4j/message/TextBody;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Lorg/apache/james/mime4j/message/StringTextBody;

    sget-object v1, Lorg/apache/james/mime4j/util/CharsetUtil;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Lorg/apache/james/mime4j/message/StringTextBody;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method public textBody(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/message/TextBody;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    const/4 v0, 0x1

    invoke-static {p2, v0}, Lorg/apache/james/mime4j/message/BodyFactory;->toJavaCharset(Ljava/lang/String;Z)Ljava/nio/charset/Charset;

    move-result-object v0

    new-instance v1, Lorg/apache/james/mime4j/message/StringTextBody;

    invoke-direct {v1, p1, v0}, Lorg/apache/james/mime4j/message/StringTextBody;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    return-object v1
.end method

.method public textBody(Lorg/apache/james/mime4j/storage/Storage;)Lorg/apache/james/mime4j/message/TextBody;
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Lorg/apache/james/mime4j/message/StorageTextBody;

    new-instance v1, Lorg/apache/james/mime4j/storage/MultiReferenceStorage;

    invoke-direct {v1, p1}, Lorg/apache/james/mime4j/storage/MultiReferenceStorage;-><init>(Lorg/apache/james/mime4j/storage/Storage;)V

    sget-object v2, Lorg/apache/james/mime4j/util/CharsetUtil;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Lorg/apache/james/mime4j/message/StorageTextBody;-><init>(Lorg/apache/james/mime4j/storage/MultiReferenceStorage;Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method public textBody(Lorg/apache/james/mime4j/storage/Storage;Ljava/lang/String;)Lorg/apache/james/mime4j/message/TextBody;
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lorg/apache/james/mime4j/message/BodyFactory;->toJavaCharset(Ljava/lang/String;Z)Ljava/nio/charset/Charset;

    move-result-object v0

    new-instance v1, Lorg/apache/james/mime4j/message/StorageTextBody;

    new-instance v2, Lorg/apache/james/mime4j/storage/MultiReferenceStorage;

    invoke-direct {v2, p1}, Lorg/apache/james/mime4j/storage/MultiReferenceStorage;-><init>(Lorg/apache/james/mime4j/storage/Storage;)V

    invoke-direct {v1, v2, v0}, Lorg/apache/james/mime4j/message/StorageTextBody;-><init>(Lorg/apache/james/mime4j/storage/MultiReferenceStorage;Ljava/nio/charset/Charset;)V

    return-object v1
.end method
