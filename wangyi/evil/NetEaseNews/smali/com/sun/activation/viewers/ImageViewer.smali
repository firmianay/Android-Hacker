.class public Lcom/sun/activation/viewers/ImageViewer;
.super Ljava/awt/Panel;

# interfaces
.implements Ljavax/activation/CommandObject;


# instance fields
.field private DEBUG:Z

.field private _dh:Ljavax/activation/DataHandler;

.field private canvas:Lcom/sun/activation/viewers/ImageViewerCanvas;

.field private image:Ljava/awt/Image;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/awt/Panel;-><init>()V

    iput-object v0, p0, Lcom/sun/activation/viewers/ImageViewer;->canvas:Lcom/sun/activation/viewers/ImageViewerCanvas;

    iput-object v0, p0, Lcom/sun/activation/viewers/ImageViewer;->image:Ljava/awt/Image;

    iput-object v0, p0, Lcom/sun/activation/viewers/ImageViewer;->_dh:Ljavax/activation/DataHandler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/activation/viewers/ImageViewer;->DEBUG:Z

    new-instance v0, Lcom/sun/activation/viewers/ImageViewerCanvas;

    invoke-direct {v0}, Lcom/sun/activation/viewers/ImageViewerCanvas;-><init>()V

    iput-object v0, p0, Lcom/sun/activation/viewers/ImageViewer;->canvas:Lcom/sun/activation/viewers/ImageViewerCanvas;

    iget-object v0, p0, Lcom/sun/activation/viewers/ImageViewer;->canvas:Lcom/sun/activation/viewers/ImageViewerCanvas;

    invoke-virtual {p0, v0}, Lcom/sun/activation/viewers/ImageViewer;->add(Ljava/awt/Component;)Ljava/awt/Component;

    return-void
.end method

.method private setInputStream(Ljava/io/InputStream;)V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Ljava/awt/MediaTracker;

    invoke-direct {v0, p0}, Ljava/awt/MediaTracker;-><init>(Ljava/awt/Component;)V

    const/16 v1, 0x400

    new-array v1, v1, [B

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v2, v1, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    invoke-virtual {p0}, Lcom/sun/activation/viewers/ImageViewer;->getToolkit()Ljava/awt/Toolkit;

    move-result-object v1

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/awt/Toolkit;->createImage([B)Ljava/awt/Image;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/activation/viewers/ImageViewer;->image:Ljava/awt/Image;

    iget-object v1, p0, Lcom/sun/activation/viewers/ImageViewer;->image:Ljava/awt/Image;

    invoke-virtual {v0, v1, v4}, Ljava/awt/MediaTracker;->addImage(Ljava/awt/Image;I)V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Ljava/awt/MediaTracker;->waitForID(I)V

    invoke-virtual {v0}, Ljava/awt/MediaTracker;->waitForAll()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/awt/MediaTracker;->statusID(IZ)I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Error occured in image loading = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/awt/MediaTracker;->getErrorsID(I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    iget-object v0, p0, Lcom/sun/activation/viewers/ImageViewer;->canvas:Lcom/sun/activation/viewers/ImageViewerCanvas;

    iget-object v1, p0, Lcom/sun/activation/viewers/ImageViewer;->image:Ljava/awt/Image;

    invoke-virtual {v0, v1}, Lcom/sun/activation/viewers/ImageViewerCanvas;->setImage(Ljava/awt/Image;)V

    iget-boolean v0, p0, Lcom/sun/activation/viewers/ImageViewer;->DEBUG:Z

    if-eqz v0, :cond_2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "calling invalidate"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Error reading image data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addNotify()V
    .locals 0

    invoke-super {p0}, Ljava/awt/Panel;->addNotify()V

    invoke-virtual {p0}, Lcom/sun/activation/viewers/ImageViewer;->invalidate()V

    invoke-virtual {p0}, Lcom/sun/activation/viewers/ImageViewer;->validate()V

    invoke-virtual {p0}, Lcom/sun/activation/viewers/ImageViewer;->doLayout()V

    return-void
.end method

.method public getPreferredSize()Ljava/awt/Dimension;
    .locals 1

    iget-object v0, p0, Lcom/sun/activation/viewers/ImageViewer;->canvas:Lcom/sun/activation/viewers/ImageViewerCanvas;

    invoke-virtual {v0}, Lcom/sun/activation/viewers/ImageViewerCanvas;->getPreferredSize()Ljava/awt/Dimension;

    move-result-object v0

    return-object v0
.end method

.method public setCommandContext(Ljava/lang/String;Ljavax/activation/DataHandler;)V
    .locals 1

    iput-object p2, p0, Lcom/sun/activation/viewers/ImageViewer;->_dh:Ljavax/activation/DataHandler;

    iget-object v0, p0, Lcom/sun/activation/viewers/ImageViewer;->_dh:Ljavax/activation/DataHandler;

    invoke-virtual {v0}, Ljavax/activation/DataHandler;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/activation/viewers/ImageViewer;->setInputStream(Ljava/io/InputStream;)V

    return-void
.end method
