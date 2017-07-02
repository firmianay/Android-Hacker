.class public abstract Lcom/netease/nr/base/a/a;
.super Landroid/widget/BaseAdapter;


# instance fields
.field protected a:Lcom/netease/nr/base/a/b;

.field private b:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Lcom/netease/nr/base/a/b;

    invoke-direct {v0}, Lcom/netease/nr/base/a/b;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/base/a/a;->a:Lcom/netease/nr/base/a/b;

    iput-object p1, p0, Lcom/netease/nr/base/a/a;->b:Ljava/util/List;

    return-void
.end method

.method private e(I)Z
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/base/a/a;->a:Lcom/netease/nr/base/a/b;

    invoke-virtual {p0, v0, p1}, Lcom/netease/nr/base/a/a;->a(Lcom/netease/nr/base/a/b;I)V

    iget-object v0, p0, Lcom/netease/nr/base/a/a;->a:Lcom/netease/nr/base/a/b;

    iget v0, v0, Lcom/netease/nr/base/a/b;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(I)I
    .locals 3

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/netease/nr/base/a/a;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_2

    :cond_0
    const/4 v0, -0x1

    :cond_1
    return v0

    :cond_2
    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_1

    invoke-virtual {p0, v1}, Lcom/netease/nr/base/a/a;->b(I)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;)I
    .locals 3

    iget-object v0, p0, Lcom/netease/nr/base/a/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v0, p0, Lcom/netease/nr/base/a/a;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/util/e/b;

    iget-object v0, v0, Lcom/netease/util/e/b;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public abstract a(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public abstract a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public a(II)Ljava/lang/Object;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/netease/nr/base/a/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/netease/nr/base/a/a;->b(I)I

    move-result v0

    if-ge p2, v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/netease/nr/base/a/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/util/e/b;

    iget-object v0, v0, Lcom/netease/util/e/b;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/a/a;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/a/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public final a(Lcom/netease/nr/base/a/b;I)V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/netease/nr/base/a/a;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    move v2, v0

    move v1, v0

    :goto_0
    if-ge v2, v3, :cond_0

    iput v2, p1, Lcom/netease/nr/base/a/b;->a:I

    iget-object v0, p0, Lcom/netease/nr/base/a/a;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/util/e/b;

    iget-object v0, v0, Lcom/netease/util/e/b;->b:Ljava/lang/Object;

    if-eqz v0, :cond_2

    invoke-virtual {p0, v2}, Lcom/netease/nr/base/a/a;->b(I)I

    move-result v0

    add-int v4, v1, v0

    if-lt v4, p2, :cond_1

    sub-int v0, p2, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/netease/nr/base/a/b;->b:I

    :cond_0
    invoke-static {p1, p2}, Lcom/netease/nr/base/a/b;->a(Lcom/netease/nr/base/a/b;I)I

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v1

    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final b(I)I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/netease/nr/base/a/a;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/a/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/netease/nr/base/a/a;->c(I)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/netease/nr/base/a/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/util/e/b;

    iget-object v0, v0, Lcom/netease/util/e/b;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method protected c(I)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public final d(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/a/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/util/e/b;

    iget-object v0, v0, Lcom/netease/util/e/b;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final getCount()I
    .locals 4

    iget-object v0, p0, Lcom/netease/nr/base/a/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v2

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/netease/nr/base/a/a;->b(I)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/base/a/a;->a:Lcom/netease/nr/base/a/b;

    invoke-virtual {p0, v0, p1}, Lcom/netease/nr/base/a/a;->a(Lcom/netease/nr/base/a/b;I)V

    iget-object v0, p0, Lcom/netease/nr/base/a/a;->a:Lcom/netease/nr/base/a/b;

    iget v0, v0, Lcom/netease/nr/base/a/b;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/base/a/a;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/netease/nr/base/a/a;->a:Lcom/netease/nr/base/a/b;

    iget v1, v1, Lcom/netease/nr/base/a/b;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/util/e/b;

    iget-object v0, v0, Lcom/netease/util/e/b;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/netease/nr/base/a/a;->a:Lcom/netease/nr/base/a/b;

    iget v1, v1, Lcom/netease/nr/base/a/b;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/netease/nr/base/a/a;->e(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/base/a/a;->a:Lcom/netease/nr/base/a/b;

    invoke-virtual {p0, v0, p1}, Lcom/netease/nr/base/a/a;->a(Lcom/netease/nr/base/a/b;I)V

    iget-object v0, p0, Lcom/netease/nr/base/a/a;->a:Lcom/netease/nr/base/a/b;

    iget v0, v0, Lcom/netease/nr/base/a/b;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/a/a;->a:Lcom/netease/nr/base/a/b;

    iget v0, v0, Lcom/netease/nr/base/a/b;->a:I

    invoke-virtual {p0, v0, p2, p3}, Lcom/netease/nr/base/a/a;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/base/a/a;->a:Lcom/netease/nr/base/a/b;

    iget v0, v0, Lcom/netease/nr/base/a/b;->a:I

    iget-object v1, p0, Lcom/netease/nr/base/a/a;->a:Lcom/netease/nr/base/a/b;

    iget v1, v1, Lcom/netease/nr/base/a/b;->b:I

    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/netease/nr/base/a/a;->a(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final hasStableIds()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/netease/nr/base/a/a;->e(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
