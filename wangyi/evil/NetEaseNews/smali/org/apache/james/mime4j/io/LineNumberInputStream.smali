.class public Lorg/apache/james/mime4j/io/LineNumberInputStream;
.super Ljava/io/FilterInputStream;

# interfaces
.implements Lorg/apache/james/mime4j/io/LineNumberSource;


# instance fields
.field private lineNumber:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/io/LineNumberInputStream;->lineNumber:I

    return-void
.end method


# virtual methods
.method public getLineNumber()I
    .locals 1

    iget v0, p0, Lorg/apache/james/mime4j/io/LineNumberInputStream;->lineNumber:I

    return v0
.end method

.method public read()I
    .locals 2

    iget-object v0, p0, Lorg/apache/james/mime4j/io/LineNumberInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    iget v1, p0, Lorg/apache/james/mime4j/io/LineNumberInputStream;->lineNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/james/mime4j/io/LineNumberInputStream;->lineNumber:I

    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 4

    iget-object v0, p0, Lorg/apache/james/mime4j/io/LineNumberInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    move v0, p2

    :goto_0
    add-int v2, p2, v1

    if-ge v0, v2, :cond_1

    aget-byte v2, p1, v0

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    iget v2, p0, Lorg/apache/james/mime4j/io/LineNumberInputStream;->lineNumber:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/james/mime4j/io/LineNumberInputStream;->lineNumber:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method
