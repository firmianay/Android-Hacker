.class public Lcom/netease/nr/biz/plugin/plugin/util/k;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private a:Ljava/util/List;

.field private b:Landroid/view/LayoutInflater;

.field private c:Lcom/netease/util/j/a;

.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netease/util/j/a;Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/netease/nr/biz/plugin/plugin/util/k;->d:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/k;->b:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/netease/nr/biz/plugin/plugin/util/k;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/netease/nr/biz/plugin/plugin/util/k;->c:Lcom/netease/util/j/a;

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/biz/plugin/plugin/util/k;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/k;->d:Landroid/content/Context;

    return-object v0
.end method

.method private b(I)I
    .locals 1

    const/4 v0, 0x5

    if-lez p1, :cond_1

    if-ge p1, v0, :cond_1

    add-int/lit8 p1, p1, -0x1

    :cond_0
    :goto_0
    return p1

    :cond_1
    if-le p1, v0, :cond_0

    add-int/lit8 p1, p1, -0x2

    goto :goto_0
.end method


# virtual methods
.method public a(I)Lcom/netease/nr/biz/plugin/plugin/util/a;
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/k;->a:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/netease/nr/biz/plugin/plugin/util/k;->b(I)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/plugin/plugin/util/a;

    return-object v0
.end method

.method protected a(Lcom/netease/util/j/a;Landroid/view/View;Lcom/netease/nr/biz/plugin/plugin/util/a;)V
    .locals 0

    return-void
.end method

.method public getCount()I
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/k;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/k;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/netease/nr/biz/plugin/plugin/util/k;->getViewTypeCount()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/plugin/plugin/util/k;->a(I)Lcom/netease/nr/biz/plugin/plugin/util/a;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    invoke-direct {p0, p1}, Lcom/netease/nr/biz/plugin/plugin/util/k;->b(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/plugin/plugin/util/k;->a(I)Lcom/netease/nr/biz/plugin/plugin/util/a;

    move-result-object v0

    iget v0, v0, Lcom/netease/nr/biz/plugin/plugin/util/a;->d:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v4, 0x0

    const v3, 0x7f0c0021

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/plugin/plugin/util/k;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_3

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/k;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f030015

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/netease/nr/biz/plugin/plugin/util/m;

    invoke-direct {v1, p0, v4}, Lcom/netease/nr/biz/plugin/plugin/util/m;-><init>(Lcom/netease/nr/biz/plugin/plugin/util/k;Lcom/netease/nr/biz/plugin/plugin/util/l;)V

    const v0, 0x7f0c0008

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/netease/nr/biz/plugin/plugin/util/m;->a(Lcom/netease/nr/biz/plugin/plugin/util/m;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v0, 0x7f0c0020

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/nr/biz/plugin/plugin/util/m;->a(Lcom/netease/nr/biz/plugin/plugin/util/m;Landroid/view/View;)Landroid/view/View;

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/netease/nr/biz/plugin/plugin/util/m;->a(Lcom/netease/nr/biz/plugin/plugin/util/m;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/plugin/plugin/util/m;

    if-nez p1, :cond_2

    invoke-static {v0}, Lcom/netease/nr/biz/plugin/plugin/util/m;->a(Lcom/netease/nr/biz/plugin/plugin/util/m;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0b00b6

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/netease/nr/biz/plugin/plugin/util/k;->c:Lcom/netease/util/j/a;

    invoke-static {v0}, Lcom/netease/nr/biz/plugin/plugin/util/m;->a(Lcom/netease/nr/biz/plugin/plugin/util/m;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f070140

    invoke-virtual {v1, v2, v3}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    iget-object v1, p0, Lcom/netease/nr/biz/plugin/plugin/util/k;->c:Lcom/netease/util/j/a;

    invoke-static {v0}, Lcom/netease/nr/biz/plugin/plugin/util/m;->b(Lcom/netease/nr/biz/plugin/plugin/util/m;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f02021e

    invoke-virtual {v1, v2, v3}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/netease/nr/biz/plugin/plugin/util/k;->c:Lcom/netease/util/j/a;

    invoke-static {v0}, Lcom/netease/nr/biz/plugin/plugin/util/m;->c(Lcom/netease/nr/biz/plugin/plugin/util/m;)Landroid/widget/ImageView;

    move-result-object v0

    const v2, 0x7f02021f

    invoke-virtual {v1, v0, v2}, Lcom/netease/util/j/a;->a(Landroid/widget/ImageView;I)V

    :goto_1
    return-object p2

    :cond_2
    const/4 v1, 0x5

    if-ne p1, v1, :cond_1

    invoke-static {v0}, Lcom/netease/nr/biz/plugin/plugin/util/m;->a(Lcom/netease/nr/biz/plugin/plugin/util/m;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0b00b7

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_3
    if-nez p2, :cond_4

    iget-object v0, p0, Lcom/netease/nr/biz/plugin/plugin/util/k;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f030016

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/netease/nr/biz/plugin/plugin/util/m;

    invoke-direct {v1, p0, v4}, Lcom/netease/nr/biz/plugin/plugin/util/m;-><init>(Lcom/netease/nr/biz/plugin/plugin/util/k;Lcom/netease/nr/biz/plugin/plugin/util/l;)V

    const v0, 0x7f0c001c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/netease/nr/biz/plugin/plugin/util/m;->b(Lcom/netease/nr/biz/plugin/plugin/util/m;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    const v0, 0x7f0c001d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/netease/nr/biz/plugin/plugin/util/m;->a(Lcom/netease/nr/biz/plugin/plugin/util/m;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v0, 0x7f0c001f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-static {v1, v0}, Lcom/netease/nr/biz/plugin/plugin/util/m;->a(Lcom/netease/nr/biz/plugin/plugin/util/m;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    const v0, 0x7f0c0022

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/netease/nr/biz/plugin/plugin/util/m;->c(Lcom/netease/nr/biz/plugin/plugin/util/m;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/netease/nr/biz/plugin/plugin/util/m;->a(Lcom/netease/nr/biz/plugin/plugin/util/m;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    const v0, 0x7f0c0024

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/nr/biz/plugin/plugin/util/m;->b(Lcom/netease/nr/biz/plugin/plugin/util/m;Landroid/view/View;)Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_4
    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/plugin/plugin/util/k;->a(I)Lcom/netease/nr/biz/plugin/plugin/util/a;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/plugin/plugin/util/m;

    instance-of v1, v2, Lcom/netease/nr/biz/plugin/plugin/ThemePlugin;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/netease/nr/biz/plugin/plugin/util/k;->c:Lcom/netease/util/j/a;

    iget-object v3, p0, Lcom/netease/nr/biz/plugin/plugin/util/k;->d:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/netease/util/j/a;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/netease/nr/biz/plugin/plugin/util/k;->d:Landroid/content/Context;

    const v3, 0x7f0b022b

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-static {v0}, Lcom/netease/nr/biz/plugin/plugin/util/m;->a(Lcom/netease/nr/biz/plugin/plugin/util/m;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/netease/nr/biz/plugin/plugin/util/k;->c:Lcom/netease/util/j/a;

    invoke-static {v0}, Lcom/netease/nr/biz/plugin/plugin/util/m;->d(Lcom/netease/nr/biz/plugin/plugin/util/m;)Landroid/widget/ImageView;

    move-result-object v3

    iget v4, v2, Lcom/netease/nr/biz/plugin/plugin/util/a;->c:I

    invoke-virtual {v1, v3, v4}, Lcom/netease/util/j/a;->a(Landroid/widget/ImageView;I)V

    iget-object v1, p0, Lcom/netease/nr/biz/plugin/plugin/util/k;->c:Lcom/netease/util/j/a;

    invoke-static {v0}, Lcom/netease/nr/biz/plugin/plugin/util/m;->a(Lcom/netease/nr/biz/plugin/plugin/util/m;)Landroid/widget/TextView;

    move-result-object v3

    const v4, 0x7f07002d

    invoke-virtual {v1, v3, v4}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    iget-object v1, p0, Lcom/netease/nr/biz/plugin/plugin/util/k;->c:Lcom/netease/util/j/a;

    invoke-static {v0}, Lcom/netease/nr/biz/plugin/plugin/util/m;->c(Lcom/netease/nr/biz/plugin/plugin/util/m;)Landroid/widget/ImageView;

    move-result-object v3

    const v4, 0x7f02022e

    invoke-virtual {v1, v3, v4}, Lcom/netease/util/j/a;->a(Landroid/widget/ImageView;I)V

    iget-object v1, p0, Lcom/netease/nr/biz/plugin/plugin/util/k;->c:Lcom/netease/util/j/a;

    invoke-static {v0}, Lcom/netease/nr/biz/plugin/plugin/util/m;->e(Lcom/netease/nr/biz/plugin/plugin/util/m;)Landroid/widget/ImageView;

    move-result-object v3

    const v4, 0x7f02022d

    invoke-virtual {v1, v3, v4}, Lcom/netease/util/j/a;->a(Landroid/widget/ImageView;I)V

    iget-object v1, p0, Lcom/netease/nr/biz/plugin/plugin/util/k;->c:Lcom/netease/util/j/a;

    invoke-static {v0}, Lcom/netease/nr/biz/plugin/plugin/util/m;->f(Lcom/netease/nr/biz/plugin/plugin/util/m;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f020229

    invoke-virtual {v1, v3, v4}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/netease/nr/biz/plugin/plugin/util/k;->c:Lcom/netease/util/j/a;

    invoke-virtual {p0, v1, p2, v2}, Lcom/netease/nr/biz/plugin/plugin/util/k;->a(Lcom/netease/util/j/a;Landroid/view/View;Lcom/netease/nr/biz/plugin/plugin/util/a;)V

    invoke-static {v0}, Lcom/netease/nr/biz/plugin/plugin/util/m;->f(Lcom/netease/nr/biz/plugin/plugin/util/m;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/netease/nr/biz/plugin/plugin/util/l;

    invoke-direct {v1, p0, v2}, Lcom/netease/nr/biz/plugin/plugin/util/l;-><init>(Lcom/netease/nr/biz/plugin/plugin/util/k;Lcom/netease/nr/biz/plugin/plugin/util/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    :cond_5
    iget-object v1, p0, Lcom/netease/nr/biz/plugin/plugin/util/k;->d:Landroid/content/Context;

    const v3, 0x7f0b022a

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_6
    iget-object v1, v2, Lcom/netease/nr/biz/plugin/plugin/util/a;->b:Ljava/lang/String;

    goto :goto_2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
