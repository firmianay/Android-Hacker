.class Lcom/netease/nr/base/view/f;
.super Ljava/lang/Object;


# instance fields
.field a:Landroid/view/View;

.field b:I

.field c:I

.field d:Lcom/netease/util/j/a;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/nr/base/view/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/nr/base/view/f;-><init>()V

    return-void
.end method


# virtual methods
.method final a(I)V
    .locals 1

    iput p1, p0, Lcom/netease/nr/base/view/f;->b:I

    iget-object v0, p0, Lcom/netease/nr/base/view/f;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/netease/nr/base/view/f;->c(I)V

    :cond_0
    return-void
.end method

.method final a(Lcom/netease/util/j/a;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/nr/base/view/f;->d:Lcom/netease/util/j/a;

    iget v0, p0, Lcom/netease/nr/base/view/f;->c:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/f;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/f;->a:Landroid/view/View;

    iget v1, p0, Lcom/netease/nr/base/view/f;->c:I

    invoke-virtual {p1, v0, v1}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/base/view/f;->a:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/netease/nr/base/view/f;->b(Lcom/netease/util/j/a;)V

    :cond_1
    return-void
.end method

.method final b(I)V
    .locals 2

    iput p1, p0, Lcom/netease/nr/base/view/f;->c:I

    iget-object v0, p0, Lcom/netease/nr/base/view/f;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/f;->d:Lcom/netease/util/j/a;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/base/view/f;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/base/view/f;->d:Lcom/netease/util/j/a;

    iget-object v1, p0, Lcom/netease/nr/base/view/f;->a:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    goto :goto_0
.end method

.method b(Lcom/netease/util/j/a;)V
    .locals 0

    return-void
.end method

.method c(I)V
    .locals 0

    return-void
.end method
