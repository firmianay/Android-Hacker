.class public Lcom/netease/nr/biz/news/a/c/c/i;
.super Lcom/netease/nr/base/a/i;


# instance fields
.field private a:Ljava/util/List;

.field private b:Landroid/view/LayoutInflater;

.field private c:Landroid/content/Context;

.field private d:Lcom/netease/nr/base/c/a/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2

    invoke-direct {p0}, Lcom/netease/nr/base/a/i;-><init>()V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/news/a/c/c/i;->b:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/netease/nr/biz/news/a/c/c/i;->a:Ljava/util/List;

    iput-object p1, p0, Lcom/netease/nr/biz/news/a/c/c/i;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/c/i;->c:Landroid/content/Context;

    const v1, 0x7f02002e

    invoke-static {v0, v1}, Lcom/netease/nr/base/c/a/c;->a(Landroid/content/Context;I)Lcom/netease/nr/base/c/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/news/a/c/c/i;->d:Lcom/netease/nr/base/c/a/c;

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/c/i;->d:Lcom/netease/nr/base/c/a/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/c/a/c;->c(Z)V

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/biz/news/a/c/c/i;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/c/i;->c:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v2, -0x1

    if-nez p2, :cond_0

    new-instance v0, Lcom/netease/nr/biz/news/a/c/c/k;

    invoke-direct {v0, p0}, Lcom/netease/nr/biz/news/a/c/c/k;-><init>(Lcom/netease/nr/biz/news/a/c/c/i;)V

    new-instance p2, Lcom/netease/nr/base/view/FitImageView;

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/c/c/i;->c:Landroid/content/Context;

    invoke-direct {p2, v1}, Lcom/netease/nr/base/view/FitImageView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v1}, Lcom/netease/nr/base/view/FitImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x3e9f8ee5

    invoke-virtual {p2, v1}, Lcom/netease/nr/base/view/FitImageView;->a(F)V

    invoke-static {v0, p2}, Lcom/netease/nr/biz/news/a/c/c/k;->a(Lcom/netease/nr/biz/news/a/c/c/k;Lcom/netease/nr/base/view/FitImageView;)Lcom/netease/nr/base/view/FitImageView;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v0

    :goto_0
    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/c/i;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "imgsrc"

    invoke-static {v0, v2}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/netease/nr/biz/news/a/c/c/k;->a(Lcom/netease/nr/biz/news/a/c/c/k;)Lcom/netease/nr/base/view/FitImageView;

    move-result-object v1

    iget-object v3, p0, Lcom/netease/nr/biz/news/a/c/c/i;->d:Lcom/netease/nr/base/c/a/c;

    invoke-virtual {v1, v3, v2}, Lcom/netease/nr/base/view/FitImageView;->a(Lcom/netease/util/c/b;Ljava/lang/String;)V

    new-instance v1, Lcom/netease/nr/biz/news/a/c/c/j;

    invoke-direct {v1, p0, v0}, Lcom/netease/nr/biz/news/a/c/c/j;-><init>(Lcom/netease/nr/biz/news/a/c/c/i;Ljava/util/Map;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/news/a/c/c/k;

    move-object v1, v0

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/c/i;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/c/i;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method
