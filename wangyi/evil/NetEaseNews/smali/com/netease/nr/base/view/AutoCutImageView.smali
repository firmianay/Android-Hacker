.class public Lcom/netease/nr/base/view/AutoCutImageView;
.super Lcom/netease/nr/base/view/MyImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/nr/base/view/MyImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netease/nr/base/view/MyImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/netease/nr/base/view/MyImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;)V
    .locals 9

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/netease/nr/base/view/AutoCutImageView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/netease/nr/base/view/AutoCutImageView;->getHeight()I

    move-result v0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    int-to-float v4, v4

    int-to-float v5, v1

    div-float v5, v4, v5

    int-to-float v4, v6

    int-to-float v6, v0

    div-float/2addr v4, v6

    cmpl-float v6, v5, v4

    if-ltz v6, :cond_3

    div-float v4, v5, v4

    move v5, v4

    move v4, v3

    :cond_2
    :goto_1
    cmpl-float v6, v5, v4

    if-nez v6, :cond_4

    move v3, v2

    :goto_2
    sub-int/2addr v1, v3

    sub-int/2addr v0, v2

    invoke-virtual {p2, v3, v2, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_3
    cmpl-float v6, v4, v5

    if-ltz v6, :cond_2

    div-float/2addr v4, v5

    move v5, v3

    goto :goto_1

    :cond_4
    cmpl-float v6, v5, v4

    if-lez v6, :cond_5

    int-to-float v6, v1

    sub-float v3, v5, v3

    mul-float/2addr v3, v6

    div-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    neg-int v3, v3

    int-to-float v1, v1

    mul-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_2

    :cond_5
    int-to-float v6, v0

    sub-float v3, v4, v3

    mul-float/2addr v3, v6

    div-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    neg-int v3, v3

    int-to-float v0, v0

    mul-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    move v8, v3

    move v3, v2

    move v2, v8

    goto :goto_2
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-virtual {p0}, Lcom/netease/nr/base/view/AutoCutImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/netease/nr/base/view/AutoCutImageView;->a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/netease/nr/base/view/AutoCutImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/netease/nr/base/view/AutoCutImageView;->a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p1}, Lcom/netease/nr/base/view/AutoCutImageView;->a(Landroid/graphics/Canvas;)V

    return-void
.end method
