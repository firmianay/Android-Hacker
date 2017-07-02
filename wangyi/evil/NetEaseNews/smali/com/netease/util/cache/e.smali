.class public Lcom/netease/util/cache/e;
.super Lcom/netease/util/cache/n;


# instance fields
.field private a:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/netease/util/cache/n;-><init>()V

    const-wide/32 v0, 0xc800000

    iput-wide v0, p0, Lcom/netease/util/cache/e;->a:J

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Lcom/netease/util/cache/e;->a:J

    return-wide v0
.end method

.method public a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/netease/util/cache/e;->a:J

    return-void
.end method
