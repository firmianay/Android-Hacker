.class public Lcom/netease/b/c;
.super Ljava/lang/Object;


# static fields
.field public static final a:[C

.field public static final b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/16 v7, 0xe

    const/16 v6, 0xd

    const/16 v5, 0xc

    const/16 v4, 0xb

    const/16 v3, 0xa

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/netease/b/c;->a:[C

    const/16 v0, 0x80

    new-array v0, v0, [B

    const/16 v1, 0x31

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    const/16 v1, 0x32

    const/4 v2, 0x2

    aput-byte v2, v0, v1

    const/16 v1, 0x33

    const/4 v2, 0x3

    aput-byte v2, v0, v1

    const/16 v1, 0x34

    const/4 v2, 0x4

    aput-byte v2, v0, v1

    const/16 v1, 0x35

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x36

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x37

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x41

    aput-byte v3, v0, v1

    const/16 v1, 0x42

    aput-byte v4, v0, v1

    const/16 v1, 0x43

    aput-byte v5, v0, v1

    const/16 v1, 0x44

    aput-byte v6, v0, v1

    const/16 v1, 0x45

    aput-byte v7, v0, v1

    const/16 v1, 0x46

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x61

    aput-byte v3, v0, v1

    const/16 v1, 0x62

    aput-byte v4, v0, v1

    const/16 v1, 0x63

    aput-byte v5, v0, v1

    const/16 v1, 0x64

    aput-byte v6, v0, v1

    const/16 v1, 0x65

    aput-byte v7, v0, v1

    const/16 v1, 0x66

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    sput-object v0, Lcom/netease/b/c;->b:[B

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public static a([B)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/netease/b/c;->a([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a([BII)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    mul-int/lit8 v1, p2, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    add-int v1, p1, p2

    :goto_0
    if-lt p1, v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v2, Lcom/netease/b/c;->a:[C

    aget-byte v3, p0, p1

    and-int/lit16 v3, v3, 0xf0

    shr-int/lit8 v3, v3, 0x4

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v2, Lcom/netease/b/c;->a:[C

    aget-byte v3, p0, p1

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;[BI)V
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    mul-int/lit8 v2, v1, 0x2

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, p2, 0x1

    sget-object v3, Lcom/netease/b/c;->b:[B

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aget-byte v1, v3, v1

    shl-int/lit8 v3, v1, 0x4

    sget-object v5, Lcom/netease/b/c;->b:[B

    add-int/lit8 v1, v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aget-byte v4, v5, v4

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p1, p2

    move p2, v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/netease/b/c;->a(Ljava/lang/String;[BI)V

    return-object v0
.end method
