.class public Lcom/netease/ad/b/j;
.super Ljava/lang/Object;


# instance fields
.field a:F

.field b:Ljava/util/Hashtable;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lcom/netease/ad/d/a/a;

.field private h:I

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:F

.field private l:[Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:I

.field private p:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/netease/ad/b/j;->g:Lcom/netease/ad/d/a/a;

    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/ad/b/j;->h:I

    iput-object v1, p0, Lcom/netease/ad/b/j;->i:Ljava/lang/String;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/netease/ad/b/j;->k:F

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/netease/ad/b/j;->b:Ljava/util/Hashtable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/ad/b/j;->p:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/ad/b/j;->n:Ljava/lang/String;

    return-object v0
.end method

.method public a(F)V
    .locals 0

    iput p1, p0, Lcom/netease/ad/b/j;->k:F

    return-void
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/netease/ad/b/j;->c:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/ad/b/j;->n:Ljava/lang/String;

    return-void
.end method

.method public a([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/ad/b/j;->l:[Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/ad/b/j;->m:Ljava/lang/String;

    return-object v0
.end method

.method public b(F)V
    .locals 0

    iput p1, p0, Lcom/netease/ad/b/j;->a:F

    return-void
.end method

.method public b(I)V
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput p1, p0, Lcom/netease/ad/b/j;->h:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/ad/b/j;->m:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/ad/b/j;->j:Ljava/lang/String;

    return-object v0
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/netease/ad/b/j;->o:I

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/ad/b/j;->j:Ljava/lang/String;

    return-void
.end method

.method public d()F
    .locals 1

    iget v0, p0, Lcom/netease/ad/b/j;->a:F

    return v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/ad/b/j;->d:Ljava/lang/String;

    return-void
.end method

.method public e()Lcom/netease/ad/d/a/a;
    .locals 1

    iget-object v0, p0, Lcom/netease/ad/b/j;->g:Lcom/netease/ad/d/a/a;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/ad/b/j;->e:Ljava/lang/String;

    return-void
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/netease/ad/b/j;->c:I

    return v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/ad/b/j;->f:Ljava/lang/String;

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/ad/b/j;->d:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/ad/b/j;->i:Ljava/lang/String;

    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/ad/b/j;->e:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/ad/b/j;->f:Ljava/lang/String;

    return-object v0
.end method

.method public j()I
    .locals 1

    iget v0, p0, Lcom/netease/ad/b/j;->h:I

    return v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/ad/b/j;->i:Ljava/lang/String;

    return-object v0
.end method

.method public l()I
    .locals 1

    iget v0, p0, Lcom/netease/ad/b/j;->o:I

    return v0
.end method

.method public m()Ljava/util/Hashtable;
    .locals 1

    iget-object v0, p0, Lcom/netease/ad/b/j;->b:Ljava/util/Hashtable;

    return-object v0
.end method
