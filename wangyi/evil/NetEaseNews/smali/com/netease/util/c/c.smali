.class Lcom/netease/util/c/c;
.super Ljava/io/FilterInputStream;


# instance fields
.field a:J

.field b:J

.field private c:Lcom/netease/util/cache/j;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;JLcom/netease/util/cache/j;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput-wide p2, p0, Lcom/netease/util/c/c;->b:J

    iput-object p4, p0, Lcom/netease/util/c/c;->c:Lcom/netease/util/cache/j;

    return-void
.end method


# virtual methods
.method public read([BII)I
    .locals 6

    const-wide/16 v3, 0x0

    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v2

    iget-object v0, p0, Lcom/netease/util/c/c;->c:Lcom/netease/util/cache/j;

    if-eqz v0, :cond_2

    if-lez v2, :cond_2

    iget-wide v0, p0, Lcom/netease/util/c/c;->a:J

    cmp-long v0, v0, v3

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/netease/util/c/c;->b:J

    cmp-long v0, v0, v3

    if-gez v0, :cond_0

    mul-int/lit8 v0, v2, 0xa

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/netease/util/c/c;->b:J

    :cond_0
    iget-wide v0, p0, Lcom/netease/util/c/c;->a:J

    int-to-long v3, v2

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/netease/util/c/c;->a:J

    iget-wide v0, p0, Lcom/netease/util/c/c;->a:J

    iget-wide v3, p0, Lcom/netease/util/c/c;->b:J

    cmp-long v3, v0, v3

    if-ltz v3, :cond_1

    iget-wide v0, p0, Lcom/netease/util/c/c;->b:J

    const-wide/16 v3, 0x1

    sub-long/2addr v0, v3

    :cond_1
    iget-object v3, p0, Lcom/netease/util/c/c;->c:Lcom/netease/util/cache/j;

    const-wide/16 v4, 0x64

    mul-long/2addr v0, v4

    iget-wide v4, p0, Lcom/netease/util/c/c;->b:J

    div-long/2addr v0, v4

    long-to-int v0, v0

    invoke-interface {v3, v0}, Lcom/netease/util/cache/j;->a(I)V

    :cond_2
    return v2
.end method

.method public skip(J)J
    .locals 8

    const-wide/16 v4, 0x0

    move-wide v2, v4

    :goto_0
    cmp-long v0, v2, p1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/netease/util/c/c;->in:Ljava/io/InputStream;

    sub-long v6, p1, v2

    invoke-virtual {v0, v6, v7}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    cmp-long v6, v0, v4

    if-nez v6, :cond_2

    invoke-virtual {p0}, Lcom/netease/util/c/c;->read()I

    move-result v0

    if-gez v0, :cond_1

    :cond_0
    return-wide v2

    :cond_1
    const-wide/16 v0, 0x1

    :cond_2
    add-long/2addr v0, v2

    move-wide v2, v0

    goto :goto_0
.end method
