.class public Lcom/sun/activation/viewers/TextViewer;
.super Ljava/awt/Panel;

# interfaces
.implements Ljavax/activation/CommandObject;


# instance fields
.field private DEBUG:Z

.field private _dh:Ljavax/activation/DataHandler;

.field private text_area:Ljava/awt/TextArea;

.field private text_buffer:Ljava/lang/String;

.field private text_file:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/awt/Panel;-><init>()V

    iput-object v0, p0, Lcom/sun/activation/viewers/TextViewer;->text_area:Ljava/awt/TextArea;

    iput-object v0, p0, Lcom/sun/activation/viewers/TextViewer;->text_file:Ljava/io/File;

    iput-object v0, p0, Lcom/sun/activation/viewers/TextViewer;->text_buffer:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/activation/viewers/TextViewer;->_dh:Ljavax/activation/DataHandler;

    iput-boolean v5, p0, Lcom/sun/activation/viewers/TextViewer;->DEBUG:Z

    new-instance v0, Ljava/awt/GridLayout;

    invoke-direct {v0, v4, v4}, Ljava/awt/GridLayout;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/sun/activation/viewers/TextViewer;->setLayout(Ljava/awt/LayoutManager;)V

    new-instance v0, Ljava/awt/TextArea;

    const-string v1, ""

    const/16 v2, 0x18

    const/16 v3, 0x50

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/awt/TextArea;-><init>(Ljava/lang/String;III)V

    iput-object v0, p0, Lcom/sun/activation/viewers/TextViewer;->text_area:Ljava/awt/TextArea;

    iget-object v0, p0, Lcom/sun/activation/viewers/TextViewer;->text_area:Ljava/awt/TextArea;

    invoke-virtual {v0, v5}, Ljava/awt/TextArea;->setEditable(Z)V

    iget-object v0, p0, Lcom/sun/activation/viewers/TextViewer;->text_area:Ljava/awt/TextArea;

    invoke-virtual {p0, v0}, Lcom/sun/activation/viewers/TextViewer;->add(Ljava/awt/Component;)Ljava/awt/Component;

    return-void
.end method


# virtual methods
.method public addNotify()V
    .locals 0

    invoke-super {p0}, Ljava/awt/Panel;->addNotify()V

    invoke-virtual {p0}, Lcom/sun/activation/viewers/TextViewer;->invalidate()V

    return-void
.end method

.method public getPreferredSize()Ljava/awt/Dimension;
    .locals 3

    iget-object v0, p0, Lcom/sun/activation/viewers/TextViewer;->text_area:Ljava/awt/TextArea;

    const/16 v1, 0x18

    const/16 v2, 0x50

    invoke-virtual {v0, v1, v2}, Ljava/awt/TextArea;->getMinimumSize(II)Ljava/awt/Dimension;

    move-result-object v0

    return-object v0
.end method

.method public setCommandContext(Ljava/lang/String;Ljavax/activation/DataHandler;)V
    .locals 1

    iput-object p2, p0, Lcom/sun/activation/viewers/TextViewer;->_dh:Ljavax/activation/DataHandler;

    iget-object v0, p0, Lcom/sun/activation/viewers/TextViewer;->_dh:Ljavax/activation/DataHandler;

    invoke-virtual {v0}, Ljavax/activation/DataHandler;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/activation/viewers/TextViewer;->setInputStream(Ljava/io/InputStream;)V

    return-void
.end method

.method public setInputStream(Ljava/io/InputStream;)V
    .locals 4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    new-array v1, v1, [B

    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/activation/viewers/TextViewer;->text_buffer:Ljava/lang/String;

    iget-object v0, p0, Lcom/sun/activation/viewers/TextViewer;->text_area:Ljava/awt/TextArea;

    iget-object v1, p0, Lcom/sun/activation/viewers/TextViewer;->text_buffer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/awt/TextArea;->setText(Ljava/lang/String;)V

    return-void
.end method
