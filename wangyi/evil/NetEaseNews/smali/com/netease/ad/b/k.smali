.class public Lcom/netease/ad/b/k;
.super Ljava/lang/Object;


# static fields
.field public static a:I

.field public static b:I

.field private static c:Z

.field private static d:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x140

    sput v0, Lcom/netease/ad/b/k;->a:I

    const/16 v0, 0x32

    sput v0, Lcom/netease/ad/b/k;->b:I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/netease/ad/b/k;->c:Z

    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/netease/ad/b/k;->d:F

    return-void
.end method

.method public static a(I)V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/netease/ad/b/k;->c:Z

    sput p0, Lcom/netease/ad/b/k;->a:I

    invoke-static {}, Lcom/netease/ad/f;->a()Lcom/netease/ad/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ad/f;->c()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x32

    invoke-static {v0, v1}, Lcom/netease/ad/f/f;->a(Landroid/content/Context;I)I

    move-result v0

    sput v0, Lcom/netease/ad/b/k;->b:I

    sget v0, Lcom/netease/ad/b/k;->b:I

    int-to-float v0, v0

    const/high16 v1, 0x42480000    # 50.0f

    div-float/2addr v0, v1

    sput v0, Lcom/netease/ad/b/k;->d:F

    return-void
.end method
