.class public Lcom/netease/nr/base/view/d;
.super Landroid/widget/SimpleAdapter;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/LayoutInflater;

.field private c:I

.field private d:I

.field private e:Lcom/netease/util/j/a;

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V
    .locals 2

    invoke-direct/range {p0 .. p5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/nr/base/view/d;->f:Z

    iput-object p1, p0, Lcom/netease/nr/base/view/d;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/netease/util/j/a;->a(Landroid/content/Context;)Lcom/netease/util/j/a;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/base/view/d;->e:Lcom/netease/util/j/a;

    iput p3, p0, Lcom/netease/nr/base/view/d;->c:I

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/base/view/d;->b:Landroid/view/LayoutInflater;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/netease/nr/base/view/d;->d:I

    return-void
.end method


# virtual methods
.method public a()Lcom/netease/util/j/a;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/view/d;->e:Lcom/netease/util/j/a;

    return-object v0
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/netease/nr/base/view/d;->f:Z

    invoke-virtual {p0}, Lcom/netease/nr/base/view/d;->notifyDataSetChanged()V

    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/d;->b:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/netease/nr/base/view/d;->c:I

    invoke-virtual {v0, v1, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p1}, Lcom/netease/nr/base/view/d;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const v1, 0x7f0c0008

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "title"

    invoke-static {v0, v2}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_4

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    :goto_0
    iget-boolean v2, p0, Lcom/netease/nr/base/view/d;->f:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/netease/nr/base/view/d;->e:Lcom/netease/util/j/a;

    const v3, 0x7f070140

    invoke-virtual {v2, v1, v3}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    :cond_2
    const-string v2, "icon"

    invoke-static {v0, v2}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/netease/nr/base/view/d;->f:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/netease/nr/base/view/d;->e:Lcom/netease/util/j/a;

    iget-object v3, p0, Lcom/netease/nr/base/view/d;->a:Landroid/content/Context;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v3, v0}, Lcom/netease/util/j/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_1
    iget v2, p0, Lcom/netease/nr/base/view/d;->d:I

    iget v3, p0, Lcom/netease/nr/base/view/d;->d:I

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v1, v0, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-object p2

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/netease/nr/base/view/d;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1
.end method
