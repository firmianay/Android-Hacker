.class Lcom/netease/nr/biz/i/a/c;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/util/List;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:I

.field f:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/biz/i/a/c;->a:Ljava/util/List;

    return-void
.end method
