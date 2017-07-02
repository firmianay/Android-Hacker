.class Lorg/apache/commons/httpclient/WireLogInputStream;
.super Ljava/io/FilterInputStream;


# instance fields
.field private in:Ljava/io/InputStream;

.field private wire:Lorg/apache/commons/httpclient/Wire;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/commons/httpclient/Wire;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p1, p0, Lorg/apache/commons/httpclient/WireLogInputStream;->in:Ljava/io/InputStream;

    iput-object p2, p0, Lorg/apache/commons/httpclient/WireLogInputStream;->wire:Lorg/apache/commons/httpclient/Wire;

    return-void
.end method


# virtual methods
.method public read()I
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/httpclient/WireLogInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lorg/apache/commons/httpclient/WireLogInputStream;->wire:Lorg/apache/commons/httpclient/Wire;

    invoke-virtual {v1, v0}, Lorg/apache/commons/httpclient/Wire;->input(I)V

    :cond_0
    return v0
.end method

.method public read([B)I
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/httpclient/WireLogInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lorg/apache/commons/httpclient/WireLogInputStream;->wire:Lorg/apache/commons/httpclient/Wire;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Lorg/apache/commons/httpclient/Wire;->input([BII)V

    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/httpclient/WireLogInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lorg/apache/commons/httpclient/WireLogInputStream;->wire:Lorg/apache/commons/httpclient/Wire;

    invoke-virtual {v1, p1, p2, v0}, Lorg/apache/commons/httpclient/Wire;->input([BII)V

    :cond_0
    return v0
.end method
