.class public Lcom/netease/nr/biz/h/m;
.super Lcom/netease/nr/base/a/i;


# instance fields
.field private a:Ljava/util/List;

.field private b:Landroid/view/LayoutInflater;

.field private c:Landroid/content/Context;

.field private final d:Lcom/netease/nr/base/c/a/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2

    invoke-direct {p0}, Lcom/netease/nr/base/a/i;-><init>()V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/h/m;->b:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/netease/nr/biz/h/m;->a:Ljava/util/List;

    iput-object p1, p0, Lcom/netease/nr/biz/h/m;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netease/nr/base/c/a/b;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/netease/nr/base/c/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/h/m;->d:Lcom/netease/nr/base/c/a/b;

    iget-object v0, p0, Lcom/netease/nr/biz/h/m;->d:Lcom/netease/nr/base/c/a/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/c/a/b;->c(Z)V

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/biz/h/m;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/h/m;->a:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/netease/nr/biz/h/m;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/h/m;->c:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const/4 v2, -0x1

    if-nez p2, :cond_0

    new-instance v0, Lcom/netease/nr/biz/h/o;

    invoke-direct {v0, p0}, Lcom/netease/nr/biz/h/o;-><init>(Lcom/netease/nr/biz/h/m;)V

    new-instance p2, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/netease/nr/biz/h/m;->c:Landroid/content/Context;

    invoke-direct {p2, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v0, p2}, Lcom/netease/nr/biz/h/o;->a(Lcom/netease/nr/biz/h/o;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v0

    :goto_0
    iget-object v0, p0, Lcom/netease/nr/biz/h/m;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "img"

    invoke-static {v0, v2}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/netease/nr/biz/h/m;->d:Lcom/netease/nr/base/c/a/b;

    invoke-static {v1}, Lcom/netease/nr/biz/h/o;->a(Lcom/netease/nr/biz/h/o;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/netease/nr/base/c/a/b;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    new-instance v0, Lcom/netease/nr/biz/h/n;

    invoke-direct {v0, p0, p1}, Lcom/netease/nr/biz/h/n;-><init>(Lcom/netease/nr/biz/h/m;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/h/o;

    move-object v1, v0

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/h/m;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/h/m;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method
