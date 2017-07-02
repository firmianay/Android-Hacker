.class public Lcom/netease/nr/biz/k/a;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;

.field private c:Lcom/netease/nr/base/c/a/c;

.field private d:Landroid/view/LayoutInflater;

.field private e:Lcom/netease/nr/biz/k/c;

.field private f:Landroid/view/View$OnClickListener;

.field private g:Lcom/netease/util/j/a;

.field private h:Ljava/text/DecimalFormat;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Landroid/view/View$OnClickListener;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Lcom/netease/nr/biz/k/c;

    invoke-direct {v0, v2}, Lcom/netease/nr/biz/k/c;-><init>(Lcom/netease/nr/biz/k/b;)V

    iput-object v0, p0, Lcom/netease/nr/biz/k/a;->e:Lcom/netease/nr/biz/k/c;

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.00M"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/nr/biz/k/a;->h:Ljava/text/DecimalFormat;

    iput-object p1, p0, Lcom/netease/nr/biz/k/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/netease/nr/biz/k/a;->b:Ljava/util/List;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/k/a;->d:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/netease/nr/biz/k/a;->f:Landroid/view/View$OnClickListener;

    invoke-static {p1}, Lcom/netease/util/j/a;->a(Landroid/content/Context;)Lcom/netease/util/j/a;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/k/a;->g:Lcom/netease/util/j/a;

    invoke-static {p1, v2}, Lcom/netease/nr/base/c/a/c;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/netease/nr/base/c/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/k/a;->c:Lcom/netease/nr/base/c/a/c;

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-wide/high16 v3, 0x4090000000000000L    # 1024.0

    :try_start_0
    iget-object v0, p0, Lcom/netease/nr/biz/k/a;->h:Ljava/text/DecimalFormat;

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    long-to-double v1, v1

    div-double/2addr v1, v3

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "0M"

    goto :goto_0
.end method

.method private a(ILcom/netease/nr/biz/k/c;)V
    .locals 4

    const/4 v2, 0x0

    mul-int/lit8 v3, p1, 0x2

    iget-object v0, p0, Lcom/netease/nr/biz/k/a;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/k/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/k/a;->b:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    move-object v1, v0

    :goto_0
    add-int/lit8 v0, v3, 0x1

    iget-object v3, p0, Lcom/netease/nr/biz/k/a;->b:Ljava/util/List;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/netease/nr/biz/k/a;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v0, :cond_2

    iget-object v2, p0, Lcom/netease/nr/biz/k/a;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    :goto_1
    if-eqz p2, :cond_0

    iput-object v1, p2, Lcom/netease/nr/biz/k/c;->a:Ljava/util/Map;

    iput-object v0, p2, Lcom/netease/nr/biz/k/c;->b:Ljava/util/Map;

    :cond_0
    return-void

    :cond_1
    move-object v1, v2

    goto :goto_0

    :cond_2
    move-object v0, v2

    goto :goto_1
.end method

.method private a(Landroid/view/View;Ljava/util/Map;I)V
    .locals 8

    const v1, 0x7f020326

    const/4 v7, 0x2

    const/4 v6, 0x1

    const v5, 0x7f07000c

    const/4 v2, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f0c006a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/FitImageView;

    iget-object v3, p0, Lcom/netease/nr/biz/k/a;->c:Lcom/netease/nr/base/c/a/c;

    const-string v4, "logoUrl"

    invoke-static {p2, v4}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/netease/nr/base/view/FitImageView;->a(Lcom/netease/util/c/b;Ljava/lang/String;)V

    const v0, 0x7f0c0008

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v3, "appName"

    invoke-static {p2, v3}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/netease/nr/biz/k/a;->g:Lcom/netease/util/j/a;

    invoke-virtual {v3, v0, v5}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    const v0, 0x7f0c021c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "apkSize"

    invoke-static {p2, v4}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/netease/nr/biz/k/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "type"

    invoke-static {p2, v4}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/netease/nr/biz/k/a;->g:Lcom/netease/util/j/a;

    invoke-virtual {v3, v0, v5}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    const v0, 0x7f0c01a2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/netease/nr/biz/k/a;->g:Lcom/netease/util/j/a;

    invoke-virtual {v3, v0, v5}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    const-string v3, "apkStatus"

    invoke-static {p2, v3, v2}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;I)I

    move-result v3

    const-string v4, "appStatus"

    invoke-static {p2, v4, v2}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;I)I

    move-result v4

    if-ne v3, v7, :cond_0

    const v3, 0x7f0b0200

    :goto_0
    if-nez v3, :cond_4

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    return-void

    :cond_0
    if-ne v3, v6, :cond_1

    const v3, 0x7f0b01ff

    const v1, 0x7f020322

    goto :goto_0

    :cond_1
    if-nez v4, :cond_2

    const v3, 0x7f0b01fc

    const v1, 0x7f020324

    goto :goto_0

    :cond_2
    if-ne v4, v7, :cond_3

    const v3, 0x7f0b01fd

    goto :goto_0

    :cond_3
    if-ne v4, v6, :cond_5

    const v3, 0x7f0b01fe

    const v1, 0x7f020328

    goto :goto_0

    :cond_4
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_5
    move v1, v2

    move v3, v2

    goto :goto_0
.end method


# virtual methods
.method public a(I)Lcom/netease/util/e/b;
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/biz/k/a;->e:Lcom/netease/nr/biz/k/c;

    invoke-direct {p0, p1, v0}, Lcom/netease/nr/biz/k/a;->a(ILcom/netease/nr/biz/k/c;)V

    iget-object v0, p0, Lcom/netease/nr/biz/k/a;->e:Lcom/netease/nr/biz/k/c;

    iget-object v0, v0, Lcom/netease/nr/biz/k/c;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/netease/nr/biz/k/a;->e:Lcom/netease/nr/biz/k/c;

    iget-object v1, v1, Lcom/netease/nr/biz/k/c;->b:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/netease/util/e/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/netease/util/e/b;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/k/a;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/k/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/k/a;->a(I)Lcom/netease/util/e/b;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const v6, 0x7f0c01e7

    const v5, 0x7f0c006a

    const/16 v4, 0x8

    const v2, 0x3f024925

    const/4 v3, 0x0

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/k/a;->d:Landroid/view/LayoutInflater;

    const v1, 0x7f0300f5

    invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/k/a;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/FitImageView;

    invoke-virtual {v0, v2}, Lcom/netease/nr/base/view/FitImageView;->a(F)V

    const v0, 0x7f0c01e8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/k/a;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/FitImageView;

    invoke-virtual {v0, v2}, Lcom/netease/nr/base/view/FitImageView;->a(F)V

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/k/a;->e:Lcom/netease/nr/biz/k/c;

    invoke-direct {p0, p1, v0}, Lcom/netease/nr/biz/k/a;->a(ILcom/netease/nr/biz/k/c;)V

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/k/a;->e:Lcom/netease/nr/biz/k/c;

    iget-object v1, v1, Lcom/netease/nr/biz/k/c;->a:Ljava/util/Map;

    if-nez v1, :cond_1

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    const v0, 0x7f0c01e8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/k/a;->e:Lcom/netease/nr/biz/k/c;

    iget-object v1, v1, Lcom/netease/nr/biz/k/c;->b:Ljava/util/Map;

    if-nez v1, :cond_2

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-object p2

    :cond_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/netease/nr/biz/k/a;->e:Lcom/netease/nr/biz/k/c;

    iget-object v1, v1, Lcom/netease/nr/biz/k/c;->a:Ljava/util/Map;

    mul-int/lit8 v2, p1, 0x2

    invoke-direct {p0, v0, v1, v2}, Lcom/netease/nr/biz/k/a;->a(Landroid/view/View;Ljava/util/Map;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/netease/nr/biz/k/a;->e:Lcom/netease/nr/biz/k/c;

    iget-object v1, v1, Lcom/netease/nr/biz/k/c;->b:Ljava/util/Map;

    mul-int/lit8 v2, p1, 0x2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/netease/nr/biz/k/a;->a(Landroid/view/View;Ljava/util/Map;I)V

    goto :goto_1
.end method
