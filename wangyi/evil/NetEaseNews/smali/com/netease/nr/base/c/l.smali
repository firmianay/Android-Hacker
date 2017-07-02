.class public Lcom/netease/nr/base/c/l;
.super Ljava/lang/Object;


# instance fields
.field public a:D

.field public b:D

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/netease/nr/base/c/l;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p1, Lcom/netease/nr/base/c/l;->a:D

    iput-wide v0, p0, Lcom/netease/nr/base/c/l;->a:D

    iget-wide v0, p1, Lcom/netease/nr/base/c/l;->b:D

    iput-wide v0, p0, Lcom/netease/nr/base/c/l;->b:D

    iget-object v0, p1, Lcom/netease/nr/base/c/l;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/nr/base/c/l;->c:Ljava/lang/String;

    return-void
.end method
