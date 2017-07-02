.class public Lcom/netease/util/cache/c;
.super Lcom/netease/util/cache/n;


# instance fields
.field public a:I

.field public b:Landroid/graphics/Bitmap$CompressFormat;

.field public c:I

.field public d:Z

.field private i:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/netease/util/cache/n;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/netease/util/cache/c;->a:I

    const-wide/32 v0, 0xc800000

    iput-wide v0, p0, Lcom/netease/util/cache/c;->i:J

    invoke-static {}, Lcom/netease/util/cache/a;->d()Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/util/cache/c;->b:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v0, 0x50

    iput v0, p0, Lcom/netease/util/cache/c;->c:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/util/cache/c;->d:Z

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Lcom/netease/util/cache/c;->i:J

    return-wide v0
.end method

.method public a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/netease/util/cache/c;->i:J

    return-void
.end method
