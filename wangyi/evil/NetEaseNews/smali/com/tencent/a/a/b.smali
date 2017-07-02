.class public final enum Lcom/tencent/a/a/b;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/tencent/a/a/b;

.field public static final enum b:Lcom/tencent/a/a/b;

.field public static final enum c:Lcom/tencent/a/a/b;

.field public static final enum d:Lcom/tencent/a/a/b;

.field public static final enum e:Lcom/tencent/a/a/b;

.field public static final enum f:Lcom/tencent/a/a/b;

.field private static final synthetic h:[Lcom/tencent/a/a/b;


# instance fields
.field g:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    new-instance v0, Lcom/tencent/a/a/b;

    const-string v1, "INSTANT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/a/a/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/a/a/b;->a:Lcom/tencent/a/a/b;

    new-instance v0, Lcom/tencent/a/a/b;

    const-string v1, "ONLY_WIFI"

    invoke-direct {v0, v1, v3, v4}, Lcom/tencent/a/a/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/a/a/b;->b:Lcom/tencent/a/a/b;

    new-instance v0, Lcom/tencent/a/a/b;

    const-string v1, "BATCH"

    invoke-direct {v0, v1, v4, v5}, Lcom/tencent/a/a/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/a/a/b;->c:Lcom/tencent/a/a/b;

    new-instance v0, Lcom/tencent/a/a/b;

    const-string v1, "APP_LAUNCH"

    invoke-direct {v0, v1, v5, v6}, Lcom/tencent/a/a/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/a/a/b;->d:Lcom/tencent/a/a/b;

    new-instance v0, Lcom/tencent/a/a/b;

    const-string v1, "DEVELOPER"

    invoke-direct {v0, v1, v6, v7}, Lcom/tencent/a/a/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/a/a/b;->e:Lcom/tencent/a/a/b;

    new-instance v0, Lcom/tencent/a/a/b;

    const-string v1, "PERIOD"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v7, v2}, Lcom/tencent/a/a/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/a/a/b;->f:Lcom/tencent/a/a/b;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/tencent/a/a/b;

    const/4 v1, 0x0

    sget-object v2, Lcom/tencent/a/a/b;->a:Lcom/tencent/a/a/b;

    aput-object v2, v0, v1

    sget-object v1, Lcom/tencent/a/a/b;->b:Lcom/tencent/a/a/b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/a/a/b;->c:Lcom/tencent/a/a/b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tencent/a/a/b;->d:Lcom/tencent/a/a/b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/tencent/a/a/b;->e:Lcom/tencent/a/a/b;

    aput-object v1, v0, v6

    sget-object v1, Lcom/tencent/a/a/b;->f:Lcom/tencent/a/a/b;

    aput-object v1, v0, v7

    sput-object v0, Lcom/tencent/a/a/b;->h:[Lcom/tencent/a/a/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/tencent/a/a/b;->g:I

    return-void
.end method

.method public static a(I)Lcom/tencent/a/a/b;
    .locals 5

    invoke-static {}, Lcom/tencent/a/a/b;->a()[Lcom/tencent/a/a/b;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    invoke-virtual {v0}, Lcom/tencent/a/a/b;->b()I

    move-result v4

    if-ne p0, v4, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static a()[Lcom/tencent/a/a/b;
    .locals 1

    sget-object v0, Lcom/tencent/a/a/b;->h:[Lcom/tencent/a/a/b;

    invoke-virtual {v0}, [Lcom/tencent/a/a/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/a/a/b;

    return-object v0
.end method


# virtual methods
.method public b()I
    .locals 1

    iget v0, p0, Lcom/tencent/a/a/b;->g:I

    return v0
.end method
