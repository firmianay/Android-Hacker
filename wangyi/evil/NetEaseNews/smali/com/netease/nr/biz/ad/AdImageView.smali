.class public Lcom/netease/nr/biz/ad/AdImageView;
.super Landroid/widget/ImageView;


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/nr/biz/ad/AdImageView;->a:Z

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/ad/AdImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/nr/biz/ad/AdImageView;->a:Z

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/ad/AdImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/nr/biz/ad/AdImageView;->a:Z

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/ad/AdImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/biz/ad/AdImageView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/ad/AdImageView;->b:Ljava/lang/String;

    return-object v0
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/biz/ad/AdImageView;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/nr/biz/ad/l;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/netease/nr/biz/ad/l;-><init>(Lcom/netease/nr/biz/ad/AdImageView;Lcom/netease/nr/biz/ad/j;)V

    invoke-virtual {v0}, Lcom/netease/nr/biz/ad/l;->start()V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/netease/nr/biz/ad/AdImageView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/netease/nr/biz/ad/AdImageView;->c:Z

    return v0
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/netease/nr/biz/ad/AdImageView;->c:Z

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iput-object p1, p0, Lcom/netease/nr/biz/ad/AdImageView;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/nr/biz/ad/AdImageView;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/netease/nr/biz/ad/AdImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/util/c/e;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/ad/AdImageView;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/netease/nr/biz/ad/AdImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/ad/AdImageView;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/util/c/e;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/netease/nr/biz/ad/AdImageView;->a:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/netease/nr/biz/ad/AdImageView;->a()V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    iget-boolean v0, p0, Lcom/netease/nr/biz/ad/AdImageView;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/nr/biz/ad/AdImageView;->a:Z

    invoke-direct {p0}, Lcom/netease/nr/biz/ad/AdImageView;->a()V

    :cond_0
    return-void
.end method
