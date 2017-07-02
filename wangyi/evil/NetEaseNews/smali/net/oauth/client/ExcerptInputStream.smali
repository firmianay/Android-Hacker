.class public Lnet/oauth/client/ExcerptInputStream;
.super Ljava/io/BufferedInputStream;


# static fields
.field public static final ELLIPSIS:[B

.field private static final LIMIT:I = 0x400


# instance fields
.field private excerpt:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, " ..."

    invoke-static {v0}, Lnet/oauth/OAuth;->encodeCharacters(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lnet/oauth/client/ExcerptInputStream;->ELLIPSIS:[B

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 5

    const/16 v4, 0x400

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    sget-object v0, Lnet/oauth/client/ExcerptInputStream;->ELLIPSIS:[B

    array-length v0, v0

    add-int/lit16 v0, v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lnet/oauth/client/ExcerptInputStream;->excerpt:[B

    invoke-virtual {p0, v4}, Lnet/oauth/client/ExcerptInputStream;->mark(I)V

    move v0, v1

    :cond_0
    iget-object v2, p0, Lnet/oauth/client/ExcerptInputStream;->excerpt:[B

    rsub-int v3, v0, 0x400

    invoke-virtual {p0, v2, v0, v3}, Lnet/oauth/client/ExcerptInputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    add-int/2addr v0, v2

    if-lt v0, v4, :cond_0

    :cond_1
    if-ne v0, v4, :cond_2

    sget-object v2, Lnet/oauth/client/ExcerptInputStream;->ELLIPSIS:[B

    iget-object v3, p0, Lnet/oauth/client/ExcerptInputStream;->excerpt:[B

    sget-object v4, Lnet/oauth/client/ExcerptInputStream;->ELLIPSIS:[B

    array-length v4, v4

    invoke-static {v2, v1, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    invoke-virtual {p0}, Lnet/oauth/client/ExcerptInputStream;->reset()V

    return-void

    :cond_2
    new-array v2, v0, [B

    iget-object v3, p0, Lnet/oauth/client/ExcerptInputStream;->excerpt:[B

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lnet/oauth/client/ExcerptInputStream;->excerpt:[B

    goto :goto_0
.end method


# virtual methods
.method public getExcerpt()[B
    .locals 1

    iget-object v0, p0, Lnet/oauth/client/ExcerptInputStream;->excerpt:[B

    return-object v0
.end method
