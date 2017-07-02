.class Lorg/apache/commons/httpclient/WireLogOutputStream;
.super Ljava/io/FilterOutputStream;


# instance fields
.field private out:Ljava/io/OutputStream;

.field private wire:Lorg/apache/commons/httpclient/Wire;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lorg/apache/commons/httpclient/Wire;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object p1, p0, Lorg/apache/commons/httpclient/WireLogOutputStream;->out:Ljava/io/OutputStream;

    iput-object p2, p0, Lorg/apache/commons/httpclient/WireLogOutputStream;->wire:Lorg/apache/commons/httpclient/Wire;

    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/httpclient/WireLogOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Lorg/apache/commons/httpclient/WireLogOutputStream;->wire:Lorg/apache/commons/httpclient/Wire;

    invoke-virtual {v0, p1}, Lorg/apache/commons/httpclient/Wire;->output(I)V

    return-void
.end method

.method public write([B)V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/httpclient/WireLogOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lorg/apache/commons/httpclient/WireLogOutputStream;->wire:Lorg/apache/commons/httpclient/Wire;

    invoke-virtual {v0, p1}, Lorg/apache/commons/httpclient/Wire;->output([B)V

    return-void
.end method

.method public write([BII)V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/httpclient/WireLogOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    iget-object v0, p0, Lorg/apache/commons/httpclient/WireLogOutputStream;->wire:Lorg/apache/commons/httpclient/Wire;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/httpclient/Wire;->output([BII)V

    return-void
.end method
