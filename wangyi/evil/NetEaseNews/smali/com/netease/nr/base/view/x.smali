.class public Lcom/netease/nr/base/view/x;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/base/view/x;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a(Lcom/netease/nr/base/view/FloorsView;)V
    .locals 3

    invoke-virtual {p1}, Lcom/netease/nr/base/view/FloorsView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    invoke-virtual {p1, v1}, Lcom/netease/nr/base/view/FloorsView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/w;

    iget-object v2, p0, Lcom/netease/nr/base/view/x;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/netease/nr/base/view/FloorsView;->a(Lcom/netease/nr/base/view/FloorsView;)V

    return-void
.end method

.method public b(Lcom/netease/nr/base/view/FloorsView;)Lcom/netease/nr/base/view/w;
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/base/view/x;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/x;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/w;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
