.class Lcom/netease/nr/biz/ad/z;
.super Landroid/support/v4/view/PagerAdapter;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/ad/x;

.field private b:Landroid/view/LayoutInflater;


# direct methods
.method private constructor <init>(Lcom/netease/nr/biz/ad/x;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/netease/nr/biz/ad/z;->a:Lcom/netease/nr/biz/ad/x;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/ad/z;->b:Landroid/view/LayoutInflater;

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/nr/biz/ad/x;Landroid/content/Context;Lcom/netease/nr/biz/ad/y;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netease/nr/biz/ad/z;-><init>(Lcom/netease/nr/biz/ad/x;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 3

    const/4 v2, 0x0

    check-cast p3, Landroid/view/View;

    const v0, 0x7f0c006a

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f0c006f

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0c0070

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/ad/z;->a:Lcom/netease/nr/biz/ad/x;

    invoke-static {v0}, Lcom/netease/nr/biz/ad/x;->a(Lcom/netease/nr/biz/ad/x;)[I

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 2

    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/view/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v0

    :goto_0
    return v0

    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of v1, v0, Ljava/lang/Integer;

    if-nez v1, :cond_3

    :cond_2
    invoke-super {p0, p1}, Landroid/support/v4/view/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_3
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/netease/nr/biz/ad/z;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_4

    const/4 v0, -0x2

    goto :goto_0

    :cond_4
    invoke-super {p0, p1}, Landroid/support/v4/view/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/netease/nr/biz/ad/z;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f030029

    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f0c006a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/netease/nr/biz/ad/z;->a:Lcom/netease/nr/biz/ad/x;

    invoke-static {v2}, Lcom/netease/nr/biz/ad/x;->b(Lcom/netease/nr/biz/ad/x;)[I

    move-result-object v2

    aget v2, v2, p2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/netease/nr/biz/ad/z;->a:Lcom/netease/nr/biz/ad/x;

    invoke-static {v2}, Lcom/netease/nr/biz/ad/x;->b(Lcom/netease/nr/biz/ad/x;)[I

    move-result-object v2

    aget v2, v2, p2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_0
    iget-object v2, p0, Lcom/netease/nr/biz/ad/z;->a:Lcom/netease/nr/biz/ad/x;

    invoke-static {v2}, Lcom/netease/nr/biz/ad/x;->a(Lcom/netease/nr/biz/ad/x;)[I

    move-result-object v2

    aget v2, v2, p2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/netease/nr/biz/ad/z;->a:Lcom/netease/nr/biz/ad/x;

    invoke-static {v2}, Lcom/netease/nr/biz/ad/x;->a(Lcom/netease/nr/biz/ad/x;)[I

    move-result-object v2

    aget v2, v2, p2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    const v0, 0x7f0c0070

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/netease/nr/biz/ad/z;->a:Lcom/netease/nr/biz/ad/x;

    invoke-static {v2}, Lcom/netease/nr/biz/ad/x;->c(Lcom/netease/nr/biz/ad/x;)[I

    move-result-object v2

    aget v2, v2, p2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/netease/nr/biz/ad/z;->a:Lcom/netease/nr/biz/ad/x;

    invoke-static {v2}, Lcom/netease/nr/biz/ad/x;->c(Lcom/netease/nr/biz/ad/x;)[I

    move-result-object v2

    aget v2, v2, p2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/ad/z;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_4

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/netease/nr/biz/ad/z;->a:Lcom/netease/nr/biz/ad/x;

    invoke-virtual {v2}, Lcom/netease/nr/biz/ad/x;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v0, "show_button"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :cond_3
    if-eqz v0, :cond_4

    const v0, 0x7f0c006b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    new-instance v2, Lcom/netease/nr/biz/ad/aa;

    invoke-direct {v2, p0}, Lcom/netease/nr/biz/ad/aa;-><init>(Lcom/netease/nr/biz/ad/z;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c006c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    new-instance v2, Lcom/netease/nr/biz/ad/ab;

    invoke-direct {v2, p0}, Lcom/netease/nr/biz/ad/ab;-><init>(Lcom/netease/nr/biz/ad/z;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v2, p0, Lcom/netease/nr/biz/ad/z;->a:Lcom/netease/nr/biz/ad/x;

    invoke-static {v2}, Lcom/netease/nr/biz/ad/x;->f(Lcom/netease/nr/biz/ad/x;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/netease/nr/biz/ad/z;->a:Lcom/netease/nr/biz/ad/x;

    invoke-static {v2}, Lcom/netease/nr/biz/ad/x;->f(Lcom/netease/nr/biz/ad/x;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_4
    return-object v1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
