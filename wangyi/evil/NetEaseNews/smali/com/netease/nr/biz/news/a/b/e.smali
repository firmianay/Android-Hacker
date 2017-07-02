.class public Lcom/netease/nr/biz/news/a/b/e;
.super Lcom/netease/nr/biz/news/a/g;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/LayoutInflater;

.field private c:Ljava/util/List;

.field private d:Ljava/util/List;

.field private e:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Lcom/netease/nr/biz/news/a/h;Landroid/view/View$OnClickListener;)V
    .locals 1

    invoke-direct {p0, p1, p2, p4, p5}, Lcom/netease/nr/biz/news/a/g;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/netease/nr/biz/news/a/h;Landroid/view/View$OnClickListener;)V

    iput-object p5, p0, Lcom/netease/nr/biz/news/a/b/e;->e:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/netease/nr/biz/news/a/b/e;->a:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/news/a/b/e;->b:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/netease/nr/biz/news/a/b/e;->c:Ljava/util/List;

    iput-object p3, p0, Lcom/netease/nr/biz/news/a/b/e;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/news/a/b/e;->c(I)I

    move-result v0

    if-nez p2, :cond_0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/b/e;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/b/e;->d:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getHours()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v1, p2, v0, v2, v3}, Lcom/netease/nr/biz/plugin/c/ae;->a(Landroid/content/Context;Landroid/view/View;Ljava/util/Map;IZ)V

    :goto_1
    return-object p2

    :pswitch_0
    iget-object v0, p0, Lcom/netease/nr/biz/news/a/b/e;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f03005a

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0c006a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/FitImageView;

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/b/e;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/netease/nr/base/c/a/f;->b(Landroid/content/Context;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/FitImageView;->a(F)V

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/b/e;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/netease/nr/biz/news/a/b/e;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f030065

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/b/e;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/netease/nr/biz/news/a/g;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public c(I)I
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/b/e;->getCount()I

    move-result v1

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/b/e;->d:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/b/e;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/b/e;->c:Ljava/util/List;

    if-nez v1, :cond_1

    :goto_0
    add-int/lit8 v0, v0, 0x1

    :cond_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/news/a/b/e;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method
