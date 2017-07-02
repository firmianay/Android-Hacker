.class Lcom/netease/nr/biz/pics/l;
.super Ljava/lang/Object;


# instance fields
.field a:[Lcom/netease/nr/base/view/FitImageView;

.field final synthetic b:Lcom/netease/nr/biz/pics/b;


# direct methods
.method public constructor <init>(Lcom/netease/nr/biz/pics/b;)V
    .locals 1

    iput-object p1, p0, Lcom/netease/nr/biz/pics/l;->b:Lcom/netease/nr/biz/pics/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/netease/nr/base/view/FitImageView;

    iput-object v0, p0, Lcom/netease/nr/biz/pics/l;->a:[Lcom/netease/nr/base/view/FitImageView;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/netease/nr/biz/pics/l;->a:[Lcom/netease/nr/base/view/FitImageView;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/netease/nr/biz/pics/l;->a:[Lcom/netease/nr/base/view/FitImageView;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/netease/nr/biz/pics/l;->a:[Lcom/netease/nr/base/view/FitImageView;

    aget-object v1, v1, v0

    invoke-static {}, Lcom/netease/nr/biz/pics/p;->a()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/netease/nr/base/view/FitImageView;->a(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b()V
    .locals 4

    iget-object v0, p0, Lcom/netease/nr/biz/pics/l;->a:[Lcom/netease/nr/base/view/FitImageView;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/netease/nr/biz/pics/l;->a:[Lcom/netease/nr/base/view/FitImageView;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/netease/nr/biz/pics/l;->a:[Lcom/netease/nr/base/view/FitImageView;

    aget-object v1, v1, v0

    new-instance v2, Lcom/netease/nr/biz/pics/k;

    iget-object v3, p0, Lcom/netease/nr/biz/pics/l;->b:Lcom/netease/nr/biz/pics/b;

    invoke-direct {v2, v3, v0}, Lcom/netease/nr/biz/pics/k;-><init>(Lcom/netease/nr/biz/pics/b;I)V

    invoke-virtual {v1, v2}, Lcom/netease/nr/base/view/FitImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
