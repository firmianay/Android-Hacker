.class public Lcom/sun/activation/viewers/TextEditor;
.super Ljava/awt/Panel;

# interfaces
.implements Ljava/awt/event/ActionListener;
.implements Ljavax/activation/CommandObject;


# instance fields
.field private DEBUG:Z

.field private _dh:Ljavax/activation/DataHandler;

.field private button_panel:Ljava/awt/Panel;

.field private data_ins:Ljava/io/InputStream;

.field private fis:Ljava/io/FileInputStream;

.field private panel_gb:Ljava/awt/GridBagLayout;

.field private save_button:Ljava/awt/Button;

.field private text_area:Ljava/awt/TextArea;

.field private text_buffer:Ljava/lang/String;

.field private text_file:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 10

    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v6, 0x1

    invoke-direct {p0}, Ljava/awt/Panel;-><init>()V

    iput-object v0, p0, Lcom/sun/activation/viewers/TextEditor;->text_area:Ljava/awt/TextArea;

    iput-object v0, p0, Lcom/sun/activation/viewers/TextEditor;->panel_gb:Ljava/awt/GridBagLayout;

    iput-object v0, p0, Lcom/sun/activation/viewers/TextEditor;->button_panel:Ljava/awt/Panel;

    iput-object v0, p0, Lcom/sun/activation/viewers/TextEditor;->save_button:Ljava/awt/Button;

    iput-object v0, p0, Lcom/sun/activation/viewers/TextEditor;->text_file:Ljava/io/File;

    iput-object v0, p0, Lcom/sun/activation/viewers/TextEditor;->text_buffer:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/activation/viewers/TextEditor;->data_ins:Ljava/io/InputStream;

    iput-object v0, p0, Lcom/sun/activation/viewers/TextEditor;->fis:Ljava/io/FileInputStream;

    iput-object v0, p0, Lcom/sun/activation/viewers/TextEditor;->_dh:Ljavax/activation/DataHandler;

    iput-boolean v4, p0, Lcom/sun/activation/viewers/TextEditor;->DEBUG:Z

    new-instance v0, Ljava/awt/GridBagLayout;

    invoke-direct {v0}, Ljava/awt/GridBagLayout;-><init>()V

    iput-object v0, p0, Lcom/sun/activation/viewers/TextEditor;->panel_gb:Ljava/awt/GridBagLayout;

    iget-object v0, p0, Lcom/sun/activation/viewers/TextEditor;->panel_gb:Ljava/awt/GridBagLayout;

    invoke-virtual {p0, v0}, Lcom/sun/activation/viewers/TextEditor;->setLayout(Ljava/awt/LayoutManager;)V

    new-instance v0, Ljava/awt/Panel;

    invoke-direct {v0}, Ljava/awt/Panel;-><init>()V

    iput-object v0, p0, Lcom/sun/activation/viewers/TextEditor;->button_panel:Ljava/awt/Panel;

    iget-object v0, p0, Lcom/sun/activation/viewers/TextEditor;->button_panel:Ljava/awt/Panel;

    new-instance v1, Ljava/awt/FlowLayout;

    invoke-direct {v1}, Ljava/awt/FlowLayout;-><init>()V

    invoke-virtual {v0, v1}, Ljava/awt/Panel;->setLayout(Ljava/awt/LayoutManager;)V

    new-instance v0, Ljava/awt/Button;

    const-string v1, "SAVE"

    invoke-direct {v0, v1}, Ljava/awt/Button;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sun/activation/viewers/TextEditor;->save_button:Ljava/awt/Button;

    iget-object v0, p0, Lcom/sun/activation/viewers/TextEditor;->button_panel:Ljava/awt/Panel;

    iget-object v1, p0, Lcom/sun/activation/viewers/TextEditor;->save_button:Ljava/awt/Button;

    invoke-virtual {v0, v1}, Ljava/awt/Panel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    iget-object v2, p0, Lcom/sun/activation/viewers/TextEditor;->button_panel:Ljava/awt/Panel;

    iget-object v3, p0, Lcom/sun/activation/viewers/TextEditor;->panel_gb:Ljava/awt/GridBagLayout;

    move-object v0, p0

    move-object v1, p0

    move v5, v4

    move v7, v6

    move v8, v6

    move v9, v4

    invoke-direct/range {v0 .. v9}, Lcom/sun/activation/viewers/TextEditor;->addGridComponent(Ljava/awt/Container;Ljava/awt/Component;Ljava/awt/GridBagLayout;IIIIII)V

    new-instance v0, Ljava/awt/TextArea;

    const-string v1, "This is text"

    const/16 v2, 0x18

    const/16 v3, 0x50

    invoke-direct {v0, v1, v2, v3, v6}, Ljava/awt/TextArea;-><init>(Ljava/lang/String;III)V

    iput-object v0, p0, Lcom/sun/activation/viewers/TextEditor;->text_area:Ljava/awt/TextArea;

    iget-object v0, p0, Lcom/sun/activation/viewers/TextEditor;->text_area:Ljava/awt/TextArea;

    invoke-virtual {v0, v6}, Ljava/awt/TextArea;->setEditable(Z)V

    iget-object v2, p0, Lcom/sun/activation/viewers/TextEditor;->text_area:Ljava/awt/TextArea;

    iget-object v3, p0, Lcom/sun/activation/viewers/TextEditor;->panel_gb:Ljava/awt/GridBagLayout;

    const/4 v7, 0x2

    move-object v0, p0

    move-object v1, p0

    move v5, v6

    move v8, v6

    move v9, v6

    invoke-direct/range {v0 .. v9}, Lcom/sun/activation/viewers/TextEditor;->addGridComponent(Ljava/awt/Container;Ljava/awt/Component;Ljava/awt/GridBagLayout;IIIIII)V

    iget-object v0, p0, Lcom/sun/activation/viewers/TextEditor;->save_button:Ljava/awt/Button;

    invoke-virtual {v0, p0}, Ljava/awt/Button;->addActionListener(Ljava/awt/event/ActionListener;)V

    return-void
.end method

.method private addGridComponent(Ljava/awt/Container;Ljava/awt/Component;Ljava/awt/GridBagLayout;IIIIII)V
    .locals 3

    new-instance v0, Ljava/awt/GridBagConstraints;

    invoke-direct {v0}, Ljava/awt/GridBagConstraints;-><init>()V

    iput p4, v0, Ljava/awt/GridBagConstraints;->gridx:I

    iput p5, v0, Ljava/awt/GridBagConstraints;->gridy:I

    iput p6, v0, Ljava/awt/GridBagConstraints;->gridwidth:I

    iput p7, v0, Ljava/awt/GridBagConstraints;->gridheight:I

    const/4 v1, 0x1

    iput v1, v0, Ljava/awt/GridBagConstraints;->fill:I

    int-to-double v1, p9

    iput-wide v1, v0, Ljava/awt/GridBagConstraints;->weighty:D

    int-to-double v1, p8

    iput-wide v1, v0, Ljava/awt/GridBagConstraints;->weightx:D

    const/16 v1, 0xa

    iput v1, v0, Ljava/awt/GridBagConstraints;->anchor:I

    invoke-virtual {p3, p2, v0}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    invoke-virtual {p1, p2}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    return-void
.end method

.method private performSaveOperation()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/sun/activation/viewers/TextEditor;->_dh:Ljavax/activation/DataHandler;

    invoke-virtual {v1}, Ljavax/activation/DataHandler;->getOutputStream()Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/sun/activation/viewers/TextEditor;->text_area:Ljava/awt/TextArea;

    invoke-virtual {v1}, Ljava/awt/TextArea;->getText()Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_0

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Invalid outputstream in TextEditor!"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "not saving!"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "TextEditor Save Operation failed with: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 2

    invoke-virtual {p1}, Ljava/awt/event/ActionEvent;->getSource()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/activation/viewers/TextEditor;->save_button:Ljava/awt/Button;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/sun/activation/viewers/TextEditor;->performSaveOperation()V

    :cond_0
    return-void
.end method

.method public addNotify()V
    .locals 0

    invoke-super {p0}, Ljava/awt/Panel;->addNotify()V

    invoke-virtual {p0}, Lcom/sun/activation/viewers/TextEditor;->invalidate()V

    return-void
.end method

.method public getPreferredSize()Ljava/awt/Dimension;
    .locals 3

    iget-object v0, p0, Lcom/sun/activation/viewers/TextEditor;->text_area:Ljava/awt/TextArea;

    const/16 v1, 0x18

    const/16 v2, 0x50

    invoke-virtual {v0, v1, v2}, Ljava/awt/TextArea;->getMinimumSize(II)Ljava/awt/Dimension;

    move-result-object v0

    return-object v0
.end method

.method public setCommandContext(Ljava/lang/String;Ljavax/activation/DataHandler;)V
    .locals 1

    iput-object p2, p0, Lcom/sun/activation/viewers/TextEditor;->_dh:Ljavax/activation/DataHandler;

    iget-object v0, p0, Lcom/sun/activation/viewers/TextEditor;->_dh:Ljavax/activation/DataHandler;

    invoke-virtual {v0}, Ljavax/activation/DataHandler;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/activation/viewers/TextEditor;->setInputStream(Ljava/io/InputStream;)V

    return-void
.end method

.method public setInputStream(Ljava/io/InputStream;)V
    .locals 4

    const/16 v0, 0x400

    new-array v0, v0, [B

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/activation/viewers/TextEditor;->text_buffer:Ljava/lang/String;

    iget-object v0, p0, Lcom/sun/activation/viewers/TextEditor;->text_area:Ljava/awt/TextArea;

    iget-object v1, p0, Lcom/sun/activation/viewers/TextEditor;->text_buffer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/awt/TextArea;->setText(Ljava/lang/String;)V

    return-void
.end method
