.class public Lcom/netease/nr/biz/h/ab;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private a:Ljava/util/List;

.field private b:Landroid/view/View$OnClickListener;

.field private c:Landroid/view/LayoutInflater;

.field private d:Lcom/netease/util/j/a;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Landroid/view/View$OnClickListener;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p3, p0, Lcom/netease/nr/biz/h/ab;->b:Landroid/view/View$OnClickListener;

    iput-object p2, p0, Lcom/netease/nr/biz/h/ab;->a:Ljava/util/List;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/h/ab;->c:Landroid/view/LayoutInflater;

    invoke-static {p1}, Lcom/netease/util/j/a;->a(Landroid/content/Context;)Lcom/netease/util/j/a;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/h/ab;->d:Lcom/netease/util/j/a;

    return-void
.end method


# virtual methods
.method public a(I)Ljava/util/Map;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/netease/nr/biz/h/ab;->a:Ljava/util/List;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/netease/nr/biz/h/ab;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/h/ab;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/netease/nr/biz/h/ab;->e:Z

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/h/ab;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/h/ab;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/h/ab;->a(I)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_0

    new-instance v1, Lcom/netease/nr/biz/h/ac;

    invoke-direct {v1, p0}, Lcom/netease/nr/biz/h/ac;-><init>(Lcom/netease/nr/biz/h/ab;)V

    iget-object v0, p0, Lcom/netease/nr/biz/h/ab;->c:Landroid/view/LayoutInflater;

    const v2, 0x7f030070

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0c00f4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/netease/nr/biz/h/ac;->a(Lcom/netease/nr/biz/h/ac;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v0, 0x7f0c013e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/netease/nr/biz/h/ac;->a(Lcom/netease/nr/biz/h/ac;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/netease/nr/biz/h/ac;->a(Lcom/netease/nr/biz/h/ac;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v2, p0, Lcom/netease/nr/biz/h/ab;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c007f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/netease/nr/biz/h/ac;->b(Lcom/netease/nr/biz/h/ac;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    :goto_0
    invoke-static {v0}, Lcom/netease/nr/biz/h/ac;->a(Lcom/netease/nr/biz/h/ac;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/netease/nr/biz/h/ac;->b(Lcom/netease/nr/biz/h/ac;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/h/ab;->a(I)Ljava/util/Map;

    move-result-object v2

    const-string v3, "tname"

    invoke-static {v2, v3}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/netease/nr/biz/h/ab;->d:Lcom/netease/util/j/a;

    invoke-static {v0}, Lcom/netease/nr/biz/h/ac;->b(Lcom/netease/nr/biz/h/ac;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f0700bf

    invoke-virtual {v1, v2, v3}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    iget-object v1, p0, Lcom/netease/nr/biz/h/ab;->d:Lcom/netease/util/j/a;

    invoke-static {v0}, Lcom/netease/nr/biz/h/ac;->b(Lcom/netease/nr/biz/h/ac;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f02017f

    invoke-virtual {v1, v2, v3}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/netease/nr/biz/h/ab;->d:Lcom/netease/util/j/a;

    invoke-static {v0}, Lcom/netease/nr/biz/h/ac;->a(Lcom/netease/nr/biz/h/ac;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f02016b

    invoke-virtual {v1, v2, v3}, Lcom/netease/util/j/a;->a(Landroid/widget/ImageView;I)V

    iget-boolean v1, p0, Lcom/netease/nr/biz/h/ab;->e:Z

    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    invoke-static {v0}, Lcom/netease/nr/biz/h/ac;->a(Lcom/netease/nr/biz/h/ac;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/h/ac;

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/netease/nr/biz/h/ac;->a(Lcom/netease/nr/biz/h/ac;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method
