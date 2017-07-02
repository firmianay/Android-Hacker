.class public Lcom/netease/nr/biz/polymeric/r;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/LayoutInflater;

.field private c:Ljava/util/List;

.field private d:Lcom/netease/ad/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/netease/ad/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/nr/biz/polymeric/r;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/netease/nr/biz/polymeric/r;->c:Ljava/util/List;

    iget-object v0, p0, Lcom/netease/nr/biz/polymeric/r;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/polymeric/r;->b:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/netease/nr/biz/polymeric/r;->d:Lcom/netease/ad/e;

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/biz/polymeric/r;)Lcom/netease/ad/e;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/polymeric/r;->d:Lcom/netease/ad/e;

    return-object v0
.end method

.method static synthetic b(Lcom/netease/nr/biz/polymeric/r;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/polymeric/r;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/polymeric/r;->c:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/polymeric/r;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0xa

    goto :goto_0
.end method

.method public a(I)Lcom/netease/nr/biz/polymeric/q;
    .locals 3

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_0

    new-instance v0, Lcom/netease/nr/biz/polymeric/q;

    invoke-direct {v0, v1}, Lcom/netease/nr/biz/polymeric/q;-><init>(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/netease/nr/biz/polymeric/r;->a(Lcom/netease/nr/biz/polymeric/q;I)V

    return-object v0

    :pswitch_0
    iget-object v1, p0, Lcom/netease/nr/biz/polymeric/r;->b:Landroid/view/LayoutInflater;

    const v2, 0x7f0300a8

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/netease/nr/biz/polymeric/r;->b:Landroid/view/LayoutInflater;

    const v2, 0x7f0300a9

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/netease/nr/biz/polymeric/r;->b:Landroid/view/LayoutInflater;

    const v2, 0x7f0300aa

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Lcom/netease/ad/e;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/polymeric/r;->d:Lcom/netease/ad/e;

    return-void
.end method

.method public a(Lcom/netease/nr/biz/polymeric/q;I)V
    .locals 10

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/polymeric/r;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->length()I

    move-result v8

    move v6, v5

    :goto_1
    if-ge v6, v8, :cond_a

    iget-object v0, p0, Lcom/netease/nr/biz/polymeric/r;->c:Ljava/util/List;

    mul-int/lit8 v1, p2, 0xa

    add-int/2addr v1, v6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/netease/nr/biz/polymeric/q;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v7, v6, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1

    :cond_3
    instance-of v1, v2, Landroid/widget/TextView;

    if-eqz v1, :cond_5

    move-object v1, v2

    check-cast v1, Landroid/widget/TextView;

    const-string v3, "name"

    invoke-static {v0, v3}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_3
    new-instance v1, Lcom/netease/nr/biz/polymeric/s;

    invoke-direct {v1, p0, v0}, Lcom/netease/nr/biz/polymeric/s;-><init>(Lcom/netease/nr/biz/polymeric/r;Ljava/util/Map;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_5
    instance-of v1, v2, Lcom/netease/nr/biz/polymeric/PolymericTagView;

    if-eqz v1, :cond_6

    check-cast v2, Lcom/netease/nr/biz/polymeric/PolymericTagView;

    move-object v1, v2

    check-cast v1, Lcom/netease/nr/biz/polymeric/PolymericTagView;

    const-string v3, "name"

    invoke-static {v0, v3}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/netease/nr/biz/polymeric/PolymericTagView;->a(Ljava/lang/String;)V

    move-object v1, v2

    check-cast v1, Lcom/netease/nr/biz/polymeric/PolymericTagView;

    const-string v3, "doctitle"

    invoke-static {v0, v3}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/netease/nr/biz/polymeric/PolymericTagView;->b(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    instance-of v1, v2, Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_4

    const v1, 0x7f0c00f4

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v3, "advertise"

    const-string v9, "id"

    invoke-static {v0, v9}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/netease/nr/biz/polymeric/r;->d:Lcom/netease/ad/e;

    if-eqz v3, :cond_7

    const v3, 0x7f0c0081

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iget-object v3, p0, Lcom/netease/nr/biz/polymeric/r;->d:Lcom/netease/ad/e;

    if-nez v3, :cond_8

    move v3, v4

    :goto_4
    invoke-virtual {v9, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/netease/nr/biz/polymeric/r;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x7f0800c0

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v1, v3, v5, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_7
    const-string v3, "name"

    invoke-static {v0, v3}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0c0113

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v1, p0, Lcom/netease/nr/biz/polymeric/r;->d:Lcom/netease/ad/e;

    if-nez v1, :cond_9

    move v1, v4

    :goto_5
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_8
    move v3, v5

    goto :goto_4

    :cond_9
    move v1, v5

    goto :goto_5

    :cond_a
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_0
.end method
