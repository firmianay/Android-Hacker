.class Lcom/tencent/a/a/n;
.super Ljava/lang/Object;


# static fields
.field private static a:[I

.field private static b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x100

    new-array v0, v1, [I

    sput-object v0, Lcom/tencent/a/a/n;->a:[I

    new-array v0, v1, [I

    sput-object v0, Lcom/tencent/a/a/n;->b:[I

    return-void
.end method

.method public static a([B[B)[B
    .locals 7

    const/16 v6, 0x100

    const/4 v0, 0x0

    array-length v2, p1

    const/4 v1, 0x1

    if-lt v2, v1, :cond_0

    if-le v2, v6, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key must be between 1 and 256 bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v1, v0

    :goto_0
    if-ge v1, v6, :cond_2

    sget-object v3, Lcom/tencent/a/a/n;->a:[I

    aput v1, v3, v1

    sget-object v3, Lcom/tencent/a/a/n;->b:[I

    rem-int v4, v1, v2

    aget-byte v4, p1, v4

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v0

    move v2, v0

    :goto_1
    if-ge v1, v6, :cond_3

    sget-object v3, Lcom/tencent/a/a/n;->a:[I

    aget v3, v3, v1

    add-int/2addr v2, v3

    sget-object v3, Lcom/tencent/a/a/n;->b:[I

    aget v3, v3, v1

    add-int/2addr v2, v3

    and-int/lit16 v2, v2, 0xff

    sget-object v3, Lcom/tencent/a/a/n;->a:[I

    aget v3, v3, v1

    sget-object v4, Lcom/tencent/a/a/n;->a:[I

    sget-object v5, Lcom/tencent/a/a/n;->a:[I

    aget v5, v5, v2

    aput v5, v4, v1

    sget-object v4, Lcom/tencent/a/a/n;->a:[I

    aput v3, v4, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    array-length v1, p0

    new-array v3, v1, [B

    move v1, v0

    move v2, v0

    :goto_2
    array-length v4, p0

    if-ge v0, v4, :cond_4

    add-int/lit8 v2, v2, 0x1

    and-int/lit16 v2, v2, 0xff

    sget-object v4, Lcom/tencent/a/a/n;->a:[I

    aget v4, v4, v2

    add-int/2addr v1, v4

    and-int/lit16 v1, v1, 0xff

    sget-object v4, Lcom/tencent/a/a/n;->a:[I

    aget v4, v4, v2

    sget-object v5, Lcom/tencent/a/a/n;->a:[I

    sget-object v6, Lcom/tencent/a/a/n;->a:[I

    aget v6, v6, v1

    aput v6, v5, v2

    sget-object v5, Lcom/tencent/a/a/n;->a:[I

    aput v4, v5, v1

    sget-object v4, Lcom/tencent/a/a/n;->a:[I

    aget v4, v4, v2

    sget-object v5, Lcom/tencent/a/a/n;->a:[I

    aget v5, v5, v1

    add-int/2addr v4, v5

    and-int/lit16 v4, v4, 0xff

    sget-object v5, Lcom/tencent/a/a/n;->a:[I

    aget v4, v5, v4

    aget-byte v5, p0, v0

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    return-object v3
.end method

.method public static b([B[B)[B
    .locals 1

    invoke-static {p0, p1}, Lcom/tencent/a/a/n;->a([B[B)[B

    move-result-object v0

    return-object v0
.end method
