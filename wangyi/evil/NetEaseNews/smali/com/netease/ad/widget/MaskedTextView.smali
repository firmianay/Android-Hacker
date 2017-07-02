.class public Lcom/netease/ad/widget/MaskedTextView;
.super Landroid/view/View;


# instance fields
.field a:Landroid/graphics/Paint$FontMetrics;

.field b:I

.field c:I

.field d:I

.field e:I

.field private f:Landroid/graphics/Paint;

.field private g:Landroid/graphics/Shader;

.field private h:F

.field private i:J

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lcom/netease/ad/widget/MaskedTextView;->h:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netease/ad/widget/MaskedTextView;->i:J

    iput-boolean v2, p0, Lcom/netease/ad/widget/MaskedTextView;->j:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/netease/ad/widget/MaskedTextView;->k:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/netease/ad/widget/MaskedTextView;->l:Z

    invoke-direct {p0}, Lcom/netease/ad/widget/MaskedTextView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lcom/netease/ad/widget/MaskedTextView;->h:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netease/ad/widget/MaskedTextView;->i:J

    iput-boolean v2, p0, Lcom/netease/ad/widget/MaskedTextView;->j:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/netease/ad/widget/MaskedTextView;->k:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/netease/ad/widget/MaskedTextView;->l:Z

    invoke-direct {p0}, Lcom/netease/ad/widget/MaskedTextView;->a()V

    return-void
.end method

.method private a()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v4, -0x1

    const/4 v1, 0x0

    const/16 v3, 0x78

    new-array v5, v7, [I

    const/4 v0, 0x0

    const/16 v2, 0xff

    invoke-static {v2, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    aput v2, v5, v0

    const/16 v0, 0xff

    invoke-static {v0, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    aput v0, v5, v6

    const/4 v0, 0x2

    aput v4, v5, v0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/netease/ad/widget/MaskedTextView;->f:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/netease/ad/widget/MaskedTextView;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/netease/ad/widget/MaskedTextView;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget v0, Lcom/netease/ad/b/k;->b:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/netease/ad/widget/MaskedTextView;->b:I

    iget v0, p0, Lcom/netease/ad/widget/MaskedTextView;->b:I

    const/16 v2, 0x18

    if-ge v0, v2, :cond_0

    const/16 v0, 0x18

    iput v0, p0, Lcom/netease/ad/widget/MaskedTextView;->b:I

    :cond_0
    iget-object v0, p0, Lcom/netease/ad/widget/MaskedTextView;->f:Landroid/graphics/Paint;

    iget v2, p0, Lcom/netease/ad/widget/MaskedTextView;->b:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    new-instance v0, Landroid/graphics/LinearGradient;

    const/high16 v3, 0x43480000    # 200.0f

    new-array v6, v7, [F

    fill-array-data v6, :array_0

    sget-object v7, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v4, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/netease/ad/widget/MaskedTextView;->g:Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/netease/ad/widget/MaskedTextView;->f:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/netease/ad/widget/MaskedTextView;->g:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/netease/ad/widget/MaskedTextView;->f:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ad/widget/MaskedTextView;->a:Landroid/graphics/Paint$FontMetrics;

    iget-object v0, p0, Lcom/netease/ad/widget/MaskedTextView;->a:Landroid/graphics/Paint$FontMetrics;

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget-object v1, p0, Lcom/netease/ad/widget/MaskedTextView;->a:Landroid/graphics/Paint$FontMetrics;

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/netease/ad/widget/MaskedTextView;->d:I

    iget-object v0, p0, Lcom/netease/ad/widget/MaskedTextView;->f:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/netease/ad/widget/MaskedTextView;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/netease/ad/widget/MaskedTextView;->e:I

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/netease/ad/widget/MaskedTextView;->c:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/ad/widget/MaskedTextView;->k:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/ad/widget/MaskedTextView;->f:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/netease/ad/widget/MaskedTextView;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/netease/ad/widget/MaskedTextView;->e:I

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/netease/ad/widget/MaskedTextView;->j:Z

    invoke-virtual {p0}, Lcom/netease/ad/widget/MaskedTextView;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/netease/ad/widget/MaskedTextView;->l:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/ad/widget/MaskedTextView;->j:Z

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netease/ad/widget/MaskedTextView;->i:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    const/high16 v3, 0x40900000    # 4.5f

    div-float/2addr v2, v3

    iget v3, p0, Lcom/netease/ad/widget/MaskedTextView;->h:F

    add-float/2addr v2, v3

    iput v2, p0, Lcom/netease/ad/widget/MaskedTextView;->h:F

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iget-boolean v3, p0, Lcom/netease/ad/widget/MaskedTextView;->j:Z

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/netease/ad/widget/MaskedTextView;->h:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    invoke-virtual {p0}, Lcom/netease/ad/widget/MaskedTextView;->invalidate()V

    :goto_1
    iget-object v3, p0, Lcom/netease/ad/widget/MaskedTextView;->g:Landroid/graphics/Shader;

    invoke-virtual {v3, v2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v2, p0, Lcom/netease/ad/widget/MaskedTextView;->k:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/netease/ad/widget/MaskedTextView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/netease/ad/widget/MaskedTextView;->f:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/netease/ad/widget/MaskedTextView;->k:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    float-to-int v4, v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/netease/ad/widget/MaskedTextView;->getMeasuredHeight()I

    move-result v4

    iget v5, p0, Lcom/netease/ad/widget/MaskedTextView;->d:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/netease/ad/widget/MaskedTextView;->a:Landroid/graphics/Paint$FontMetrics;

    iget v5, v5, Landroid/graphics/Paint$FontMetrics;->bottom:F

    float-to-int v5, v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/netease/ad/widget/MaskedTextView;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iput-wide v0, p0, Lcom/netease/ad/widget/MaskedTextView;->i:J

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v4, v4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    goto :goto_1
.end method
