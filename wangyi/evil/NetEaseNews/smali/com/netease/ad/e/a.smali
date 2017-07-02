.class public Lcom/netease/ad/e/a;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/Exception;

.field b:I

.field public c:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/ad/e/a;->a:Ljava/lang/Exception;

    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/ad/e/a;->b:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/netease/ad/e/a;->c:I

    iput p1, p0, Lcom/netease/ad/e/a;->b:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/ad/e/a;->a:Ljava/lang/Exception;

    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/ad/e/a;->b:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/netease/ad/e/a;->c:I

    iput-object p1, p0, Lcom/netease/ad/e/a;->a:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/netease/ad/e/a;->b:I

    return v0
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/ad/e/a;->a:Ljava/lang/Exception;

    return-void
.end method
