.class public Lcom/netease/nr/biz/i/a/a/b;
.super Landroid/widget/SimpleAdapter;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/netease/nr/base/view/v;


# instance fields
.field a:Landroid/view/LayoutInflater;

.field private b:F

.field private c:Landroid/content/Context;

.field private d:Lcom/netease/nr/base/view/x;

.field private e:Z

.field private f:I

.field private g:Lcom/netease/nr/base/c/a/c;

.field private h:Ljava/lang/String;

.field private i:Lcom/netease/util/j/a;

.field private j:I

.field private k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1

    new-instance v0, Lcom/netease/nr/base/view/x;

    invoke-direct {v0}, Lcom/netease/nr/base/view/x;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/netease/nr/biz/i/a/a/b;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/netease/nr/base/view/x;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/netease/nr/base/view/x;)V
    .locals 6

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/String;

    new-array v5, v3, [I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/nr/biz/i/a/a/b;->b:F

    const v0, 0x7f0300d1

    iput v0, p0, Lcom/netease/nr/biz/i/a/a/b;->f:I

    invoke-static {p1}, Lcom/netease/util/j/a;->a(Landroid/content/Context;)Lcom/netease/util/j/a;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/i/a/a/b;->i:Lcom/netease/util/j/a;

    iput-object p1, p0, Lcom/netease/nr/biz/i/a/a/b;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/nr/biz/i/a/a/b;->a:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/netease/nr/biz/i/a/a/b;->d:Lcom/netease/nr/base/view/x;

    iget-object v1, p0, Lcom/netease/nr/biz/i/a/a/b;->c:Landroid/content/Context;

    const v2, 0x7f0202d4

    invoke-static {v1, v2}, Lcom/netease/nr/base/c/a/c;->a(Landroid/content/Context;I)Lcom/netease/nr/base/c/a/c;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/nr/biz/i/a/a/b;->g:Lcom/netease/nr/base/c/a/c;

    iget-object v1, p0, Lcom/netease/nr/biz/i/a/a/b;->g:Lcom/netease/nr/base/c/a/c;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/netease/nr/base/c/a/c;->c(Z)V

    const v1, 0x7f0800e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/netease/nr/biz/i/a/a/b;->g:Lcom/netease/nr/base/c/a/c;

    invoke-virtual {v2, v1, v1}, Lcom/netease/nr/base/c/a/c;->a(II)V

    const v1, 0x7f07006c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/netease/nr/biz/i/a/a/b;->j:I

    const v1, 0x7f070074

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/netease/nr/biz/i/a/a/b;->k:I

    return-void
.end method

.method public static a(Ljava/util/Map;Landroid/view/View;I)I
    .locals 7

    const/4 v1, -0x1

    const v0, 0x7f0c025b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/FloorsView;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/netease/nr/base/view/FloorsView;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/netease/nr/base/view/FloorsView;->getBottom()I

    move-result v2

    if-le p2, v2, :cond_2

    :cond_1
    invoke-static {p0}, Lcom/netease/nr/biz/i/a/a/a;->d(Ljava/util/Map;)I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/netease/nr/base/view/FloorsView;->getTop()I

    move-result v2

    sub-int v4, p2, v2

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_5

    invoke-virtual {v0, v2}, Lcom/netease/nr/base/view/FloorsView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v6

    if-ge v4, v6, :cond_4

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    const-string v1, "expanding"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, -0x1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/i/a/a/b;->a(Ljava/util/Map;)I

    move-result v1

    if-ltz v1, :cond_3

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method a(Ljava/util/Map;)I
    .locals 3

    const/4 v0, -0x1

    const-string v1, "NON"

    invoke-static {p1, v1}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    if-eq v1, v0, :cond_0

    const/4 v0, 0x2

    :cond_0
    return v0

    :catch_0
    move-exception v1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method public a()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a/b;->c:Landroid/content/Context;

    return-object v0
.end method

.method public a(Ljava/lang/Object;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a/b;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f0300cf

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c0261

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/netease/nr/biz/i/a/a/b;->f:I

    return-void
.end method

.method public a(Landroid/view/ViewGroup;ILjava/lang/Object;I)V
    .locals 7

    const v2, 0x7f0c0261

    const/4 v6, 0x0

    const v5, 0x7f0c025d

    const/16 v4, 0x8

    const/4 v3, 0x0

    move-object v0, p3

    check-cast v0, Ljava/util/Map;

    invoke-static {v0}, Lcom/netease/nr/biz/i/a/a/a;->d(Ljava/util/Map;)I

    move-result v1

    const/4 v0, 0x1

    if-gt v1, v0, :cond_0

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v0, p3

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/i/a/a/b;->a(Ljava/util/Map;)I

    move-result v0

    if-ltz v0, :cond_4

    if-ne p2, v0, :cond_3

    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f0c0262

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v0, 0x7f0c0263

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast p3, Ljava/util/Map;

    invoke-virtual {p0, p3}, Lcom/netease/nr/biz/i/a/a/b;->b(Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    const v0, 0x7f0b012a

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    iget v0, p0, Lcom/netease/nr/biz/i/a/a/b;->b:F

    cmpl-float v0, v0, v6

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/netease/nr/biz/i/a/a/b;->b:F

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a/b;->i:Lcom/netease/util/j/a;

    const v2, 0x7f070070

    invoke-virtual {v0, v1, v2}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a/b;->i:Lcom/netease/util/j/a;

    const v2, 0x7f0202b7

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;IIII)V

    const v0, 0x7f0b0129

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_3
    if-le p2, v0, :cond_4

    add-int/lit8 v0, v1, -0x5

    add-int/2addr p2, v0

    :cond_4
    check-cast p3, Ljava/util/Map;

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0c025f

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0c025e

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0c0260

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/netease/nr/biz/i/a/a/b;->h:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/netease/nr/biz/i/a/a/b;->h:Ljava/lang/String;

    const-string v4, "u"

    invoke-static {p3, v4}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget v3, p0, Lcom/netease/nr/biz/i/a/a/b;->k:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_2
    add-int/lit8 v3, p2, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p3, v3}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v4, "f"

    invoke-static {v3, v4}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v4, p2, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "b"

    invoke-static {v3, v1}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v1, p0, Lcom/netease/nr/biz/i/a/a/b;->b:F

    cmpl-float v1, v1, v6

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/netease/nr/biz/i/a/a/b;->b:F

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_5
    add-int/lit8 v1, p2, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/netease/nr/biz/i/a/a/b;->i:Lcom/netease/util/j/a;

    const v3, 0x7f070076

    invoke-virtual {v1, v0, v3}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a/b;->i:Lcom/netease/util/j/a;

    const v1, 0x7f07006c

    invoke-virtual {v0, v2, v1}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    goto/16 :goto_0

    :cond_6
    iget v3, p0, Lcom/netease/nr/biz/i/a/a/b;->j:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/i/a/a/b;->h:Ljava/lang/String;

    return-void
.end method

.method a(Ljava/util/Map;Ljava/util/Map;)V
    .locals 5

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/i/a/a/b;->b(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/netease/util/e/c;->c(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_4

    invoke-static {p1}, Lcom/netease/nr/biz/i/a/a/a;->d(Ljava/util/Map;)I

    move-result v3

    if-lez v3, :cond_5

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_3

    invoke-static {v1}, Lcom/netease/nr/biz/i/a/a/a;->b(Ljava/util/Map;)Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_1
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    if-eqz v1, :cond_2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/netease/nr/biz/i/a/a/b;->notifyDataSetChanged()V

    goto :goto_0

    :cond_3
    move-object v1, v2

    goto :goto_1

    :cond_4
    const-string v0, "expanding"

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/netease/nr/biz/i/a/a/b;->a()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b012b

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/netease/nr/base/view/az;->a(Landroid/content/Context;II)Lcom/netease/nr/base/view/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/base/view/az;->show()V

    goto :goto_2

    :cond_5
    move-object v1, v2

    goto :goto_1
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/netease/nr/biz/i/a/a/b;->e:Z

    invoke-virtual {p0}, Lcom/netease/nr/biz/i/a/a/b;->notifyDataSetChanged()V

    return-void
.end method

.method b(Ljava/util/Map;)Z
    .locals 2

    const-string v0, "expanding"

    invoke-static {p1, v0}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c(Ljava/util/Map;)V
    .locals 6

    const/4 v2, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/i/a/a/b;->b(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/netease/nr/biz/i/a/a/a;->d(Ljava/util/Map;)I

    move-result v0

    if-lt v0, v2, :cond_0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "pi"

    invoke-static {v0, v1}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "bi"

    invoke-static {v0, v1}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "expanding"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/netease/nr/biz/i/a/a/c;

    iget-object v1, p0, Lcom/netease/nr/biz/i/a/a/b;->c:Landroid/content/Context;

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/netease/nr/biz/i/a/a/c;-><init>(Landroid/content/Context;Lcom/netease/nr/biz/i/a/a/b;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/i/a/a/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-virtual {p0}, Lcom/netease/nr/biz/i/a/a/b;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    const v4, 0x7f0c025b

    const/4 v3, 0x0

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a/b;->a:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/netease/nr/biz/i/a/a/b;->f:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/FloorsView;

    invoke-virtual {v0, p0}, Lcom/netease/nr/base/view/FloorsView;->a(Lcom/netease/nr/base/view/v;)V

    iget-object v1, p0, Lcom/netease/nr/biz/i/a/a/b;->d:Lcom/netease/nr/base/view/x;

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/FloorsView;->a(Lcom/netease/nr/base/view/x;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/i/a/a/b;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v10, v0

    :goto_0
    invoke-static {v10}, Lcom/netease/nr/biz/i/a/a/a;->d(Ljava/util/Map;)I

    move-result v0

    if-gez v0, :cond_1

    :goto_1
    return-object p2

    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const v1, 0x7f0c025a

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    const v1, 0x7f0c0259

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    const v1, 0x7f0c025c

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    const v1, 0x7f0c0258

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/netease/nr/base/view/FloorsView;

    iget-object v2, p0, Lcom/netease/nr/biz/i/a/a/b;->g:Lcom/netease/nr/base/c/a/c;

    const-string v4, "timg"

    invoke-static {v0, v4}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v1}, Lcom/netease/nr/base/c/a/c;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    const-string v1, "f"

    invoke-static {v0, v1}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/netease/nr/biz/i/a/a/b;->c:Landroid/content/Context;

    const-string v2, "t"

    invoke-static {v0, v2}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/util/h/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "b"

    invoke-static {v0, v1}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v1, p0, Lcom/netease/nr/biz/i/a/a/b;->b:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/netease/nr/biz/i/a/a/b;->b:F

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_2
    iget-boolean v1, p0, Lcom/netease/nr/biz/i/a/a/b;->e:Z

    if-eqz v1, :cond_4

    const v1, 0x7f0c026e

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/netease/nr/biz/i/a/a/b;->i:Lcom/netease/util/j/a;

    const v4, 0x7f07007c

    invoke-virtual {v2, v1, v4}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    const-string v2, "s"

    invoke-static {v0, v2}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v2, "pi"

    invoke-static {v0, v2}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "PHOT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a/b;->i:Lcom/netease/util/j/a;

    const v2, 0x7f0202d2

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;IIII)V

    :cond_3
    :goto_2
    const v0, 0x7f0c026f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/netease/nr/biz/i/a/a/b;->i:Lcom/netease/util/j/a;

    const v2, 0x7f0200c7

    invoke-virtual {v1, v0, v2}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    :cond_4
    invoke-virtual {v9, v10}, Lcom/netease/nr/base/view/FloorsView;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a/b;->i:Lcom/netease/util/j/a;

    iget-object v1, p0, Lcom/netease/nr/biz/i/a/a/b;->c:Landroid/content/Context;

    const v2, 0x7f0202b8

    invoke-virtual {v0, v1, v2}, Lcom/netease/util/j/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/netease/nr/base/view/FloorsView;->a(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a/b;->i:Lcom/netease/util/j/a;

    const v1, 0x7f070076

    invoke-virtual {v0, v6, v1}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a/b;->i:Lcom/netease/util/j/a;

    const v1, 0x7f07006e

    invoke-virtual {v0, v8, v1}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a/b;->i:Lcom/netease/util/j/a;

    const v1, 0x7f070072

    invoke-virtual {v0, v7, v1}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    const v0, 0x7f0c0022

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/netease/nr/biz/i/a/a/b;->i:Lcom/netease/util/j/a;

    const v2, 0x7f020030

    invoke-virtual {v1, v0, v2}, Lcom/netease/util/j/a;->a(Landroid/widget/ImageView;I)V

    goto/16 :goto_1

    :cond_5
    iget-object v0, p0, Lcom/netease/nr/biz/i/a/a/b;->i:Lcom/netease/util/j/a;

    const v2, 0x7f0202d1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;IIII)V

    goto :goto_2

    :cond_6
    move-object v10, v0

    goto/16 :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/i/a/a/b;->c(Ljava/util/Map;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0c0261
        :pswitch_0
    .end packed-switch
.end method
