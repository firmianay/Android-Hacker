.class public Lcom/netease/ad/e/c;
.super Lcom/netease/ad/e/a;


# instance fields
.field d:I

.field e:[Lcom/netease/ad/b/j;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/netease/ad/e/a;-><init>(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/ad/e/c;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/ad/e/c;->e:[Lcom/netease/ad/b/j;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/netease/ad/e/c;->d:I

    return-void
.end method

.method public a([Lcom/netease/ad/b/j;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/ad/e/c;->e:[Lcom/netease/ad/b/j;

    return-void
.end method

.method public b()[Lcom/netease/ad/b/j;
    .locals 1

    iget-object v0, p0, Lcom/netease/ad/e/c;->e:[Lcom/netease/ad/b/j;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/netease/ad/e/c;->d:I

    return v0
.end method
