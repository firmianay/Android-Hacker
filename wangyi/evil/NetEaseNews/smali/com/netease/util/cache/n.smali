.class public Lcom/netease/util/cache/n;
.super Ljava/lang/Object;


# instance fields
.field private a:J

.field public e:Z

.field public f:J

.field public g:Z

.field public h:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x1400000

    iput-wide v0, p0, Lcom/netease/util/cache/n;->a:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/util/cache/n;->e:Z

    const-wide/32 v0, 0xf731400

    iput-wide v0, p0, Lcom/netease/util/cache/n;->f:J

    iput-boolean v2, p0, Lcom/netease/util/cache/n;->g:Z

    iput-boolean v2, p0, Lcom/netease/util/cache/n;->h:Z

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Lcom/netease/util/cache/n;->a:J

    return-wide v0
.end method

.method public a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/netease/util/cache/n;->a:J

    return-void
.end method
