.class public Lcom/netease/nr/biz/plugin/b/m;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;

.field private c:Landroid/view/LayoutInflater;

.field private d:Lcom/netease/util/j/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/netease/nr/biz/plugin/b/m;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/netease/nr/biz/plugin/b/m;->b:Ljava/util/List;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/plugin/b/m;->c:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/b/m;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/util/j/a;->a(Landroid/content/Context;)Lcom/netease/util/j/a;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/plugin/b/m;->d:Lcom/netease/util/j/a;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/b/m;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/b/m;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/b/m;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f03009b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/netease/nr/biz/plugin/b/n;

    invoke-direct {v1, p0}, Lcom/netease/nr/biz/plugin/b/n;-><init>(Lcom/netease/nr/biz/plugin/b/m;)V

    const v0, 0x7f0c01dd

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/netease/nr/biz/plugin/b/n;->a:Landroid/widget/TextView;

    const v0, 0x7f0c01de

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/netease/nr/biz/plugin/b/n;->b:Landroid/widget/TextView;

    const v0, 0x7f0c01df

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/netease/nr/biz/plugin/b/n;->c:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/plugin/b/n;

    iget-object v1, p0, Lcom/netease/nr/biz/plugin/b/m;->d:Lcom/netease/util/j/a;

    iget-object v2, v0, Lcom/netease/nr/biz/plugin/b/n;->a:Landroid/widget/TextView;

    const v3, 0x7f0700ed

    invoke-virtual {v1, v2, v3}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    iget-object v1, p0, Lcom/netease/nr/biz/plugin/b/m;->d:Lcom/netease/util/j/a;

    iget-object v2, v0, Lcom/netease/nr/biz/plugin/b/n;->b:Landroid/widget/TextView;

    const v3, 0x7f0700ef

    invoke-virtual {v1, v2, v3}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/plugin/b/m;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "title"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "ptime"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, v0, Lcom/netease/nr/biz/plugin/b/n;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v0, Lcom/netease/nr/biz/plugin/b/n;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/netease/nr/biz/plugin/b/m;->a:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/netease/util/h/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
