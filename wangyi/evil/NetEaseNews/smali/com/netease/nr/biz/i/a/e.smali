.class public Lcom/netease/nr/biz/i/a/e;
.super Lcom/netease/nr/base/a/f;


# instance fields
.field private a:Ljava/util/List;

.field private b:Ljava/util/Map;

.field private c:Lcom/netease/util/j/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V
    .locals 9

    invoke-direct {p0}, Lcom/netease/nr/base/a/f;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/biz/i/a/e;->a:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/biz/i/a/e;->b:Ljava/util/Map;

    invoke-static {p1}, Lcom/netease/util/j/a;->a(Landroid/content/Context;)Lcom/netease/util/j/a;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/i/a/e;->c:Lcom/netease/util/j/a;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    new-instance v3, Lcom/netease/nr/base/view/x;

    invoke-direct {v3}, Lcom/netease/nr/base/view/x;-><init>()V

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/e;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/e;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    const/4 v0, 0x1

    const-string v1, "latest"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "fake"

    move-object v0, p0

    move-object v2, p4

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/netease/nr/biz/i/a/e;->a(Ljava/lang/String;Ljava/util/List;Lcom/netease/nr/base/view/x;Landroid/content/Context;Landroid/view/LayoutInflater;)Lcom/netease/nr/base/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/nr/base/a/c;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/netease/nr/base/a/c;->a(Z)V

    move v7, v0

    :goto_2
    invoke-static {p3, v6}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object v0, p0

    move-object v1, v6

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/netease/nr/biz/i/a/e;->a(Ljava/lang/String;Ljava/util/List;Lcom/netease/nr/base/view/x;Landroid/content/Context;Landroid/view/LayoutInflater;)Lcom/netease/nr/base/a/c;

    move-result-object v0

    if-eqz v7, :cond_3

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/a/c;->a(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/netease/nr/base/a/c;->a(Z)V

    :cond_2
    move v7, v0

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/a/c;->a(Z)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/netease/nr/biz/i/a/e;->a()V

    return-void
.end method

.method private a(Landroid/view/LayoutInflater;Ljava/lang/String;Z)Landroid/view/View;
    .locals 3

    const/4 v1, 0x0

    const v0, 0x7f0300d0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f0c0265

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz p3, :cond_0

    const/16 v1, 0x8

    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0c0264

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "hot"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0b0124

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    invoke-direct {p0, p2, v2}, Lcom/netease/nr/biz/i/a/e;->a(Ljava/lang/String;Landroid/view/View;)V

    return-object v2

    :cond_1
    const-string v1, "top"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f0b0126

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    const v1, 0x7f0b0125

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/util/List;Lcom/netease/nr/base/view/x;Landroid/content/Context;Landroid/view/LayoutInflater;)Lcom/netease/nr/base/a/c;
    .locals 4

    const-string v0, "fake"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p5, p1, v0}, Lcom/netease/nr/biz/i/a/e;->a(Landroid/view/LayoutInflater;Ljava/lang/String;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/netease/nr/biz/i/a/a/b;

    invoke-direct {v1, p4, p2, p3}, Lcom/netease/nr/biz/i/a/a/b;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/netease/nr/base/view/x;)V

    new-instance v2, Lcom/netease/nr/base/a/c;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, v3}, Lcom/netease/nr/base/a/c;-><init>(Landroid/widget/ListAdapter;Landroid/view/View;Landroid/view/View;)V

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/e;->b:Ljava/util/Map;

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lcom/netease/nr/biz/i/a/e;->a(Landroid/widget/ListAdapter;)V

    return-object v2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/netease/nr/base/a/c;Z)V
    .locals 0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, p2}, Lcom/netease/nr/base/a/c;->a(Z)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Landroid/view/View;)V
    .locals 3

    const v0, 0x7f0c0264

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netease/nr/biz/i/a/e;->c:Lcom/netease/util/j/a;

    const v2, 0x7f070012

    invoke-virtual {v1, v0, v2}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    iget-object v1, p0, Lcom/netease/nr/biz/i/a/e;->c:Lcom/netease/util/j/a;

    const v2, 0x7f0202c2

    invoke-virtual {v1, v0, v2}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/e;->b:Ljava/util/Map;

    const-string v1, "fake"

    invoke-static {v0, v1}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/a/c;

    iget-object v1, p0, Lcom/netease/nr/biz/i/a/e;->b:Ljava/util/Map;

    const-string v2, "latest"

    invoke-static {v1, v2}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/nr/base/a/c;

    if-nez v0, :cond_0

    invoke-direct {p0, v1, v3}, Lcom/netease/nr/biz/i/a/e;->a(Lcom/netease/nr/base/a/c;Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/netease/nr/base/a/c;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v1, v3}, Lcom/netease/nr/biz/i/a/e;->a(Lcom/netease/nr/base/a/c;Z)V

    invoke-direct {p0, v0, v4}, Lcom/netease/nr/biz/i/a/e;->a(Lcom/netease/nr/base/a/c;Z)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1, v4}, Lcom/netease/nr/biz/i/a/e;->a(Lcom/netease/nr/base/a/c;Z)V

    invoke-direct {p0, v0, v3}, Lcom/netease/nr/biz/i/a/e;->a(Lcom/netease/nr/base/a/c;Z)V

    goto :goto_0
.end method
