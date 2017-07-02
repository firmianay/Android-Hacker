.class Lcom/tencent/mm/sdk/platformtools/a;
.super Ljava/lang/Object;


# instance fields
.field a:F

.field b:F

.field c:I

.field d:J

.field e:I


# direct methods
.method constructor <init>()V
    .locals 1

    const/high16 v0, -0x3b860000    # -1000.0f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/tencent/mm/sdk/platformtools/a;->a:F

    iput v0, p0, Lcom/tencent/mm/sdk/platformtools/a;->b:F

    const/16 v0, -0x3e8

    iput v0, p0, Lcom/tencent/mm/sdk/platformtools/a;->c:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/mm/sdk/platformtools/a;->e:I

    return-void
.end method
