.class public Lcom/netease/util/cache/i;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Z

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/netease/util/cache/i;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/netease/util/cache/i;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/netease/util/cache/i;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/netease/util/cache/i;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/netease/util/cache/i;->d:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/netease/util/cache/i;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/util/cache/i;->a:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/netease/util/cache/i;->b:Z

    iput-boolean v0, p0, Lcom/netease/util/cache/i;->b:Z

    iget-object v0, p1, Lcom/netease/util/cache/i;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/util/cache/i;->c:Ljava/lang/String;

    iget-object v0, p1, Lcom/netease/util/cache/i;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/util/cache/i;->d:Ljava/lang/String;

    :cond_0
    return-void
.end method
