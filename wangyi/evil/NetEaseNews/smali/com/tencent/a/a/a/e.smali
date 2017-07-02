.class public Lcom/tencent/a/a/a/e;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/a/a/a/e;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/a/a/a/e;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/tencent/a/a/a/e;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/a/a/a/e;->b:Ljava/lang/String;

    iput p3, p0, Lcom/tencent/a/a/a/e;->c:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/a/a/a/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/a/a/a/e;->c:I

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/a/a/a/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/tencent/a/a/a/e;->c:I

    return v0
.end method
