.class public Lcom/sun/activation/viewers/ImageViewerCanvas;
.super Ljava/awt/Canvas;


# instance fields
.field private canvas_image:Ljava/awt/Image;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/awt/Canvas;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/activation/viewers/ImageViewerCanvas;->canvas_image:Ljava/awt/Image;

    return-void
.end method


# virtual methods
.method public getPreferredSize()Ljava/awt/Dimension;
    .locals 3

    const/16 v1, 0xc8

    iget-object v0, p0, Lcom/sun/activation/viewers/ImageViewerCanvas;->canvas_image:Ljava/awt/Image;

    if-nez v0, :cond_0

    new-instance v0, Ljava/awt/Dimension;

    invoke-direct {v0, v1, v1}, Ljava/awt/Dimension;-><init>(II)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/awt/Dimension;

    iget-object v1, p0, Lcom/sun/activation/viewers/ImageViewerCanvas;->canvas_image:Ljava/awt/Image;

    invoke-virtual {v1, p0}, Ljava/awt/Image;->getWidth(Ljava/awt/image/ImageObserver;)I

    move-result v1

    iget-object v2, p0, Lcom/sun/activation/viewers/ImageViewerCanvas;->canvas_image:Ljava/awt/Image;

    invoke-virtual {v2, p0}, Ljava/awt/Image;->getHeight(Ljava/awt/image/ImageObserver;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/awt/Dimension;-><init>(II)V

    goto :goto_0
.end method

.method public paint(Ljava/awt/Graphics;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sun/activation/viewers/ImageViewerCanvas;->canvas_image:Ljava/awt/Image;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/activation/viewers/ImageViewerCanvas;->canvas_image:Ljava/awt/Image;

    invoke-virtual {p1, v0, v1, v1, p0}, Ljava/awt/Graphics;->drawImage(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)Z

    :cond_0
    return-void
.end method

.method public setImage(Ljava/awt/Image;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/activation/viewers/ImageViewerCanvas;->canvas_image:Ljava/awt/Image;

    invoke-virtual {p0}, Lcom/sun/activation/viewers/ImageViewerCanvas;->invalidate()V

    invoke-virtual {p0}, Lcom/sun/activation/viewers/ImageViewerCanvas;->repaint()V

    return-void
.end method
