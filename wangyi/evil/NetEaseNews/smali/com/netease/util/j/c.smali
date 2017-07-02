.class Lcom/netease/util/j/c;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/util/List;

.field b:Ljava/lang/String;

.field final synthetic c:Lcom/netease/util/j/a;


# direct methods
.method private constructor <init>(Lcom/netease/util/j/a;)V
    .locals 1

    iput-object p1, p0, Lcom/netease/util/j/c;->c:Lcom/netease/util/j/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/util/j/c;->a:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/util/j/a;Lcom/netease/util/j/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/util/j/c;-><init>(Lcom/netease/util/j/a;)V

    return-void
.end method
