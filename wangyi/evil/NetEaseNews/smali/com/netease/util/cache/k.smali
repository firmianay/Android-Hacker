.class public abstract Lcom/netease/util/cache/k;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/netease/util/cache/a/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/netease/util/cache/r;->b(Landroid/content/Context;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    mul-int/lit16 v0, v0, 0x400

    div-int/lit8 v0, v0, 0x2

    if-le p2, v0, :cond_0

    move p2, v0

    :cond_0
    new-instance v0, Lcom/netease/util/cache/l;

    invoke-direct {v0, p0, p2}, Lcom/netease/util/cache/l;-><init>(Lcom/netease/util/cache/k;I)V

    iput-object v0, p0, Lcom/netease/util/cache/k;->a:Lcom/netease/util/cache/a/j;

    return-void
.end method


# virtual methods
.method protected abstract a(Ljava/lang/Object;)I
.end method

.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/netease/util/cache/k;->a:Lcom/netease/util/cache/a/j;

    invoke-virtual {v0, p1}, Lcom/netease/util/cache/a/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/netease/util/cache/k;->a:Lcom/netease/util/cache/a/j;

    invoke-virtual {v0}, Lcom/netease/util/cache/a/j;->a()V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/util/cache/k;->a:Lcom/netease/util/cache/a/j;

    invoke-virtual {v0, p1}, Lcom/netease/util/cache/a/j;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/netease/util/cache/k;->a:Lcom/netease/util/cache/a/j;

    invoke-virtual {v0, p1, p2}, Lcom/netease/util/cache/a/j;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
