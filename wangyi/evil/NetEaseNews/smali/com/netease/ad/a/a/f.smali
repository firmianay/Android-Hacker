.class public Lcom/netease/ad/a/a/f;
.super Ljava/lang/Object;


# static fields
.field public static final a:[B


# instance fields
.field private b:Ljava/lang/String;

.field private c:[B

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/netease/ad/a/a/f;->a:[B

    return-void

    :array_0
    .array-data 1
        0x7t
        0x77t
        -0x2bt
        -0x3ft
        0x7dt
        0x40t
        0x66t
        -0x48t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "utf-8"

    iput-object v0, p0, Lcom/netease/ad/a/a/f;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/ad/a/a/f;->e:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/ad/a/a/f;->f:Ljava/lang/String;

    return-void
.end method

.method public static a([BLjava/lang/String;)[B
    .locals 5

    const/16 v4, 0x18

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    const-string v1, "utf-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    array-length v1, v2

    array-length v3, p0

    if-ne v3, v4, :cond_0

    const/16 v3, 0x8

    if-lt v1, v3, :cond_0

    const/16 v3, 0x14

    if-gt v1, v3, :cond_0

    new-array v1, v4, [B

    const/4 v0, 0x0

    :goto_1
    array-length v3, p0

    if-ge v0, v3, :cond_2

    rem-int/lit8 v3, v0, 0x3

    packed-switch v3, :pswitch_data_0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    :pswitch_0
    aget-byte v3, p0, v0

    array-length v4, v2

    rem-int v4, v0, v4

    aget-byte v4, v2, v4

    add-int/2addr v4, v0

    and-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    goto :goto_2

    :pswitch_1
    aget-byte v3, p0, v0

    array-length v4, v2

    rem-int v4, v0, v4

    aget-byte v4, v2, v4

    add-int/2addr v4, v0

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    goto :goto_2

    :pswitch_2
    aget-byte v3, p0, v0

    array-length v4, v2

    rem-int v4, v0, v4

    aget-byte v4, v2, v4

    add-int/2addr v4, v0

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    goto :goto_2

    :cond_2
    move-object v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/ad/a/a/f;->f:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/ad/a/a/f;->f:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/netease/ad/a/a/f;->e:Z

    return-void
.end method

.method public a([B)V
    .locals 0

    iput-object p1, p0, Lcom/netease/ad/a/a/f;->c:[B

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/ad/a/a/f;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/ad/a/a/f;->b:Ljava/lang/String;

    return-void
.end method

.method public c()[B
    .locals 1

    iget-object v0, p0, Lcom/netease/ad/a/a/f;->c:[B

    return-object v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netease/ad/a/a/f;->e:Z

    return v0
.end method
