.class Lcom/netease/util/cache/l;
.super Lcom/netease/util/cache/a/j;


# instance fields
.field final synthetic a:Lcom/netease/util/cache/k;


# direct methods
.method constructor <init>(Lcom/netease/util/cache/k;I)V
    .locals 0

    iput-object p1, p0, Lcom/netease/util/cache/l;->a:Lcom/netease/util/cache/k;

    invoke-direct {p0, p2}, Lcom/netease/util/cache/a/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/netease/util/cache/l;->a(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/netease/util/cache/l;->a:Lcom/netease/util/cache/k;

    invoke-virtual {v0, p2}, Lcom/netease/util/cache/k;->a(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
