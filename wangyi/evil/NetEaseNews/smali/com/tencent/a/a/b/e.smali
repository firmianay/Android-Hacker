.class public final enum Lcom/tencent/a/a/b/e;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/tencent/a/a/b/e;

.field public static final enum b:Lcom/tencent/a/a/b/e;

.field public static final enum c:Lcom/tencent/a/a/b/e;

.field public static final enum d:Lcom/tencent/a/a/b/e;

.field public static final enum e:Lcom/tencent/a/a/b/e;

.field private static final synthetic g:[Lcom/tencent/a/a/b/e;


# instance fields
.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    new-instance v0, Lcom/tencent/a/a/b/e;

    const-string v1, "PAGE_VIEW"

    invoke-direct {v0, v1, v6, v3}, Lcom/tencent/a/a/b/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/a/a/b/e;->a:Lcom/tencent/a/a/b/e;

    new-instance v0, Lcom/tencent/a/a/b/e;

    const-string v1, "SESSION_ENV"

    invoke-direct {v0, v1, v3, v4}, Lcom/tencent/a/a/b/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/a/a/b/e;->b:Lcom/tencent/a/a/b/e;

    new-instance v0, Lcom/tencent/a/a/b/e;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v4, v5}, Lcom/tencent/a/a/b/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/a/a/b/e;->c:Lcom/tencent/a/a/b/e;

    new-instance v0, Lcom/tencent/a/a/b/e;

    const-string v1, "CUSTOM"

    const/16 v2, 0x3e8

    invoke-direct {v0, v1, v5, v2}, Lcom/tencent/a/a/b/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/a/a/b/e;->d:Lcom/tencent/a/a/b/e;

    new-instance v0, Lcom/tencent/a/a/b/e;

    const-string v1, "ADDITION"

    const/16 v2, 0x3e9

    invoke-direct {v0, v1, v7, v2}, Lcom/tencent/a/a/b/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/a/a/b/e;->e:Lcom/tencent/a/a/b/e;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/tencent/a/a/b/e;

    sget-object v1, Lcom/tencent/a/a/b/e;->a:Lcom/tencent/a/a/b/e;

    aput-object v1, v0, v6

    sget-object v1, Lcom/tencent/a/a/b/e;->b:Lcom/tencent/a/a/b/e;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/a/a/b/e;->c:Lcom/tencent/a/a/b/e;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tencent/a/a/b/e;->d:Lcom/tencent/a/a/b/e;

    aput-object v1, v0, v5

    sget-object v1, Lcom/tencent/a/a/b/e;->e:Lcom/tencent/a/a/b/e;

    aput-object v1, v0, v7

    sput-object v0, Lcom/tencent/a/a/b/e;->g:[Lcom/tencent/a/a/b/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/tencent/a/a/b/e;->f:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/tencent/a/a/b/e;->f:I

    return v0
.end method
