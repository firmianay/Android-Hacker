.class Lorg/apache/commons/httpclient/AutoCloseInputStream;
.super Ljava/io/FilterInputStream;


# instance fields
.field private selfClosed:Z

.field private streamOpen:Z

.field private watcher:Lorg/apache/commons/httpclient/ResponseConsumedWatcher;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/commons/httpclient/ResponseConsumedWatcher;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/AutoCloseInputStream;->streamOpen:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/AutoCloseInputStream;->selfClosed:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/AutoCloseInputStream;->watcher:Lorg/apache/commons/httpclient/ResponseConsumedWatcher;

    iput-object p2, p0, Lorg/apache/commons/httpclient/AutoCloseInputStream;->watcher:Lorg/apache/commons/httpclient/ResponseConsumedWatcher;

    return-void
.end method

.method private checkClose(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lorg/apache/commons/httpclient/AutoCloseInputStream;->notifyWatcher()V

    :cond_0
    return-void
.end method

.method private isReadAllowed()Z
    .locals 2

    iget-boolean v0, p0, Lorg/apache/commons/httpclient/AutoCloseInputStream;->streamOpen:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/commons/httpclient/AutoCloseInputStream;->selfClosed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attempted read on closed stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/AutoCloseInputStream;->streamOpen:Z

    return v0
.end method

.method private notifyWatcher()V
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/httpclient/AutoCloseInputStream;->streamOpen:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/AutoCloseInputStream;->streamOpen:Z

    iget-object v0, p0, Lorg/apache/commons/httpclient/AutoCloseInputStream;->watcher:Lorg/apache/commons/httpclient/ResponseConsumedWatcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/httpclient/AutoCloseInputStream;->watcher:Lorg/apache/commons/httpclient/ResponseConsumedWatcher;

    invoke-interface {v0}, Lorg/apache/commons/httpclient/ResponseConsumedWatcher;->responseConsumed()V

    :cond_0
    return-void
.end method


# virtual methods
.method public available()I
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/apache/commons/httpclient/AutoCloseInputStream;->isReadAllowed()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-super {p0}, Ljava/io/FilterInputStream;->available()I

    move-result v0

    :cond_0
    return v0
.end method

.method public close()V
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/httpclient/AutoCloseInputStream;->selfClosed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/AutoCloseInputStream;->selfClosed:Z

    invoke-direct {p0}, Lorg/apache/commons/httpclient/AutoCloseInputStream;->notifyWatcher()V

    :cond_0
    return-void
.end method

.method public read()I
    .locals 2

    const/4 v0, -0x1

    invoke-direct {p0}, Lorg/apache/commons/httpclient/AutoCloseInputStream;->isReadAllowed()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/commons/httpclient/AutoCloseInputStream;->checkClose(I)V

    :cond_0
    return v0
.end method

.method public read([B)I
    .locals 2

    const/4 v0, -0x1

    invoke-direct {p0}, Lorg/apache/commons/httpclient/AutoCloseInputStream;->isReadAllowed()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-super {p0, p1}, Ljava/io/FilterInputStream;->read([B)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/commons/httpclient/AutoCloseInputStream;->checkClose(I)V

    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 2

    const/4 v0, -0x1

    invoke-direct {p0}, Lorg/apache/commons/httpclient/AutoCloseInputStream;->isReadAllowed()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/commons/httpclient/AutoCloseInputStream;->checkClose(I)V

    :cond_0
    return v0
.end method
