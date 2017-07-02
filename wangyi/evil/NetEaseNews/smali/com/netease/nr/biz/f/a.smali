.class public Lcom/netease/nr/biz/f/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/netease/nr/base/view/GuideContainer;

.field private c:Landroid/os/Handler;

.field private d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netease/nr/base/view/GuideContainer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/biz/f/a;->c:Landroid/os/Handler;

    new-instance v0, Lcom/netease/nr/biz/f/c;

    invoke-direct {v0, p0}, Lcom/netease/nr/biz/f/c;-><init>(Lcom/netease/nr/biz/f/a;)V

    iput-object v0, p0, Lcom/netease/nr/biz/f/a;->d:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/netease/nr/biz/f/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/netease/nr/biz/f/a;->b:Lcom/netease/nr/base/view/GuideContainer;

    return-void
.end method

.method private a(Landroid/content/Context;)Landroid/widget/PopupWindow;
    .locals 5

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300b9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/nr/biz/f/a;->a(Landroid/view/View;)Landroid/widget/PopupWindow;

    move-result-object v1

    const/16 v2, 0x50

    invoke-virtual {v1, v0, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    const-string v0, "guide_navi_key"

    invoke-static {p1, v0, v3}, Lcom/netease/util/g/a;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/netease/nr/biz/f/a;->c:Landroid/os/Handler;

    iget-object v2, p0, Lcom/netease/nr/biz/f/a;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/netease/nr/biz/f/a;->c:Landroid/os/Handler;

    iget-object v2, p0, Lcom/netease/nr/biz/f/a;->d:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1f40

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-object v1
.end method

.method private a(Landroid/view/View;)Landroid/widget/PopupWindow;
    .locals 3

    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    const/4 v0, -0x1

    const/4 v2, -0x2

    invoke-virtual {v1, v0, v2}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    const v0, 0x7f090066

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    if-eqz p1, :cond_0

    const v0, 0x7f0c0238

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v2, Lcom/netease/nr/biz/f/b;

    invoke-direct {v2, p0}, Lcom/netease/nr/biz/f/b;-><init>(Lcom/netease/nr/biz/f/a;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-object v1
.end method

.method static synthetic a(Lcom/netease/nr/biz/f/a;)Lcom/netease/nr/base/view/GuideContainer;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/f/a;->b:Lcom/netease/nr/base/view/GuideContainer;

    return-object v0
.end method

.method private b(Landroid/content/Context;)Landroid/widget/PopupWindow;
    .locals 7

    const/4 v6, 0x0

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300b7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/nr/biz/f/a;->a(Landroid/view/View;)Landroid/widget/PopupWindow;

    move-result-object v1

    const/16 v2, 0x30

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f080000

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080105

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080093

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v1, v0, v2, v6, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    const-string v0, "guide_column_key"

    invoke-static {p1, v0, v6}, Lcom/netease/util/g/a;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/netease/nr/biz/f/a;->c:Landroid/os/Handler;

    iget-object v2, p0, Lcom/netease/nr/biz/f/a;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/netease/nr/biz/f/a;->c:Landroid/os/Handler;

    iget-object v2, p0, Lcom/netease/nr/biz/f/a;->d:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1f40

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-object v1
.end method

.method private c(Landroid/content/Context;)Landroid/widget/PopupWindow;
    .locals 5

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300b8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0c0239

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v2, 0x7f020290

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x7f0c0236

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0b00b4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    invoke-direct {p0, v1}, Lcom/netease/nr/biz/f/a;->a(Landroid/view/View;)Landroid/widget/PopupWindow;

    move-result-object v0

    const/16 v2, 0x50

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    const-string v1, "guide_slide_column_key"

    invoke-static {p1, v1, v3}, Lcom/netease/util/g/a;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/netease/nr/biz/f/a;->c:Landroid/os/Handler;

    iget-object v2, p0, Lcom/netease/nr/biz/f/a;->d:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/netease/nr/biz/f/a;->c:Landroid/os/Handler;

    iget-object v2, p0, Lcom/netease/nr/biz/f/a;->d:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1f40

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/widget/PopupWindow;
    .locals 1

    const-string v0, "guide_navi_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/f/a;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/netease/nr/biz/f/a;->a(Landroid/content/Context;)Landroid/widget/PopupWindow;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "guide_column_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/f/a;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/netease/nr/biz/f/a;->b(Landroid/content/Context;)Landroid/widget/PopupWindow;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "guide_slide_column_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/nr/biz/f/a;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/netease/nr/biz/f/a;->c(Landroid/content/Context;)Landroid/widget/PopupWindow;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()Ljava/util/List;
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/netease/nr/biz/f/a;->a:Landroid/content/Context;

    const-string v2, "guide_navi_key"

    invoke-static {v1, v2, v3}, Lcom/netease/util/g/a;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "guide_navi_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/netease/nr/biz/f/a;->a:Landroid/content/Context;

    const-string v2, "guide_column_key"

    invoke-static {v1, v2, v3}, Lcom/netease/util/g/a;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "guide_column_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Lcom/netease/nr/biz/f/a;->a:Landroid/content/Context;

    const-string v2, "guide_slide_column_key"

    invoke-static {v1, v2, v3}, Lcom/netease/util/g/a;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "guide_slide_column_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method
