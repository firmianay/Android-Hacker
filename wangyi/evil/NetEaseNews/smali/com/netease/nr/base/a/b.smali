.class public Lcom/netease/nr/base/a/b;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/netease/nr/base/a/b;->b:I

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/base/a/b;I)I
    .locals 0

    iput p1, p0, Lcom/netease/nr/base/a/b;->c:I

    return p1
.end method
